Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6824BE011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 15:39:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Nov 2012 15:39:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,174,1355126400"; d="scan'208";a="255387932"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2012 15:39:46 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 27 Nov 2012 15:39:46 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.163]) with mapi id
	14.01.0355.002; Tue, 27 Nov 2012 15:39:46 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/3] Initialize bitbake session & environment
	parse	variables
Thread-Index: AQHNy77zXomzxR7H+EukEmKQ9MF0XZf+WTAA
Date: Tue, 27 Nov 2012 23:39:45 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B66769@ORSMSX101.amr.corp.intel.com>
References: <1353924331-10284-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1353924331-10284-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] Initialize bitbake session & environment parse	variables
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
X-List-Received-Date: Tue, 27 Nov 2012 23:39:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

The patched won't apply and please  rebase against eclipse-poky-windows and=
 resubmit.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Monday, November 26, 2012 2:05 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 1/3] Initialize bitbake session & environment parse=
 variables

- source oe-init-env for the connection shell
- parse environment variables

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   13 +++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   53 ++++++++--------=
----
 2 files changed, 26 insertions(+), 40 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.jav=
a b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index e182d05..5f919c3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -329,18 +329,17 @@ public class BBSession implements IBBSessionListener,=
 IModelElement, Map {
                }
        }

-       protected int checkExecuteError(String result, int code) {
+       protected void checkExecuteError(String result, boolean hasErrors) =
{
                URI recipeURI =3D getDefaultDepends();
                String text =3D "Parsing " + ((recipeURI !=3D null) ? ("rec=
ipe " + recipeURI) : "base configurations");
-               if (code !=3D 0) {
+               if (hasErrors) {
                        text =3D text + " ERROR!\n" + result;
                }else {
                                text =3D text + " SUCCESS.\n";
                }
                if(!silent) {
-                       displayInConsole(text, code, false);
+                       displayInConsole(text, -1, false);
                }
-               return code;
        }

        protected void displayInConsole(final String result, final int code=
, boolean clear) { @@ -377,9 +376,9 @@ public class BBSession implements IB=
BSessionListener, IModelElement, Map {
                        }
                        try {
                                if(!initialized) { //recheck
-                                       int [] codes =3D {-1};
-                                       String result =3D shell.execute(par=
singCmd, codes);
-                                       if(checkExecuteError(result, codes[=
0]) =3D=3D 0) {
+                                       boolean hasErrors =3D false;
+                                       String result =3D shell.execute(par=
singCmd, hasErrors);
+                                       if(!hasErrors) {
                                                properties =3D parseBBEnvir=
onment(result);
                                        } else {
                                                properties =3D parseBBEnvir=
onment(""); diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/S=
hellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSe=
ssion.java
index a7ed3d6..a8c46dd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -20,6 +20,7 @@ import java.io.Writer;

 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.remote.utils.YoctoCommand;
@@ -92,43 +93,29 @@ public class ShellSession {
        }

        private void initializeShell(IProgressMonitor monitor) throws IOExc=
eption {
-//             try {
-//                     RemoteHelper.runCommandRemote(RemoteHelper.getRemot=
eConnectionByName(projectInfo.getConnection().getName()), new YoctoCommand(=
"source " + initCmd, root.getAbsolutePath(), ""), monitor);
-//             } catch (CoreException e) {
-//                     e.printStackTrace();
-//             }
-
-//             process =3D Runtime.getRuntime().exec(shellPath);
-//             pos =3D process.getOutputStream();
-//
-//             if (root !=3D null) {
-//                     out.write(execute("cd " + root.getAbsolutePath()));
-//             }
-//
-//             if (initCmd !=3D null) {
-//                     out.write(execute("source " + initCmd));
-//             }
+               try {
+                       IHost connection =3D RemoteHelper.getRemoteConnecti=
onByName(projectInfo.getConnection().getName());
+                       RemoteHelper.runCommandRemote(connection, new Yocto=
Command("source " + initCmd, root.getAbsolutePath(), ""), monitor);
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
        }

        synchronized
        public String execute(String command) throws IOException {
-               return execute(command, (int [])null);
+               return execute(command, false);
        }

        synchronized
-       public String execute(String command, int[] retCode) throws IOExcep=
tion {
-               //FIXME : parse output
-//             try {
-//                     RemoteHelper.runCommandRemote(RemoteHelper.getRemot=
eConnectionByName(projectInfo.getConnection().getName()), new YoctoCommand(=
command, root.getAbsolutePath(), ""), new NullProgressMonitor());
-//             } catch (Exception e) {
-//                     e.printStackTrace();
-//             }
-//
-//             String errorMessage =3D null;
-//             interrupt =3D false;
-//             out.write(command);
-//             out.write(LT);
-//
+       public String execute(String command, boolean hasErrors) throws IOE=
xception {
+               try {
+                       IHost connection =3D RemoteHelper.getRemoteConnecti=
onByName(projectInfo.getConnection().getName());
+                       hasErrors =3D RemoteHelper.runCommandRemote(connect=
ion, new YoctoCommand(command, root.getAbsolutePath(), ""), new NullProgres=
sMonitor());
+                       return RemoteHelper.getProcessBuffer(connection).ge=
tMergedOutputLines();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+               return null;
 //             sendToProcessAndTerminate(command);
 //
 //             if (process.getErrorStream().available() > 0) {
@@ -143,7 +130,7 @@ public class ShellSession {
 //             BufferedReader br =3D new BufferedReader(new InputStreamRea=
der(process
 //                             .getInputStream()));
 //
-               StringBuffer sb =3D new StringBuffer();
+//             StringBuffer sb =3D new StringBuffer();
 //             String line =3D null;

 //             while (((line =3D br.readLine()) !=3D null) && !line.endsWi=
th(TERMINATOR) && !interrupt) {
@@ -169,8 +156,8 @@ public class ShellSession {
 //             if (errorMessage !=3D null) {
 //                     throw new IOException(errorMessage);
 //             }
-
-               return sb.toString();
+//
+//             return sb.toString();
        }

 synchronized
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

