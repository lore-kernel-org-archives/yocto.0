Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C706AE01493
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 01:22:28 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jan 2013 01:22:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,513,1355126400"; 
	d="log'?scan'208";a="276889122"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 22 Jan 2013 01:22:26 -0800
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.60]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.20]) with mapi id
	14.01.0355.002; Tue, 22 Jan 2013 09:22:25 +0000
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2]
	[eclipse-poky][branch:windows-build]Performance	fix for Windows
	implementation
Thread-Index: AQHN+CboxcrUvyFeS022KMjPNJSwVJhVEhaA
Date: Tue, 22 Jan 2013 09:22:25 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639AD0097@IRSMSX101.ger.corp.intel.com>
References: <1358779027-3248-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DD5B0A@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DD5B0A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
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
X-List-Received-Date: Tue, 22 Jan 2013 09:22:30 -0000
X-Groupsio-MsgNum: 11627
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_3E179CF0D7162B4AA4E2B324209A4639AD0097IRSMSX101gercorpi_"

--_002_3E179CF0D7162B4AA4E2B324209A4639AD0097IRSMSX101gercorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

This patch applies on top of the last patch I sent on Thursday,=20
"[PATCH] [eclipse-poky][branch:windows-build]Performance fix for Linux impl=
ementation".

Attached is my local git log.

Please let me know it there are any problems.

Thanks,
Ioana

-----Original Message-----
From: Zhang, Jessica=20
Sent: Tuesday, January 22, 2013 12:30 AM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH v2] [eclipse-poky][branch:windows-build]Perform=
ance fix for Windows implementation

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
	- use OEFS URI only for initialization of OEFSFileSystem,OEIgnoredPaths, O=
EFile (oefs://...)
	- use actual URI (file:// or rse://) for all other operations (new file, c=
opy, save, delete)
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
=20
 	public BBRecipe(BBSession session, URI filePath) throws IOException {
-		super(session.shell, session.pinfo.getURI());
+		super(session.shell, session.pinfo.getOriginalURI());
 		this.session =3D session;
 		this.fileURI =3D filePath;
 		this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake -e -b " + fil=
ePath.getPath() + " >& " + BB_ENV_FILE; diff --git a/plugins/org.yocto.bc.u=
i/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org=
/yocto/bc/bitbake/BBSession.java
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
=20
@@ -60,10 +65,10 @@ public class BBSession implements IBBSessionListener, I=
ModelElement, Map {
=20
 	public static final String BB_ENV_FILE =3D "bitbake.env";
=20
-	public static final String CONF_DIR =3D "/conf";
+	public static final String CONF_DIR =3D "conf";
 	public static final String BUILDDIR_INDICATORS [] =3D {
-		"/local.conf",
-		"/bblayers.conf",
+		"local.conf",
+		"bblayers.conf",
 	};
=20
 	protected final ProjectInfo pinfo;
@@ -81,9 +86,9 @@ public class BBSession implements IBBSessionListener, IMo=
delElement, Map {
 	public BBSession(ShellSession ssession, URI projectRoot) throws IOExcepti=
on {
 		shell =3D ssession;
 		this.pinfo =3D new ProjectInfo();
-		pinfo.setLocation(projectRoot);
+		pinfo.setLocationURI(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot)=
);
-		this.parsingCmd =3D "sh -c 'DISABLE_SANITY_CHECKS=3D\"1\" bitbake -e >& =
" + BB_ENV_FILE + "  '" ;
+		this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake -e >& " +=20
+BB_ENV_FILE;
 	}
=20
 	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) =
throws IOException { @@ -190,7 +195,7 @@ public class BBSession implements =
IBBSessionListener, IModelElement, Map {
 	}
=20
 	public URI getProjInfoRoot() {
-		return pinfo.getURI();
+		return pinfo.getOriginalURI();
 	}
=20
 	/**
@@ -271,7 +276,7 @@ public class BBSession implements IBBSessionListener, I=
ModelElement, Map {
 	 */
 	public MessageConsole getConsole() {
 		if (sessionConsole =3D=3D null) {
-			String cName =3D ProjectInfoHelper.getProjectName(pinfo.getURI()) + " C=
onsole";
+			String cName =3D
+ProjectInfoHelper.getProjectName(pinfo.getOriginalURI()) + " Console";
 			IConsoleManager conMan =3D ConsolePlugin.getDefault().getConsoleManager=
();
 			IConsole[] existing =3D conMan.getConsoles();
 			for (int i =3D 0; i < existing.length; i++) @@ -391,10 +396,10 @@ publi=
c class BBSession implements IBBSessionListener, IModelElement, Map {
 					String result =3D shell.execute(parsingCmd, hasErrors);
=20
 					//FIXME : wait for bitbake to finish
-
 					properties =3D parseBBEnvironment(result);
=20
 					initialized =3D true;
+					//FIXME: cleanup BB env file
 				}
 			} finally {
 				//downgrade lock
@@ -453,7 +458,10 @@ public class BBSession implements IBBSessionListener, =
IModelElement, Map {
 	}
=20
 	protected void parse(String bbOutfilePath, Map outMap) throws Exception {
-		BufferedReader reader =3D new BufferedReader(new FileReader(bbOutfilePat=
h + BB_ENV_FILE));
+		IHost connection =3D shell.getProjectInfo().getConnection();
+		InputStream is =3D RemoteHelper.getRemoteInputStream(connection, bbOutfi=
lePath, BB_ENV_FILE, new NullProgressMonitor());
+		RemoteHelper.getRemoteHostFile(connection, bbOutfilePath + BB_ENV_FILE, =
new NullProgressMonitor());
+		BufferedReader reader =3D new BufferedReader(new=20
+InputStreamReader(is));
 		String line;
 		boolean inLine =3D false;
 		StringBuffer sb =3D null;
@@ -769,4 +777,8 @@ public class BBSession implements IBBSessionListener, I=
ModelElement, Map {
 		return (Map<String, String>) properties;
 	}
=20
+	public ProjectInfo getProjectInfo() {
+		return pinfo;
+	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index ef01d96..6603bfb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -78,6 +78,14 @@ public class ShellSession {
 //	private final Writer out;
 	private ProjectInfo projectInfo;
=20
+	public ProjectInfo getProjectInfo() {
+		return projectInfo;
+	}
+
+	public void setProjectInfo(ProjectInfo projectInfo) {
+		this.projectInfo =3D projectInfo;
+	}
+
 	public ShellSession(ProjectInfo pInfo, int shellType, IHostFile root, Str=
ing initCmd, Writer out) throws IOException {
 		this.projectInfo =3D pInfo;
 		this.root =3D root;
@@ -129,7 +137,7 @@ public class ShellSession {
 	}
=20
     private String getInitCmd() {
-    	return "source " + initCmd + " " + getBuildDirAbsolutePath() + " > te=
mpsf; rm -rf tempsf;";
+    	return "source " + initCmd + " " + getBuildDirAbsolutePath() + " >=20
+ tempsf; rm -rf tempsf;" + exportCmd + ";" + exportColumnsCmd + ";" +=20
+ "cd " + getBuildDirAbsolutePath()  + ";";
 	}
=20
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
+			if (errbr !=3D null)
 			while ((c =3D errbr.read()) !=3D -1) {
 				char ch =3D (char) c;
 				buffer.append(ch);
@@ -66,7 +67,7 @@ public class CommandRunnable implements Runnable{
 					buffer.delete(0, buffer.length());
 				}
 			}
-
+			if (inbr !=3D null)
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
=20
 import java.io.File;
+import java.io.InputStream;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.HashMap;
@@ -268,6 +269,24 @@ public class RemoteHelper {
 		return null;
 	}
=20
+	public static InputStream getRemoteInputStream(IHost connection, String p=
arentPath, String remoteFilePath, IProgressMonitor monitor){
+		assert(connection !=3D null);
+		monitor.beginTask(Messages.InfoDownload, 100);
+
+		try {
+			IFileService fileService =3D getConnectedRemoteFileService(connection,
+new SubProgressMonitor(monitor, 10));
+		=09
+			return fileService.getInputStream(parentPath, remoteFilePath, false, mo=
nitor);
+//			IHostFile remoteFile =3D fileService.getFile(remotePath.removeLastSeg=
ments(1).toString(), remotePath.lastSegment(), new SubProgressMonitor(monit=
or, 5));
+//			return remoteFile;
+		} catch (Exception e) {
+			e.printStackTrace();
+	    }finally {
+			monitor.done();
+		}
+		return null;
+	}
+=09
 	/**
 	 * Throws a core exception with an error status object built from the giv=
en
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
=20
 import java.io.BufferedReader;
-import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
+import java.util.concurrent.locks.Lock;
=20
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
-	private ProcessStreamBuffer processOutput(Process process, IProgressMonit=
or monitor) throws Exception {
-		if (process =3D=3D null)
+	private ProcessStreamBuffer processOutput(IHostShell shell, IProgressMoni=
tor monitor) throws Exception {
+		if (shell =3D=3D null)
 			throw new Exception("An error has occured while trying to run remote co=
mmand!");
 		ProcessStreamBuffer processBuffer =3D new ProcessStreamBuffer();
-
-		BufferedReader inbr =3D new BufferedReader(new InputStreamReader(process=
.getInputStream()));
-		BufferedReader errbr =3D new BufferedReader(new InputStreamReader(proces=
s.getErrorStream()));
+	=09
+		Lock lock =3D shell.getStandardOutputReader().getReaderLock();
+		lock.lock();
+		BufferedReader inbr =3D  shell.getStandardOutputReader().getReader();
+		BufferedReader errbr =3D  shell.getStandardErrorReader().getReader();
+	=09
 		boolean cancel =3D false;
 		while (!cancel) {
 			if(monitor.isCanceled()) {
@@ -58,6 +60,7 @@ public class RemoteMachine {
 			}
 			StringBuffer buffer =3D new StringBuffer();
 			int c;
+			if (errbr !=3D null)
 			while ((c =3D errbr.read()) !=3D -1) {
 				char ch =3D (char) c;
 				buffer.append(ch);
@@ -71,7 +74,7 @@ public class RemoteMachine {
 					buffer.delete(0, buffer.length());
 				}
 			}
-
+			if (inbr !=3D null)
 			while ((c =3D inbr.read()) !=3D -1) {
 				char ch =3D (char) c;
 				buffer.append(ch);
@@ -120,13 +123,13 @@ public class RemoteMachine {
=20
 			IShellService shellService =3D getShellService(new SubProgressMonitor(m=
onitor, 7));
=20
-			HostShellProcessAdapter p =3D null;
+//			HostShellProcessAdapter p =3D null;
 			ProcessStreamBuffer buffer =3D null;
 			try {
 				SubProgressMonitor subMonitor =3D new SubProgressMonitor(monitor, 3);
 				IHostShell hostShell =3D shellService.runCommand("", "env" + " ; echo =
" + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
-				p =3D new HostShellProcessAdapter(hostShell);
-				buffer =3D processOutput(p, subMonitor);
+//				p =3D new HostShellProcessAdapter(hostShell);
+				buffer =3D processOutput(hostShell, subMonitor);
 				for(int i =3D 0; i < buffer.getOutputLines().size(); i++) {
 					String out =3D buffer.getOutputLines().get(i);
 					String[] tokens =3D out.split("=3D");
@@ -138,9 +141,9 @@ public class RemoteMachine {
 						environment.put(varName, varValue);
 				}
 			} catch (Exception e) {
-				if (p !=3D null) {
-					p.destroy();
-				}
+//				if (p !=3D null) {
+//					p.destroy();
+//				}
 				e.printStackTrace();
 			}
=20
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/p=
lugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 188efe6..3b97526 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -61,7 +61,7 @@ public class Activator extends AbstractUIPlugin {
 		URI key =3D session.getProjInfoRoot();// + filePath;
 		BBRecipe recipe =3D (BBRecipe) bbRecipeMap.get(key);
 		if (recipe =3D=3D null) {
-			recipe =3D new BBRecipe(session,filePath);
+			recipe =3D new BBRecipe(session, filePath);
 			bbRecipeMap.put(key, recipe);
 		}
=20
@@ -75,7 +75,7 @@ public class Activator extends AbstractUIPlugin {
 	 * @throws IOException
 	 */
 	public static BBSession getBBSession(ProjectInfo projectInfo, Writer out,=
 IProgressMonitor monitor) throws IOException {
-		URI projectRoot =3D projectInfo.getURI();
+		URI projectRoot =3D projectInfo.getOriginalURI();
 		if (bbSessionMap =3D=3D null) {
 			bbSessionMap =3D new Hashtable<URI, BBSession>();
 		}
@@ -97,7 +97,7 @@ public class Activator extends AbstractUIPlugin {
 	 * @throws Exception
 	 */
 	public static BBSession getBBSession(ProjectInfo projectInfo, IProgressMo=
nitor monitor) throws Exception {
-		URI projectRoot =3D projectInfo.getURI();
+		URI projectRoot =3D projectInfo.getOriginalURI();
 		if (bbSessionMap =3D=3D null) {
 			bbSessionMap =3D new Hashtable<URI, BBSession>();
 		}
@@ -151,12 +151,12 @@ public class Activator extends AbstractUIPlugin {
 		if (projInfoMap =3D=3D null) {
 			projInfoMap =3D new Hashtable<URI, ProjectInfo>();
 		}
-		location =3D convertOEFSUri(location);
+//		location =3D convertOEFSUri(location);
 		if (location !=3D null) {
 			ProjectInfo pi =3D projInfoMap.get(location);
 			if (pi =3D=3D null) {
 				pi =3D new ProjectInfo();
-				pi.setLocation(location);
+				pi.setLocationURI(location);
 				try {
 					pi.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(location));
 				} catch (IOException e) {
@@ -195,7 +195,7 @@ public class Activator extends AbstractUIPlugin {
 	 * @throws IOException
 	 */
 	private static ShellSession getShellSession(ProjectInfo projInfo, Writer =
out, IProgressMonitor monitor) throws IOException {
-		URI absolutePath =3D projInfo.getURI();
+		URI absolutePath =3D projInfo.getOriginalURI();
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
=20
 import java.net.URI;
+import java.net.URISyntaxException;
+
+import javax.security.auth.login.Configuration;
=20
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.NullProgressMonitor;
@@ -43,12 +46,18 @@ public class BitBakeDocumentProvider extends FileDocume=
ntProvider {
 	public static final String RECIPE_COMMENT=3D "RECIPE_COMMENT"; //$NON-NLS=
-1$
 =09
 	private IHost connection;
+
+	private BitBakeSourceViewerConfiguration viewerConfiguration;
 =09
 	private static final String[] CONTENT_TYPES=3D {
 			RECIPE_CODE,
 			RECIPE_COMMENT
 	};
=20
+	public BitBakeDocumentProvider(BitBakeSourceViewerConfiguration viewerCon=
figuration) {
+		this.viewerConfiguration =3D viewerConfiguration;
+	}
+
 	private IDocumentPartitioner createRecipePartitioner() {
 		IPredicateRule[] rules=3D { new SingleLineRule("#", null, new Token(RECI=
PE_COMMENT), (char) 0, true, false) }; //$NON-NLS-1$
=20
@@ -73,13 +82,17 @@ public class BitBakeDocumentProvider extends FileDocume=
ntProvider {
 		if (element instanceof IFileEditorInput) {
 			IFileEditorInput input=3D (IFileEditorInput) element;
=20
-		    URI uri =3D input.getFile().getLocationURI();
-			if (uri =3D=3D null)
-				return true;
-
-			if (connection =3D=3D null)=20
-				connection =3D RemoteHelper.getRemoteConnectionForURI(uri, new NullPro=
gressMonitor());
-			return !RemoteHelper.fileExistsRemote(connection, new NullProgressMonit=
or(), uri.getPath());
+		    URI root =3D viewerConfiguration.getBBSession().getProjInfoRoot();
+		    String relPath =3D input.getFile().getProjectRelativePath().toPortab=
leString();
+		    try {
+				URI fileURI =3D new URI(root.getScheme(), root.getHost(), root.getPath=
() + "/" + relPath, root.getFragment());
+				if (connection =3D=3D null)=20
+					//connection =3D RemoteHelper.getRemoteConnectionForURI(fileURI, new =
NullProgressMonitor());
+					connection =3D viewerConfiguration.getBBSession().getProjectInfo().ge=
tConnection();
+				return !RemoteHelper.fileExistsRemote(connection, new NullProgressMoni=
tor(), fileURI.getPath());
+			} catch (URISyntaxException e) {
+				e.printStackTrace();
+			}
 		}
=20
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
 		viewerConfiguration =3D new BitBakeSourceViewerConfiguration(getSharedCo=
lors(), getPreferenceStore());
 		setSourceViewerConfiguration(viewerConfiguration);
-		setDocumentProvider(new BitBakeDocumentProvider());
+		setDocumentProvider(new
+BitBakeDocumentProvider(viewerConfiguration));
 	}
=20
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
=20
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
=20
 public class BitBakeSourceViewerConfiguration extends TextSourceViewerConf=
iguration {
=20
@@ -66,7 +69,15 @@ public class BitBakeSourceViewerConfiguration extends Te=
xtSourceViewerConfigurat
 	public ITextHover getTextHover(ISourceViewer sv, String contentType) {
 		//only .bb file support Text Hover.
 		if (textHover =3D=3D null && targetFile.getFileExtension().equals(BBLang=
uageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {
-			textHover =3D new BBVariableTextHover(session, targetFile.getLocationUR=
I());
+				URI root =3D session.getProjInfoRoot();
+				try {
+					URI targetFIleURI =3D new URI(root.getScheme(), root.getHost(), root.=
getPath() + "/" +targetFile.getProjectRelativePath().toPortableString(), ro=
ot.getFragment());
+					textHover =3D new BBVariableTextHover(session, targetFIleURI);
+				} catch (URISyntaxException e) {
+					// TODO Auto-generated catch block
+					e.printStackTrace();
+				}
+			=09
 		}
 	=09
 		return textHover;
@@ -192,4 +203,9 @@ public class BitBakeSourceViewerConfiguration extends T=
extSourceViewerConfigurat
 	public void setBBSession(BBSession session) {
 		this.session =3D session;	=09
 	}
+=09
+	public BBSession getBBSession() {
+		return this.session;	=09
+	}
+=09
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
=20
@@ -58,6 +59,10 @@ public class OEFile extends FileStore {
 	 */
 	protected final String filePath;
=20
+	public String getFilePath() {
+		return filePath;
+	}
+
 	private final URI root;
=20
 	/**
@@ -84,17 +89,18 @@ public class OEFile extends FileStore {
 	 */
 	private boolean isPotentialBuildDir(String path) {
 		String parentPath =3D path.substring(0, path.lastIndexOf("/"));
+		String name =3D path.substring(path.lastIndexOf("/") + 1);
 		boolean ret =3D true;
 		try {
 			IFileService fs =3D file.getFileService();
-			IHostFile hostFile =3D fs.getFile(parentPath, path, new NullProgressMon=
itor());
+			IHostFile hostFile =3D fs.getFile(parentPath, name, new=20
+NullProgressMonitor());
 			if (!hostFile.isDirectory())
 				return false;
-			IHostFile confDir =3D fs.getFile(path, path + BBSession.CONF_DIR, new N=
ullProgressMonitor());
+			IHostFile confDir =3D fs.getFile(path, BBSession.CONF_DIR, new=20
+NullProgressMonitor());
 			if (!confDir.exists() || !confDir.isDirectory())
 				return false;
 			for (int i =3D 0; i < BBSession.BUILDDIR_INDICATORS.length && ret =3D=
=3D true; i++) {
-				IHostFile child =3D fs.getFile(path, path + BBSession.CONF_DIR +  BBSe=
ssion.BUILDDIR_INDICATORS[i], new NullProgressMonitor());
+				IHostFile child =3D fs.getFile(path + "/" + BBSession.CONF_DIR,=20
+BBSession.BUILDDIR_INDICATORS[i], new NullProgressMonitor());
 				if(!child.exists() || !child.isFile()) {
 					ret =3D false;
 					break;
@@ -114,10 +120,11 @@ public class OEFile extends FileStore {
 		if(isPotentialBuildDir(path)) {
 			BBSession config =3D null;
 			try {
-				ShellSession shell =3D new ShellSession(file.getProjectInfo(), ShellSe=
ssion.SHELL_TYPE_BASH,
-						RemoteHelper.getRemoteHostFile(file.getConnection(), root.getPath(),=
 new NullProgressMonitor()),
-							ProjectInfoHelper.getInitScriptPath(root) + " " + path, null);
-				config =3D new BBSession(shell, root, true);
+//				ShellSession shell =3D new ShellSession(file.getProjectInfo(), Shell=
Session.SHELL_TYPE_BASH,
+//						RemoteHelper.getRemoteHostFile(file.getConnection(), root.getPath(=
), new NullProgressMonitor()),
+//							ProjectInfoHelper.getInitScriptPath(root) + " " + path, null);
+//				config =3D new BBSession(shell, root, true);
+				config =3D Activator.getBBSession(Activator.getProjInfo(root),
+monitor);
 				config.initialize();
 			} catch(Exception e) {
 				e.printStackTrace();
@@ -146,7 +153,7 @@ public class OEFile extends FileStore {
 		IFileStore[] wrapped =3D new IFileStore[children.length];
=20
 		for (int i =3D 0; i < wrapped.length; i++) {
-			String fullPath =3D file.getAbsolutePath() + File.separatorChar + child=
ren[i];
+			String fullPath =3D file.getAbsolutePath() + "/" + children[i];
=20
 			updateIgnorePaths(fullPath, ignoredPaths, monitor);
 			if (ignoredPaths.contains(fullPath)) { @@ -164,23 +171,7 @@ public clas=
s OEFile extends FileStore {
 		if (destFileStore instanceof OEFile) {
 			file.copy(destFileStore, monitor);
=20
-//			File source =3D file;
-//			File destination =3D ((OEFile) destFile).file;
-//			//handle case variants on a case-insensitive OS, or copying between
-//			//two equivalent files in an environment that supports symbolic links=
.
-//			//in these nothing needs to be copied (and doing so would likely lose=
 data)
-//			try {
-//				if (source.getCanonicalFile().equals(destination.getCanonicalFile())=
) {
-//					//nothing to do
-//					return;
-//				}
-//			} catch (IOException e) {
-//				String message =3D NLS.bind(Messages.couldNotRead, source.getAbsolut=
ePath());
-//				Policy.error(EFS.ERROR_READ, message, e);
-//			}
 		}
-		//fall through to super implementation
-//		super.copy(destFileStore, options, monitor);
 	}
=20
 	@Override
@@ -372,17 +363,6 @@ public class OEFile extends FileStore {
=20
 	@Override
 	public IFileStore mkdir(int options, IProgressMonitor monitor) throws Cor=
eException {
-//		boolean shallow =3D (options & EFS.SHALLOW) !=3D 0;
-//		//must be a directory
-//		if (shallow)
-//			file.mkdir();
-//		else
-//			file.mkdirs();
-//		if (!file.isDirectory()) {
-//			checkReadOnlyParent(file, null);
-//			String message =3D NLS.bind(Messages.failedCreateWrongType, filePath)=
;
-//			Policy.error(EFS.ERROR_WRONG_TYPE, message);
-//		}
 		file.mkdir(options);
 		return this;
 	}
@@ -390,64 +370,6 @@ public class OEFile extends FileStore {
 	@Override
 	public void move(IFileStore destFile, int options, IProgressMonitor monit=
or) throws CoreException {
 		file.move(destFile, monitor);
-//		if (!(destFile instanceof OEFile)) {
-//			super.move(destFile, options, monitor);
-//			return;
-//		}
-//		File source =3D file;
-//		File destination =3D ((OEFile) destFile).file;
-//		boolean overwrite =3D (options & EFS.OVERWRITE) !=3D 0;
-//		monitor =3D Policy.monitorFor(monitor);
-//		try {
-//			monitor.beginTask(NLS.bind(Messages.moving, source.getAbsolutePath())=
, 10);
-//			//this flag captures case renaming on a case-insensitive OS, or movin=
g
-//			//two equivalent files in an environment that supports symbolic links=
.
-//			//in these cases we NEVER want to delete anything
-//			boolean sourceEqualsDest =3D false;
-//			try {
-//				sourceEqualsDest =3D source.getCanonicalFile().equals(destination.ge=
tCanonicalFile());
-//			} catch (IOException e) {
-//				String message =3D NLS.bind(Messages.couldNotMove, source.getAbsolut=
ePath());
-//				Policy.error(EFS.ERROR_WRITE, message, e);
-//			}
-//			if (!sourceEqualsDest && !overwrite && destination.exists()) {
-//				String message =3D NLS.bind(Messages.fileExists, destination.getAbso=
lutePath());
-//				Policy.error(EFS.ERROR_EXISTS, message);
-//			}
-//			if (source.renameTo(destination)) {
-//				// double-check to ensure we really did move
-//				// since java.io.File#renameTo sometimes lies
-//				if (!sourceEqualsDest && source.exists()) {
-//					// XXX: document when this occurs
-//					if (destination.exists()) {
-//						// couldn't delete the source so remove the destination and throw =
an error
-//						// XXX: if we fail deleting the destination, the destination (root=
) may still exist
-//						new OEFile(destination, ignoredPaths, root).delete(EFS.NONE, null)=
;
-//						String message =3D NLS.bind(Messages.couldnotDelete, source.getAbs=
olutePath());
-//						Policy.error(EFS.ERROR_DELETE, message);
-//					}
-//					// source exists but destination doesn't so try to copy below
-//				} else {
-//					if (!destination.exists()) {
-//						// neither the source nor the destination exist. this is REALLY ba=
d
-//						String message =3D NLS.bind(Messages.failedMove, source.getAbsolut=
ePath(), destination.getAbsolutePath());
-//						Policy.error(EFS.ERROR_WRITE, message);
-//					}
-//					//the move was successful
-//					monitor.worked(10);
-//					return;
-//				}
-//			}
-//			// for some reason renameTo didn't work
-//			if (sourceEqualsDest) {
-//				String message =3D NLS.bind(Messages.couldNotMove, source.getAbsolut=
ePath());
-//				Policy.error(EFS.ERROR_WRITE, message, null);
-//			}
-//			// fall back to default implementation
-//			super.move(destFile, options, Policy.subMonitorFor(monitor, 10));
-//		} finally {
-//			monitor.done();
-//		}
 	}
=20
 	@Override
@@ -470,9 +392,6 @@ public class OEFile extends FileStore {
 	 */
 	@Override
 	public File toLocalFile(int options, IProgressMonitor monitor) throws Cor=
eException {
-//		if (options =3D=3D EFS.CACHE)
-//			return super.toLocalFile(options, monitor);
-//		return file;
 		return file.toLocalFile();
 	}
=20
@@ -495,4 +414,8 @@ public class OEFile extends FileStore {
 	public ProjectInfo getProjectInfo() {
 		return file.getProjectInfo();
 	}
+
+	public String getParentPath() {
+		return filePath.substring(0, filePath.lastIndexOf("/"));
+	}
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
+	URI oefsURI;
+	URI originalURI;
+=09
+	public YoctoLocation(){
+		try {
+			oefsURI =3D new URI("");
+			originalURI =3D new URI("");
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		}
+	}
+=09
+	public URI getOEFSURI() {
+		return oefsURI;
+	}
+
+	public URI getOriginalURI() {
+		return originalURI;
+	}
+
+	public void setOriginalURI(URI originalURI) {
+		this.originalURI =3D originalURI;
+	}
+
+	public void setOEFSURI(URI uri) {
+		this.oefsURI =3D uri;
+	}
+=09
+=09
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 089c1ac..743a754 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -11,19 +11,21 @@
 package org.yocto.bc.ui.model;
=20
 import java.net.URI;
+import java.net.URISyntaxException;
=20
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.rse.services.=
files.IFileService;
+import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.filesystem.YoctoLocation;
=20
=20
 public class ProjectInfo implements IModelElement {
 	private String name;
-	private URI location;
-	private URI oefsLocation;
+	private YoctoLocation location;
 	private String init;
 	private IHost connection;
 	private IRemoteServices remoteServices; @@ -37,13 +39,13 @@ public class =
ProjectInfo implements IModelElement {
 	public String getProjectName() {
 		return name;
 	}
-	public URI getURI() {
-		return location;
+	public URI getOriginalURI() {
+		return location.getOriginalURI();
 	}
 	@Override
 	public void initialize() throws Exception {
 		name =3D new String();
-		location =3D new URI("");
+		location =3D new YoctoLocation();
 		init =3D new String();
 	}
=20
@@ -51,8 +53,20 @@ public class ProjectInfo implements IModelElement {
 		this.init =3D init;
 	}
=20
-	public void setLocation(URI location) {
-		this.location =3D location;
+	public void setLocationURI(URI location) {
+		if (this.location =3D=3D null)
+			this.location =3D new YoctoLocation();
+		this.location.setOriginalURI(location);
+		try {
+			this.location.setOEFSURI(new URI(ProjectInfoHelper.OEFS_SCHEME + locati=
on.getPath() ));
+		} catch (URISyntaxException e) {
+			try {
+				this.location.setOEFSURI(new URI(""));
+			} catch (URISyntaxException e1) {
+				e1.printStackTrace();
+			}
+			e.printStackTrace();
+		}
 	}
=20
 	public void setName(String name) {
@@ -61,7 +75,7 @@ public class ProjectInfo implements IModelElement {
=20
 	public IHost getConnection() {
 		if (connection =3D=3D null) {
-			connection =3D RemoteHelper.getRemoteConnectionForURI(location, new Nul=
lProgressMonitor());
+			connection =3D
+RemoteHelper.getRemoteConnectionForURI(location.getOriginalURI(), new=20
+NullProgressMonitor());
 		}
 		return connection;
 	}
@@ -87,11 +101,7 @@ public class ProjectInfo implements IModelElement {
 		}
 	}
=20
-	public URI getOefsLocation() {
-		return oefsLocation;
-	}
-
-	public void setOefsLocation(URI oefsLocation) {
-		this.oefsLocation =3D oefsLocation;
+	public URI getOEFSURI() {
+		return location.getOEFSURI();
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
=20
 public class YoctoHostFile implements IHostFile{ @@ -33,12 +34,8 @@ public=
 class YoctoHostFile implements IHostFile{
 		this.projectInfo =3D pInfo;
 		this.fileURI =3D fileURI;
 		String path =3D fileURI.getPath();
-//		int parentEnd =3D path.lastIndexOf("/");
-//		String parentPath =3D path.substring(0, parentEnd);
-//		String fileName =3D path.substring(parentEnd + 1);
 		fileService =3D projectInfo.getFileService(monitor);
 		file =3D RemoteHelper.getRemoteHostFile(projectInfo.getConnection(), pat=
h, monitor);
-//		fileService.getFile(parentPath, fileName, monitor);
 	}
=20
 	public YoctoHostFile(ProjectInfo projectInfo, URI uri) { @@ -67,11 +64,11=
 @@ public class YoctoHostFile implements IHostFile{
 		return file.getName();
 	}
 	public URI getProjectLocationURI() {
-		return projectInfo.getURI();
+		return projectInfo.getOriginalURI();
 	}
 	public URI getLocationURI() {
-		projectInfo.getURI().getPath().indexOf(file.getAbsolutePath());
-		return projectInfo.getURI();
+		projectInfo.getOriginalURI().getPath().indexOf(file.getAbsolutePath());
+		return projectInfo.getOriginalURI();
 	}
 	@Override
 	public boolean isDirectory() {
@@ -84,7 +81,9 @@ public class YoctoHostFile implements IHostFile{
 	public boolean copy(IFileStore destFileStore, IProgressMonitor monitor) {
 		IHostFile destFile;
 		try {
-			destFile =3D fileService.createFile(destFileStore.getParent().toURI().g=
etPath(), destFileStore.getName(), monitor);
+			OEFile oeFile =3D (OEFile)destFileStore;
+			String parentPath =3D oeFile.getParentPath();
+			destFile =3D fileService.createFile(parentPath,
+destFileStore.getName(), monitor);
 			fileService.copy(file.getParentPath(), file.getName(), destFile.getPare=
ntPath(), destFile.getName(), monitor);
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
@@ -250,7 +249,10 @@ public class YoctoHostFile implements IHostFile{
=20
 	public URI getChildURIformPath(IPath path) {
 		try {
-			return new URI(fileURI.getScheme(), fileURI.getHost(), fileService.getF=
ile(file.getAbsolutePath(), path.toPortableString(), null).getAbsolutePath(=
), fileURI.getFragment());
+			String fileName =3D  path.lastSegment();
+			path =3D path.removeLastSegments(1);
+			String newPath =3D fileService.getFile(file.getAbsolutePath() + "/" + p=
ath.toPortableString(), fileName, null).getAbsolutePath();
+			return new URI(fileURI.getScheme(), fileURI.getHost(), newPath,=20
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
=20
 public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private Text containerText;
@@ -246,7 +249,17 @@ public class NewBitBakeFileRecipeWizardPage extends Wi=
zardPage {
 		}
=20
 		IProject project =3D container.getProject();
-		metaDirLoc =3D RemoteHelper.createNewURI(project.getLocationURI(), "meta=
");
+		ProjectInfo projInfo =3D null;
+		try {
+			projInfo =3D Activator.getProjInfo(project.getLocationURI());
+		} catch (InvocationTargetException e) {
+			e.printStackTrace();
+		} catch (CoreException e) {
+			e.printStackTrace();
+		} catch (InterruptedException e) {
+			e.printStackTrace();
+		}
+		metaDirLoc =3D RemoteHelper.createNewURI(projInfo.getOriginalURI(),
+"meta");
=20
 		if (fileName.length() =3D=3D 0) {
 			updateStatus("File name must be specified"); @@ -356,7 +369,7 @@ public=
 class NewBitBakeFileRecipeWizardPage extends WizardPage {
=20
 					updateTempFolderPath();
 					monitor.worked(10);
-
+				=09
 					monitor.subTask("Downloading package sources");
=20
 					updateTempFolderPath();
@@ -365,7 +378,7 @@ public class NewBitBakeFileRecipeWizardPage extends Wiz=
ardPage {
 					RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProg=
ressMonitor(monitor, 40));
=20
 					monitor.worked(50);
-
+				=09
 					monitor.subTask("Compute package checksums");
 					String md5Cmd =3D "md5sum " + srcFileNameExt;
 					YoctoCommand md5YCmd =3D new YoctoCommand(md5Cmd, tempFolderPath, "")=
; diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importPr=
oject/ImportYoctoProjectWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto=
/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
index 5e37133..82c5ab3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/Imp=
ortYoctoProjectWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/
+++ ImportYoctoProjectWizard.java
@@ -67,7 +67,7 @@ public class ImportYoctoProjectWizard extends FiniteState=
Wizard  implements IImp
 	public boolean performFinish() {
 		ProjectInfo pinfo =3D new ProjectInfo();
 		pinfo.setInitScriptPath((String) projectModel.get(ImportYoctoProjectWiza=
rd.KEY_INITPATH));
-		pinfo.setLocation((URI) projectModel.get(ImportYoctoProjectWizard.KEY_LO=
CATION));
+		pinfo.setLocationURI((URI)
+projectModel.get(ImportYoctoProjectWizard.KEY_LOCATION));
 		pinfo.setName((String) projectModel.get(ImportYoctoProjectWizard.KEY_NAM=
E));
 	=09
 		try {
@@ -86,7 +86,7 @@ public class ImportYoctoProjectWizard extends FiniteState=
Wizard  implements IImp
 		projectModel.put(ImportYoctoProjectWizard.KEY_PINFO, pinfo);
 		//setPageComplete(valid);
 		//ProjectInfo pinfo =3D (ProjectInfo) projectModel.get(KEY_PINFO);
-		Activator.putProjInfo(pinfo.getURI(), pinfo);
+		Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 		try {
 			getContainer().run(false, false, new CreateBBCProjectOperation(pinfo));
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
 				String prjName =3D (String) options.get(PROJECT_NAME);
 				ProjectInfo pinfo =3D new ProjectInfo();
 				pinfo.setInitScriptPath(initPath);
-				pinfo.setLocation(uri);
+				pinfo.setLocationURI(uri);
 				pinfo.setName(prjName);
 				pinfo.setConnection(connection);
 				pinfo.setRemoteServices(remoteServices);
@@ -153,7 +153,7 @@ public class InstallWizard extends FiniteStateWizard im=
plements IWorkbenchWizard
 				console.newMessageStream().println(cw.getContents());
=20
 				model.put(InstallWizard.KEY_PINFO, pinfo);
-				Activator.putProjInfo(pinfo.getURI(), pinfo);
+				Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
=20
 				container.run(false, false, new CreateBBCProjectOperation(pinfo));
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
-			if (repoDest.exists() && repoDest.isDirectory()) {
+			if (repoDest !=3D null && repoDest.exists() && repoDest.isDirectory()) =
{
+				IHostFile[] hostFiles =3D RemoteHelper.getRemoteDirContent(connection,=
 repoDest.getAbsolutePath(), "", IFileService.FILE_TYPE_FILES_AND_FOLDERS, =
new NullProgressMonitor());
+				if (hostFiles.length !=3D 0) {
+					setErrorMessage("Directory " + projectPath + " is not empty, please c=
hoose another location.");
+					return false;
+				}
 				IHostFile gitDescr =3D RemoteHelper.getRemoteHostFile(connection, proj=
ectPath + "/.git", new NullProgressMonitor());
 				if (gitDescr !=3D null && gitDescr.exists()) {
 					setErrorMessage("Directory " + projectPath + " contains a repository,=
 please choose another location or skip cloning the repository."); diff --g=
it a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfi=
gurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc=
/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 942f303..5dd8944 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConf=
igurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBC
+++ onfigurationInitializeOperation.java
@@ -42,7 +42,7 @@ public class BBConfigurationInitializeOperation implement=
s IRunnableWithProgress
 		try {
 			System.out.println("Initialize bitbake session ...");
 			monitor.beginTask("Initialize bitbake session ...", RemoteHelper.TOTALW=
ORKLOAD);
-			ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.ge=
tConnection().getName()), pinfo.getURI(), pinfo, monitor);
+		=09
+ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.ge
+tConnection().getName()), pinfo.getOriginalURI(), pinfo, monitor);
 			session =3D Activator.getBBSession(pinfo, writer, monitor);
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
 	private IProjectDescription createProjectDescription(IWorkspace workspace=
, ProjectInfo projInfo) throws CoreException {
 		IProjectDescription desc =3D workspace.newProjectDescription(projInfo.ge=
tProjectName());
=20
-//		desc.setLocationURI(projInfo.getURI());
-		try {
-			desc.setLocationURI(new URI(ProjectInfoHelper.OEFS_SCHEME + projInfo.ge=
tURI().getPath()));
-		} catch (URISyntaxException e) {
-			throw new CoreException(new Status(IStatus.ERROR, Activator.PLUGIN_ID, =
"Unable to load filesystem.", e));
-		}
+		desc.setLocationURI(projInfo.getOEFSURI());
 		return desc;
 	}
=20
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_002_3E179CF0D7162B4AA4E2B324209A4639AD0097IRSMSX101gercorpi_
Content-Type: application/octet-stream; name="git.log"
Content-Description: git.log
Content-Disposition: attachment; filename="git.log"; size=4299;
	creation-date="Tue, 22 Jan 2013 09:21:35 GMT";
	modification-date="Tue, 22 Jan 2013 09:21:35 GMT"
Content-Transfer-Encoding: base64

Y29tbWl0IGI2MDI0MmRkNThjYTkxY2Y0NDExZmZhZDcxZGZmNDdhODRiNjQ0YmINCkF1dGhvcjog
SW9hbmEgR3JpZ29yb3BvbCA8aW9hbmF4LmdyaWdvcm9wb2xAaW50ZWwuY29tPg0KRGF0ZTogICBG
cmkgSmFuIDE4IDE4OjExOjE1IDIwMTMgKzAyMDANCg0KICAgIFBlcmZvcm1hbmNlIGZpeCBmb3Ig
V2luZG93cyBpbXBsZW1lbnRhdGlvbg0KICAgIA0KICAgICAgICAtIHJ1biBlYWNoIGNvbW1hbmQg
aW4gYSBzZXBhcmF0ZSBzaGVsbCAtIG5lZWRzIGV4cGxpY2l0IHNvdXJjaW5nIG9mIGVudmlyb25t
ZW50IGFuZCBjbG9zaW5nIGZvciBlYWNoIGNvbW1hbmQNCiAgICAgICAgLSBhZGQgZGlzdGluY3Rp
b24gYmV0d2VlbiBPRUZTIFVSSSBhbmQgYWN0dWFsIFVSSSBvZiB0aGUgcmVtb3RlIHByb2plY3Qg
YW5kIGZpbGVzIC0+IFlvY3RvTG9jYXRpb24gb2YgdGhlIHByb2plY3QgY29udGFpbnMgYm90aCBV
UklzDQogICAgICAgIC0gdXNlIE9FRlMgVVJJIG9ubHkgZm9yIGluaXRpYWxpemF0aW9uIG9mIE9F
RlNGaWxlU3lzdGVtLE9FSWdub3JlZFBhdGhzLCBPRUZpbGUgKG9lZnM6Ly8uLi4pDQogICAgICAg
IC0gdXNlIGFjdHVhbCBVUkkgKGZpbGU6Ly8gb3IgcnNlOi8vKSBmb3IgYWxsIG90aGVyIG9wZXJh
dGlvbnMgKG5ldyBmaWxlLCBjb3B5LCBzYXZlLCBkZWxldGUpDQogICAgICAgIC0gdGVzdGVkIG9u
bHkgYWdhaW5zdCBXaW5kb3dzIG1hY2hpbmUgJiBSU0UgY29ubmVjdGlvbiB0byBCdWlsZEFwcGxp
YW5jZSBtYWNoaW5lDQogICAgSU1QT1JUQU5UOiBwbGVhc2UgbWFrZSBzdXJlIHRoYXQgc3NoZCBj
b25maWd1cmF0aW9ucyBvbiB0aGUgcmVtb3RlIG1hY2hpbmUgaGFzIHZhcmlhYmxlIE1heFNlc3Np
b25zIHNldCB0byBhIHJlYXNvbmFibGUgbnVtYmVyIChtb3JlIHRoYW4gdGgNCiAgICANCiAgICBT
aWduZWQtb2ZmLWJ5OiBJb2FuYSBHcmlnb3JvcG9sIDxpb2FuYXguZ3JpZ29yb3BvbEBpbnRlbC5j
b20+DQoNCmNvbW1pdCA1MzIwN2Q5MGQxOGY4OTFkYTkxZGZlZDA0OWE2NmNhNzVhN2JhNzQxDQpB
dXRob3I6IElvYW5hIEdyaWdvcm9wb2wgPGlvYW5heC5ncmlnb3JvcG9sQGludGVsLmNvbT4NCkRh
dGU6ICAgV2VkIEphbiAxNiAyMDozMjowOCAyMDEzICswMjAwDQoNCiAgICBQZXJmb3JtYW5jZSBm
aXggZm9yIExpbnV4IGltcGxlbWVudGF0aW9uDQogICAgDQogICAgLSBydW4gZWFjaCBjb21tYW5k
IGluIGEgc2VwYXJhdGUgc2hlbGwgLSBuZWVkcyBleHBsaWNpdCBzb3VyY2luZyBvZiBlbnZpcm9u
bWVudCBhbmQgY2xvc2luZyBmb3IgZWFjaCBjb21tYW5kDQogICAgLSB0ZXN0ZWQgb25seSBhZ2Fp
bnN0IExpbnV4IGhvc3QgJiBMaW51eCBsb2NhbCBob3N0IGNvbm5lY3Rpb24NCiAgICAtIG5lZWRz
IGxvY2FsIHBhdGNoIGZvciB1cHN0cmVhbSBBUEkNCiAgICANCiAgICBTaWduZWQtb2ZmLWJ5OiBJ
b2FuYSBHcmlnb3JvcG9sIDxpb2FuYXguZ3JpZ29yb3BvbEBpbnRlbC5jb20+DQoNCmNvbW1pdCA1
ZjQ1Y2FkMmJhMWE0NzI5YzU1N2UzMzU1ZGQ2MDc2Y2RlNTVkODdhDQpBdXRob3I6IElvYW5hIEdy
aWdvcm9wb2wgPGlvYW5heC5ncmlnb3JvcG9sQGludGVsLmNvbT4NCkRhdGU6ICAgVHVlIEphbiAx
NSAxNjo1NzoyOSAyMDEzICswMjAwDQoNCiAgICBTZW5kIG91dHB1dCBmcm9tIGJpdGJha2UgZW52
aXJvbm1lbnQgcGFyc2luZyBpbiB0aGUgYmFja2dyb3VuZA0KICAgIA0KICAgIC0gYWZ0ZXIgY3Jl
YXRpbmcgdGhlIHByb2plY3QsIHRoZSB3aXphcmQgc2hvdWxkIG5vdCBibG9jayB3YWl0aW5nIGZv
ciB0aGUgZW52aXJvbm1lbnQgdG8gYmUgcG9wdWxhdGVkIGFuZCBpbnN0ZWFkIHNob3VsZCBiZSBy
YW4gaW4gdGhlIGJhY2tnDQogICAgDQogICAgU2lnbmVkLW9mZi1ieTogSW9hbmEgR3JpZ29yb3Bv
bCA8aW9hbmF4LmdyaWdvcm9wb2xAaW50ZWwuY29tPg0KDQpjb21taXQgOGEwY2NhNzIyOWYyMTIx
MzQ4YWM0YzQzN2VkNTg3ZjIyN2NhYTNhYQ0KQXV0aG9yOiBJb2FuYSBHcmlnb3JvcG9sIDxpb2Fu
YXguZ3JpZ29yb3BvbEBpbnRlbC5jb20+DQpEYXRlOiAgIFR1ZSBKYW4gMTUgMTY6NTc6MjggMjAx
MyArMDIwMA0KDQogICAgRGlzYWJsZSAiRmluaXNoIiB3aGVuIHByb2plY3QgbG9jYXRpb24gaXMg
aW52YWxpZA0KICAgIA0KICAgIC0gd2hlbiBCaXRiYWtlIHByb2plY3QgbG9jYXRpb24gaXMgaW52
YWxpZCwgYW4gZXJyb3Igc2hvdWxkIGJlIGRpc3BsYXllZCBhbmQgImZpbmlzaCIgYnV0dG9uIGRp
c2FibGVkDQogICAgDQogICAgU2lnbmVkLW9mZi1ieTogSW9hbmEgR3JpZ29yb3BvbCA8aW9hbmF4
LmdyaWdvcm9wb2xAaW50ZWwuY29tPg0KDQpjb21taXQgN2UzZTIyNzM5YjlhOTlhMzlkMDNkNzQ2
ZDhkNDE2YmE1MzkwYWVmMQ0KQXV0aG9yOiBJb2FuYSBHcmlnb3JvcG9sIDxpb2FuYXguZ3JpZ29y
b3BvbEBpbnRlbC5jb20+DQpEYXRlOiAgIFR1ZSBKYW4gMTUgMTY6NTc6MjcgMjAxMyArMDIwMA0K
DQogICAgUmVpbnN0YXRlIE9FRmlsZVN5c3RlbSwgT0VGaWxlIGFuZCBJZ25vcmVkIFBhdGhzIGZv
ciBMaW51eA0KICAgIA0KICAgIC0gT0VGaWxlU3lzdGVtIGFuZCBPRUZpbGUgd2VyZSBkcm9wcGVk
IGR1ZSB0byB0aGUgdXNlIG9mIGhhcmRjb2RlZCBzY2hlbWUgIm9lZnM6Ly8iIHRoYXQgc3RvcHBl
ZCByZW1vdGUgY29ubmVjdGlvbiBmcm9tIHdvcmtpbmcuIFRoZXJlIGlzIGEgDQogICAgDQogICAg
U2lnbmVkLW9mZi1ieTogSW9hbmEgR3JpZ29yb3BvbCA8aW9hbmF4LmdyaWdvcm9wb2xAaW50ZWwu
Y29tPg0KDQpjb21taXQgZmFjYTQ0YWVkZGMwNjQ5NTdlOGMyMzgwNTEwMjY1MTU4NzJkMTFiNg0K
QXV0aG9yOiBJb2FuYSBHcmlnb3JvcG9sIDxpb2FuYXguZ3JpZ29yb3BvbEBpbnRlbC5jb20+DQpE
YXRlOiAgIFR1ZSBKYW4gMTUgMTY6NTc6MjYgMjAxMyArMDIwMA0KDQogICAgQWxsb3cgJy0nIGlu
IHByb2plY3QgbmFtZXMNCiAgICANCiAgICBTaWduZWQtb2ZmLWJ5OiBJb2FuYSBHcmlnb3JvcG9s
IDxpb2FuYXguZ3JpZ29yb3BvbEBpbnRlbC5jb20+DQoNCmNvbW1pdCBkZGE3MmQyYjJiYzI4Njhj
N2IzNTBiNDhhNDM5MmU1ZTMxYWJhMWU2DQpBdXRob3I6IElvYW5hIEdyaWdvcm9wb2wgPGlvYW5h
eC5ncmlnb3JvcG9sQGludGVsLmNvbT4NCkRhdGU6ICAgVHVlIEphbiAxNSAxNjo1NzoyNSAyMDEz
ICswMjAwDQoNCiAgICBGaXggdmFyaWFibGVzIGhvb3ZlciAmIHJlbW90ZSBmaWxlIHN5c3RlbSBk
ZXRlY3Rpb24NCiAgICANCiAgICAtIGluaXRpYWxpemUgYml0YmFrZSBzZXNzaW9uIGZvciByZWNp
cGU6DQogICAgICAgIC0gd2hlbiBzdGFydGluZyBhIG5ldyBwcm9qZWN0LCB0aGUgc2Vzc2lvbiBl
bnZpcm9ubWVudCB2YXJpYWJsZXMgYXJlIG9idGFpbmVkIGJ5IGNhbGxpbmcgImJpdGJha2UgLWUi
DQogICAgICAgIC0gd2hlbiBhIG5ldyByZWNpcGUgaXMgY3JlYXRlZCBhbmQgZWRpdGVkLCB0aGUg
c2Vzc2lvbiB2YXJpYWJsZXMgc2hvdWxkIGJlIHVwZGF0ZWQgd2l0aCB0aGUgdmFsdWVzIG9idGFp
bmVkIGZyb20gImJpdGJha2UgLWUgLWIgcGFja2FnZSINCiAgICAtIGlmIHdlIHRyeSB0byByZXRy
aXZlIGEgInJlbW90ZSIgZmlsZSAobG9jYWwgZmlsZSBzeXN0ZW0sIHJlbW90ZSBob3N0KSB1c2lu
ZyBSU0UgcHJvdG9jb2wgYmVmb3JlIHRoZSBzeXN0ZW0gaXMgaW5pdGlhbGl6ZWQsIG51bGwgd2ls
bCBiZSByZQ0KICAgICAgICAtIGFkZCBleGNlcHRpb24gaGFuZGxpbmcNCiAgICAgICAgLSBtYWtl
IHN1cmUgdGhhdCB0aGUgInJlbW90ZSIgRmlsZVN5c3RlbSBnZXRzIGluaXRpYWxpemVkLCBhcyB3
ZWxsIGFzIHRoZSBwcm9qZWN0IGNvbm5lY3Rpb24NCiAgICANCiAgICBTaWduZWQtb2ZmLWJ5OiBJ
b2FuYSBHcmlnb3JvcG9sIDxpb2FuYXguZ3JpZ29yb3BvbEBpbnRlbC5jb20+DQoNCmNvbW1pdCA1
YTI3YmIxZjllNDVmMGE5NDA4NDUzZjllN2U3MGNjMzMzYjk3YWZlDQpBdXRob3I6IElvYW5hIEdy
aWdvcm9wb2wgPGlvYW5heC5ncmlnb3JvcG9sQGludGVsLmNvbT4NCkRhdGU6ICAgVHVlIERlYyAx
MSAxNjowNDowNiAyMDEyICswMjAwDQoNCiAgICBSZW1vdmUgdmFsaWRhdGUgZXhpc3RpbmcgcmVw
b3NpdG9yeSByYWRpbyBidXR0b24NCiAgICANCiAgICAtIHJlbW92ZSByYWRpbyBidXR0b24gZm9y
IHZhbGlkYXRpbmcgZXhpc3RpbmcgcmVwb3NpdG9yeSBidXQga2VlcCBwZXJmb3JtaW5nIHRoZSB2
YWxpZGF0aW9uIGluIHRoZSBiYWNrDQogICAgLSBtYWtlICdjbG9uZScgYnV0dG9uIGEgY2hlY2sg
YnV0dG9uDQogICAgDQogICAgU2lnbmVkLW9mZi1ieTogSW9hbmEgR3JpZ29yb3BvbCA8aW9hbmF4
LmdyaWdvcm9wb2xAaW50ZWwuY29tPg0K

--_002_3E179CF0D7162B4AA4E2B324209A4639AD0097IRSMSX101gercorpi_--
