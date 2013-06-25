Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 026F7E014DF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 01:55:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Jun 2013 01:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,935,1363158000"; d="scan'208";a="335125399"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 25 Jun 2013 01:54:53 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.204]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.127]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 09:54:28 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2] Fix Eclipse workspace deadlock when restoring
Thread-Index: AQHObo6e0jtMeur5X0abX18RutyXhplAgWeAgAWiTc4=
Date: Tue, 25 Jun 2013 08:54:28 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639160097C7@IRSMSX101.ger.corp.intel.com>
References: <1371824807-17259-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C46E88@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C46E88@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
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
X-List-Received-Date: Tue, 25 Jun 2013 08:55:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
This is the compromise we talked about. We cannot control the way Eclipse r=
estores the workspace or the time when RSE API is initialized. That is why,=
 we returned a Null store at first and created a hook for restoring the con=
nection when the RSE API is up.=0A=
I am not sure that we can catch that error message(regarding the project de=
scription) since it is deep within the Eclipse core.=0A=
On the other hand, I am not sure I understand what you mean by telling the =
user to restore the remote connection. =0A=
In the current implementation, we return a null file store, and when we get=
 notified that the RSE API is up, we will automatically restore the Bitbake=
 session, and the shell session.=0A=
The project remote connection will be restored in a lazy way, when it is ac=
cessed, since at this point we will have the sessions we need to do that.=
=0A=
What action should be performed upon catching that action, and telling the =
user to restore, besides waiting for the RSE API to be initialized and upda=
te the connection when we need it ?=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, June 21, 2013 10:43 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Cc: Ioana Grigoropol=0A=
Subject: RE: [yocto] [PATCH v2] Fix Eclipse workspace deadlock when restori=
ng=0A=
=0A=
OK more info. It seems if the project is remote, first we'll get the projec=
t description failure since we haven't restored the remote connection, afte=
r we dismiss the error and double click on the project and restore the RSE =
connection, the project will be able to restore.  We should change the erro=
r message into warning and tell user to restore their RSE connection.=0A=
=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Friday, June 21, 2013 7:27 AM=0A=
To: yocto@yoctoproject.org=0A=
Cc: Ioana Grigoropol=0A=
Subject: [yocto] [PATCH v2] Fix Eclipse workspace deadlock when restoring=
=0A=
=0A=
From: Ioana Grigoropol <ioana.grigoropol@gmail.com>=0A=
=0A=
- when creating a new bitbake commander project, a bunch of information rel=
evant for the project is set in the project information map=0A=
- when closing & restarting Eclipse, having a Bitbake commander project in =
the workspace an deadlock occurs due to the following:=0A=
        - Eclipse Resources container tries to restore all projects that we=
re previously in the workspace=0A=
        - when trying to restore our BB project, we will try to determine w=
hat was the remote connection for that specific project, given its URI=0A=
                - we can only determine the connection by calling RSE plugi=
n & we must wait for it to be initialized=0A=
        - the RSE plugin is initialized after the Resource container is fin=
ishes, and since this process is blocked waiting for a later one, a deadloc=
k occurs=0A=
=0A=
- in order to fix this problem, perform the following steps:=0A=
        - when the Eclipse Resource container asks for the store of our pro=
ject=0A=
                - return a NullFileStore=0A=
                - register as a listener of the RSEInitJob in order to get =
notified when the job is finished=0A=
                - restore the project information when the RSE API is up by=
 triggering the internal file system core manager=0A=
        - restoring the information:=0A=
                - for the local implementation:=0A=
                        - the connection of the project is missing -> retri=
ve it by invoking RSE=0A=
                - for the remote implementation:=0A=
                        - the only URI for the project is the oefs one=0A=
                        - we cannot change this uri to point to the real on=
e since it will block the refresh on the project=0A=
                        - we cannot determine the real URI form the oefs on=
e since we have no clue what is the host(ip)=0A=
                   -> solution:=0A=
                        - when creating the BBC project=0A=
                                - save the information about the real URI o=
f the project in the metadata of the workspace=0A=
                        - when restoring the project=0A=
                                - retrieve the information from the metadat=
a location=0A=
- fixed also the Project Description of the Location to display the real UR=
I of the files=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioana.grigoropol@gmail.com>=0A=
---=0A=
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    2 +-=0A=
 .../src/org/yocto/bc/ui/Activator.java             |    4 +-=0A=
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   10 +--=0A=
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   11 ++-=0A=
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |   10 +++=0A=
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    1 +=0A=
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    6 +-=0A=
 .../src/org/yocto/remote/utils/RemoteHelper.java   |   79 ++++++++++++++++=
++++=0A=
 8 files changed, 113 insertions(+), 10 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java=
=0A=
index 11d677a..724b7d0 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java=0A=
@@ -18,7 +18,7 @@ import java.io.InputStream;  import java.io.InputStreamRe=
ader;  import java.io.OutputStream;  import java.io.Writer;=0A=
-=0A=
+=0A=
 import org.eclipse.core.runtime.IProgressMonitor;=0A=
 import org.eclipse.core.runtime.NullProgressMonitor;=0A=
 import org.eclipse.rse.core.model.IHost; diff --git a/plugins/org.yocto.bc=
.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yo=
cto/bc/ui/Activator.java=0A=
index 5c43ba8..f53592c 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java=0A=
@@ -108,7 +108,7 @@ public class Activator extends AbstractUIPlugin {=0A=
=0A=
                BBSession bbs =3D (BBSession) bbSessionMap.get(projectRoot)=
;=0A=
=0A=
-               if (bbs =3D=3D null) {=0A=
+               if (bbs =3D=3D null || bbs.getShell() =3D=3D null) {=0A=
                        bbs =3D new BBSession(getShellSession(projectInfo, =
null, monitor), projectRoot);=0A=
                        bbSessionMap.put(projectRoot, bbs);=0A=
                }=0A=
@@ -190,7 +190,7 @@ public class Activator extends AbstractUIPlugin {=0A=
=0A=
                ShellSession ss =3D (ShellSession) shellMap.get(absolutePat=
h);=0A=
=0A=
-               if (ss =3D=3D null) {=0A=
+               if (ss =3D=3D null &&=0A=
+RemoteHelper.isInitialized(projInfo.getOriginalURI())) {=0A=
                        IHostFile remoteHostFile =3D RemoteHelper.getRemote=
HostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);=0A=
                        ss =3D new ShellSession(projInfo, remoteHostFile, P=
rojectInfoHelper.getInitScriptPath(absolutePath));=0A=
                }=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileS=
ystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileS=
ystem.java=0A=
index 357edc1..b814c4c 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.j=
ava=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSyste=0A=
+++ m.java=0A=
@@ -11,7 +11,6 @@=0A=
  *************************************************************************=
******/=0A=
 package org.yocto.bc.ui.filesystem;=0A=
=0A=
-import java.io.File;=0A=
 import java.lang.reflect.InvocationTargetException;=0A=
 import java.net.URI;=0A=
 import java.util.ArrayList;=0A=
@@ -22,14 +21,16 @@ import java.util.Map;  import org.eclipse.core.filesyst=
em.IFileStore;=0A=
 import org.eclipse.core.filesystem.IFileSystem;=0A=
 import org.eclipse.core.filesystem.provider.FileSystem;=0A=
+import org.eclipse.core.internal.filesystem.NullFileStore;=0A=
+import org.eclipse.core.internal.resources.LocalMetaArea;=0A=
+import org.eclipse.core.resources.ResourcesPlugin;=0A=
 import org.eclipse.core.runtime.CoreException;=0A=
 import org.eclipse.core.runtime.NullProgressMonitor;=0A=
+import org.eclipse.core.runtime.Path;=0A=
 import org.eclipse.rse.services.clientserver.messages.SystemMessageExcepti=
on;=0A=
-=0A=
 import org.yocto.bc.bitbake.BBSession;=0A=
 import org.yocto.bc.ui.Activator;=0A=
 import org.yocto.bc.ui.model.ProjectInfo;=0A=
-import org.yocto.bc.ui.model.YoctoHostFile;=0A=
=0A=
 /**=0A=
  * A filesystem that ignores specific OE directories that contain derived =
information.=0A=
@@ -64,8 +65,7 @@ public class OEFileSystem extends FileSystem {=0A=
                                config =3D Activator.getBBSession(projInfo,=
 new NullProgressMonitor());=0A=
                                config.initialize();=0A=
                        } catch (Exception e) {=0A=
-                               e.printStackTrace();=0A=
-                               return new OEIgnoreFile(new YoctoHostFile(p=
rojInfo, uri));=0A=
+                               return new NullFileStore(new Path(uri.getPa=
th()));=0A=
                        }=0A=
=0A=
                        if (config.get("TMPDIR") =3D=3D null || config.get(=
"DL_DIR") =3D=3D null || config.get("SSTATE_DIR")=3D=3D null) { diff --git =
a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plug=
ins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java=0A=
=0A=
index 79e5f87..119782d 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java=0A=
@@ -61,6 +61,13 @@ public class ProjectInfo implements IModelElement {=0A=
        public void setLocationURI(URI location) {=0A=
                if (this.location =3D=3D null)=0A=
                        this.location =3D new YoctoLocation();=0A=
+               if (location.getScheme().equalsIgnoreCase("oefs")) {=0A=
+                       if (this.name =3D=3D  null) {=0A=
+                               String path =3D location.getPath();=0A=
+                               this.name =3D path.substring(path.lastIndex=
Of("/") + 1);=0A=
+                       }=0A=
+                       location =3D RemoteHelper.retrieveURIFromMetaArea(t=
his.name);=0A=
+               }=0A=
                this.location.setOriginalURI(location);=0A=
                try {=0A=
                        this.location.setOEFSURI(new URI(ProjectInfoHelper.=
OEFS_SCHEME + location.getPath() )); @@ -79,7 +86,7 @@ public class Project=
Info implements IModelElement {=0A=
        }=0A=
=0A=
        public IHost getConnection() {=0A=
-               if (connection =3D=3D null) {=0A=
+               if (connection =3D=3D null &&=0A=
+RemoteHelper.isInitialized(getOriginalURI())) {=0A=
                        connection =3D RemoteHelper.getRemoteConnectionForU=
RI(location.getOriginalURI(), new NullProgressMonitor());=0A=
                }=0A=
                return connection;=0A=
@@ -99,6 +106,8 @@ public class ProjectInfo implements IModelElement {=0A=
=0A=
        public IFileService getFileService(IProgressMonitor monitor){=0A=
                try {=0A=
+                       if (!RemoteHelper.isInitialized(getOriginalURI()))=
=0A=
+                               return null;=0A=
                        return RemoteHelper.getConnectedRemoteFileService(c=
onnection, monitor);=0A=
                } catch (Exception e) {=0A=
                        e.printStackTrace();=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFil=
e.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.ja=
va=0A=
index eaa26df..7113efb 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java=
=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.ja=0A=
+++ va=0A=
@@ -313,4 +313,14 @@ public class YoctoHostFile implements IHostFile{=0A=
        public void setFileService(IFileService fileService) {=0A=
                this.fileService =3D fileService;=0A=
        }=0A=
+=0A=
+       @Override=0A=
+       public String toString() {=0A=
+               URI uri =3D this.projectInfo.getOriginalURI();=0A=
+               try {=0A=
+                       return new URI(uri.getScheme(), uri.getHost(), file=
URI.getPath(), uri.getFragment()).toString();=0A=
+               } catch (URISyntaxException e) {=0A=
+                       return fileURI.toString();=0A=
+               }=0A=
+       }=0A=
 }=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/In=
stallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/inst=
all/InstallWizard.java=0A=
index 5df375e..f3ecfc4 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWi=
zard.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Instal=0A=
+++ lWizard.java=0A=
@@ -195,6 +195,7 @@ public class InstallWizard extends FiniteStateWizard im=
plements=0A=
                                Activator.putProjInfo(pinfo.getOEFSURI(), p=
info);=0A=
=0A=
                                container.run(false, false, new CreateBBCPr=
ojectOperation(pinfo));=0A=
+                               RemoteHelper.storeURIInMetaArea(pinfo.getPr=
ojectName(), uri);=0A=
                                return true;=0A=
                        }=0A=
                } catch (Exception e) {=0A=
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/=
org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
index 06d14f8..08a76cc 100644=0A=
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
@@ -8,9 +8,13 @@ Require-Bundle: org.eclipse.ui,=0A=
  org.eclipse.core.runtime=0A=
 Bundle-ActivationPolicy: lazy=0A=
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6=0A=
-Import-Package: org.eclipse.rse.core,=0A=
+Import-Package: org.eclipse.core.internal.filesystem,=0A=
+ org.eclipse.core.internal.resources,=0A=
+ org.eclipse.core.resources,=0A=
+ org.eclipse.rse.core,=0A=
  org.eclipse.rse.core.model,=0A=
  org.eclipse.rse.core.subsystems,=0A=
+ org.eclipse.rse.internal.core,=0A=
  org.eclipse.rse.internal.services.local.shells,=0A=
  org.eclipse.rse.internal.services.shells,=0A=
  org.eclipse.rse.internal.terminals.ui,=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Remo=
teHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/R=
emoteHelper.java=0A=
index e9118d6..cd33d29 100644=0A=
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelpe=
r.java=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHe=0A=
+++ lper.java=0A=
@@ -13,19 +13,30 @@ package org.yocto.remote.utils;=0A=
=0A=
 import java.io.BufferedInputStream;=0A=
 import java.io.BufferedOutputStream;=0A=
+import java.io.BufferedReader;=0A=
 import java.io.File;=0A=
+import java.io.FileNotFoundException;=0A=
 import java.io.FileOutputStream;=0A=
+import java.io.FileReader;=0A=
+import java.io.IOException;=0A=
 import java.io.InputStream;=0A=
+import java.io.PrintWriter;=0A=
 import java.net.URI;=0A=
 import java.net.URISyntaxException;=0A=
 import java.util.ArrayList;=0A=
 import java.util.Arrays;=0A=
 import java.util.HashMap;=0A=
 import java.util.Iterator;=0A=
+import java.util.List;=0A=
 import java.util.Map;=0A=
=0A=
+import org.eclipse.core.internal.filesystem.InternalFileSystemCore;=0A=
+import org.eclipse.core.internal.resources.LocalMetaArea;=0A=
+import org.eclipse.core.internal.resources.Workspace;=0A=
+import org.eclipse.core.resources.ResourcesPlugin;=0A=
 import org.eclipse.core.runtime.CoreException;=0A=
 import org.eclipse.core.runtime.FileLocator;=0A=
+import org.eclipse.core.runtime.IPath;=0A=
 import org.eclipse.core.runtime.IProgressMonitor;=0A=
 import org.eclipse.core.runtime.IStatus;  import org.eclipse.core.runtime.=
MultiStatus;=0A=
@@ -34,12 +45,14 @@ import org.eclipse.core.runtime.Status;  import org.ecl=
ipse.core.runtime.SubProgressMonitor;=0A=
 import org.eclipse.osgi.util.NLS;=0A=
 import org.eclipse.rse.core.IRSECoreStatusCodes;=0A=
+import org.eclipse.rse.core.IRSEInitListener;=0A=
 import org.eclipse.rse.core.IRSESystemType;=0A=
 import org.eclipse.rse.core.RSECorePlugin;=0A=
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.rse.core.mode=
l.ISubSystemConfigurationCategories;=0A=
 import org.eclipse.rse.core.model.ISystemRegistry;=0A=
 import org.eclipse.rse.core.subsystems.ISubSystem;=0A=
+import org.eclipse.rse.internal.core.RSEInitJob;=0A=
 import org.eclipse.rse.services.IService;=0A=
 import org.eclipse.rse.services.clientserver.messages.SystemMessageExcepti=
on;=0A=
 import org.eclipse.rse.services.files.IFileService;=0A=
@@ -62,6 +75,72 @@ public class RemoteHelper {=0A=
        public static final int TOTALWORKLOAD =3D 100;=0A=
        private static Map<IHost, RemoteMachine> machines;=0A=
=0A=
+       public static IPath getWorkspaceMetaArea(){=0A=
+               Workspace workspace =3D (Workspace)ResourcesPlugin.getWorks=
pace();=0A=
+               LocalMetaArea metaDataArea =3D workspace.getMetaArea();=0A=
+               return metaDataArea.getLocation();=0A=
+       }=0A=
+=0A=
+       public static void storeURIInMetaArea(String projName, URI uri){=0A=
+               IPath path =3D getWorkspaceMetaArea();=0A=
+               String sep =3D File.separator;=0A=
+               File f =3D new File(path.toString() + sep + ".projects" + s=
ep + projName + sep + ".originalURI");=0A=
+               PrintWriter writer;=0A=
+               try {=0A=
+                       writer =3D new PrintWriter(f);=0A=
+                       writer.println(uri.getScheme());=0A=
+                       writer.println(uri.getHost());=0A=
+                       writer.println(uri.getPath());=0A=
+                       writer.println(uri.getFragment());=0A=
+                       writer.close();=0A=
+               } catch (FileNotFoundException e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+=0A=
+       public static URI retrieveURIFromMetaArea(String projName){=0A=
+               IPath path =3D getWorkspaceMetaArea();=0A=
+               String sep =3D File.separator;=0A=
+               File f =3D new File(path.toString() + sep + ".projects" + s=
ep + projName + sep + ".originalURI");=0A=
+               try {=0A=
+                       BufferedReader buf =3D new BufferedReader(new FileR=
eader(f));=0A=
+                       String line =3D null;=0A=
+                       List<String> elems =3D new ArrayList<String>();=0A=
+                       while((line =3D buf.readLine()) !=3D null){=0A=
+                               if (line.equals("null"))=0A=
+                                       line =3D null;=0A=
+                               elems.add(line);=0A=
+                       }=0A=
+                       buf.close();=0A=
+                       if (elems.size() =3D=3D 4){=0A=
+                               URI uri =3D new URI(elems.get(0), elems.get=
(1), elems.get(2), elems.get(3));=0A=
+                               return uri;=0A=
+                       }=0A=
+               } catch (IOException e) {=0A=
+                       e.printStackTrace();=0A=
+               } catch (URISyntaxException e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static boolean isInitialized(final URI uri){=0A=
+               boolean init =3D RSECorePlugin.isInitComplete(RSECorePlugin=
.INIT_MODEL);=0A=
+               if (!init) {=0A=
+                       RSEInitJob.getInstance().addInitListener(new IRSEIn=
itListener() {=0A=
+                               @Override=0A=
+                               public void phaseComplete(int arg0) {=0A=
+                                       try {=0A=
+                                               InternalFileSystemCore.getI=
nstance().getStore(uri);=0A=
+                                       } catch (CoreException e) {=0A=
+                                               e.printStackTrace();=0A=
+                                       }=0A=
+                               }=0A=
+                       });=0A=
+               }=0A=
+               return init;=0A=
+       }=0A=
+=0A=
        public static IHost getRemoteConnectionByName(String remoteConnecti=
on) {=0A=
                if (remoteConnection =3D=3D null)=0A=
                        return null;=0A=
--=0A=
1.7.10.4=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

