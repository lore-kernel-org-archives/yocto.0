Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90427E01409
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 12:43:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Jun 2013 12:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,915,1363158000"; d="scan'208";a="357545820"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2013 12:43:47 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 21 Jun 2013 12:43:47 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.195]) with mapi id
	14.03.0123.003; Fri, 21 Jun 2013 12:43:47 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2] Fix Eclipse workspace deadlock when restoring
Thread-Index: AQHObo6DTGL5oV5OYk+dh6hKZZ7HhJlAkhWg
Date: Fri, 21 Jun 2013 19:43:45 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C46E88@ORSMSX103.amr.corp.intel.com>
References: <1371824807-17259-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1371824807-17259-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Ioana Grigoropol <ioana.grigoropol@gmail.com>
Subject: Re: [PATCH v2] Fix Eclipse workspace deadlock when restoring
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
X-List-Received-Date: Fri, 21 Jun 2013 19:43:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK more info. It seems if the project is remote, first we'll get the projec=
t description failure since we haven't restored the remote connection, afte=
r we dismiss the error and double click on the project and restore the RSE =
connection, the project will be able to restore.  We should change the erro=
r message into warning and tell user to restore their RSE connection.

Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Friday, June 21, 2013 7:27 AM
To: yocto@yoctoproject.org
Cc: Ioana Grigoropol
Subject: [yocto] [PATCH v2] Fix Eclipse workspace deadlock when restoring

From: Ioana Grigoropol <ioana.grigoropol@gmail.com>

- when creating a new bitbake commander project, a bunch of information rel=
evant for the project is set in the project information map
- when closing & restarting Eclipse, having a Bitbake commander project in =
the workspace an deadlock occurs due to the following:
        - Eclipse Resources container tries to restore all projects that we=
re previously in the workspace
        - when trying to restore our BB project, we will try to determine w=
hat was the remote connection for that specific project, given its URI
                - we can only determine the connection by calling RSE plugi=
n & we must wait for it to be initialized
        - the RSE plugin is initialized after the Resource container is fin=
ishes, and since this process is blocked waiting for a later one, a deadloc=
k occurs

- in order to fix this problem, perform the following steps:
        - when the Eclipse Resource container asks for the store of our pro=
ject
                - return a NullFileStore
                - register as a listener of the RSEInitJob in order to get =
notified when the job is finished
                - restore the project information when the RSE API is up by=
 triggering the internal file system core manager
        - restoring the information:
                - for the local implementation:
                        - the connection of the project is missing -> retri=
ve it by invoking RSE
                - for the remote implementation:
                        - the only URI for the project is the oefs one
                        - we cannot change this uri to point to the real on=
e since it will block the refresh on the project
                        - we cannot determine the real URI form the oefs on=
e since we have no clue what is the host(ip)
                   -> solution:
                        - when creating the BBC project
                                - save the information about the real URI o=
f the project in the metadata of the workspace
                        - when restoring the project
                                - retrieve the information from the metadat=
a location
- fixed also the Project Description of the Location to display the real UR=
I of the files

Signed-off-by: Ioana Grigoropol <ioana.grigoropol@gmail.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    2 +-
 .../src/org/yocto/bc/ui/Activator.java             |    4 +-
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   10 +--
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   11 ++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |   10 +++
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    1 +
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    6 +-
 .../src/org/yocto/remote/utils/RemoteHelper.java   |   79 ++++++++++++++++=
++++
 8 files changed, 113 insertions(+), 10 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 11d677a..724b7d0 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -18,7 +18,7 @@ import java.io.InputStream;  import java.io.InputStreamRe=
ader;  import java.io.OutputStream;  import java.io.Writer;
-
+
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.rse.core.model.IHost; diff --git a/plugins/org.yocto.bc=
.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yo=
cto/bc/ui/Activator.java
index 5c43ba8..f53592c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -108,7 +108,7 @@ public class Activator extends AbstractUIPlugin {

                BBSession bbs =3D (BBSession) bbSessionMap.get(projectRoot)=
;

-               if (bbs =3D=3D null) {
+               if (bbs =3D=3D null || bbs.getShell() =3D=3D null) {
                        bbs =3D new BBSession(getShellSession(projectInfo, =
null, monitor), projectRoot);
                        bbSessionMap.put(projectRoot, bbs);
                }
@@ -190,7 +190,7 @@ public class Activator extends AbstractUIPlugin {

                ShellSession ss =3D (ShellSession) shellMap.get(absolutePat=
h);

-               if (ss =3D=3D null) {
+               if (ss =3D=3D null &&
+RemoteHelper.isInitialized(projInfo.getOriginalURI())) {
                        IHostFile remoteHostFile =3D RemoteHelper.getRemote=
HostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);
                        ss =3D new ShellSession(projInfo, remoteHostFile, P=
rojectInfoHelper.getInitScriptPath(absolutePath));
                }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileS=
ystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileS=
ystem.java
index 357edc1..b814c4c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.j=
ava
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSyste
+++ m.java
@@ -11,7 +11,6 @@
  *************************************************************************=
******/
 package org.yocto.bc.ui.filesystem;

-import java.io.File;
 import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.util.ArrayList;
@@ -22,14 +21,16 @@ import java.util.Map;  import org.eclipse.core.filesyst=
em.IFileStore;
 import org.eclipse.core.filesystem.IFileSystem;
 import org.eclipse.core.filesystem.provider.FileSystem;
+import org.eclipse.core.internal.filesystem.NullFileStore;
+import org.eclipse.core.internal.resources.LocalMetaArea;
+import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.core.runtime.Path;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageExcepti=
on;
-
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
-import org.yocto.bc.ui.model.YoctoHostFile;

 /**
  * A filesystem that ignores specific OE directories that contain derived =
information.
@@ -64,8 +65,7 @@ public class OEFileSystem extends FileSystem {
                                config =3D Activator.getBBSession(projInfo,=
 new NullProgressMonitor());
                                config.initialize();
                        } catch (Exception e) {
-                               e.printStackTrace();
-                               return new OEIgnoreFile(new YoctoHostFile(p=
rojInfo, uri));
+                               return new NullFileStore(new Path(uri.getPa=
th()));
                        }

                        if (config.get("TMPDIR") =3D=3D null || config.get(=
"DL_DIR") =3D=3D null || config.get("SSTATE_DIR")=3D=3D null) { diff --git =
a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plug=
ins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java

index 79e5f87..119782d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -61,6 +61,13 @@ public class ProjectInfo implements IModelElement {
        public void setLocationURI(URI location) {
                if (this.location =3D=3D null)
                        this.location =3D new YoctoLocation();
+               if (location.getScheme().equalsIgnoreCase("oefs")) {
+                       if (this.name =3D=3D  null) {
+                               String path =3D location.getPath();
+                               this.name =3D path.substring(path.lastIndex=
Of("/") + 1);
+                       }
+                       location =3D RemoteHelper.retrieveURIFromMetaArea(t=
his.name);
+               }
                this.location.setOriginalURI(location);
                try {
                        this.location.setOEFSURI(new URI(ProjectInfoHelper.=
OEFS_SCHEME + location.getPath() )); @@ -79,7 +86,7 @@ public class Project=
Info implements IModelElement {
        }

        public IHost getConnection() {
-               if (connection =3D=3D null) {
+               if (connection =3D=3D null &&
+RemoteHelper.isInitialized(getOriginalURI())) {
                        connection =3D RemoteHelper.getRemoteConnectionForU=
RI(location.getOriginalURI(), new NullProgressMonitor());
                }
                return connection;
@@ -99,6 +106,8 @@ public class ProjectInfo implements IModelElement {

        public IFileService getFileService(IProgressMonitor monitor){
                try {
+                       if (!RemoteHelper.isInitialized(getOriginalURI()))
+                               return null;
                        return RemoteHelper.getConnectedRemoteFileService(c=
onnection, monitor);
                } catch (Exception e) {
                        e.printStackTrace();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFil=
e.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.ja=
va
index eaa26df..7113efb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.ja
+++ va
@@ -313,4 +313,14 @@ public class YoctoHostFile implements IHostFile{
        public void setFileService(IFileService fileService) {
                this.fileService =3D fileService;
        }
+
+       @Override
+       public String toString() {
+               URI uri =3D this.projectInfo.getOriginalURI();
+               try {
+                       return new URI(uri.getScheme(), uri.getHost(), file=
URI.getPath(), uri.getFragment()).toString();
+               } catch (URISyntaxException e) {
+                       return fileURI.toString();
+               }
+       }
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/In=
stallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/inst=
all/InstallWizard.java
index 5df375e..f3ecfc4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWi=
zard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Instal
+++ lWizard.java
@@ -195,6 +195,7 @@ public class InstallWizard extends FiniteStateWizard im=
plements
                                Activator.putProjInfo(pinfo.getOEFSURI(), p=
info);

                                container.run(false, false, new CreateBBCPr=
ojectOperation(pinfo));
+                               RemoteHelper.storeURIInMetaArea(pinfo.getPr=
ojectName(), uri);
                                return true;
                        }
                } catch (Exception e) {
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/=
org.yocto.remote.utils/META-INF/MANIFEST.MF
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
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Remo=
teHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/R=
emoteHelper.java
index e9118d6..cd33d29 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelpe=
r.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHe
+++ lper.java
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
 import org.eclipse.core.runtime.IStatus;  import org.eclipse.core.runtime.=
MultiStatus;
@@ -34,12 +45,14 @@ import org.eclipse.core.runtime.Status;  import org.ecl=
ipse.core.runtime.SubProgressMonitor;
 import org.eclipse.osgi.util.NLS;
 import org.eclipse.rse.core.IRSECoreStatusCodes;
+import org.eclipse.rse.core.IRSEInitListener;
 import org.eclipse.rse.core.IRSESystemType;
 import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.rse.core.mode=
l.ISubSystemConfigurationCategories;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.internal.core.RSEInitJob;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageExcepti=
on;
 import org.eclipse.rse.services.files.IFileService;
@@ -62,6 +75,72 @@ public class RemoteHelper {
        public static final int TOTALWORKLOAD =3D 100;
        private static Map<IHost, RemoteMachine> machines;

+       public static IPath getWorkspaceMetaArea(){
+               Workspace workspace =3D (Workspace)ResourcesPlugin.getWorks=
pace();
+               LocalMetaArea metaDataArea =3D workspace.getMetaArea();
+               return metaDataArea.getLocation();
+       }
+
+       public static void storeURIInMetaArea(String projName, URI uri){
+               IPath path =3D getWorkspaceMetaArea();
+               String sep =3D File.separator;
+               File f =3D new File(path.toString() + sep + ".projects" + s=
ep + projName + sep + ".originalURI");
+               PrintWriter writer;
+               try {
+                       writer =3D new PrintWriter(f);
+                       writer.println(uri.getScheme());
+                       writer.println(uri.getHost());
+                       writer.println(uri.getPath());
+                       writer.println(uri.getFragment());
+                       writer.close();
+               } catch (FileNotFoundException e) {
+                       e.printStackTrace();
+               }
+       }
+
+       public static URI retrieveURIFromMetaArea(String projName){
+               IPath path =3D getWorkspaceMetaArea();
+               String sep =3D File.separator;
+               File f =3D new File(path.toString() + sep + ".projects" + s=
ep + projName + sep + ".originalURI");
+               try {
+                       BufferedReader buf =3D new BufferedReader(new FileR=
eader(f));
+                       String line =3D null;
+                       List<String> elems =3D new ArrayList<String>();
+                       while((line =3D buf.readLine()) !=3D null){
+                               if (line.equals("null"))
+                                       line =3D null;
+                               elems.add(line);
+                       }
+                       buf.close();
+                       if (elems.size() =3D=3D 4){
+                               URI uri =3D new URI(elems.get(0), elems.get=
(1), elems.get(2), elems.get(3));
+                               return uri;
+                       }
+               } catch (IOException e) {
+                       e.printStackTrace();
+               } catch (URISyntaxException e) {
+                       e.printStackTrace();
+               }
+               return null;
+       }
+
+       public static boolean isInitialized(final URI uri){
+               boolean init =3D RSECorePlugin.isInitComplete(RSECorePlugin=
.INIT_MODEL);
+               if (!init) {
+                       RSEInitJob.getInstance().addInitListener(new IRSEIn=
itListener() {
+                               @Override
+                               public void phaseComplete(int arg0) {
+                                       try {
+                                               InternalFileSystemCore.getI=
nstance().getStore(uri);
+                                       } catch (CoreException e) {
+                                               e.printStackTrace();
+                                       }
+                               }
+                       });
+               }
+               return init;
+       }
+
        public static IHost getRemoteConnectionByName(String remoteConnecti=
on) {
                if (remoteConnection =3D=3D null)
                        return null;
--
1.7.10.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

