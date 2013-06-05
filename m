Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD8CE0155B
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629359"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:39 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:14 +0300
Message-Id: <1370451622-10619-14-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 13/21] Refactor Recipe Wizard Page to use Remote target Api
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Jun 2013 17:22:41 -0000

- refactored all steps taken when creating a new recipe to use RemoteHelper API and run commands on a abstract way regardless of the location of the target
- each step that needs to run a command remote will appear as a new YoctoCommand
- all commands are ran using RemoteHelper utility(handleRunCommandRemote) and passing a YoctoCommand
	- handleRunCommandRemote is a wrapper over the RSE Api that is able to run a command on a remote target in a separate shell
	- in addition to this, it also processes the output of the command and adds it to a ProcessStreamBuffer
	- each YoctoCommand contains:
		- the underlying command to be ran
		- the directory in which it should be ran
		- the ProcessStreamBuffer of this command
			- each process stream buffer contains two buffers:
				- error lines buffer
				- output lines buffer
	- all output/error processing of the command is done in separate threads and ensures that the command is finished before processing the output
	- [upstream issue] when dealing with remote targets, all the output and error lines will be found in the error lines
		- the underlying implementation has only one buffer and the errors are the first processed
		- [particular case] checksums are retrieved by running a Pattern against the output lines (local target) or error lines(remote target)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  419 +++++++++-----------
 1 file changed, 192 insertions(+), 227 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index e9dc53f..db8724d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -11,18 +11,24 @@
  *******************************************************************************/
 package org.yocto.bc.ui.wizards;
 
+import java.util.List;
 import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.window.Window;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
@@ -39,7 +45,9 @@ import org.eclipse.swt.widgets.Text;
 import org.eclipse.ui.dialogs.ContainerSelectionDialog;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.remote.utils.ProcessStreamBuffer;
 import org.yocto.remote.utils.RemoteHelper;
+import org.yocto.remote.utils.YoctoCommand;
 
 import java.util.HashMap;
 import java.util.Hashtable;
@@ -47,6 +55,7 @@ import java.util.Set;
 import java.util.ArrayList;
 import java.util.Enumeration;
 import java.util.Iterator;
+import java.util.regex.Pattern;
 
 import java.io.BufferedReader;
 import java.io.InputStreamReader;
@@ -84,6 +93,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private ArrayList inheritance;
 	private final IHost connection;
 
+	private String tempFolderPath;
 	private String srcFileNameExt;
 	private String srcFileName;
 
@@ -94,7 +104,28 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	public static final String FTP ="ftp";
 	public static final String BB_RECIPE_EXT =".bb";
 	private static final String COPYING_FILE = "COPYING";
-	
+
+	private static final String CMAKE_LIST = "cmakelists.txt";
+	private static final String CMAKE = "cmake";
+	private static final String SETUP_SCRIPT = "setup.py";
+	private static final String DISUTILS = "disutils";
+	private static final String CONFIGURE_IN = "configure.in";
+	private static final String CONFIGURE_AC = "configure.ac";
+	private static final String AUTOTOOLS = "autotools";
+
+	private static final String md5Pattern = "^[0-9a-f]{32}$";
+	protected static final String sha256Pattern = "^[0-9a-f]{64}$";
+
+	private static final String MIRRORS_FILE = "mirrors.bbclass";
+	private static final String CLASSES_FOLDER = "classes";
+
+	private HashMap<String, String> mirrorTable;
+	private URI extractDir;
+
+	protected ProcessStreamBuffer md5Buffer;
+	protected ProcessStreamBuffer sha256Buffer;
+	protected ProcessStreamBuffer md5CopyingBuffer;
+
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
 		setTitle("BitBake Recipe");
@@ -290,19 +321,19 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	
 	private void handlePopulate() {
 		try {
-			String src_uri = txtSrcURI.getText();
+			IProgressMonitor monitor = new NullProgressMonitor();
 			URI srcURI = new URI(txtSrcURI.getText().trim());
 			String scheme = srcURI.getScheme();
 			this.srcFileNameExt = getSrcFileName(true);
 			this.srcFileName = getSrcFileName(false);
 			if ((scheme.equals(HTTP) || scheme.equals(FTP))
 					&& (srcFileNameExt.endsWith(TAR_GZ_EXT) || srcFileNameExt.endsWith(TAR_BZ2_EXT))) {
-				handleRemotePopulate(src_uri);
+				handleRemotePopulate(srcURI, monitor);
 			} else {
 				String packageName = srcFileName.replace("-", "_");
 				fileText.setText(packageName + BB_RECIPE_EXT);
 
-				handleLocalPopulate(src_uri);
+				handleLocalPopulate(srcURI, monitor);
 			}
 		} catch (URISyntaxException e) {
 			e.printStackTrace();
@@ -329,259 +360,193 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 		return "";
 	}
-	private void handleRemotePopulate(String src_uri) {
-		HashMap<String, String> mirror_map = createMirrorLookupTable();
-		populateRecipeName(src_uri);
-		populateSrcuriChecksum(src_uri);
-		String extractDir = extractPackage(src_uri);
-		populateLicensefileChecksum(extractDir);
-		updateSrcuri(mirror_map, src_uri);
-		populateInheritance(extractDir);
-	}
-	
-	private void handleLocalPopulate(String path_str) {
-		String package_name = path_str.substring(path_str.lastIndexOf("/")+1);
-		fileText.setText(package_name+".bb");
-		populateLicensefileChecksum(path_str);
-		populateInheritance(path_str);
-	}
-	private String extractPackage(String src_uri) {
+	private void handleRemotePopulate(URI srcURI, IProgressMonitor monitor) {
+		populateRecipeName();
+
 		try {
-			File working_dir = new File(metaDirLoc+"/temp");
-			int idx = src_uri.lastIndexOf("/");
-			String tar_file = src_uri.substring(idx+1);
-			int tar_file_surfix_idx = tar_file.lastIndexOf(".tar");
-			String tar_file_surfix = tar_file.substring(tar_file_surfix_idx);
-			String tar_file_path = metaDirLoc+"/temp/"+tar_file;
-			
-			String tar_cmd = "";
-			int tar_idx = 0;
-			if (tar_file_surfix.matches(".tar.gz")) {
-				tar_cmd = "tar -zxvf "+ tar_file_path;
-				tar_idx = tar_file_path.lastIndexOf(".tar.gz");
-			} else if (tar_file_surfix.matches(".tar.bz2")) {
-				tar_idx = tar_file_path.lastIndexOf(".tar.bz2");
-				tar_cmd = "tar -xvf " + tar_file_path;
-			}
-			final Process process = Runtime.getRuntime().exec(tar_cmd, null, working_dir);
-			int returnCode = process.waitFor();
-			if (returnCode == 0) {
-				return tar_file_path.substring(0, tar_idx);
-			}
+			String metaDirLocPath = metaDirLoc.getPath();
+			monitor.subTask("Cleaning environment");
+			YoctoCommand rmYCmd = new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+			RemoteHelper.handleRunCommandRemote(connection, rmYCmd, new SubProgressMonitor(monitor, 5));
+
+			YoctoCommand mkdirYCmd = new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+			RemoteHelper.handleRunCommandRemote(connection, mkdirYCmd, new SubProgressMonitor(monitor, 5));
+
+			updateTempFolderPath();
+			monitor.worked(10);
+
+			monitor.subTask("Downloading package sources");
+
+			updateTempFolderPath();
+
+			YoctoCommand wgetYCmd = new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, "");
+			RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));
+
+			monitor.worked(50);
+
+			monitor.subTask("Compute package checksums");
+			String md5Cmd = "md5sum " + srcFileNameExt;
+			YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
+
+			RemoteHelper.handleRunCommandRemote(connection, md5YCmd, new SubProgressMonitor(monitor, 10));
+			md5Buffer =  md5YCmd.getProcessBuffer();
+
+			monitor.worked(60);
+
+			String sha256Cmd = "sha256sum " + srcFileNameExt;
+			YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
+			RemoteHelper.handleRunCommandRemote(connection, sha256YCmd, new SubProgressMonitor(monitor, 10));
+			sha256Buffer = sha256YCmd.getProcessBuffer();
+
+			monitor.worked(70);
+
+			monitor.subTask("Extracting package");
+			extractDir = extractPackage(srcURI, new SubProgressMonitor(monitor, 0));
+			monitor.worked(80);
+
+			YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, new SubProgressMonitor(monitor, 10));
+			md5CopyingBuffer = 	licenseChecksumCmd.getProcessBuffer();
+
+			monitor.subTask("Creating mirror lookup table");
+			mirrorTable = createMirrorLookupTable(new SubProgressMonitor(monitor, 10));
+
+			monitor.worked(90);
+			monitor.done();
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
-		return null;
+
+		updateSrcUri(mirrorTable, srcURI);
+		populateInheritance(extractDir, monitor);
+
+		String md5Val = md5Buffer.getOutputLineContaining(srcFileNameExt, md5Pattern);
+		md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
+		String sha256Val = sha256Buffer.getOutputLineContaining(srcFileNameExt, sha256Pattern);
+		sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
+		String checkSumVal =  md5CopyingBuffer.getOutputLineContaining(COPYING_FILE, md5Pattern);
+		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
 	}
 	
-	private void populateInheritance(String extractDir) {
-		File extract_dir = new File(extractDir);
-		
-		File[] files = extract_dir.listFiles();
-		for (File file : files) {
-			if (file.isDirectory()) 
-				continue;
-			else {	
-				if (file.getName().equalsIgnoreCase("cmakelists.txt"))
-					inheritance.add("cmake");
-				else if (file.getName().equalsIgnoreCase("setup.py"))
-					inheritance.add("disutils");
-				else {
-					String pattern = "configure.[ac|.in]";
-					if (file.getName().equalsIgnoreCase("configure.ac") || file.getName().equalsIgnoreCase("configure.in"))
-						inheritance.add("autotools");
-					else
-						continue;
-				}
-			}
-		}	
+	private void updateTempFolderPath(){
+		this.tempFolderPath = getMetaFolderPath() + TEMP_FOLDER_NAME + "/";
 	}
-	
-	private void populateLicensefileChecksum(String extractDir) {
-		String licenseFileChecksum_str = null;
-		String licenseFilePath = null;
-		
-		try {
-			File extract_dir = new File(extractDir);
-				
-			FilenameFilter copyFilter = new FilenameFilter() {
-				public boolean accept(File dir, String name) {
-					if (name.startsWith("COPYING")) {
-						return true;
-					} else {
-						return false;
-					}
-				}
-			};
 
-			File copyFile = null;
-			File[] files = extract_dir.listFiles(copyFilter);
-			for (File file : files) {
-				if (file.isDirectory()) 
-					continue;
-				else {	
-					copyFile = file;
-					licenseFilePath = file.getCanonicalPath();
-					break;
-				}
+	private String getMetaFolderPath(){
+		String sep = metaDirLoc.getPath().endsWith("/")? "" : "/";
+		return metaDirLoc.getPath() + sep;
+	}
+
+	private void handleLocalPopulate(URI srcURI, IProgressMonitor monitor) {
+		populateLicenseFileChecksum(srcURI, monitor);
+		populateInheritance(srcURI, monitor);
+	}
+
+	private URI extractPackage(URI srcURI, IProgressMonitor monitor) {
+		try {
+			String path = srcFileNameExt;
+			String tarCmd = "tar ";
+			if (path.endsWith(TAR_BZ2_EXT)) {
+				tarCmd += "-zxvf ";
+			} else if(path.endsWith(TAR_GZ_EXT)){
+				tarCmd += "-xvf ";
 			}
 
-			MessageDigest digest_md5 = MessageDigest.getInstance("MD5");			
-			InputStream is = new FileInputStream(copyFile);				
-			byte[] buffer = new byte[8192];
-			int read = 0;
-			
-			while( (read = is.read(buffer)) > 0) {
-				digest_md5.update(buffer, 0, read);
-			}		
-			byte[] md5sum = digest_md5.digest();
-			BigInteger bigInt_md5 = new BigInteger(1, md5sum);
-			licenseFileChecksum_str = bigInt_md5.toString(16);
-			is.close();
+			RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""), monitor);
+
+			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + srcFileName);
+
 		} catch (Exception e) {
-			throw new RuntimeException("Unable to process file for MD5 calculation", e);
-		}
-		
-		if (licenseFileChecksum_str != null) {
-			int idx = licenseFilePath.lastIndexOf("/");
-			String license_file_name = licenseFilePath.substring(idx+1);
-			checksumText.setText("file://"+license_file_name+";md5="+licenseFileChecksum_str);					
+			e.printStackTrace();
 		}
+		return null;
 	}
 	
-	private void populateSrcuriChecksum(String src_uri) {
-		String md5sum_str = null;
-		String sha256sum_str = null;
-		
-		try {
-			File working_dir = new File(metaDirLoc+"/temp");
-			working_dir.mkdir();
-			String download_cmd = "wget " + src_uri;
-			final Process process = Runtime.getRuntime().exec(download_cmd, null, working_dir);
-			int returnCode = process.waitFor();
-			if (returnCode == 0) {
-				int idx = src_uri.lastIndexOf("/");
-				String tar_file = src_uri.substring(idx+1);
-				String tar_file_path = metaDirLoc+"/temp/"+tar_file;
-				MessageDigest digest_md5 = MessageDigest.getInstance("MD5");
-				MessageDigest digest_sha256 = MessageDigest.getInstance("SHA-256");
-				File f = new File(tar_file_path);
-				InputStream is = new FileInputStream(f);				
-				byte[] buffer = new byte[8192];
-				int read = 0;
-				try {
-					while( (read = is.read(buffer)) > 0) {
-						digest_md5.update(buffer, 0, read);
-						digest_sha256.update(buffer, 0, read);
-					}		
-					byte[] md5sum = digest_md5.digest();
-					byte[] sha256sum = digest_sha256.digest();
-					BigInteger bigInt_md5 = new BigInteger(1, md5sum);
-					BigInteger bigInt_sha256 = new BigInteger(1, sha256sum);
-					md5sum_str = bigInt_md5.toString(16);
-					sha256sum_str = bigInt_sha256.toString(16);
-				}
-				catch(IOException e) {
-					throw new RuntimeException("Unable to process file for MD5", e);
-				}
-				finally {
-					try {
-						is.close();
-					}
-					catch(IOException e) {
-						throw new RuntimeException("Unable to close input stream for MD5 calculation", e);
-					}
-				}
-				if (md5sum_str != null)
-					md5sumText.setText(md5sum_str);
-				if (sha256sum_str != null)
-					sha256sumText.setText(sha256sum_str);
+	private void populateInheritance(URI extractDir, IProgressMonitor monitor) {
+		IHostFile[] hostFiles = RemoteHelper.getRemoteDirContent(connection, metaDirLoc.getPath(), "", IFileService.FILE_TYPE_FILES, monitor);
+		if (hostFiles == null)
+			return;
+
+		for (IHostFile file: hostFiles) {
+			String fileName = file.getName();
+			if (fileName.equalsIgnoreCase(CMAKE_LIST)){
+				inheritance.add(CMAKE);
+			} else if (fileName.equalsIgnoreCase(SETUP_SCRIPT)) {
+				inheritance.add(DISUTILS);
+			} else if (fileName.equalsIgnoreCase(CONFIGURE_AC) || file.getName().equalsIgnoreCase(CONFIGURE_IN)) {
+				inheritance.add(AUTOTOOLS);
 			}
-		} catch (Exception e) {
-			e.printStackTrace();
 		}
 	}
 	
-	private HashMap<String, String> createMirrorLookupTable() {
-		HashMap<String, String> mirror_map = new HashMap<String, String>();
-		File mirror_file = new File(metaDirLoc+"/classes/mirrors.bbclass");
+	private YoctoCommand populateLicenseFileChecksum(URI extractDir, IProgressMonitor monitor) {
+		if (extractDir == null)
+			throw new RuntimeException("Something went wrong during source extraction!");
 
 		try {
-			if (mirror_file.exists()) {
-				BufferedReader input = new BufferedReader(new FileReader(mirror_file));
-		
-				try
-				{
-					String line = null;
-					String delims = "[\\t]+";
-					
-					while ((line = input.readLine()) != null)
-					{	
-						String[] tokens = line.split(delims);
-						if (tokens.length < 2)
-							continue;
-						String ending_str = " \\n \\";
-						int idx = tokens[1].lastIndexOf(ending_str);
-						String key = tokens[1].substring(0, idx);
-						mirror_map.put(key, tokens[0]);
-					}
-				}
-				finally {
-					input.close();
-				}
-			}
+			YoctoCommand catCmd = new YoctoCommand("md5sum " + COPYING_FILE, extractDir.getPath(), "");
+			RemoteHelper.handleRunCommandRemote(connection, catCmd, monitor);
+			return catCmd;
+		} catch (Exception e) {
+			throw new RuntimeException("Unable to process file for MD5 calculation", e);
 		}
-		catch (IOException e)
-		{
-			e.printStackTrace();
 
+	}
+
+	private HashMap<String, String> createMirrorLookupTable(IProgressMonitor monitor) throws Exception {
+		HashMap<String, String> mirrorMap = new HashMap<String, String>();
+
+		YoctoCommand cmd = new YoctoCommand("cat " + MIRRORS_FILE, getMetaFolderPath() + CLASSES_FOLDER, "");
+		RemoteHelper.handleRunCommandRemote(connection, cmd, monitor);
+
+		if (!cmd.getProcessBuffer().hasErrors()){
+			String delims = "[\\t]+";
+			List<String> outputLines = cmd.getProcessBuffer().getOutputLines();
+			for (String outLine : outputLines) {
+				String[] tokens = outLine.split(delims);
+				if (tokens.length < 2)
+					continue;
+				String endingStr = " \\n \\";
+				int idx = tokens[1].lastIndexOf(endingStr);
+				String key = tokens[1].substring(0, idx);
+				mirrorMap.put(key, tokens[0]);
+			}
 		}
-		return mirror_map;
+		return mirrorMap;
 	}
 	
-	private void populateRecipeName(String src_uri) {
-		String file_name = fileText.getText();
-		if (!file_name.isEmpty()) 
+	private void populateRecipeName() {
+		String fileName = fileText.getText();
+		if (!fileName.isEmpty())
 			return;
-		String delims = "[/]+";
-		String recipe_file = null;
-		
-		String[] tokens = src_uri.split(delims);
-		if (tokens.length > 0) {
-			String tar_file = tokens[tokens.length - 1];
-			int surfix_idx = 0;
-			if (tar_file.endsWith(".tar.gz"))
-				surfix_idx = tar_file.lastIndexOf(".tar.gz");
-			else
-				surfix_idx = tar_file.lastIndexOf(".tar.bz2");
-			int sept_idx = tar_file.lastIndexOf("-");
-			recipe_file = tar_file.substring(0, sept_idx)+"_"+tar_file.substring(sept_idx+1, surfix_idx)+".bb";
-		}
-		if (recipe_file != null)
-			fileText.setText(recipe_file);
+
+		String recipeFile = srcFileName.replace("-", "_");
+		recipeFile += BB_RECIPE_EXT;
+		if (recipeFile != null)
+			fileText.setText(recipeFile);
 	}
 	
-	private void updateSrcuri(HashMap<String, String> mirrorsMap, String src_uri) {
+	private void updateSrcUri(HashMap<String, String> mirrorsMap, URI srcUri) {
 		Set<String> mirrors = mirrorsMap.keySet();
-		Iterator iter = mirrors.iterator();
+		Iterator<String> iter = mirrors.iterator();
 		String mirror_key = null;
-		
-	    while (iter.hasNext()) {
-	    	String value = (String)iter.next();
-	    	if (src_uri.startsWith(value)) {
-	    		mirror_key = value;
-	    		break;
-	    	}	
-	    }
-	    
-	    if (mirror_key != null) {
-	    	String replace_string = (String)mirrorsMap.get(mirror_key);
-	    	if (replace_string != null)
-	    		src_uri = replace_string+src_uri.substring(mirror_key.length());
-	    }
-	    int idx = src_uri.lastIndexOf("-");
-	    String new_src_uri = src_uri.substring(0, idx)+"-${PV}.tar.gz";
-	    txtSrcURI.setText(new_src_uri);
+		String srcURL = srcUri.toString();
+
+		while (iter.hasNext()) {
+			String value = iter.next();
+			if (srcURL.startsWith(value)) {
+				mirror_key = value;
+				break;
+			}
+		}
+
+		if (mirror_key != null) {
+			String replace_string = mirrorsMap.get(mirror_key);
+			if (replace_string != null)
+				srcURL = replace_string + srcURL.substring(mirror_key.length());
+		}
+		int idx = srcURL.lastIndexOf("-");
+		String new_src_uri = srcURL.substring(0, idx)+"-${PV}" + TAR_GZ_EXT;
+		txtSrcURI.setText(new_src_uri);
 	}
 	
 	private void initialize() {
-- 
1.7.9.5


