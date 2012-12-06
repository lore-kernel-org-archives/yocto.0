Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B922E01469
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:57:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:57:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491151"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:57:03 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:47:00 +0200
Message-Id: <1354801622-13962-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 6/8] Fix synchronous waiting for command prompt in Linux & connection lost when restarting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 13:57:05 -0000

- when waiting for an command to finish running, we wait to receive a command prompt using the syntax user@host....endChar. This pattern is not always encountered on local or remote connection from linux to linux. Instead echo some terminator value after each command and wait for recieve the value.

- when working on a Linux machine and creating a project using the Local connection, after a restart, the RSE registry fails to find the project's connection using its URI because there is no host set. Manually set the current connection to Localhost

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |    2 +
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   24 ++----
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   14 ++--
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   14 ++--
 .../remote/utils/YoctoHostShellProcessAdapter.java |   28 +------
 .../src/org/yocto/bc/ui/Activator.java             |   79 ++++++--------------
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |    4 +
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    7 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   15 ++--
 9 files changed, 60 insertions(+), 127 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index c5354a4..3aa4efe 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -439,6 +439,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	}
 
 	protected void parse(String content, Map outMap) throws Exception {
+		if (content == null)
+			return;	
 		BufferedReader reader = new BufferedReader(new StringReader(content));
 		String line;
 		boolean inLine = false;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index f143bed..c127c25 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -81,24 +81,13 @@ public class ShellSession {
 		this.projectInfo = pInfo;
 		this.root = root;
 		this.initCmd  = initCmd;
-//		if (out == null) {
-//			this.out = new NullWriter();
-//		} else {
-//			this.out = out;
-//		}
-//		if (shellType == SHELL_TYPE_SH) {
-//			shellPath = "/bin/sh";
-//		}
-//		shellPath  = "/bin/bash";
-
 		initializeShell(new NullProgressMonitor());
 	}
 
 	private void initializeShell(IProgressMonitor monitor) throws IOException {
 		try {
-			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
+			RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
+			RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
@@ -113,9 +102,12 @@ public class ShellSession {
 	public String execute(String command, boolean hasErrors) throws IOException {
 
 		try {
-			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
-			return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
+			if (projectInfo.getConnection() != null) {
+				IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
+				hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+				return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
+			}
+			return null;
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
index 438a5b4..2c6d122 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
@@ -2,6 +2,7 @@ package org.yocto.bc.remote.utils;
 
 import java.util.ArrayList;
 import java.util.List;
+import java.util.regex.Pattern;
 
 public class ProcessStreamBuffer {
 	private static final String WHITESPACES = "\\s+";
@@ -54,17 +55,16 @@ public class ProcessStreamBuffer {
 		return null;
 	}
 
-	public String getOutputLineContaining(String str) {
-		int index = 0;
+	public String getOutputLineContaining(String arg, String pattern) {
 		for (int i = outputLines.size() - 1; i >= 0; i--){
 			String line = outputLines.get(i);
-			if (line.contains(str)) {
-				index = i + 1;
-				break;
+			if (line.contains(arg)) {
+				String[] tokens = line.split("\\s+");
+				if (Pattern.matches(pattern,  tokens[0])) {
+					return tokens[0];
+				}
 			}
 		}
-		if (index >= 0 && index < outputLines.size())
-			return outputLines.get(index);
 		return null;
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index f375de1..c230fd6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -45,6 +45,7 @@ import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.wizards.install.Messages;
 
 public class RemoteHelper {
+	public static final String TERMINATOR = "234o987dsfkcqiuwey18837032843259d";
 	public static final int TOTALWORKLOAD = 100;
 	private static Map<IHost, RemoteMachine> machines;
 
@@ -95,9 +96,11 @@ public class RemoteHelper {
 			return null;
 
 		String host = uri.getHost();
-		if (host == null)
-			return null;
-
+		if (host == null) {
+			// this is a local connection
+			ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
+			return sr.getLocalHost();
+		}
 		ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
 		IHost[] connections = sr.getHosts();
 
@@ -259,8 +262,9 @@ public class RemoteHelper {
 			public void run() {
 				try {
 					YoctoHostShellProcessAdapter adapter = getHostShellProcessAdapter(connection);
-					adapter.setLastCommand(remoteCommand);
-					getHostShell(connection).writeToShell(remoteCommand);
+					String fullRemoteCommand = remoteCommand + "; echo " + TERMINATOR + ";";
+					adapter.setLastCommand(fullRemoteCommand);
+					getHostShell(connection).writeToShell(fullRemoteCommand);
 					while (!adapter.isFinished())
 						Thread.sleep(2);
 //					return hostShellProcessAdapter.hasErrors();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index 2dba0a6..bb137b1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -17,10 +17,6 @@ import org.eclipse.rse.services.shells.IHostShellOutputReader;
 import org.eclipse.swt.widgets.Display;
 
 public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
-	private String commandPrompt = null;
-	private static final String ROOT = "root";
-	private static final String PROMPT_USER_CH = "$";
-	private static final String PROMPT_ROOT_CH = "#";
 	private ProcessStreamBuffer processStreamBuffer;
 	private CommandResponseHandler commandResponseHandler;
 	private boolean isFinished;
@@ -30,7 +26,6 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 
 	private String command;
 	private Map<String, IProgressMonitor> commandMonitors;
-	private String endChar = null;
 
 	private Semaphore sem;
 
@@ -57,9 +52,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 			isFinished = false;
 			sem.acquire();
 			this.command = lastCommand.trim();
-			System.out.println("last command " + lastCommand + getOwnMonitor());
 			this.commandMonitors.put(command, getOwnMonitor());
-
 		} catch (InterruptedException e) {
 			e.printStackTrace();
 		}
@@ -145,7 +138,6 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				if (value.isEmpty()) {
 					continue;
 				}
-				setCommandPrompt(value);
 				System.out.println(value);
 				this.processStreamBuffer.addErrorLine(value);
 				this.commandResponseHandler.response(value, false);
@@ -156,11 +148,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				if (value.isEmpty()) {
 					continue;
 				}
-				setCommandPrompt(value);
-
-				if (commandPrompt != null && endChar != null && command != null && processStreamBuffer != null &&
-						value.startsWith(commandPrompt) &&  value.endsWith(endChar) &&
-						!value.endsWith(command) && processStreamBuffer.getLastOutputLineContaining(command) != null /*&& waitForOutput*/) {
+				if (value.endsWith(RemoteHelper.TERMINATOR)) {
 					sem.release();
 					isFinished = true;
 				}
@@ -173,20 +161,6 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 		}
 
 	}
-	private void setCommandPrompt(String value) {
-		if (commandPrompt == null) {
-			if (value.startsWith(ROOT) && value.indexOf(PROMPT_ROOT_CH) != -1) {
-				int end = value.indexOf(PROMPT_ROOT_CH);
-				commandPrompt = value.substring(0, end);
-				endChar = PROMPT_ROOT_CH;
-			} else if (value.indexOf(PROMPT_USER_CH) != -1) {
-				int end = value.indexOf(PROMPT_USER_CH);
-				commandPrompt = value.substring(0, end);
-				endChar = PROMPT_USER_CH;
-			}
-
-		}
-	}
 	public boolean isFinished() {
 		return isFinished;
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 64ca6a7..48c59d5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -24,10 +24,8 @@ import org.eclipse.core.resources.IResourceChangeListener;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.jface.resource.ImageDescriptor;
 import org.eclipse.jface.resource.ImageRegistry;
-import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.ui.plugin.AbstractUIPlugin;
 import org.osgi.framework.BundleContext;
@@ -68,7 +66,7 @@ public class Activator extends AbstractUIPlugin {
 
 		return recipe;
 	}
-	
+
 	/**
 	 * Get or create a BitBake session passing in ProjectInfo
 	 * @param pinfo
@@ -80,40 +78,36 @@ public class Activator extends AbstractUIPlugin {
 		if (bbSessionMap == null) {
 			bbSessionMap = new Hashtable<URI, BBSession>();
 		}
-		
-		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
-		
+
+		BBSession bbs = bbSessionMap.get(projectRoot);
+
 		if (bbs == null) {
 			bbs = new BBSession(getShellSession(projectInfo, out, monitor), projectRoot);
 			bbSessionMap.put(projectRoot, bbs);
 		}
-		
+
 		return bbs;
 	}
-	
+
 	/**
 	 * Get or create a BitBake session passing in ProjectInfo
 	 * @param pinfo
 	 * @return
-	 * @throws Exception 
+	 * @throws Exception
 	 */
 	public static BBSession getBBSession(ProjectInfo projectInfo, IProgressMonitor monitor) throws Exception {
 		URI projectRoot = projectInfo.getURI();
 		if (bbSessionMap == null) {
 			bbSessionMap = new Hashtable<URI, BBSession>();
 		}
-		
-		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
-		
+
+		BBSession bbs = bbSessionMap.get(projectRoot);
+
 		if (bbs == null) {
 			bbs = new BBSession(getShellSession(projectInfo, null, monitor), projectRoot);
 			bbSessionMap.put(projectRoot, bbs);
-		} else {
-			if (projectInfo.getConnection() == null) {
-				throw new Exception("The remote connection is null!");
-			}
 		}
-		
+
 		return bbs;
 	}
 
@@ -141,9 +135,7 @@ public class Activator extends AbstractUIPlugin {
 		if (projInfoMap == null) {
 			projInfoMap = new Hashtable<URI, ProjectInfo>();
 		}
-		
-		ProjectInfo pi = (ProjectInfo) projInfoMap.get(location);
-		
+		ProjectInfo pi = projInfoMap.get(location);
 		if (pi == null) {
 			pi = new ProjectInfo();
 			pi.setLocation(location);
@@ -152,13 +144,10 @@ public class Activator extends AbstractUIPlugin {
 			} catch (IOException e) {
 				throw new InvocationTargetException(e);
 			}
-			if (pi.getConnection() == null) {
-				IHost connection = RemoteHelper.getRemoteConnectionForURI(location, new NullProgressMonitor());
-				pi.setConnection(connection);
-			}
+
 			projInfoMap.put(location, pi);
 		}
-		
+
 		return pi;
 	}
 
@@ -175,7 +164,7 @@ public class Activator extends AbstractUIPlugin {
 		if(bbSessionMap != null) {
 			iter= bbSessionMap.values().iterator();
 			while(iter.hasNext()) {
-				BBSession p = (BBSession)iter.next();
+				BBSession p = iter.next();
 				p.changeNotified(added, removed, changed);
 			}
 		}
@@ -184,56 +173,31 @@ public class Activator extends AbstractUIPlugin {
 	/**
 	 * @param absolutePath
 	 * @return a cached shell session for a given project root.
-	 * @throws IOException 
+	 * @throws IOException
 	 */
 	private static ShellSession getShellSession(ProjectInfo projInfo, Writer out, IProgressMonitor monitor) throws IOException {
 		URI absolutePath = projInfo.getURI();
 		if (shellMap == null) {
 			shellMap = new Hashtable<String, ShellSession>();
 		}
-		
-		ShellSession ss = (ShellSession) shellMap.get(absolutePath);
-		
+
+		ShellSession ss = shellMap.get(absolutePath);
+
 		if (ss == null) {
-//			if (conn == null)
-//				RemoteHelper.getRemoteConnectionByName();
 			IHostFile remoteHostFile = RemoteHelper.getRemoteHostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);
 			ss = new ShellSession(projInfo, ShellSession.SHELL_TYPE_BASH, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath), out);
 		}
-		
+
 		return ss;
 	}
 
-//	private static String loadInit(String absolutePath) throws CoreException {
-//		IProject [] prjs = ResourcesPlugin.getWorkspace().getRoot().getProjects();
-//		IProject foundPrj = null;
-//		
-//		for (int i = 0; i < prjs.length; ++i) {
-//			IProject p = prjs[i];
-//			
-//			System.out
-//					.println(p.getDescription().getLocationURI().getPath());
-//			
-//			if (p.getDescription().getLocationURI().getPath().equals(absolutePath)) {
-//				foundPrj = p;
-//				break;
-//			}
-//		}
-//		
-//		if (foundPrj == null) {
-//			throw new RuntimeException("Unable to find project associated with path! " + absolutePath);
-//		}
-//	
-//		return foundPrj.getPersistentProperty(CreateBBCProjectOperation.BBC_PROJECT_INIT);
-//	}
-	
 	public static void putProjInfo(URI location, ProjectInfo pinfo) {
 		if (projInfoMap == null) {
 			projInfoMap = new Hashtable<URI, ProjectInfo>();
 		}
 		projInfoMap.put(location, pinfo);
 	}
-	
+
 	/**
 	 * The constructor
 	 */
@@ -273,6 +237,7 @@ public class Activator extends AbstractUIPlugin {
 		bbSessionMap.remove(path);
 	}
 
+	@Override
 	protected void initializeImageRegistry(ImageRegistry reg) {
 		reg.put(IMAGE_VARIABLE, Activator.getImageDescriptor("icons/variable.gif"));
 		reg.put(IMAGE_FUNCTION, Activator.getImageDescriptor("icons/function.gif"));
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 5fc4ba2..4530bb3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -13,6 +13,7 @@ package org.yocto.bc.ui.model;
 import java.net.URI;
 
 import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;
@@ -58,6 +59,9 @@ public class ProjectInfo implements IModelElement {
 	}
 
 	public IHost getConnection() {
+		if (connection == null) {
+			connection = RemoteHelper.getRemoteConnectionForURI(location, new NullProgressMonitor());
+		}
 		return connection;
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index 57cad18..8457996 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -118,10 +118,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 				IProject p = ((IResource)element).getProject();
 				try {
 					ProjectInfo projInfo = Activator.getProjInfo(p.getLocationURI());
-					if (projInfo.getConnection() == null)
-						this.connection = RemoteHelper.getRemoteConnectionForURI(p.getLocationURI(), new NullProgressMonitor());
-					else
-						this.connection = projInfo.getConnection();
+					this.connection = projInfo.getConnection();
 				} catch (CoreException e) {
 					e.printStackTrace();
 				} catch (InvocationTargetException e) {
@@ -205,7 +202,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
-					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf temp", element.getMetaDir() + "/temp", ""));
+					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""));
 				} catch (Exception e) {
 					throw new InvocationTargetException(e);
 				} finally {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index e9dc1f3..a52c2fe 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -397,22 +397,17 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		updateSrcUri(mirrorTable, srcURI);
 		populateInheritance(extractDir, monitor);
 
-		String md5Val = retrieveSum(md5YCmd);
+		String md5Val = retrieveSum(srcFileNameExt, md5Pattern);
 		md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
-		String sha256Val = retrieveSum(sha256YCmd);
+		String sha256Val = retrieveSum(srcFileNameExt, sha256Pattern);
 		sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
-		String checkSumVal =  retrieveSum(licenseChecksumCmd);
+		String checkSumVal =  retrieveSum(COPYING_FILE, md5Pattern);
 		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
 	}
 
-	private String retrieveSum(YoctoCommand cmd) {
+	private String retrieveSum(String arg, String pattern) {
 		ProcessStreamBuffer buffer = RemoteHelper.getProcessBuffer(this.connection);
-		String line = buffer.getOutputLineContaining(cmd.getCommand());
-		if (line != null) {
-			String[] tokens = line.split(WHITESPACES);
-			return tokens[0];
-		}
-		return "";
+		return buffer.getOutputLineContaining(arg, pattern);
 	}
 
 	private URI extractPackage(URI srcURI) {
-- 
1.7.9.5


