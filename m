Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB9EE014BF
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946842"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:49 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:42 +0300
Message-Id: <1370358468-20881-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 2/8] Use YoctoHostFile for storing OEFile(s)
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:52 -0000

- change OEFile to use YoctoHostFile implementation for storing the underlying file
- YoctoHostFile is a customized implementation that stores for each file
	- the URI of the location
	- the IHostFile that corresponds to the instance on the local or remote system
	- the project information that this file belongs to
	- the local/remote IFileService that is used on the host determined by the URI

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |    6 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  266 +++++------------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   15 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |    7 +-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  306 ++++++++++++++++++++
 5 files changed, 397 insertions(+), 203 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 9bc4dcc..81a4661 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -65,9 +65,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public static final int TYPE_FLAG = 4;
 	
 	public static final String BB_ENV_FILE = "bitbake.env";
+
+	public static final String CONF_DIR = "conf";
 	public static final String BUILDDIR_INDICATORS [] = {
-		File.separatorChar + "conf" + File.separatorChar + "local.conf",
-		File.separatorChar + "conf" + File.separatorChar + "bblayers.conf",
+		"local.conf",
+		"bblayers.conf",
 	};
 
 	protected final ProjectInfo pinfo;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index 8340597..78988b8 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -36,10 +36,15 @@ import org.eclipse.core.runtime.MultiStatus;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.osgi.util.NLS;
+import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
 import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.bc.ui.model.YoctoHostFile;
 
 /**
  * File system implementation based on storage of files in the local
@@ -52,11 +57,10 @@ public class OEFile extends FileStore {
 		return EFS.ATTRIBUTE_READ_ONLY;
 	}
 	
-	/**
-	 * The java.io.File that this store represents.
-	 */
-	protected final File file;
-	private List ignorePaths;
+
+	protected final YoctoHostFile file;
+
+	private List<Object> ignoredPaths;
 
 	/**
 	 * The absolute file system path of the file represented by this store.
@@ -71,10 +75,10 @@ public class OEFile extends FileStore {
 	 * @param file The file this local file represents
 	 * @param root 
 	 */
-	public OEFile(File file, List ignorePaths, URI root) {
-		this.file = file;
-		this.ignorePaths = ignorePaths;
+	public OEFile(URI fileURI, List<Object> ignoredPaths, URI root, ProjectInfo projInfo, IProgressMonitor monitor) throws SystemMessageException {
+		this.ignoredPaths = ignoredPaths;
 		this.root = root;
+		this.file = new YoctoHostFile(projInfo, fileURI, monitor);
 		this.filePath = file.getAbsolutePath();
 	}
 
@@ -97,20 +101,34 @@ public class OEFile extends FileStore {
 
 	@Override
 	public String[] childNames(int options, IProgressMonitor monitor) {
-		String[] names = file.list();
-		return (names == null ? EMPTY_STRING_ARRAY : names);
+		return file.getChildNames(monitor);
 	}
 
 	/*
 	 * detect if the path is potential builddir
 	 */
 	private boolean isPotentialBuildDir(String path) {
+		String parentPath = path.substring(0, path.lastIndexOf("/"));
+		String name = path.substring(path.lastIndexOf("/") + 1);
 		boolean ret = true;
-		for (int i=0; i < BBSession.BUILDDIR_INDICATORS.length && ret == true; i++) {
-			if((new File(path + BBSession.BUILDDIR_INDICATORS[i])).exists() == false) {
-				ret=false;
-				break;
+		try {
+			IFileService fs = file.getFileService();
+			IHostFile hostFile = fs.getFile(parentPath, name, new NullProgressMonitor());
+			if (!hostFile.isDirectory())
+				return false;
+			IHostFile confDir = fs.getFile(path, BBSession.CONF_DIR, new NullProgressMonitor());
+			if (!confDir.exists() || !confDir.isDirectory())
+				return false;
+			for (int i = 0; i < BBSession.BUILDDIR_INDICATORS.length && ret == true; i++) {
+				IHostFile child = fs.getFile(path + "/" + BBSession.CONF_DIR, BBSession.BUILDDIR_INDICATORS[i], new NullProgressMonitor());
+				if(!child.exists() || !child.isFile()) {
+					ret = false;
+					break;
+				}
 			}
+
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
 		}
 		return ret;
 	}
@@ -153,8 +171,8 @@ public class OEFile extends FileStore {
 		for (int i = 0; i < wrapped.length; i++) {
 			String fullPath = file.toString() +File.separatorChar + children[i];
 			
-			updateIgnorePaths(fullPath, ignorePaths, monitor);
-			if (ignorePaths.contains(fullPath)) {
+			updateIgnorePaths(fullPath, ignoredPaths, monitor);
+			if (ignoredPaths.contains(fullPath)) {
 				wrapped[i] = getDeadChild(children[i]);
 			} else {
 				wrapped[i] = getChild(children[i]);
@@ -165,25 +183,10 @@ public class OEFile extends FileStore {
 	}
 
 	@Override
-	public void copy(IFileStore destFile, int options, IProgressMonitor monitor) throws CoreException {
-		if (destFile instanceof OEFile) {
-			File source = file;
-			File destination = ((OEFile) destFile).file;
-			//handle case variants on a case-insensitive OS, or copying between
-			//two equivalent files in an environment that supports symbolic links.
-			//in these nothing needs to be copied (and doing so would likely lose data)
-			try {
-				if (source.getCanonicalFile().equals(destination.getCanonicalFile())) {
-					//nothing to do
-					return;
-				}
-			} catch (IOException e) {
-				String message = NLS.bind(Messages.couldNotRead, source.getAbsolutePath());
-				Policy.error(EFS.ERROR_READ, message, e);
-			}
+	public void copy(IFileStore destFileStore, int options, IProgressMonitor monitor) throws CoreException {
+		if (destFileStore instanceof OEFile) {
+			file.copy(destFileStore, monitor);
 		}
-		//fall through to super implementation
-		super.copy(destFile, options, monitor);
 	}
 
 	@Override
@@ -224,7 +227,7 @@ public class OEFile extends FileStore {
 	public IFileInfo fetchInfo(int options, IProgressMonitor monitor) {
 		//in-lined non-native implementation
 		FileInfo info = new FileInfo(file.getName());
-		final long lastModified = file.lastModified();
+		final long lastModified = file.getModifiedDate();
 		if (lastModified <= 0) {
 			//if the file doesn't exist, all other attributes should be default values
 			info.setExists(false);
@@ -232,7 +235,7 @@ public class OEFile extends FileStore {
 		}
 		info.setLastModified(lastModified);
 		info.setExists(true);
-		info.setLength(file.length());
+		info.setLength(file.getSize());
 		info.setDirectory(file.isDirectory());
 		info.setAttribute(EFS.ATTRIBUTE_READ_ONLY, file.exists() && !file.canWrite());
 		info.setAttribute(EFS.ATTRIBUTE_HIDDEN, file.isHidden());
@@ -241,16 +244,28 @@ public class OEFile extends FileStore {
 	
 	@Override
 	public IFileStore getChild(IPath path) {
-		return new OEFile(new File(file, path.toOSString()), ignorePaths, root);
+		try {
+			return new OEFile(file.getChildURIformPath(path), ignoredPaths, root, file.getProjectInfo(), new NullProgressMonitor());
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return null;
+		}
 	}
 
 	@Override
 	public IFileStore getChild(String name) {
-		return new OEFile(new File(file, name), ignorePaths, root);
+
+		try {
+			return new OEFile(file.getChildURI(name), ignoredPaths, root, file.getProjectInfo(), new NullProgressMonitor());
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		}
+		return null;
+
 	}
 
 	private IFileStore getDeadChild(String name) {
-		return new OEIgnoreFile(new File(file, name));
+		return new OEIgnoreFile(file.getChildHostFile(name));
 	}
 
 	/*
@@ -269,8 +284,13 @@ public class OEFile extends FileStore {
 
 	@Override
 	public IFileStore getParent() {
-		File parent = file.getParentFile();
-		return parent == null ? null : new OEFile(parent, ignorePaths, root);
+		URI parentURI = file.getParentFile();
+		try {
+			return parentURI == null ? null : new OEFile(parentURI, ignoredPaths, root, file.getProjectInfo(), new NullProgressMonitor());
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return null;
+		}
 	}
 
 	@Override
@@ -283,46 +303,8 @@ public class OEFile extends FileStore {
 	 * the provided status object.  The filePath is passed as a parameter
 	 * to optimize java.io.File object creation.
 	 */
-	private boolean internalDelete(File target, String pathToDelete, MultiStatus status, IProgressMonitor monitor) {
-		//first try to delete - this should succeed for files and symbolic links to directories
-		if (target.delete() || !target.exists())
-			return true;
-		if (target.isDirectory()) {
-			monitor.subTask(NLS.bind(Messages.deleting, target));
-			String[] list = target.list();
-			if (list == null)
-				list = EMPTY_STRING_ARRAY;
-			int parentLength = pathToDelete.length();
-			boolean failedRecursive = false;
-			for (int i = 0, imax = list.length; i < imax; i++) {
-				//optimized creation of child path object
-				StringBuffer childBuffer = new StringBuffer(parentLength + list[i].length() + 1);
-				childBuffer.append(pathToDelete);
-				childBuffer.append(File.separatorChar);
-				childBuffer.append(list[i]);
-				String childName = childBuffer.toString();
-				// try best effort on all children so put logical OR at end
-				failedRecursive = !internalDelete(new java.io.File(childName), childName, status, monitor) || failedRecursive;
-				monitor.worked(1);
-			}
-			try {
-				// don't try to delete the root if one of the children failed
-				if (!failedRecursive && target.delete())
-					return true;
-			} catch (Exception e) {
-				// we caught a runtime exception so log it
-				String message = NLS.bind(Messages.couldnotDelete, target.getAbsolutePath());
-				status.add(new Status(IStatus.ERROR, Policy.PI_FILE_SYSTEM, EFS.ERROR_DELETE, message, e));
-				return false;
-			}
-		}
-		//if we got this far, we failed
-		String message = null;
-		if (fetchInfo().getAttribute(EFS.ATTRIBUTE_READ_ONLY))
-			message = NLS.bind(Messages.couldnotDeleteReadOnly, target.getAbsolutePath());
-		else
-			message = NLS.bind(Messages.couldnotDelete, target.getAbsolutePath());
-		status.add(new Status(IStatus.ERROR, Policy.PI_FILE_SYSTEM, EFS.ERROR_DELETE, message, null));
+	private boolean internalDelete(YoctoHostFile target, String pathToDelete, MultiStatus status, IProgressMonitor monitor) {
+		target.delete(monitor);
 		return false;
 	}
 
@@ -357,133 +339,28 @@ public class OEFile extends FileStore {
 
 	@Override
 	public IFileStore mkdir(int options, IProgressMonitor monitor) throws CoreException {
-		boolean shallow = (options & EFS.SHALLOW) != 0;
-		//must be a directory
-		if (shallow)
-			file.mkdir();
-		else
-			file.mkdirs();
-		if (!file.isDirectory()) {
-			checkReadOnlyParent(file, null);
-			String message = NLS.bind(Messages.failedCreateWrongType, filePath);
-			Policy.error(EFS.ERROR_WRONG_TYPE, message);
-		}
+		file.mkdir(options);
 		return this;
 	}
 
 	@Override
 	public void move(IFileStore destFile, int options, IProgressMonitor monitor) throws CoreException {
-		if (!(destFile instanceof OEFile)) {
-			super.move(destFile, options, monitor);
-			return;
-		}
-		File source = file;
-		File destination = ((OEFile) destFile).file;
-		boolean overwrite = (options & EFS.OVERWRITE) != 0;
-		monitor = Policy.monitorFor(monitor);
-		try {
-			monitor.beginTask(NLS.bind(Messages.moving, source.getAbsolutePath()), 10);
-			//this flag captures case renaming on a case-insensitive OS, or moving
-			//two equivalent files in an environment that supports symbolic links.
-			//in these cases we NEVER want to delete anything
-			boolean sourceEqualsDest = false;
-			try {
-				sourceEqualsDest = source.getCanonicalFile().equals(destination.getCanonicalFile());
-			} catch (IOException e) {
-				String message = NLS.bind(Messages.couldNotMove, source.getAbsolutePath());
-				Policy.error(EFS.ERROR_WRITE, message, e);
-			}
-			if (!sourceEqualsDest && !overwrite && destination.exists()) {
-				String message = NLS.bind(Messages.fileExists, destination.getAbsolutePath());
-				Policy.error(EFS.ERROR_EXISTS, message);
-			}
-			if (source.renameTo(destination)) {
-				// double-check to ensure we really did move
-				// since java.io.File#renameTo sometimes lies
-				if (!sourceEqualsDest && source.exists()) {
-					// XXX: document when this occurs
-					if (destination.exists()) {
-						// couldn't delete the source so remove the destination and throw an error
-						// XXX: if we fail deleting the destination, the destination (root) may still exist
-						new OEFile(destination, ignorePaths, root).delete(EFS.NONE, null);
-						String message = NLS.bind(Messages.couldnotDelete, source.getAbsolutePath());
-						Policy.error(EFS.ERROR_DELETE, message);
-					}
-					// source exists but destination doesn't so try to copy below
-				} else {
-					if (!destination.exists()) {
-						// neither the source nor the destination exist. this is REALLY bad
-						String message = NLS.bind(Messages.failedMove, source.getAbsolutePath(), destination.getAbsolutePath());
-						Policy.error(EFS.ERROR_WRITE, message);
-					}
-					//the move was successful
-					monitor.worked(10);
-					return;
-				}
-			}
-			// for some reason renameTo didn't work
-			if (sourceEqualsDest) {
-				String message = NLS.bind(Messages.couldNotMove, source.getAbsolutePath());
-				Policy.error(EFS.ERROR_WRITE, message, null);
-			}
-			// fall back to default implementation
-			super.move(destFile, options, Policy.subMonitorFor(monitor, 10));
-		} finally {
-			monitor.done();
-		}
+		file.move(destFile, monitor);
 	}
 
 	@Override
 	public InputStream openInputStream(int options, IProgressMonitor monitor) throws CoreException {
-		monitor = Policy.monitorFor(monitor);
-		try {
-			monitor.beginTask("", 1); //$NON-NLS-1$
-			return new FileInputStream(file);
-		} catch (FileNotFoundException e) {
-			String message;
-			if (!file.exists())
-				message = NLS.bind(Messages.fileNotFound, filePath);
-			else if (file.isDirectory())
-				message = NLS.bind(Messages.notAFile, filePath);
-			else
-				message = NLS.bind(Messages.couldNotRead, filePath);
-			Policy.error(EFS.ERROR_READ, message, e);
-			return null;
-		} finally {
-			monitor.done();
-		}
+		return file.getInputStream(options, monitor);
 	}
 
 	@Override
 	public OutputStream openOutputStream(int options, IProgressMonitor monitor) throws CoreException {
-		monitor = Policy.monitorFor(monitor);
-		try {
-			monitor.beginTask("", 1); //$NON-NLS-1$
-			return new FileOutputStream(file, (options & EFS.APPEND) != 0);
-		} catch (FileNotFoundException e) {
-			checkReadOnlyParent(file, e);
-			String message;
-			String path = filePath;
-			if (file.isDirectory())
-				message = NLS.bind(Messages.notAFile, path);
-			else
-				message = NLS.bind(Messages.couldNotWrite, path);
-			Policy.error(EFS.ERROR_WRITE, message, e);
-			return null;
-		} finally {
-			monitor.done();
-		}
+		return file.getOutputStream(options, monitor);
 	}
 
 	@Override
 	public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) throws CoreException {
-		boolean success = true;
-
-		//native does not currently set last modified
-		if ((options & EFS.SET_LAST_MODIFIED) != 0)
-			success &= file.setLastModified(info.getLastModified());
-		if (!success && !file.exists())
-			Policy.error(EFS.ERROR_NOT_EXISTS, NLS.bind(Messages.fileNotFound, filePath));
+		file.putInfo(info, options, monitor);
 	}
 
 	/* (non-Javadoc)
@@ -491,9 +368,7 @@ public class OEFile extends FileStore {
 	 */
 	@Override
 	public File toLocalFile(int options, IProgressMonitor monitor) throws CoreException {
-		if (options == EFS.CACHE)
-			return super.toLocalFile(options, monitor);
-		return file;
+		return file.toLocalFile();
 	}
 
 	/* (non-Javadoc)
@@ -511,4 +386,7 @@ public class OEFile extends FileStore {
 	public URI toURI() {
 		return URIUtil.toURI(filePath);
 	}
+	public String getParentPath() {
+		return filePath.substring(0, filePath.lastIndexOf("/"));
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
index 19c9dbc..d075cb5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
@@ -23,10 +23,12 @@ import org.eclipse.core.filesystem.IFileSystem;
 import org.eclipse.core.filesystem.provider.FileSystem;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.bc.ui.model.YoctoHostFile;
 
 /**
  * A filesystem that ignores specific OE directories that contain derived information.
@@ -62,7 +64,7 @@ public class OEFileSystem extends FileSystem {
 				config.initialize();
 			} catch (Exception e) {
 				e.printStackTrace();
-				return new OEIgnoreFile(new File(uri.getPath()));
+				return new OEIgnoreFile(new YoctoHostFile(projInfo, uri));
 			}
 
 			if (config.get("TMPDIR") == null || config.get("DL_DIR") == null || config.get("SSTATE_DIR")== null) {
@@ -75,9 +77,14 @@ public class OEFileSystem extends FileSystem {
 			ignoreList.add(config.get("TMPDIR"));
 			ignoreList.add(config.get("DL_DIR"));
 			ignoreList.add(config.get("SSTATE_DIR"));
-			
-			uf = new OEFile(new File(uri.getPath()), ignoreList, uri);
-			fileStoreCache.put(uri, uf);
+
+			//FIXME: add project info
+			try {
+				uf = new OEFile(uri, ignoreList, uri, projInfo, new NullProgressMonitor());
+				fileStoreCache.put(uri, uf);
+			} catch (SystemMessageException e) {
+				e.printStackTrace();
+			}
 		}
 		
 		return uf;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
index 8643309..fc27ccf 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
@@ -22,12 +22,13 @@ import org.eclipse.core.filesystem.provider.FileInfo;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
+import org.yocto.bc.ui.model.YoctoHostFile;
 
 public class OEIgnoreFile implements IFileStore {
 
-	private final File file;
+	private final YoctoHostFile file;
 
-	public OEIgnoreFile(File file) {
+	public OEIgnoreFile(YoctoHostFile file) {
 		this.file = file;
 	}
 
@@ -118,7 +119,7 @@ public class OEIgnoreFile implements IFileStore {
 	}
 
 	public File toLocalFile(int options, IProgressMonitor monitor) throws CoreException {
-		return file;
+		return file.toLocalFile();
 	}
 
 	public URI toURI() {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
new file mode 100644
index 0000000..74826ac
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
@@ -0,0 +1,306 @@
+package org.yocto.bc.ui.model;
+
+import java.io.File;
+import java.io.InputStream;
+import java.io.OutputStream;
+import java.net.URI;
+import java.net.URISyntaxException;
+import java.util.ArrayList;
+
+import org.eclipse.core.filesystem.EFS;
+import org.eclipse.core.filesystem.IFileInfo;
+import org.eclipse.core.filesystem.IFileStore;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.osgi.util.NLS;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.files.IHostFile;
+import org.yocto.bc.ui.filesystem.Messages;
+import org.yocto.bc.ui.filesystem.OEFile;
+import org.yocto.bc.ui.filesystem.Policy;
+import org.yocto.remote.utils.RemoteHelper;
+
+public class YoctoHostFile implements IHostFile{
+	private IHostFile file;
+	private final URI fileURI;
+	private ProjectInfo projectInfo;
+	private IFileService fileService;
+
+	public YoctoHostFile(ProjectInfo pInfo, URI fileURI, IProgressMonitor monitor) throws SystemMessageException {
+		this.projectInfo = pInfo;
+		this.fileURI = fileURI;
+		String path = fileURI.getPath();
+		fileService = projectInfo.getFileService(monitor);
+		file = RemoteHelper.getRemoteHostFile(projectInfo.getConnection(), path, monitor);
+	}
+
+	public YoctoHostFile(ProjectInfo projectInfo, URI uri) {
+		this.fileURI = uri;
+		this.projectInfo = projectInfo;
+	}
+
+	public IHostFile getFile() {
+		return file;
+	}
+	public void setFile(IHostFile file) {
+		this.file = file;
+	}
+	public ProjectInfo getProjectInfo() {
+		return projectInfo;
+	}
+	public void setProjectInfo(ProjectInfo projectInfo) {
+		this.projectInfo = projectInfo;
+	}
+	@Override
+	public String getAbsolutePath() {
+		return file.getAbsolutePath();
+	}
+	@Override
+	public String getName() {
+		return file.getName();
+	}
+	public URI getProjectLocationURI() {
+		return projectInfo.getOriginalURI();
+	}
+	public URI getLocationURI() {
+		projectInfo.getOriginalURI().getPath().indexOf(file.getAbsolutePath());
+		return projectInfo.getOriginalURI();
+	}
+	@Override
+	public boolean isDirectory() {
+		return file.isDirectory();
+	}
+	@Override
+	public String getParentPath() {
+		return file.getParentPath();
+	}
+	public boolean copy(IFileStore destFileStore, IProgressMonitor monitor) {
+		IHostFile destFile;
+		try {
+			OEFile oeFile = (OEFile)destFileStore;
+			String parentPath = oeFile.getParentPath();
+			destFile = fileService.createFile(parentPath, destFileStore.getName(), monitor);
+			fileService.copy(file.getParentPath(), file.getName(), destFile.getParentPath(), destFile.getName(), monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return false;
+		}
+		return true;
+	}
+	@Override
+	public boolean exists() {
+		return file.exists();
+	}
+	@Override
+	public boolean canRead() {
+		return file.canRead();
+	}
+	@Override
+	public boolean canWrite() {
+		return file.canWrite();
+	}
+	@Override
+	public long getModifiedDate() {
+		return file.getModifiedDate();
+	}
+	@Override
+	public long getSize() {
+		return file.getSize();
+	}
+	@Override
+	public boolean isArchive() {
+		return file.isArchive();
+	}
+	@Override
+	public boolean isFile() {
+		return file.isFile();
+	}
+	@Override
+	public boolean isHidden() {
+		return file.isHidden();
+	}
+	@Override
+	public boolean isRoot() {
+		return file.isRoot();
+	}
+	@Override
+	public void renameTo(String newName) {
+		file.renameTo(newName);
+	}
+	public URI getParentFile() {
+		if (file.getParentPath().isEmpty())
+			return null;
+		try {
+			return new URI(fileURI.getScheme(), fileURI.getHost(), file.getParentPath(), fileURI.getFragment());
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+	public boolean delete(IProgressMonitor monitor) {
+		try {
+			fileService.delete(file.getParentPath(), file.getName(), monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return false;
+		}
+		return true;
+	}
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
+	}
+
+	public void mkdir(int options) {
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
+	public String[] getChildNames(IProgressMonitor monitor) {
+		if (file.isDirectory()) {
+			IHostFile[] files;
+			try {
+				files = fileService.list(file.getAbsolutePath(), "*", IFileService.FILE_TYPE_FILES_AND_FOLDERS, monitor);
+				ArrayList<String> names = new ArrayList<String>();
+
+				for (IHostFile f : files) {
+					names.add(f.getName());
+				}
+
+				String[] arrNames = new String[names.size()];
+				names.toArray(arrNames);
+				return arrNames;
+			} catch (SystemMessageException e) {
+				e.printStackTrace();
+			}
+		}
+		return  new String[]{};
+	}
+	public IHost getConnection() {
+		return projectInfo.getConnection();
+	}
+
+	public URI getChildURI(String name) {
+		try {
+			return new URI(fileURI.getScheme(), fileURI.getHost(), fileService.getFile(file.getAbsolutePath(), name, null).getAbsolutePath(), fileURI.getFragment());
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		}
+		return null;
+	}
+	public File toLocalFile() {
+		//TODO
+		//fileService.getFile(file.getParentPath(), file.getName(), null);
+		return null;
+	}
+	public URI toURI() {
+		return fileURI;
+	}
+	public YoctoHostFile getChildHostFile(String name) {
+		try {
+			return new YoctoHostFile(projectInfo, getChildURI(name), new NullProgressMonitor());
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+
+	public URI getChildURIformPath(IPath path) {
+		try {
+			String fileName =  path.lastSegment();
+			path = path.removeLastSegments(1);
+			String newPath = fileService.getFile(file.getAbsolutePath() + "/" + path.toPortableString(), fileName, null).getAbsolutePath();
+			return new URI(fileURI.getScheme(), fileURI.getHost(), newPath, fileURI.getFragment());
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+			return null;
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+
+	public void move(IFileStore destFile, IProgressMonitor monitor) {
+		try {
+			fileService.move(file.getParentPath(), file.getName(), destFile.getParent().toURI().getPath(), destFile.getName(), monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		}
+	}
+
+	public OutputStream getOutputStream(int options, IProgressMonitor monitor) {
+		try {
+			return fileService.getOutputStream(file.getParentPath(), file.getName(), options, monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+
+	public InputStream getInputStream(int options, IProgressMonitor monitor) {
+		try {
+			return fileService.getInputStream(file.getParentPath(), file.getName(), false, monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+
+	public void putInfo(IFileInfo info, int options, IProgressMonitor monitor) {
+		try {
+			if ((options & EFS.SET_LAST_MODIFIED) != 0)
+				fileService.setLastModified(file.getParentPath(), file.getName(), info.getLastModified(), monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		}
+	}
+
+	public IFileService getFileService() {
+		return fileService;
+	}
+
+	public void setFileService(IFileService fileService) {
+		this.fileService = fileService;
+	}
+}
-- 
1.7.9.5


