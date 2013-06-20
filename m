Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D60E003E3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 08:32:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jun 2013 08:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,905,1363158000"; d="scan'208";a="320069922"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 20 Jun 2013 08:32:31 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2013 18:11:30 +0300
Message-Id: <1371741090-12299-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioana.grigoropol@gmail.com>
Subject: [PATCH] Fix Eclipse workspace deadlock when restoring
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
X-List-Received-Date: Thu, 20 Jun 2013 15:32:35 -0000

From: Ioana Grigoropol <ioana.grigoropol@gmail.com>

- when creating a new bitbake commander project, a bunch of information relevant for the project is set in the project information map
- when closing & restarting Eclipse, having a Bitbake commander project in the workspace an deadlock occurs due to the following:
	- Eclipse Resources container tries to restore all projects that were previously in the workspace
	- when trying to restore our BB project, we will try to determine what was the remote connection for that specific project, given its URI
		- we can only determine the connection by calling RSE plugin & we must wait for it to be initialized
	- the RSE plugin is initialized after the Resource container is finishes, and since this process is blocked waiting for a later one, a deadlock occurs

- in order to fix this problem, perform the following steps:
	- when the Eclipse Resource container asks for the store of our project
		- return a NullFileStore
		- register as a listener of the RSEInitJob in order to get notified when the job is finished
		- restore the project information when the RSE API is up by triggering the internal file system core manager
	- restoring the information:
		- for the local implementation:
			- the connection of the project is missing -> retrive it by invoking RSE
		- for the remote implementation:
			- the only URI for the project is the oefs one
			- we cannot change this uri to point to the real one since it will block the refresh on the project
			- we cannot determine the real URI form the oefs one since we have no clue what is the host(ip)
		   -> solution:
			- when creating the BBC project
				- save the information about the real URI of the project in the metadata of the workspace
			- when restoring the project
				- retrieve the information from the metadata location
- fixed also the Project Description of the Location to display the real URI of the files

Signed-off-by: Ioana Grigoropol <ioana.grigoropol@gmail.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    2 +-
 .../src/org/yocto/bc/ui/Activator.java             |    4 +-
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   10 +--
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   11 ++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |   10 +++
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    1 +
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    6 +-
 .../src/org/yocto/remote/utils/RemoteHelper.java   |   77 ++++++++++++++++++++
 8 files changed, 111 insertions(+), 10 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 11d677a..724b7d0 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -18,7 +18,7 @@ import java.io.InputStream;
 import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.Writer;
-
+	
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 5c43ba8..f53592c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -108,7 +108,7 @@ public class Activator extends AbstractUIPlugin {
 		
 		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
 		
-		if (bbs == null) {
+		if (bbs == null || bbs.getShell() == null) {
 			bbs = new BBSession(getShellSession(projectInfo, null, monitor), projectRoot);
 			bbSessionMap.put(projectRoot, bbs);
 		}
@@ -190,7 +190,7 @@ public class Activator extends AbstractUIPlugin {
 		
 		ShellSession ss = (ShellSession) shellMap.get(absolutePath);
 		
-		if (ss == null) {
+		if (ss == null && RemoteHelper.isInitialized(projInfo.getOriginalURI())) {
 			IHostFile remoteHostFile = RemoteHelper.getRemoteHostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);
 			ss = new ShellSession(projInfo, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath));
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
index 357edc1..b814c4c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
@@ -11,7 +11,6 @@
  *******************************************************************************/
 package org.yocto.bc.ui.filesystem;
 
-import java.io.File;
 import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.util.ArrayList;
@@ -22,14 +21,16 @@ import java.util.Map;
 import org.eclipse.core.filesystem.IFileStore;
 import org.eclipse.core.filesystem.IFileSystem;
 import org.eclipse.core.filesystem.provider.FileSystem;
+import org.eclipse.core.internal.filesystem.NullFileStore;
+import org.eclipse.core.internal.resources.LocalMetaArea;
+import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.core.runtime.Path;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
-
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
-import org.yocto.bc.ui.model.YoctoHostFile;
 
 /**
  * A filesystem that ignores specific OE directories that contain derived information.
@@ -64,8 +65,7 @@ public class OEFileSystem extends FileSystem {
 				config = Activator.getBBSession(projInfo, new NullProgressMonitor());
 				config.initialize();
 			} catch (Exception e) {
-				e.printStackTrace();
-				return new OEIgnoreFile(new YoctoHostFile(projInfo, uri));
+				return new NullFileStore(new Path(uri.getPath()));
 			}
 
 			if (config.get("TMPDIR") == null || config.get("DL_DIR") == null || config.get("SSTATE_DIR")== null) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 79e5f87..119782d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -61,6 +61,13 @@ public class ProjectInfo implements IModelElement {
 	public void setLocationURI(URI location) {
 		if (this.location == null)
 			this.location = new YoctoLocation();
+		if (location.getScheme().equalsIgnoreCase("oefs")) {
+			if (this.name ==  null) {
+				String path = location.getPath();
+				this.name = path.substring(path.lastIndexOf("/") + 1);
+			}
+			location = RemoteHelper.retrieveURIFromMetaArea(this.name);
+		}
 		this.location.setOriginalURI(location);
 		try {
 			this.location.setOEFSURI(new URI(ProjectInfoHelper.OEFS_SCHEME + location.getPath() ));
@@ -79,7 +86,7 @@ public class ProjectInfo implements IModelElement {
 	}
 
 	public IHost getConnection() {
-		if (connection == null) {
+		if (connection == null && RemoteHelper.isInitialized(getOriginalURI())) {
 			connection = RemoteHelper.getRemoteConnectionForURI(location.getOriginalURI(), new NullProgressMonitor());
 		}
 		return connection;
@@ -99,6 +106,8 @@ public class ProjectInfo implements IModelElement {
 
 	public IFileService getFileService(IProgressMonitor monitor){
 		try {
+			if (!RemoteHelper.isInitialized(getOriginalURI()))
+				return null;
 			return RemoteHelper.getConnectedRemoteFileService(connection, monitor);
 		} catch (Exception e) {
 			e.printStackTrace();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
index eaa26df..7113efb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
@@ -313,4 +313,14 @@ public class YoctoHostFile implements IHostFile{
 	public void setFileService(IFileService fileService) {
 		this.fileService = fileService;
 	}
+
+	@Override
+	public String toString() {
+		URI uri = this.projectInfo.getOriginalURI();
+		try {
+			return new URI(uri.getScheme(), uri.getHost(), fileURI.getPath(), uri.getFragment()).toString();
+		} catch (URISyntaxException e) {
+			return fileURI.toString();
+		}
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 5df375e..f3ecfc4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -195,6 +195,7 @@ public class InstallWizard extends FiniteStateWizard implements
 				Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 
 				container.run(false, false, new CreateBBCProjectOperation(pinfo));
+				RemoteHelper.storeURIInMetaArea(pinfo.getProjectName(), uri);
 				return true;
 			}
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 06d14f8..08a76cc 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -8,9 +8,13 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime
 Bundle-ActivationPolicy: lazy
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
-Import-Package: org.eclipse.rse.core,
+Import-Package: org.eclipse.core.internal.filesystem,
+ org.eclipse.core.internal.resources,
+ org.eclipse.core.resources,
+ org.eclipse.rse.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.internal.core,
  org.eclipse.rse.internal.services.local.shells,
  org.eclipse.rse.internal.services.shells,
  org.eclipse.rse.internal.terminals.ui,
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
index e9118d6..e83c378 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
@@ -13,19 +13,30 @@ package org.yocto.remote.utils;
 
 import java.io.BufferedInputStream;
 import java.io.BufferedOutputStream;
+import java.io.BufferedReader;
 import java.io.File;
+import java.io.FileNotFoundException;
 import java.io.FileOutputStream;
+import java.io.FileReader;
+import java.io.IOException;
 import java.io.InputStream;
+import java.io.PrintWriter;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.ArrayList;
 import java.util.Arrays;
 import java.util.HashMap;
 import java.util.Iterator;
+import java.util.List;
 import java.util.Map;
 
+import org.eclipse.core.internal.filesystem.InternalFileSystemCore;
+import org.eclipse.core.internal.resources.LocalMetaArea;
+import org.eclipse.core.internal.resources.Workspace;
+import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.FileLocator;
+import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.MultiStatus;
@@ -34,12 +45,14 @@ import org.eclipse.core.runtime.Status;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.osgi.util.NLS;
 import org.eclipse.rse.core.IRSECoreStatusCodes;
+import org.eclipse.rse.core.IRSEInitListener;
 import org.eclipse.rse.core.IRSESystemType;
 import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.internal.core.RSEInitJob;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
@@ -62,6 +75,70 @@ public class RemoteHelper {
 	public static final int TOTALWORKLOAD = 100;
 	private static Map<IHost, RemoteMachine> machines;
 
+	public static IPath getWorkspaceMetaArea(){
+		Workspace workspace = (Workspace)ResourcesPlugin.getWorkspace();
+		LocalMetaArea metaDataArea = workspace.getMetaArea();
+		return metaDataArea.getLocation();
+	}
+
+	public static void storeURIInMetaArea(String projName, URI uri){
+		IPath path = getWorkspaceMetaArea();
+		File f = new File(path.toString() + "/.projects/" + projName + "/.originalURI");
+		PrintWriter writer;
+		try {
+			writer = new PrintWriter(f);
+			writer.println(uri.getScheme());
+			writer.println(uri.getHost());
+			writer.println(uri.getPath());
+			writer.println(uri.getFragment());
+			writer.close();
+		} catch (FileNotFoundException e) {
+			e.printStackTrace();
+		}
+	}
+
+	public static URI retrieveURIFromMetaArea(String projName){
+		IPath path = getWorkspaceMetaArea();
+		File f = new File(path.toString() + "/.projects/" + projName + "/.originalURI");
+		try {
+			BufferedReader buf = new BufferedReader(new FileReader(f));
+			String line = null;
+			List<String> elems = new ArrayList<String>();
+			while((line = buf.readLine()) != null){
+				if (line.equals("null"))
+					line = null;
+				elems.add(line);
+			}
+			buf.close();
+			if (elems.size() == 4){
+				URI uri = new URI(elems.get(0), elems.get(1), elems.get(2), elems.get(3));
+				return uri;
+			}
+		} catch (IOException e) {
+			e.printStackTrace();
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		}
+		return null;
+	}
+
+	public static boolean isInitialized(final URI uri){
+		boolean init = RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL);
+		if (!init) {
+			RSEInitJob.getInstance().addInitListener(new IRSEInitListener() {
+				@Override
+				public void phaseComplete(int arg0) {
+					try {
+						InternalFileSystemCore.getInstance().getStore(uri);
+					} catch (CoreException e) {
+						e.printStackTrace();
+					}
+				}
+			});
+		}
+		return init;
+	}
+
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
 		if (remoteConnection == null)
 			return null;
-- 
1.7.10.4


