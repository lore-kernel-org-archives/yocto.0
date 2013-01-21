Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA6A6E002AB
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 14:30:24 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Jan 2013 14:30:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,508,1355126400"; d="scan'208";a="246709334"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 21 Jan 2013 14:30:23 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.421.2; Mon, 21 Jan 2013 14:30:22 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.112]) with mapi id
	14.01.0421.002; Mon, 21 Jan 2013 14:30:23 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2]
	[eclipse-poky][branch:windows-build]Performance	fix for Windows
	implementation
Thread-Index: AQHN9+exH05M9MyF2kyfbbH5oViEh5hUXcaQ
Date: Mon, 21 Jan 2013 22:30:22 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD5B0A@ORSMSX101.amr.corp.intel.com>
References: <1358779027-3248-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1358779027-3248-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH v2] [eclipse-poky][branch:windows-build]Performance	fix for Windows implementation
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
X-List-Received-Date: Mon, 21 Jan 2013 22:30:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

This patch seems not apply to the code of the latest windows-build, can you=
 do a rebase?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Monday, January 21, 2013 6:37 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v2] [eclipse-poky][branch:windows-build]Performance=
 fix for Windows implementation

    - run each command in a separate shell - needs explicit sourcing of env=
ironment and closing for each command
    - add distinction between OEFS URI and actual URI of the remote project=
 and files -> YoctoLocation of the project contains both URIs
        - use OEFS URI only for initialization of OEFSFileSystem,OEIgnoredP=
aths, OEFile (oefs://...)
        - use actual URI (file:// or rse://) for all other operations (new =
file, copy, save, delete)
    - tested only against Windows machine & RSE connection to BuildApplianc=
e machine
IMPORTANT: please make sure that sshd configurations on the remote machine =
has variable MaxSessions set to a reasonable number (more than the default =
10 sessions), otherwise an "Error creating terminal" will be thrown when mo=
re channels are opened for running remote commands (ChannelSftp)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    2 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   30 +++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   10 +-
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    3 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   19 ++++
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   31 +++---
 .../src/org/yocto/bc/ui/Activator.java             |   12 +-
 .../editors/bitbake/BitBakeDocumentProvider.java   |   27 +++--
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |    2 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |   20 +++-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  115 ++++------------=
----
 .../org/yocto/bc/ui/filesystem/YoctoLocation.java  |   36 ++++++
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   38 ++++---
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |   20 ++--
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   19 +++-
 .../importProject/ImportYoctoProjectWizard.java    |    4 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    4 +-
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    8 +-
 .../BBConfigurationInitializeOperation.java        |    2 +-
 .../newproject/CreateBBCProjectOperation.java      |    7 +-
 20 files changed, 233 insertions(+), 176 deletions(-)  create mode 100755 =
plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java=
 b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 6d003ce..e8e8d30 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -23,7 +23,7 @@ public class BBRecipe extends BBSession {
        private final URI fileURI;

        public BBRecipe(BBSession session, URI filePath) throws IOException=
 {
-               super(session.shell, session.pinfo.getURI());
+               super(session.shell, session.pinfo.getOriginalURI());
                this.session =3D session;
                this.fileURI =3D filePath;
                this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake =
-e -b " + filePath.getPath() + " >& " + BB_ENV_FILE; diff --git a/plugins/o=
rg.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.=
bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 9adeb3f..8a8de22 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -15,6 +15,8 @@ import java.io.File;
 import java.io.FileFilter;
 import java.io.FileReader;
 import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
@@ -33,15 +35,18 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Status;  import org.eclipse.jface.preferen=
ce.JFacePreferences;
 import org.eclipse.jface.resource.JFaceResources;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.console.ConsolePlugin;
 import org.eclipse.ui.console.IConsole;  import org.eclipse.ui.console.ICo=
nsoleManager;
 import org.eclipse.ui.console.MessageConsole;
 import org.eclipse.ui.console.MessageConsoleStream;
 import org.eclipse.ui.progress.WorkbenchJob;
+import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.ui.model.IModelElement;
 import org.yocto.bc.ui.model.ProjectInfo;

@@ -60,10 +65,10 @@ public class BBSession implements IBBSessionListener, I=
ModelElement, Map {

        public static final String BB_ENV_FILE =3D "bitbake.env";

-       public static final String CONF_DIR =3D "/conf";
+       public static final String CONF_DIR =3D "conf";
        public static final String BUILDDIR_INDICATORS [] =3D {
-               "/local.conf",
-               "/bblayers.conf",
+               "local.conf",
+               "bblayers.conf",
        };

        protected final ProjectInfo pinfo;
@@ -81,9 +86,9 @@ public class BBSession implements IBBSessionListener, IMo=
delElement, Map {
        public BBSession(ShellSession ssession, URI projectRoot) throws IOE=
xception {
                shell =3D ssession;
                this.pinfo =3D new ProjectInfo();
-               pinfo.setLocation(projectRoot);
+               pinfo.setLocationURI(projectRoot);
                pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath=
(projectRoot));
-               this.parsingCmd =3D "sh -c 'DISABLE_SANITY_CHECKS=3D\"1\" b=
itbake -e >& " + BB_ENV_FILE + "  '" ;
+               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake =
-e >& " +
+BB_ENV_FILE;
        }

        public BBSession(ShellSession ssession, URI projectRoot, boolean si=
lent) throws IOException { @@ -190,7 +195,7 @@ public class BBSession imple=
ments IBBSessionListener, IModelElement, Map {
        }

        public URI getProjInfoRoot() {
-               return pinfo.getURI();
+               return pinfo.getOriginalURI();
        }

        /**
@@ -271,7 +276,7 @@ public class BBSession implements IBBSessionListener, I=
ModelElement, Map {
         */
        public MessageConsole getConsole() {
                if (sessionConsole =3D=3D null) {
-                       String cName =3D ProjectInfoHelper.getProjectName(p=
info.getURI()) + " Console";
+                       String cName =3D
+ProjectInfoHelper.getProjectName(pinfo.getOriginalURI()) + " Console";
                        IConsoleManager conMan =3D ConsolePlugin.getDefault=
().getConsoleManager();
                        IConsole[] existing =3D conMan.getConsoles();
                        for (int i =3D 0; i < existing.length; i++) @@ -391=
,10 +396,10 @@ public class BBSession implements IBBSessionListener, IModel=
Element, Map {
                                        String result =3D shell.execute(par=
singCmd, hasErrors);

                                        //FIXME : wait for bitbake to finis=
h
-
                                        properties =3D parseBBEnvironment(r=
esult);

                                        initialized =3D true;
+                                       //FIXME: cleanup BB env file
                                }
                        } finally {
                                //downgrade lock
@@ -453,7 +458,10 @@ public class BBSession implements IBBSessionListener, =
IModelElement, Map {
        }

        protected void parse(String bbOutfilePath, Map outMap) throws Excep=
tion {
-               BufferedReader reader =3D new BufferedReader(new FileReader=
(bbOutfilePath + BB_ENV_FILE));
+               IHost connection =3D shell.getProjectInfo().getConnection()=
;
+               InputStream is =3D RemoteHelper.getRemoteInputStream(connec=
tion, bbOutfilePath, BB_ENV_FILE, new NullProgressMonitor());
+               RemoteHelper.getRemoteHostFile(connection, bbOutfilePath + =
BB_ENV_FILE, new NullProgressMonitor());
+               BufferedReader reader =3D new BufferedReader(new
+InputStreamReader(is));
                String line;
                boolean inLine =3D false;
                StringBuffer sb =3D null;
@@ -769,4 +777,8 @@ public class BBSession implements IBBSessionListener, I=
ModelElement, Map {
                return (Map<String, String>) properties;
        }

+       public ProjectInfo getProjectInfo() {
+               return pinfo;
+       }
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index ef01d96..6603bfb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -78,6 +78,14 @@ public class ShellSession {
 //     private final Writer out;
        private ProjectInfo projectInfo;

+       public ProjectInfo getProjectInfo() {
+               return projectInfo;
+       }
+
+       public void setProjectInfo(ProjectInfo projectInfo) {
+               this.projectInfo =3D projectInfo;
+       }
+
        public ShellSession(ProjectInfo pInfo, int shellType, IHostFile roo=
t, String initCmd, Writer out) throws IOException {
                this.projectInfo =3D pInfo;
                this.root =3D root;
@@ -129,7 +137,7 @@ public class ShellSession {
        }

     private String getInitCmd() {
-       return "source " + initCmd + " " + getBuildDirAbsolutePath() + " > =
tempsf; rm -rf tempsf;";
+       return "source " + initCmd + " " + getBuildDirAbsolutePath() + " >
+ tempsf; rm -rf tempsf;" + exportCmd + ";" + exportColumnsCmd + ";" +
+ "cd " + getBuildDirAbsolutePath()  + ";";
        }

 synchronized
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandR=
unnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/Comman=
dRunnable.java
index fe8b7a7..98c3758 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable=
.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunna
+++ ble.java
@@ -52,6 +52,7 @@ public class CommandRunnable implements Runnable{
                        }
                        StringBuffer buffer =3D new StringBuffer();
                        int c;
+                       if (errbr !=3D null)
                        while ((c =3D errbr.read()) !=3D -1) {
                                char ch =3D (char) c;
                                buffer.append(ch);
@@ -66,7 +67,7 @@ public class CommandRunnable implements Runnable{
                                        buffer.delete(0, buffer.length());
                                }
                        }
-
+                       if (inbr !=3D null)
                        while ((c =3D inbr.read()) !=3D -1) {
                                char ch =3D (char) c;
                                buffer.append(ch);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHe=
lper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHel=
per.java
index 1134c8e..9bce9e3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.ja=
va
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper
+++ .java
@@ -11,6 +11,7 @@
 package org.yocto.bc.remote.utils;

 import java.io.File;
+import java.io.InputStream;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.HashMap;
@@ -268,6 +269,24 @@ public class RemoteHelper {
                return null;
        }

+       public static InputStream getRemoteInputStream(IHost connection, St=
ring parentPath, String remoteFilePath, IProgressMonitor monitor){
+               assert(connection !=3D null);
+               monitor.beginTask(Messages.InfoDownload, 100);
+
+               try {
+                       IFileService fileService =3D getConnectedRemoteFile=
Service(connection,
+new SubProgressMonitor(monitor, 10));
+
+                       return fileService.getInputStream(parentPath, remot=
eFilePath, false, monitor);
+//                     IHostFile remoteFile =3D fileService.getFile(remote=
Path.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubPro=
gressMonitor(monitor, 5));
+//                     return remoteFile;
+               } catch (Exception e) {
+                       e.printStackTrace();
+           }finally {
+                       monitor.done();
+               }
+               return null;
+       }
+
        /**
         * Throws a core exception with an error status object built from t=
he given
         * message, lower level exception, and error code.
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMa=
chine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMa=
chine.java
index 18c41e1..ba925ca 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.j=
ava
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachin
+++ e.java
@@ -1,11 +1,11 @@
 package org.yocto.bc.remote.utils;

 import java.io.BufferedReader;
-import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
+import java.util.concurrent.locks.Lock;

 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -18,7 +18,6 @@ import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.internal.services.local.shells.LocalShellService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageExcepti=
on;
 import org.eclipse.rse.services.files.IFileService;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileService=
SubSystem;
@@ -43,13 +42,16 @@ public class RemoteMachine {
        public RemoteMachine(IHost connection) {
                setConnection(connection);
        }
-       private ProcessStreamBuffer processOutput(Process process, IProgres=
sMonitor monitor) throws Exception {
-               if (process =3D=3D null)
+       private ProcessStreamBuffer processOutput(IHostShell shell, IProgre=
ssMonitor monitor) throws Exception {
+               if (shell =3D=3D null)
                        throw new Exception("An error has occured while try=
ing to run remote command!");
                ProcessStreamBuffer processBuffer =3D new ProcessStreamBuff=
er();
-
-               BufferedReader inbr =3D new BufferedReader(new InputStreamR=
eader(process.getInputStream()));
-               BufferedReader errbr =3D new BufferedReader(new InputStream=
Reader(process.getErrorStream()));
+
+               Lock lock =3D shell.getStandardOutputReader().getReaderLock=
();
+               lock.lock();
+               BufferedReader inbr =3D  shell.getStandardOutputReader().ge=
tReader();
+               BufferedReader errbr =3D  shell.getStandardErrorReader().ge=
tReader();
+
                boolean cancel =3D false;
                while (!cancel) {
                        if(monitor.isCanceled()) {
@@ -58,6 +60,7 @@ public class RemoteMachine {
                        }
                        StringBuffer buffer =3D new StringBuffer();
                        int c;
+                       if (errbr !=3D null)
                        while ((c =3D errbr.read()) !=3D -1) {
                                char ch =3D (char) c;
                                buffer.append(ch);
@@ -71,7 +74,7 @@ public class RemoteMachine {
                                        buffer.delete(0, buffer.length());
                                }
                        }
-
+                       if (inbr !=3D null)
                        while ((c =3D inbr.read()) !=3D -1) {
                                char ch =3D (char) c;
                                buffer.append(ch);
@@ -120,13 +123,13 @@ public class RemoteMachine {

                        IShellService shellService =3D getShellService(new =
SubProgressMonitor(monitor, 7));

-                       HostShellProcessAdapter p =3D null;
+//                     HostShellProcessAdapter p =3D null;
                        ProcessStreamBuffer buffer =3D null;
                        try {
                                SubProgressMonitor subMonitor =3D new SubPr=
ogressMonitor(monitor, 3);
                                IHostShell hostShell =3D shellService.runCo=
mmand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new Str=
ing[]{}, subMonitor);
-                               p =3D new HostShellProcessAdapter(hostShell=
);
-                               buffer =3D processOutput(p, subMonitor);
+//                             p =3D new HostShellProcessAdapter(hostShell=
);
+                               buffer =3D processOutput(hostShell, subMoni=
tor);
                                for(int i =3D 0; i < buffer.getOutputLines(=
).size(); i++) {
                                        String out =3D buffer.getOutputLine=
s().get(i);
                                        String[] tokens =3D out.split("=3D"=
);
@@ -138,9 +141,9 @@ public class RemoteMachine {
                                                environment.put(varName, va=
rValue);
                                }
                        } catch (Exception e) {
-                               if (p !=3D null) {
-                                       p.destroy();
-                               }
+//                             if (p !=3D null) {
+//                                     p.destroy();
+//                             }
                                e.printStackTrace();
                        }

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/p=
lugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 188efe6..3b97526 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -61,7 +61,7 @@ public class Activator extends AbstractUIPlugin {
                URI key =3D session.getProjInfoRoot();// + filePath;
                BBRecipe recipe =3D (BBRecipe) bbRecipeMap.get(key);
                if (recipe =3D=3D null) {
-                       recipe =3D new BBRecipe(session,filePath);
+                       recipe =3D new BBRecipe(session, filePath);
                        bbRecipeMap.put(key, recipe);
                }

@@ -75,7 +75,7 @@ public class Activator extends AbstractUIPlugin {
         * @throws IOException
         */
        public static BBSession getBBSession(ProjectInfo projectInfo, Write=
r out, IProgressMonitor monitor) throws IOException {
-               URI projectRoot =3D projectInfo.getURI();
+               URI projectRoot =3D projectInfo.getOriginalURI();
                if (bbSessionMap =3D=3D null) {
                        bbSessionMap =3D new Hashtable<URI, BBSession>();
                }
@@ -97,7 +97,7 @@ public class Activator extends AbstractUIPlugin {
         * @throws Exception
         */
        public static BBSession getBBSession(ProjectInfo projectInfo, IProg=
ressMonitor monitor) throws Exception {
-               URI projectRoot =3D projectInfo.getURI();
+               URI projectRoot =3D projectInfo.getOriginalURI();
                if (bbSessionMap =3D=3D null) {
                        bbSessionMap =3D new Hashtable<URI, BBSession>();
                }
@@ -151,12 +151,12 @@ public class Activator extends AbstractUIPlugin {
                if (projInfoMap =3D=3D null) {
                        projInfoMap =3D new Hashtable<URI, ProjectInfo>();
                }
-               location =3D convertOEFSUri(location);
+//             location =3D convertOEFSUri(location);
                if (location !=3D null) {
                        ProjectInfo pi =3D projInfoMap.get(location);
                        if (pi =3D=3D null) {
                                pi =3D new ProjectInfo();
-                               pi.setLocation(location);
+                               pi.setLocationURI(location);
                                try {
                                        pi.setInitScriptPath(ProjectInfoHel=
per.getInitScriptPath(location));
                                } catch (IOException e) {
@@ -195,7 +195,7 @@ public class Activator extends AbstractUIPlugin {
         * @throws IOException
         */
        private static ShellSession getShellSession(ProjectInfo projInfo, W=
riter out, IProgressMonitor monitor) throws IOException {
-               URI absolutePath =3D projInfo.getURI();
+               URI absolutePath =3D projInfo.getOriginalURI();
                if (shellMap =3D=3D null) {
                        shellMap =3D new Hashtable<String, ShellSession>();
                }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/Bi=
tBakeDocumentProvider.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/ed=
itors/bitbake/BitBakeDocumentProvider.java
index 2d28261..d9d5754 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDo=
cumentProvider.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBak
+++ eDocumentProvider.java
@@ -11,6 +11,9 @@
 package org.yocto.bc.ui.editors.bitbake;

 import java.net.URI;
+import java.net.URISyntaxException;
+
+import javax.security.auth.login.Configuration;

 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.NullProgressMonitor;
@@ -43,12 +46,18 @@ public class BitBakeDocumentProvider extends FileDocume=
ntProvider {
        public static final String RECIPE_COMMENT=3D "RECIPE_COMMENT"; //$N=
ON-NLS-1$

        private IHost connection;
+
+       private BitBakeSourceViewerConfiguration viewerConfiguration;

        private static final String[] CONTENT_TYPES=3D {
                        RECIPE_CODE,
                        RECIPE_COMMENT
        };

+       public BitBakeDocumentProvider(BitBakeSourceViewerConfiguration vie=
werConfiguration) {
+               this.viewerConfiguration =3D viewerConfiguration;
+       }
+
        private IDocumentPartitioner createRecipePartitioner() {
                IPredicateRule[] rules=3D { new SingleLineRule("#", null, n=
ew Token(RECIPE_COMMENT), (char) 0, true, false) }; //$NON-NLS-1$

@@ -73,13 +82,17 @@ public class BitBakeDocumentProvider extends FileDocume=
ntProvider {
                if (element instanceof IFileEditorInput) {
                        IFileEditorInput input=3D (IFileEditorInput) elemen=
t;

-                   URI uri =3D input.getFile().getLocationURI();
-                       if (uri =3D=3D null)
-                               return true;
-
-                       if (connection =3D=3D null)
-                               connection =3D RemoteHelper.getRemoteConnec=
tionForURI(uri, new NullProgressMonitor());
-                       return !RemoteHelper.fileExistsRemote(connection, n=
ew NullProgressMonitor(), uri.getPath());
+                   URI root =3D viewerConfiguration.getBBSession().getProj=
InfoRoot();
+                   String relPath =3D input.getFile().getProjectRelativePa=
th().toPortableString();
+                   try {
+                               URI fileURI =3D new URI(root.getScheme(), r=
oot.getHost(), root.getPath() + "/" + relPath, root.getFragment());
+                               if (connection =3D=3D null)
+                                       //connection =3D RemoteHelper.getRe=
moteConnectionForURI(fileURI, new NullProgressMonitor());
+                                       connection =3D viewerConfiguration.=
getBBSession().getProjectInfo().getConnection();
+                               return !RemoteHelper.fileExistsRemote(conne=
ction, new NullProgressMonitor(), fileURI.getPath());
+                       } catch (URISyntaxException e) {
+                               e.printStackTrace();
+                       }
                }

                return super.isDeleted(element);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/Bi=
tBakeFileEditor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/=
bitbake/BitBakeFileEditor.java
index be856ff..b2da775 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFi=
leEditor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBak
+++ eFileEditor.java
@@ -45,7 +45,7 @@ public class BitBakeFileEditor extends AbstractDecoratedT=
extEditor {
                super();
                viewerConfiguration =3D new BitBakeSourceViewerConfiguratio=
n(getSharedColors(), getPreferenceStore());
                setSourceViewerConfiguration(viewerConfiguration);
-               setDocumentProvider(new BitBakeDocumentProvider());
+               setDocumentProvider(new
+BitBakeDocumentProvider(viewerConfiguration));
        }

        @Override
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/Bi=
tBakeSourceViewerConfiguration.java b/plugins/org.yocto.bc.ui/src/org/yocto=
/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
index 98768a8..06a8233 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSo=
urceViewerConfiguration.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBak
+++ eSourceViewerConfiguration.java
@@ -10,6 +10,9 @@
  *************************************************************************=
******/
 package org.yocto.bc.ui.editors.bitbake;

+import java.net.URI;
+import java.net.URISyntaxException;
+
 import org.eclipse.core.resources.IFile;  import org.eclipse.jface.prefere=
nce.IPreferenceStore;
 import org.eclipse.jface.text.ITextHover;
@@ -33,9 +36,9 @@ import org.eclipse.swt.SWT;  import org.eclipse.swt.graph=
ics.Color;  import org.eclipse.swt.graphics.RGB;  import org.eclipse.ui.edi=
tors.text.TextSourceViewerConfiguration;
-
 import org.yocto.bc.bitbake.BBLanguageHelper;
 import org.yocto.bc.bitbake.BBSession;
+import org.yocto.bc.bitbake.ProjectInfoHelper;

 public class BitBakeSourceViewerConfiguration extends TextSourceViewerConf=
iguration {

@@ -66,7 +69,15 @@ public class BitBakeSourceViewerConfiguration extends Te=
xtSourceViewerConfigurat
        public ITextHover getTextHover(ISourceViewer sv, String contentType=
) {
                //only .bb file support Text Hover.
                if (textHover =3D=3D null && targetFile.getFileExtension().=
equals(BBLanguageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {
-                       textHover =3D new BBVariableTextHover(session, targ=
etFile.getLocationURI());
+                               URI root =3D session.getProjInfoRoot();
+                               try {
+                                       URI targetFIleURI =3D new URI(root.=
getScheme(), root.getHost(), root.getPath() + "/" +targetFile.getProjectRel=
ativePath().toPortableString(), root.getFragment());
+                                       textHover =3D new BBVariableTextHov=
er(session, targetFIleURI);
+                               } catch (URISyntaxException e) {
+                                       // TODO Auto-generated catch block
+                                       e.printStackTrace();
+                               }
+
                }

                return textHover;
@@ -192,4 +203,9 @@ public class BitBakeSourceViewerConfiguration extends T=
extSourceViewerConfigurat
        public void setBBSession(BBSession session) {
                this.session =3D session;
        }
+
+       public BBSession getBBSession() {
+               return this.session;
+       }
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index f12d6f3..7360588 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -37,6 +37,7 @@ import org.yocto.bc.bitbake.BBSession;  import org.yocto.=
bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.model.YoctoHostFile;

@@ -58,6 +59,10 @@ public class OEFile extends FileStore {
         */
        protected final String filePath;

+       public String getFilePath() {
+               return filePath;
+       }
+
        private final URI root;

        /**
@@ -84,17 +89,18 @@ public class OEFile extends FileStore {
         */
        private boolean isPotentialBuildDir(String path) {
                String parentPath =3D path.substring(0, path.lastIndexOf("/=
"));
+               String name =3D path.substring(path.lastIndexOf("/") + 1);
                boolean ret =3D true;
                try {
                        IFileService fs =3D file.getFileService();
-                       IHostFile hostFile =3D fs.getFile(parentPath, path,=
 new NullProgressMonitor());
+                       IHostFile hostFile =3D fs.getFile(parentPath, name,=
 new
+NullProgressMonitor());
                        if (!hostFile.isDirectory())
                                return false;
-                       IHostFile confDir =3D fs.getFile(path, path + BBSes=
sion.CONF_DIR, new NullProgressMonitor());
+                       IHostFile confDir =3D fs.getFile(path, BBSession.CO=
NF_DIR, new
+NullProgressMonitor());
                        if (!confDir.exists() || !confDir.isDirectory())
                                return false;
                        for (int i =3D 0; i < BBSession.BUILDDIR_INDICATORS=
.length && ret =3D=3D true; i++) {
-                               IHostFile child =3D fs.getFile(path, path +=
 BBSession.CONF_DIR +  BBSession.BUILDDIR_INDICATORS[i], new NullProgressMo=
nitor());
+                               IHostFile child =3D fs.getFile(path + "/" +=
 BBSession.CONF_DIR,
+BBSession.BUILDDIR_INDICATORS[i], new NullProgressMonitor());
                                if(!child.exists() || !child.isFile()) {
                                        ret =3D false;
                                        break;
@@ -114,10 +120,11 @@ public class OEFile extends FileStore {
                if(isPotentialBuildDir(path)) {
                        BBSession config =3D null;
                        try {
-                               ShellSession shell =3D new ShellSession(fil=
e.getProjectInfo(), ShellSession.SHELL_TYPE_BASH,
-                                               RemoteHelper.getRemoteHostF=
ile(file.getConnection(), root.getPath(), new NullProgressMonitor()),
-                                                       ProjectInfoHelper.g=
etInitScriptPath(root) + " " + path, null);
-                               config =3D new BBSession(shell, root, true)=
;
+//                             ShellSession shell =3D new ShellSession(fil=
e.getProjectInfo(), ShellSession.SHELL_TYPE_BASH,
+//                                             RemoteHelper.getRemoteHostF=
ile(file.getConnection(), root.getPath(), new NullProgressMonitor()),
+//                                                     ProjectInfoHelper.g=
etInitScriptPath(root) + " " + path, null);
+//                             config =3D new BBSession(shell, root, true)=
;
+                               config =3D Activator.getBBSession(Activator=
.getProjInfo(root),
+monitor);
                                config.initialize();
                        } catch(Exception e) {
                                e.printStackTrace();
@@ -146,7 +153,7 @@ public class OEFile extends FileStore {
                IFileStore[] wrapped =3D new IFileStore[children.length];

                for (int i =3D 0; i < wrapped.length; i++) {
-                       String fullPath =3D file.getAbsolutePath() + File.s=
eparatorChar + children[i];
+                       String fullPath =3D file.getAbsolutePath() + "/" + =
children[i];

                        updateIgnorePaths(fullPath, ignoredPaths, monitor);
                        if (ignoredPaths.contains(fullPath)) { @@ -164,23 +=
171,7 @@ public class OEFile extends FileStore {
                if (destFileStore instanceof OEFile) {
                        file.copy(destFileStore, monitor);

-//                     File source =3D file;
-//                     File destination =3D ((OEFile) destFile).file;
-//                     //handle case variants on a case-insensitive OS, or=
 copying between
-//                     //two equivalent files in an environment that suppo=
rts symbolic links.
-//                     //in these nothing needs to be copied (and doing so=
 would likely lose data)
-//                     try {
-//                             if (source.getCanonicalFile().equals(destin=
ation.getCanonicalFile())) {
-//                                     //nothing to do
-//                                     return;
-//                             }
-//                     } catch (IOException e) {
-//                             String message =3D NLS.bind(Messages.couldN=
otRead, source.getAbsolutePath());
-//                             Policy.error(EFS.ERROR_READ, message, e);
-//                     }
                }
-               //fall through to super implementation
-//             super.copy(destFileStore, options, monitor);
        }

        @Override
@@ -372,17 +363,6 @@ public class OEFile extends FileStore {

        @Override
        public IFileStore mkdir(int options, IProgressMonitor monitor) thro=
ws CoreException {
-//             boolean shallow =3D (options & EFS.SHALLOW) !=3D 0;
-//             //must be a directory
-//             if (shallow)
-//                     file.mkdir();
-//             else
-//                     file.mkdirs();
-//             if (!file.isDirectory()) {
-//                     checkReadOnlyParent(file, null);
-//                     String message =3D NLS.bind(Messages.failedCreateWr=
ongType, filePath);
-//                     Policy.error(EFS.ERROR_WRONG_TYPE, message);
-//             }
                file.mkdir(options);
                return this;
        }
@@ -390,64 +370,6 @@ public class OEFile extends FileStore {
        @Override
        public void move(IFileStore destFile, int options, IProgressMonitor=
 monitor) throws CoreException {
                file.move(destFile, monitor);
-//             if (!(destFile instanceof OEFile)) {
-//                     super.move(destFile, options, monitor);
-//                     return;
-//             }
-//             File source =3D file;
-//             File destination =3D ((OEFile) destFile).file;
-//             boolean overwrite =3D (options & EFS.OVERWRITE) !=3D 0;
-//             monitor =3D Policy.monitorFor(monitor);
-//             try {
-//                     monitor.beginTask(NLS.bind(Messages.moving, source.=
getAbsolutePath()), 10);
-//                     //this flag captures case renaming on a case-insens=
itive OS, or moving
-//                     //two equivalent files in an environment that suppo=
rts symbolic links.
-//                     //in these cases we NEVER want to delete anything
-//                     boolean sourceEqualsDest =3D false;
-//                     try {
-//                             sourceEqualsDest =3D source.getCanonicalFil=
e().equals(destination.getCanonicalFile());
-//                     } catch (IOException e) {
-//                             String message =3D NLS.bind(Messages.couldN=
otMove, source.getAbsolutePath());
-//                             Policy.error(EFS.ERROR_WRITE, message, e);
-//                     }
-//                     if (!sourceEqualsDest && !overwrite && destination.=
exists()) {
-//                             String message =3D NLS.bind(Messages.fileEx=
ists, destination.getAbsolutePath());
-//                             Policy.error(EFS.ERROR_EXISTS, message);
-//                     }
-//                     if (source.renameTo(destination)) {
-//                             // double-check to ensure we really did mov=
e
-//                             // since java.io.File#renameTo sometimes li=
es
-//                             if (!sourceEqualsDest && source.exists()) {
-//                                     // XXX: document when this occurs
-//                                     if (destination.exists()) {
-//                                             // couldn't delete the sour=
ce so remove the destination and throw an error
-//                                             // XXX: if we fail deleting=
 the destination, the destination (root) may still exist
-//                                             new OEFile(destination, ign=
oredPaths, root).delete(EFS.NONE, null);
-//                                             String message =3D NLS.bind=
(Messages.couldnotDelete, source.getAbsolutePath());
-//                                             Policy.error(EFS.ERROR_DELE=
TE, message);
-//                                     }
-//                                     // source exists but destination do=
esn't so try to copy below
-//                             } else {
-//                                     if (!destination.exists()) {
-//                                             // neither the source nor t=
he destination exist. this is REALLY bad
-//                                             String message =3D NLS.bind=
(Messages.failedMove, source.getAbsolutePath(), destination.getAbsolutePath=
());
-//                                             Policy.error(EFS.ERROR_WRIT=
E, message);
-//                                     }
-//                                     //the move was successful
-//                                     monitor.worked(10);
-//                                     return;
-//                             }
-//                     }
-//                     // for some reason renameTo didn't work
-//                     if (sourceEqualsDest) {
-//                             String message =3D NLS.bind(Messages.couldN=
otMove, source.getAbsolutePath());
-//                             Policy.error(EFS.ERROR_WRITE, message, null=
);
-//                     }
-//                     // fall back to default implementation
-//                     super.move(destFile, options, Policy.subMonitorFor(=
monitor, 10));
-//             } finally {
-//                     monitor.done();
-//             }
        }

        @Override
@@ -470,9 +392,6 @@ public class OEFile extends FileStore {
         */
        @Override
        public File toLocalFile(int options, IProgressMonitor monitor) thro=
ws CoreException {
-//             if (options =3D=3D EFS.CACHE)
-//                     return super.toLocalFile(options, monitor);
-//             return file;
                return file.toLocalFile();
        }

@@ -495,4 +414,8 @@ public class OEFile extends FileStore {
        public ProjectInfo getProjectInfo() {
                return file.getProjectInfo();
        }
+
+       public String getParentPath() {
+               return filePath.substring(0, filePath.lastIndexOf("/"));
+       }
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLo=
cation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoL=
ocation.java
new file mode 100755
index 0000000..1e069a3
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocati
+++ on.java
@@ -0,0 +1,36 @@
+package org.yocto.bc.ui.filesystem;
+
+import java.net.URI;
+import java.net.URISyntaxException;
+
+public class YoctoLocation{
+       URI oefsURI;
+       URI originalURI;
+
+       public YoctoLocation(){
+               try {
+                       oefsURI =3D new URI("");
+                       originalURI =3D new URI("");
+               } catch (URISyntaxException e) {
+                       e.printStackTrace();
+               }
+       }
+
+       public URI getOEFSURI() {
+               return oefsURI;
+       }
+
+       public URI getOriginalURI() {
+               return originalURI;
+       }
+
+       public void setOriginalURI(URI originalURI) {
+               this.originalURI =3D originalURI;
+       }
+
+       public void setOEFSURI(URI uri) {
+               this.oefsURI =3D uri;
+       }
+
+
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 089c1ac..743a754 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -11,19 +11,21 @@
 package org.yocto.bc.ui.model;

 import java.net.URI;
+import java.net.URISyntaxException;

 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.rse.services.=
files.IFileService;
+import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.filesystem.YoctoLocation;


 public class ProjectInfo implements IModelElement {
        private String name;
-       private URI location;
-       private URI oefsLocation;
+       private YoctoLocation location;
        private String init;
        private IHost connection;
        private IRemoteServices remoteServices; @@ -37,13 +39,13 @@ public =
class ProjectInfo implements IModelElement {
        public String getProjectName() {
                return name;
        }
-       public URI getURI() {
-               return location;
+       public URI getOriginalURI() {
+               return location.getOriginalURI();
        }
        @Override
        public void initialize() throws Exception {
                name =3D new String();
-               location =3D new URI("");
+               location =3D new YoctoLocation();
                init =3D new String();
        }

@@ -51,8 +53,20 @@ public class ProjectInfo implements IModelElement {
                this.init =3D init;
        }

-       public void setLocation(URI location) {
-               this.location =3D location;
+       public void setLocationURI(URI location) {
+               if (this.location =3D=3D null)
+                       this.location =3D new YoctoLocation();
+               this.location.setOriginalURI(location);
+               try {
+                       this.location.setOEFSURI(new URI(ProjectInfoHelper.=
OEFS_SCHEME + location.getPath() ));
+               } catch (URISyntaxException e) {
+                       try {
+                               this.location.setOEFSURI(new URI(""));
+                       } catch (URISyntaxException e1) {
+                               e1.printStackTrace();
+                       }
+                       e.printStackTrace();
+               }
        }

        public void setName(String name) {
@@ -61,7 +75,7 @@ public class ProjectInfo implements IModelElement {

        public IHost getConnection() {
                if (connection =3D=3D null) {
-                       connection =3D RemoteHelper.getRemoteConnectionForU=
RI(location, new NullProgressMonitor());
+                       connection =3D
+RemoteHelper.getRemoteConnectionForURI(location.getOriginalURI(), new
+NullProgressMonitor());
                }
                return connection;
        }
@@ -87,11 +101,7 @@ public class ProjectInfo implements IModelElement {
                }
        }

-       public URI getOefsLocation() {
-               return oefsLocation;
-       }
-
-       public void setOefsLocation(URI oefsLocation) {
-               this.oefsLocation =3D oefsLocation;
+       public URI getOEFSURI() {
+               return location.getOEFSURI();
        }
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFil=
e.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.ja=
va
index ca5a960..db5b37c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.ja
+++ va
@@ -21,6 +21,7 @@ import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.ui.filesystem.Messages;
+import org.yocto.bc.ui.filesystem.OEFile;
 import org.yocto.bc.ui.filesystem.Policy;

 public class YoctoHostFile implements IHostFile{ @@ -33,12 +34,8 @@ public=
 class YoctoHostFile implements IHostFile{
                this.projectInfo =3D pInfo;
                this.fileURI =3D fileURI;
                String path =3D fileURI.getPath();
-//             int parentEnd =3D path.lastIndexOf("/");
-//             String parentPath =3D path.substring(0, parentEnd);
-//             String fileName =3D path.substring(parentEnd + 1);
                fileService =3D projectInfo.getFileService(monitor);
                file =3D RemoteHelper.getRemoteHostFile(projectInfo.getConn=
ection(), path, monitor);
-//             fileService.getFile(parentPath, fileName, monitor);
        }

        public YoctoHostFile(ProjectInfo projectInfo, URI uri) { @@ -67,11 =
+64,11 @@ public class YoctoHostFile implements IHostFile{
                return file.getName();
        }
        public URI getProjectLocationURI() {
-               return projectInfo.getURI();
+               return projectInfo.getOriginalURI();
        }
        public URI getLocationURI() {
-               projectInfo.getURI().getPath().indexOf(file.getAbsolutePath=
());
-               return projectInfo.getURI();
+               projectInfo.getOriginalURI().getPath().indexOf(file.getAbso=
lutePath());
+               return projectInfo.getOriginalURI();
        }
        @Override
        public boolean isDirectory() {
@@ -84,7 +81,9 @@ public class YoctoHostFile implements IHostFile{
        public boolean copy(IFileStore destFileStore, IProgressMonitor moni=
tor) {
                IHostFile destFile;
                try {
-                       destFile =3D fileService.createFile(destFileStore.g=
etParent().toURI().getPath(), destFileStore.getName(), monitor);
+                       OEFile oeFile =3D (OEFile)destFileStore;
+                       String parentPath =3D oeFile.getParentPath();
+                       destFile =3D fileService.createFile(parentPath,
+destFileStore.getName(), monitor);
                        fileService.copy(file.getParentPath(), file.getName=
(), destFile.getParentPath(), destFile.getName(), monitor);
                } catch (SystemMessageException e) {
                        e.printStackTrace();
@@ -250,7 +249,10 @@ public class YoctoHostFile implements IHostFile{

        public URI getChildURIformPath(IPath path) {
                try {
-                       return new URI(fileURI.getScheme(), fileURI.getHost=
(), fileService.getFile(file.getAbsolutePath(), path.toPortableString(), nu=
ll).getAbsolutePath(), fileURI.getFragment());
+                       String fileName =3D  path.lastSegment();
+                       path =3D path.removeLastSegments(1);
+                       String newPath =3D fileService.getFile(file.getAbso=
lutePath() + "/" + path.toPortableString(), fileName, null).getAbsolutePath=
();
+                       return new URI(fileURI.getScheme(), fileURI.getHost=
(), newPath,
+fileURI.getFragment());
                } catch (URISyntaxException e) {
                        e.printStackTrace();
                        return null;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBake=
FileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wiz=
ards/NewBitBakeFileRecipeWizardPage.java
index dd6feea..633dc89 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRec=
ipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFile
+++ RecipeWizardPage.java
@@ -25,6 +25,7 @@ import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
@@ -52,6 +53,8 @@ import org.eclipse.ui.dialogs.ContainerSelectionDialog;
 import org.yocto.bc.remote.utils.ProcessStreamBuffer;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.remote.utils.YoctoCommand;
+import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;

 public class NewBitBakeFileRecipeWizardPage extends WizardPage {
        private Text containerText;
@@ -246,7 +249,17 @@ public class NewBitBakeFileRecipeWizardPage extends Wi=
zardPage {
                }

                IProject project =3D container.getProject();
-               metaDirLoc =3D RemoteHelper.createNewURI(project.getLocatio=
nURI(), "meta");
+               ProjectInfo projInfo =3D null;
+               try {
+                       projInfo =3D Activator.getProjInfo(project.getLocat=
ionURI());
+               } catch (InvocationTargetException e) {
+                       e.printStackTrace();
+               } catch (CoreException e) {
+                       e.printStackTrace();
+               } catch (InterruptedException e) {
+                       e.printStackTrace();
+               }
+               metaDirLoc =3D RemoteHelper.createNewURI(projInfo.getOrigin=
alURI(),
+"meta");

                if (fileName.length() =3D=3D 0) {
                        updateStatus("File name must be specified"); @@ -35=
6,7 +369,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPag=
e {

                                        updateTempFolderPath();
                                        monitor.worked(10);
-
+
                                        monitor.subTask("Downloading packag=
e sources");

                                        updateTempFolderPath();
@@ -365,7 +378,7 @@ public class NewBitBakeFileRecipeWizardPage extends Wiz=
ardPage {
                                        RemoteHelper.handleRunCommandRemote=
(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));

                                        monitor.worked(50);
-
+
                                        monitor.subTask("Compute package ch=
ecksums");
                                        String md5Cmd =3D "md5sum " + srcFi=
leNameExt;
                                        YoctoCommand md5YCmd =3D new YoctoC=
ommand(md5Cmd, tempFolderPath, ""); diff --git a/plugins/org.yocto.bc.ui/sr=
c/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java b/plu=
gins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoP=
rojectWizard.java
index 5e37133..82c5ab3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/Imp=
ortYoctoProjectWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/
+++ ImportYoctoProjectWizard.java
@@ -67,7 +67,7 @@ public class ImportYoctoProjectWizard extends FiniteState=
Wizard  implements IImp
        public boolean performFinish() {
                ProjectInfo pinfo =3D new ProjectInfo();
                pinfo.setInitScriptPath((String) projectModel.get(ImportYoc=
toProjectWizard.KEY_INITPATH));
-               pinfo.setLocation((URI) projectModel.get(ImportYoctoProject=
Wizard.KEY_LOCATION));
+               pinfo.setLocationURI((URI)
+projectModel.get(ImportYoctoProjectWizard.KEY_LOCATION));
                pinfo.setName((String) projectModel.get(ImportYoctoProjectW=
izard.KEY_NAME));

                try {
@@ -86,7 +86,7 @@ public class ImportYoctoProjectWizard extends FiniteState=
Wizard  implements IImp
                projectModel.put(ImportYoctoProjectWizard.KEY_PINFO, pinfo)=
;
                //setPageComplete(valid);
                //ProjectInfo pinfo =3D (ProjectInfo) projectModel.get(KEY_=
PINFO);
-               Activator.putProjInfo(pinfo.getURI(), pinfo);
+               Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
                try {
                        getContainer().run(false, false, new CreateBBCProje=
ctOperation(pinfo));
                } catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/In=
stallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/inst=
all/InstallWizard.java
index 071f6aa..100eee3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWi=
zard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Instal
+++ lWizard.java
@@ -141,7 +141,7 @@ public class InstallWizard extends FiniteStateWizard im=
plements IWorkbenchWizard
                                String prjName =3D (String) options.get(PRO=
JECT_NAME);
                                ProjectInfo pinfo =3D new ProjectInfo();
                                pinfo.setInitScriptPath(initPath);
-                               pinfo.setLocation(uri);
+                               pinfo.setLocationURI(uri);
                                pinfo.setName(prjName);
                                pinfo.setConnection(connection);
                                pinfo.setRemoteServices(remoteServices);
@@ -153,7 +153,7 @@ public class InstallWizard extends FiniteStateWizard im=
plements IWorkbenchWizard
                                console.newMessageStream().println(cw.getCo=
ntents());

                                model.put(InstallWizard.KEY_PINFO, pinfo);
-                               Activator.putProjInfo(pinfo.getURI(), pinfo=
);
+                               Activator.putProjInfo(pinfo.getOEFSURI(), p=
info);

                                container.run(false, false, new CreateBBCPr=
ojectOperation(pinfo));
                                return true;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Op=
tionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/instal=
l/OptionsPage.java
index 486bd8b..f8ef0d2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPa=
ge.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Option
+++ sPage.java
@@ -23,6 +23,7 @@ import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
 import org.eclipse.ptp.remote.rse.core.RSEConnection;
 import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridData; @@ -169,7 +170,12 @@ public class =
OptionsPage extends FiniteStateWizardPage {
                                return false;
                        }
                } else { //git clone
-                       if (repoDest.exists() && repoDest.isDirectory()) {
+                       if (repoDest !=3D null && repoDest.exists() && repo=
Dest.isDirectory()) {
+                               IHostFile[] hostFiles =3D RemoteHelper.getR=
emoteDirContent(connection, repoDest.getAbsolutePath(), "", IFileService.FI=
LE_TYPE_FILES_AND_FOLDERS, new NullProgressMonitor());
+                               if (hostFiles.length !=3D 0) {
+                                       setErrorMessage("Directory " + proj=
ectPath + " is not empty, please choose another location.");
+                                       return false;
+                               }
                                IHostFile gitDescr =3D RemoteHelper.getRemo=
teHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
                                if (gitDescr !=3D null && gitDescr.exists()=
) {
                                        setErrorMessage("Directory " + proj=
ectPath + " contains a repository, please choose another location or skip c=
loning the repository."); diff --git a/plugins/org.yocto.bc.ui/src/org/yoct=
o/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugin=
s/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationIni=
tializeOperation.java
index 942f303..5dd8944 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConf=
igurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBC
+++ onfigurationInitializeOperation.java
@@ -42,7 +42,7 @@ public class BBConfigurationInitializeOperation implement=
s IRunnableWithProgress
                try {
                        System.out.println("Initialize bitbake session ..."=
);
                        monitor.beginTask("Initialize bitbake session ...",=
 RemoteHelper.TOTALWORKLOAD);
-                       ProjectInfoHelper.store(RemoteHelper.getRemoteConne=
ctionByName(pinfo.getConnection().getName()), pinfo.getURI(), pinfo, monito=
r);
+
+ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.ge
+tConnection().getName()), pinfo.getOriginalURI(), pinfo, monitor);
                        session =3D Activator.getBBSession(pinfo, writer, m=
onitor);
                        session.initialize();
                        monitor.worked(90);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject=
/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/=
ui/wizards/newproject/CreateBBCProjectOperation.java
index 5ba661c..338c2e6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/Create=
BBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/Cre
+++ ateBBCProjectOperation.java
@@ -67,12 +67,7 @@ public class CreateBBCProjectOperation extends Workspace=
ModifyOperation {
        private IProjectDescription createProjectDescription(IWorkspace wor=
kspace, ProjectInfo projInfo) throws CoreException {
                IProjectDescription desc =3D workspace.newProjectDescriptio=
n(projInfo.getProjectName());

-//             desc.setLocationURI(projInfo.getURI());
-               try {
-                       desc.setLocationURI(new URI(ProjectInfoHelper.OEFS_=
SCHEME + projInfo.getURI().getPath()));
-               } catch (URISyntaxException e) {
-                       throw new CoreException(new Status(IStatus.ERROR, A=
ctivator.PLUGIN_ID, "Unable to load filesystem.", e));
-               }
+               desc.setLocationURI(projInfo.getOEFSURI());
                return desc;
        }

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

