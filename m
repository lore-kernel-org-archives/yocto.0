Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2566E0127C
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 08:04:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jan 2013 08:03:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,444,1355126400"; d="scan'208";a="244685166"
Received: from igrigorx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.237.108.42])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2013 08:04:31 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jan 2013 18:04:17 +0200
Message-Id: <1357833857-16426-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357833857-16426-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1357833857-16426-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 3/3] Reinstate OEFileSystem, OEFile and Ignored Paths for Linux
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
X-List-Received-Date: Thu, 10 Jan 2013 16:04:46 -0000

- OEFileSystem and OEFile were dropped due to the use of hardcoded scheme "oefs://" that stopped remote connection from working. There is a need to have a custom file system in order to skip indexing large directories (such as build, tmp) and ignore some paths--was not tested under Windows

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    2 +-
 plugins/org.yocto.bc.ui/plugin.xml                 |    3 +-
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   24 ++--
 .../src/org/yocto/bc/ui/Activator.java             |   45 +++++---
 .../org/yocto/bc/ui/BCResourceChangeListener.java  |    1 -
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  120 ++++----------------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   50 ++++++--
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    7 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |   31 ++++-
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   21 +++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  100 ++++++++++++----
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    1 -
 .../newproject/CreateBBCProjectOperation.java      |   23 ++--
 13 files changed, 248 insertions(+), 180 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 9e8c523..1f0e63e 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.bc.ui;singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.2.0.qualifier
 Bundle-Activator: org.yocto.bc.ui.Activator
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui,
diff --git a/plugins/org.yocto.bc.ui/plugin.xml b/plugins/org.yocto.bc.ui/plugin.xml
index cb0561c..6ba9b5f 100644
--- a/plugins/org.yocto.bc.ui/plugin.xml
+++ b/plugins/org.yocto.bc.ui/plugin.xml
@@ -180,8 +180,7 @@
    </extension>
    <extension
          point="org.eclipse.core.filesystem.filesystems">
-      <filesystem
-            scheme="OEFS">
+      <filesystem scheme="OEFS">
          <run
                class="org.yocto.bc.ui.filesystem.OEFileSystem">
          </run>
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
index 2938c95..f5259e5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
@@ -10,27 +10,25 @@
  *******************************************************************************/
 package org.yocto.bc.bitbake;
 
-import java.io.BufferedReader;
-import java.io.File;
-import java.io.FileReader;
 import java.io.IOException;
 import java.net.URI;
-import java.net.URISyntaxException;
 
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
-import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.ui.model.ProjectInfo;
 
 /**
  * A helper class for ProjectInfo related tasks.
- * 
+ *
  * @author kgilmer
- * 
+ *
  */
 public class ProjectInfoHelper {
+	public static final String OEFS_SCHEME = "OEFS://";
+	public static final String FILE_SCHEME = "file";
+	public static final String RSE_SCHEME = "rse";
 
 	protected static final String DEFAULT_INIT_SCRIPT = "oe-init-build-env";
 	/**
@@ -54,17 +52,17 @@ public class ProjectInfoHelper {
 //		}
 		return val;
 	}
-	
+
 //	public static String getInitScript(String path) throws IOException {
 //		File inFile = new File(path);
 //		BufferedReader br = new BufferedReader(new FileReader(inFile));
 //		StringBuffer sb = new StringBuffer();
 //		String line = null;
-//		
+//
 //		while ((line = br.readLine()) != null) {
 //			sb.append(line);
 //		}
-//		
+//
 //		br.close();
 //
 //		return sb.toString();
@@ -89,7 +87,7 @@ public class ProjectInfoHelper {
 	/**
 	 * This method will store the path to the bitbake init script for future
 	 * reference.
-	 * 
+	 *
 	 * @param path
 	 * @param projInfo
 	 * @throws IOException
@@ -121,8 +119,8 @@ public class ProjectInfoHelper {
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
-		
-		
+
+
 	}
 
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 48c59d5..188efe6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -14,6 +14,7 @@ import java.io.IOException;
 import java.io.Writer;
 import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
+import java.net.URISyntaxException;
 import java.util.Hashtable;
 import java.util.Iterator;
 import java.util.Map;
@@ -130,25 +131,43 @@ public class Activator extends AbstractUIPlugin {
 	public static ImageDescriptor getImageDescriptor(String path) {
 		return imageDescriptorFromPlugin(PLUGIN_ID, path);
 	}
-
+	public static URI convertOEFSUri(URI uri){
+		if (ProjectInfoHelper.OEFS_SCHEME.startsWith(uri.getScheme())) {
+			String scheme = "";
+			if (uri.getHost() == null)
+				scheme = ProjectInfoHelper.FILE_SCHEME;
+			else
+				scheme = ProjectInfoHelper.RSE_SCHEME;
+			try {
+				return new URI(scheme, uri.getHost(), uri.getPath(), uri.getFragment());
+			} catch (URISyntaxException e) {
+				e.printStackTrace();
+				return null;
+			}
+		}
+		return null;
+	}
 	public static ProjectInfo getProjInfo(URI location) throws CoreException, InvocationTargetException, InterruptedException {
 		if (projInfoMap == null) {
 			projInfoMap = new Hashtable<URI, ProjectInfo>();
 		}
-		ProjectInfo pi = projInfoMap.get(location);
-		if (pi == null) {
-			pi = new ProjectInfo();
-			pi.setLocation(location);
-			try {
-				pi.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(location));
-			} catch (IOException e) {
-				throw new InvocationTargetException(e);
+		location = convertOEFSUri(location);
+		if (location != null) {
+			ProjectInfo pi = projInfoMap.get(location);
+			if (pi == null) {
+				pi = new ProjectInfo();
+				pi.setLocation(location);
+				try {
+					pi.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(location));
+				} catch (IOException e) {
+					throw new InvocationTargetException(e);
+				}
+
+				projInfoMap.put(location, pi);
 			}
-
-			projInfoMap.put(location, pi);
+			return pi;
 		}
-
-		return pi;
+		return null;
 	}
 
 	public static void notifyAllBBSession(IResource[] added, IResource[] removed, IResource[] changed) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/BCResourceChangeListener.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/BCResourceChangeListener.java
index f22f583..8a2bfdd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/BCResourceChangeListener.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/BCResourceChangeListener.java
@@ -41,7 +41,6 @@ public class BCResourceChangeListener implements IResourceChangeListener {
             			        	  removed.add(res);
             			              break;
             			           case IResourceDelta.CHANGED:
-            			        	  res.getLocation();
             			        	  changed.add(res);
             			              break;
             			        }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index 7e780cb..eb6fc11 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -12,14 +12,9 @@
 package org.yocto.bc.ui.filesystem;
 
 import java.io.File;
-import java.io.FileInputStream;
-import java.io.FileNotFoundException;
-import java.io.FileOutputStream;
-import java.io.IOException;
 import java.io.InputStream;
 import java.io.OutputStream;
 import java.net.URI;
-import java.util.ArrayList;
 import java.util.List;
 
 import org.eclipse.core.filesystem.EFS;
@@ -32,14 +27,10 @@ import org.eclipse.core.filesystem.provider.FileStore;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.MultiStatus;
 import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.core.runtime.Status;
 import org.eclipse.osgi.util.NLS;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
-import org.eclipse.rse.services.files.IFileService;
-import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
@@ -52,18 +43,13 @@ import org.yocto.bc.ui.model.YoctoHostFile;
  * operating system's file system.
  */
 public class OEFile extends FileStore {
-	private static int attributes(File aFile) {
-		if (!aFile.exists() || aFile.canWrite())
-			return EFS.NONE;
-		return EFS.ATTRIBUTE_READ_ONLY;
-	}
-	
+
 	/**
 	 * The java.io.File that this store represents.
 	 */
 	protected final YoctoHostFile file;
-	
-	private List<?> ignoredPaths;
+
+	private List<Object> ignoredPaths;
 
 	/**
 	 * The absolute file system path of the file represented by this store.
@@ -74,35 +60,18 @@ public class OEFile extends FileStore {
 
 	/**
 	 * Creates a new local file.
-	 * 
+	 *
 	 * @param file The file this local file represents
-	 * @param root 
-	 * @throws SystemMessageException 
+	 * @param root
+	 * @throws SystemMessageException
 	 */
-	public OEFile(URI fileURI, List<?> ignoredPaths, URI root, ProjectInfo projInfo, IProgressMonitor monitor) throws SystemMessageException {
+	public OEFile(URI fileURI, List<Object> ignoredPaths, URI root, ProjectInfo projInfo, IProgressMonitor monitor) throws SystemMessageException {
 		this.ignoredPaths = ignoredPaths;
 		this.root = root;
 		this.file = new YoctoHostFile(projInfo, fileURI, monitor);
 		this.filePath = file.getAbsolutePath();
 	}
 
-	/**
-	 * This method is called after a failure to modify a file or directory.
-	 * Check to see if the parent is read-only and if so then
-	 * throw an exception with a more specific message and error code.
-	 * 
-	 * @param target The file that we failed to modify
-	 * @param exception The low level exception that occurred, or <code>null</code>
-	 * @throws CoreException A more specific exception if the parent is read-only
-	 */
-	private void checkReadOnlyParent(File target, Throwable exception) throws CoreException {
-		File parent = target.getParentFile();
-		if (parent != null && (attributes(parent) & EFS.ATTRIBUTE_READ_ONLY) != 0) {
-			String message = NLS.bind(Messages.readOnlyParent, target.getAbsolutePath());
-			Policy.error(EFS.ERROR_PARENT_READ_ONLY, message, exception);
-		}
-	}
-
 	@Override
 	public String[] childNames(int options, IProgressMonitor monitor) {
 		return file.getChildNames(monitor);
@@ -125,11 +94,11 @@ public class OEFile extends FileStore {
 	/*
 	 * try to find items for ignoreList
 	 */
-	private void updateIgnorePaths(String path, List list, IProgressMonitor monitor) {
+	private void updateIgnorePaths(String path, List<Object> list, IProgressMonitor monitor) {
 		if(isPotentialBuildDir(path)) {
 			BBSession config = null;
 			try {
-				ShellSession shell = new ShellSession(file.getProjectInfo(), ShellSession.SHELL_TYPE_BASH, RemoteHelper.getRemoteHostFile(file.getConnection(), root.getPath(), monitor), 
+				ShellSession shell = new ShellSession(file.getProjectInfo(), ShellSession.SHELL_TYPE_BASH, RemoteHelper.getRemoteHostFile(file.getConnection(), root.getPath(), monitor),
 							ProjectInfoHelper.getInitScriptPath(root) + " " + path, null);
 				config = new BBSession(shell, root, true);
 				config.initialize();
@@ -158,18 +127,18 @@ public class OEFile extends FileStore {
 	public IFileStore[] childStores(int options, IProgressMonitor monitor) throws CoreException {
 		String[] children = childNames(options, monitor);
 		IFileStore[] wrapped = new IFileStore[children.length];
-		
+
 		for (int i = 0; i < wrapped.length; i++) {
 			String fullPath = file.toString() +File.separatorChar + children[i];
-			
+
 			updateIgnorePaths(fullPath, ignoredPaths, monitor);
 			if (ignoredPaths.contains(fullPath)) {
 				wrapped[i] = getDeadChild(children[i]);
 			} else {
 				wrapped[i] = getChild(children[i]);
-			}			
+			}
 		}
-		
+
 		return wrapped;
 	}
 
@@ -177,7 +146,7 @@ public class OEFile extends FileStore {
 	public void copy(IFileStore destFileStore, int options, IProgressMonitor monitor) throws CoreException {
 		if (destFileStore instanceof OEFile) {
 			file.copy(destFileStore, monitor);
-			
+
 //			File source = file;
 //			File destination = ((OEFile) destFile).file;
 //			//handle case variants on a case-insensitive OS, or copying between
@@ -194,7 +163,7 @@ public class OEFile extends FileStore {
 //			}
 		}
 		//fall through to super implementation
-//		super.copy(destFile, options, monitor);
+//		super.copy(destFileStore, options, monitor);
 	}
 
 	@Override
@@ -207,13 +176,13 @@ public class OEFile extends FileStore {
 			monitor.beginTask(NLS.bind(Messages.deleting, this), 200);
 			String message = Messages.deleteProblem;
 			MultiStatus result = new MultiStatus(Policy.PI_FILE_SYSTEM, EFS.ERROR_DELETE, message, null);
-			
+
 			//don't allow Eclipse to delete entire OE directory
-			
+
 			if (!isProject()) {
 				internalDelete(file, filePath, result, monitor);
 			}
-			
+
 			if (!result.isOK())
 				throw new CoreException(result);
 		} finally {
@@ -249,10 +218,9 @@ public class OEFile extends FileStore {
 		info.setAttribute(EFS.ATTRIBUTE_HIDDEN, file.isHidden());
 		return info;
 	}
-	
+
 	@Override
 	public IFileStore getChild(IPath path) {
-		//URI fileURI, List<?> ignoredPaths, URI root, ProjectInfo projInfo, IProgressMonitor monitor
 		try {
 			return new OEFile(file.getChildURIformPath(path), ignoredPaths, root, file.getProjectInfo(), new NullProgressMonitor());
 		} catch (SystemMessageException e) {
@@ -263,12 +231,14 @@ public class OEFile extends FileStore {
 
 	@Override
 	public IFileStore getChild(String name) {
+
 		try {
 			return new OEFile(file.getChildURI(name), ignoredPaths, root, file.getProjectInfo(), new NullProgressMonitor());
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
 		}
 		return null;
+
 	}
 
 	private IFileStore getDeadChild(String name) {
@@ -311,6 +281,7 @@ public class OEFile extends FileStore {
 	 * to optimize java.io.File object creation.
 	 */
 	private boolean internalDelete(YoctoHostFile target, String pathToDelete, MultiStatus status, IProgressMonitor monitor) {
+		target.delete(monitor);
 		//first try to delete - this should succeed for files and symbolic links to directories
 //		if (target.delete() || !target.exists())
 //			return true;
@@ -395,6 +366,7 @@ public class OEFile extends FileStore {
 //			String message = NLS.bind(Messages.failedCreateWrongType, filePath);
 //			Policy.error(EFS.ERROR_WRONG_TYPE, message);
 //		}
+		file.mkdir(options);
 		return this;
 	}
 
@@ -463,59 +435,17 @@ public class OEFile extends FileStore {
 
 	@Override
 	public InputStream openInputStream(int options, IProgressMonitor monitor) throws CoreException {
-		file.getInputStream(options, monitor);
-//		monitor = Policy.monitorFor(monitor);
-//		try {
-//			monitor.beginTask("", 1); //$NON-NLS-1$
-//			return new FileInputStream(file);
-//		} catch (FileNotFoundException e) {
-//			String message;
-//			if (!file.exists())
-//				message = NLS.bind(Messages.fileNotFound, filePath);
-//			else if (file.isDirectory())
-//				message = NLS.bind(Messages.notAFile, filePath);
-//			else
-//				message = NLS.bind(Messages.couldNotRead, filePath);
-//			Policy.error(EFS.ERROR_READ, message, e);
-//			return null;
-//		} finally {
-//			monitor.done();
-//		}
-		return null;
+		return file.getInputStream(options, monitor);
 	}
 
 	@Override
 	public OutputStream openOutputStream(int options, IProgressMonitor monitor) throws CoreException {
-		file.getOutputStream(options, monitor);
-//		monitor = Policy.monitorFor(monitor);
-//		try {
-//			monitor.beginTask("", 1); //$NON-NLS-1$
-//			return new FileOutputStream(file, (options & EFS.APPEND) != 0);
-//		} catch (FileNotFoundException e) {
-//			checkReadOnlyParent(file, e);
-//			String message;
-//			String path = filePath;
-//			if (file.isDirectory())
-//				message = NLS.bind(Messages.notAFile, path);
-//			else
-//				message = NLS.bind(Messages.couldNotWrite, path);
-//			Policy.error(EFS.ERROR_WRITE, message, e);
-//			return null;
-//		} finally {
-//			monitor.done();
-//		}
-		return null;
+		return file.getOutputStream(options, monitor);
 	}
 
 	@Override
 	public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) throws CoreException {
 		file.putInfo(info, options, monitor);
-//		boolean success = true;
-//		native does not currently set last modified
-//		if ((options & EFS.SET_LAST_MODIFIED) != 0)
-//			success &= file.setLastModified(info.getLastModified());
-//		if (!success && !file.exists())
-//			Policy.error(EFS.ERROR_NOT_EXISTS, NLS.bind(Messages.fileNotFound, filePath));
 	}
 
 	/* (non-Javadoc)
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
index 8422f05..5efdcdc 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
@@ -10,6 +10,7 @@
  *******************************************************************************/
 package org.yocto.bc.ui.filesystem;
 
+import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Hashtable;
@@ -19,7 +20,9 @@ import java.util.Map;
 import org.eclipse.core.filesystem.IFileStore;
 import org.eclipse.core.filesystem.IFileSystem;
 import org.eclipse.core.filesystem.provider.FileSystem;
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
@@ -34,28 +37,34 @@ public class OEFileSystem extends FileSystem {
 
 	private static IFileSystem ref;
 	private ProjectInfo projInfo;
-	
+
 	public static IFileSystem getInstance() {
 		return ref;
 	}
 
 	private Map fileStoreCache;
 
-	public OEFileSystem(ProjectInfo pInfo) {
+	public OEFileSystem() {
 		ref = this;
-		projInfo = pInfo;
 		fileStoreCache = new Hashtable();
 	}
-	
+
+//	public OEFileSystem(ProjectInfo pInfo) {
+//		ref = this;
+//		projInfo = pInfo;
+//		fileStoreCache = new Hashtable();
+//	}
+
 	@Override
 	public IFileStore getStore(URI uri) {
-		
+
 		OEFile uf = (OEFile) fileStoreCache.get(uri);
-		
+		setProjInfo(uri);
+
 		if (uf == null) {
 			BBSession config = null;
 			try {
-				config = Activator.getBBSession(uf.getProjectInfo(), new NullProgressMonitor());
+				config = Activator.getBBSession(projInfo, new NullProgressMonitor());
 				config.initialize();
 			} catch (Exception e) {
 				e.printStackTrace();
@@ -65,19 +74,36 @@ public class OEFileSystem extends FileSystem {
 			if (config.get("TMPDIR") == null || config.get("DL_DIR") == null || config.get("SSTATE_DIR")== null) {
 				throw new RuntimeException("Invalid local.conf: TMPDIR or DL_DIR or SSTATE_DIR undefined.");
 			}
-			
+
 			List ignoreList = new ArrayList();
 
 			//These directories are ignored because they contain too many files for Eclipse to handle efficiently.
 			ignoreList.add(config.get("TMPDIR"));
 			ignoreList.add(config.get("DL_DIR"));
 			ignoreList.add(config.get("SSTATE_DIR"));
-			
+
 			//FIXME: add project info
-			//uf = new OEFile(uri, ignoreList, uri, projectInfo, new NullProgressMonitor());
-			fileStoreCache.put(uri, uf);
+			try {
+				uf = new OEFile(uri, ignoreList, uri, projInfo, new NullProgressMonitor());
+				fileStoreCache.put(uri, uf);
+			} catch (SystemMessageException e) {
+				e.printStackTrace();
+			}
 		}
-		
+
 		return uf;
 	}
+
+	private void setProjInfo(URI uri) {
+			try {
+				if(projInfo == null)
+					projInfo = Activator.getProjInfo(uri);
+			} catch (CoreException e) {
+				e.printStackTrace();
+			} catch (InvocationTargetException e) {
+				e.printStackTrace();
+			} catch (InterruptedException e) {
+				e.printStackTrace();
+			}
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java
index 4ac2998..dfa2bff 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java
@@ -17,14 +17,17 @@ import org.eclipse.ui.ide.fileSystem.FileSystemContributor;
 
 public class OEFileSystemContributor extends FileSystemContributor  {
 
+	public OEFileSystemContributor() {
+	}
+
 	@Override
 	public URI browseFileSystem(String initialPath, Shell shell) {
 		return null;
 	}
-	
+
 	@Override
 	public URI getURI(String string) {
 		return super.getURI(string);
 	}
-	
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
index 26da202..9764ca1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
@@ -22,7 +22,6 @@ import org.eclipse.core.filesystem.provider.FileInfo;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.ui.model.YoctoHostFile;
 
 public class OEIgnoreFile implements IFileStore {
@@ -33,94 +32,116 @@ public class OEIgnoreFile implements IFileStore {
 		this.file = file;
 	}
 
+	@Override
 	public IFileInfo[] childInfos(int options, IProgressMonitor monitor) throws CoreException {
 
 		return new IFileInfo[0];
 	}
 
+	@Override
 	public String[] childNames(int options, IProgressMonitor monitor) throws CoreException {
 		return new String[0];
 	}
 
+	@Override
 	public IFileStore[] childStores(int options, IProgressMonitor monitor) throws CoreException {
 
 		return new IFileStore[0];
 	}
 
+	@Override
 	public void copy(IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
 	}
 
+	@Override
 	public void delete(int options, IProgressMonitor monitor) throws CoreException {
 	}
-	
+
+	@Override
 	public IFileInfo fetchInfo() {
 		return new FileInfo(file.getName());
 	}
 
+	@Override
 	public IFileInfo fetchInfo(int options, IProgressMonitor monitor) throws CoreException {
 		return new FileInfo(file.getName());
 	}
 
+	@Override
 	public Object getAdapter(Class adapter) {
 		return null;
 	}
 
+	@Override
 	public IFileStore getChild(IPath path) {
 		return null;
 	}
 
 
 
+	@Override
 	public IFileStore getChild(String name) {
 		return null;
 	}
 
+	@Override
 	public IFileSystem getFileSystem() {
 		return OEFileSystem.getInstance();
 	}
 
+	@Override
 	public String getName() {
 		return file.getName();
 	}
 
+	@Override
 	public IFileStore getParent() {
 		return null;
 	}
 
+	@Override
 	public boolean isParentOf(IFileStore other) {
 		return false;
 	}
 
+	@Override
 	public IFileStore mkdir(int options, IProgressMonitor monitor) throws CoreException {
 		return null;
 	}
 
+	@Override
 	public void move(IFileStore destination, int options, IProgressMonitor monitor) throws CoreException {
 	}
 
+	@Override
 	public InputStream openInputStream(int options, IProgressMonitor monitor) throws CoreException {
 		return null;
 	}
 
+	@Override
 	public OutputStream openOutputStream(int options, IProgressMonitor monitor) throws CoreException {
 		return null;
 	}
 
+	@Override
 	public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) throws CoreException {
 	}
 
-	
+
+	@Override
 	public File toLocalFile(int options, IProgressMonitor monitor) throws CoreException {
 		return file.toLocalFile();
 	}
 
+	@Override
 	public URI toURI() {
 		return file.toURI();
 	}
 
+	@Override
 	public IFileStore getFileStore(IPath path) {
 		return null;
 	}
-	
-	
+
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 4530bb3..089c1ac 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -14,7 +14,6 @@ import java.net.URI;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IFileService;
@@ -24,13 +23,14 @@ import org.yocto.bc.remote.utils.RemoteHelper;
 public class ProjectInfo implements IModelElement {
 	private String name;
 	private URI location;
+	private URI oefsLocation;
 	private String init;
 	private IHost connection;
 	private IRemoteServices remoteServices;
-	
+
 	public ProjectInfo() {
 	}
-	
+
 	public String getInitScriptPath() {
 		return init;
 	}
@@ -40,6 +40,7 @@ public class ProjectInfo implements IModelElement {
 	public URI getURI() {
 		return location;
 	}
+	@Override
 	public void initialize() throws Exception {
 		name = new String();
 		location = new URI("");
@@ -53,7 +54,7 @@ public class ProjectInfo implements IModelElement {
 	public void setLocation(URI location) {
 		this.location = location;
 	}
-	
+
 	public void setName(String name) {
 		this.name = name;
 	}
@@ -76,13 +77,21 @@ public class ProjectInfo implements IModelElement {
 	public void setRemoteServices(IRemoteServices remoteServices) {
 		this.remoteServices = remoteServices;
 	}
-	
+
 	public IFileService getFileService(IProgressMonitor monitor){
 		try {
-			return (IFileService)RemoteHelper.getConnectedRemoteFileService(connection, monitor);
+			return RemoteHelper.getConnectedRemoteFileService(connection, monitor);
 		} catch (Exception e) {
 			e.printStackTrace();
 			return null;
 		}
 	}
+
+	public URI getOefsLocation() {
+		return oefsLocation;
+	}
+
+	public void setOefsLocation(URI oefsLocation) {
+		this.oefsLocation = oefsLocation;
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
index 08ff7fa..04b483c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
@@ -1,6 +1,8 @@
 package org.yocto.bc.ui.model;
 
 import java.io.File;
+import java.io.InputStream;
+import java.io.OutputStream;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.ArrayList;
@@ -8,35 +10,42 @@ import java.util.ArrayList;
 import org.eclipse.core.filesystem.EFS;
 import org.eclipse.core.filesystem.IFileInfo;
 import org.eclipse.core.filesystem.IFileStore;
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.osgi.util.NLS;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
+import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.filesystem.Messages;
+import org.yocto.bc.ui.filesystem.Policy;
 
 public class YoctoHostFile implements IHostFile{
 	private IHostFile file;
 	private URI fileURI;
 	private ProjectInfo projectInfo;
 	private IFileService fileService;
-	
+
 	public YoctoHostFile(ProjectInfo pInfo, URI fileURI, IProgressMonitor monitor) throws SystemMessageException {
 		this.projectInfo = pInfo;
 		this.fileURI = fileURI;
 		String path = fileURI.getPath();
-		int parentEnd = path.lastIndexOf("/");
-		String parentPath = path.substring(0, parentEnd);
-		String fileName = path.substring(parentEnd + 1);
+//		int parentEnd = path.lastIndexOf("/");
+//		String parentPath = path.substring(0, parentEnd);
+//		String fileName = path.substring(parentEnd + 1);
 		fileService = projectInfo.getFileService(monitor);
-		fileService.getFile(parentPath, fileName, monitor);
+		file = RemoteHelper.getRemoteHostFile(projectInfo.getConnection(), path, monitor);
+//		fileService.getFile(parentPath, fileName, monitor);
 	}
-	
+
 	public YoctoHostFile(ProjectInfo projectInfo, URI uri) {
 		this.fileURI = uri;
 		this.projectInfo = projectInfo;
 	}
-	
+
 	public IHostFile getFile() {
 		return file;
 	}
@@ -49,9 +58,11 @@ public class YoctoHostFile implements IHostFile{
 	public void setProjectInfo(ProjectInfo projectInfo) {
 		this.projectInfo = projectInfo;
 	}
+	@Override
 	public String getAbsolutePath() {
 		return file.getAbsolutePath();
 	}
+	@Override
 	public String getName() {
 		return file.getName();
 	}
@@ -62,23 +73,26 @@ public class YoctoHostFile implements IHostFile{
 		projectInfo.getURI().getPath().indexOf(file.getAbsolutePath());
 		return projectInfo.getURI();
 	}
+	@Override
 	public boolean isDirectory() {
 		return file.isDirectory();
 	}
+	@Override
 	public String getParentPath() {
 		return file.getParentPath();
 	}
 	public boolean copy(IFileStore destFileStore, IProgressMonitor monitor) {
 		IHostFile destFile;
 		try {
-			destFile = fileService.getFile(destFileStore.toURI().getPath(), destFileStore.getName(), monitor);
-			fileService.copy(file.getParentPath(), file.getName(), destFile.getParentPath(), destFile.getAbsolutePath(), monitor);
+			destFile = fileService.createFile(destFileStore.getParent().toURI().getPath(), destFileStore.getName(), monitor);
+			fileService.copy(file.getParentPath(), file.getName(), destFile.getParentPath(), destFile.getName(), monitor);
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
 			return false;
 		}
 		return true;
 	}
+	@Override
 	public boolean exists() {
 		return file.exists();
 	}
@@ -137,30 +151,76 @@ public class YoctoHostFile implements IHostFile{
 		}
 		return true;
 	}
-	public void mkdir() {
-		
+
+	/**
+	 * This method is called after a failure to modify a file or directory.
+	 * Check to see if the parent is read-only and if so then
+	 * throw an exception with a more specific message and error code.
+	 *
+	 * @param target The file that we failed to modify
+	 * @param exception The low level exception that occurred, or <code>null</code>
+	 * @throws CoreException A more specific exception if the parent is read-only
+	 */
+	private void checkReadOnlyParent() throws CoreException {
+		String parent = file.getParentPath();
+		String parentOfParent = parent.substring(0, parent.lastIndexOf("/"));
+		IHostFile parentFile;
+		try {
+			parentFile = fileService.getFile(parentOfParent, parent, new NullProgressMonitor());
+			if (parentFile == null || !parentFile.canRead() || !parentFile.canWrite()) {
+				String message = NLS.bind(Messages.readOnlyParent, parent);
+				Policy.error(EFS.ERROR_PARENT_READ_ONLY, message, null);
+			}
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		}
+
 	}
+
+	public void mkdir(int options) {
+//		boolean shallow = (options & EFS.SHALLOW) != 0;
+		try {
+
+			if (!file.isDirectory()) {
+				file = fileService.createFolder(file.getParentPath(), file.getName(), new NullProgressMonitor());
+				if (!file.isDirectory()) {
+					checkReadOnlyParent();
+					String message = NLS.bind(Messages.failedCreateWrongType, file.getAbsolutePath());
+					Policy.error(EFS.ERROR_WRONG_TYPE, message);
+				}
+			}
+		} catch (SystemMessageException e1) {
+			e1.printStackTrace();
+		} catch (CoreException e) {
+			e.printStackTrace();
+		}
+
+	}
+
 	public String[] getChildNames(IProgressMonitor monitor) {
 		if (file.isDirectory()) {
 			IHostFile[] files;
 			try {
 				files = fileService.list(file.getAbsolutePath(), "*", IFileService.FILE_TYPE_FILES_AND_FOLDERS, monitor);
 				ArrayList<String> names = new ArrayList<String>();
-				
+
 				for (IHostFile f : files) {
 					names.add(f.getName());
 				}
-				return (String[])names.toArray();
+
+				String[] arrNames = new String[names.size()];
+				names.toArray(arrNames);
+				return arrNames;
 			} catch (SystemMessageException e) {
 				e.printStackTrace();
 			}
-		} 
+		}
 		return  new String[]{};
 	}
 	public IHost getConnection() {
 		return projectInfo.getConnection();
 	}
-	
+
 	public URI getChildURI(String name) {
 		try {
 			return new URI(fileURI.getScheme(), fileURI.getHost(), fileService.getFile(file.getAbsolutePath(), name, null).getAbsolutePath(), fileURI.getFragment());
@@ -208,19 +268,21 @@ public class YoctoHostFile implements IHostFile{
 		}
 	}
 
-	public void getOutputStream(int options, IProgressMonitor monitor) {
+	public OutputStream getOutputStream(int options, IProgressMonitor monitor) {
 		try {
-			fileService.getOutputStream(file.getParentPath(), file.getName(), options, monitor);
+			return fileService.getOutputStream(file.getParentPath(), file.getName(), options, monitor);
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
+			return null;
 		}
 	}
 
-	public void getInputStream(int options, IProgressMonitor monitor) {
+	public InputStream getInputStream(int options, IProgressMonitor monitor) {
 		try {
-			fileService.getInputStream(file.getParentPath(), file.getName(), false, monitor);
+			return fileService.getInputStream(file.getParentPath(), file.getName(), false, monitor);
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
+			return null;
 		}
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 97d1ad0..ac33760 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -29,7 +29,6 @@ import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.yocto.bc.remote.utils.RemoteHelper;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index 42fa5b1..5ba661c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -12,10 +12,11 @@ package org.yocto.bc.ui.wizards.newproject;
 
 import java.io.IOException;
 import java.lang.reflect.InvocationTargetException;
+import java.net.URI;
+import java.net.URISyntaxException;
 import java.util.Arrays;
 import java.util.Vector;
 
-import org.eclipse.core.internal.resources.ResourceException;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectDescription;
 import org.eclipse.core.resources.IWorkspace;
@@ -23,10 +24,13 @@ import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.QualifiedName;
+import org.eclipse.core.runtime.Status;
 import org.eclipse.ui.actions.WorkspaceModifyOperation;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
 import org.yocto.bc.ui.model.ProjectInfo;
 
@@ -38,7 +42,6 @@ import org.yocto.bc.ui.model.ProjectInfo;
  */
 public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 
-	public static final String OEFS_SCHEME = "OEFS://";
 	public static final QualifiedName BBC_PROJECT_INIT = new QualifiedName(null, "BBC_PROJECT_INIT");
 	public static void addNatureToProject(IProject proj, String nature_id, IProgressMonitor monitor) throws CoreException {
 		IProjectDescription desc = proj.getDescription();
@@ -61,11 +64,15 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 		addNatureToProject(proj, BitbakeCommanderNature.NATURE_ID, monitor);
 	}
 
-	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInformation) throws CoreException {
-		IProjectDescription desc = workspace.newProjectDescription(projInformation.getProjectName());
-
-		desc.setLocationURI(projInformation.getURI());
+	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInfo) throws CoreException {
+		IProjectDescription desc = workspace.newProjectDescription(projInfo.getProjectName());
 
+//		desc.setLocationURI(projInfo.getURI());
+		try {
+			desc.setLocationURI(new URI(ProjectInfoHelper.OEFS_SCHEME + projInfo.getURI().getPath()));
+		} catch (URISyntaxException e) {
+			throw new CoreException(new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to load filesystem.", e));
+		}
 		return desc;
 	}
 
@@ -83,10 +90,6 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 			proj.open(monitor);
 		} catch (IOException e) {
 			throw new InvocationTargetException(e);
-		} catch (ResourceException e){
-			// ignore this exception since it only occurs for special internal files from the repository on Windows platform
-			// the resource names on Windows must not contain '<', '>', ':','"', '/', '\', '|', '?', '*'
-			// the ignored files must not be removed since they are internal cooking files, but the user does not need to see/modify them
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
-- 
1.7.9.5


