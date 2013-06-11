Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34669E01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 04:27:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jun 2013 04:25:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,844,1363158000"; d="scan'208";a="351639879"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 11 Jun 2013 04:27:16 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 11 Jun 2013 12:27:15 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.204]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.147]) with mapi id
	14.03.0123.003; Tue, 11 Jun 2013 12:27:15 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 9/9] Redirect bitbake environment
	parsing to	file & parse
Thread-Index: AQHOYxXXvXvMCaU4j02Anc+taNbuT5kwWrwA
Date: Tue, 11 Jun 2013 11:27:14 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A463915FFCED2@IRSMSX101.ger.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-10-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C380C2@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C380C2@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: Re: [Refactor RFC 9/9] Redirect bitbake environment parsing to	file & parse
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
X-List-Received-Date: Tue, 11 Jun 2013 11:27:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
The first fixme message is just a left-over. We don't need to perform any w=
aiting actions since the command is ran synchronously.=0A=
As for the second fixme, its purpose was to perform some clean-up of the en=
vironment file (bitbake.env), and thus will be replaced with a call to "rm =
-rf".=0A=
I have sent a pull request for this change, from poky-contrib, branch: igri=
gorx/common-remote-refactor=0A=
=0A=
Ioana=0A=
=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, June 07, 2013 3:27 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [Refactor RFC 9/9] Redirect bitbake environment parsin=
g to file & parse=0A=
=0A=
Ioana,=0A=
=0A=
There're couple fixme in wait for bitbake to finish and clean up the enviro=
nment file that seems not addressed.  Also, please make sure the changed fi=
les have valid license info.=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Tuesday, June 04, 2013 6:26 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [Refactor RFC 9/9] Redirect bitbake environment parsing to=
 file & parse=0A=
=0A=
- when running "bitbake -e" the output is sent to the console, poluting it=
=0A=
- instead, send the output to a file (bitbake.env) and parse the file accor=
dingly=0A=
- if an error has occured while running the commad, all the error lines are=
 collected and displayed on the console=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    2 +-=0A=
 .../src/org/yocto/bc/bitbake/BBSession.java        |   49 +++++++++++++---=
----=0A=
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   14 +++---=0A=
 3 files changed, 40 insertions(+), 25 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java=
 b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java=0A=
index 1baf124..6168f8c 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java=0A=
@@ -26,7 +26,7 @@ public class BBRecipe extends BBSession {=0A=
                super(session.shell, session.pinfo.getOriginalURI());=0A=
                this.session =3D session;=0A=
                this.fileURI =3D filePath;=0A=
-               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D1 bitbake -e -=
b " + filePath;=0A=
+               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake =
-e -b " +=0A=
+filePath.getPath() + " >& " + BB_ENV_FILE;=0A=
        }=0A=
=0A=
        @Override=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.jav=
a b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java=0A=
index fcde557..9bc4dcc 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java=0A=
@@ -15,6 +15,8 @@ import java.io.File;=0A=
 import java.io.FileFilter;=0A=
 import java.io.IOException;=0A=
 import java.io.StringReader;=0A=
+import java.io.InputStream;=0A=
+import java.io.InputStreamReader;=0A=
 import java.net.URI;=0A=
 import java.util.ArrayList;=0A=
 import java.util.Arrays;=0A=
@@ -33,9 +35,11 @@ import org.eclipse.core.resources.IProject;=0A=
 import org.eclipse.core.resources.IResource;=0A=
 import org.eclipse.core.runtime.IProgressMonitor;=0A=
 import org.eclipse.core.runtime.IStatus;=0A=
+import org.eclipse.core.runtime.NullProgressMonitor;=0A=
 import org.eclipse.core.runtime.Status;  import org.eclipse.jface.preferen=
ce.JFacePreferences;=0A=
 import org.eclipse.jface.resource.JFaceResources;=0A=
+import org.eclipse.rse.core.model.IHost;=0A=
 import org.eclipse.ui.console.ConsolePlugin;=0A=
 import org.eclipse.ui.console.IConsole;  import org.eclipse.ui.console.ICo=
nsoleManager;=0A=
@@ -45,6 +49,7 @@ import org.eclipse.ui.progress.WorkbenchJob;=0A=
=0A=
 import org.yocto.bc.ui.model.IModelElement;=0A=
 import org.yocto.bc.ui.model.ProjectInfo;=0A=
+import org.yocto.remote.utils.RemoteHelper;=0A=
=0A=
 /**=0A=
  * BBSession encapsulates a global bitbake configuration and is the primar=
y interface @@ -59,6 +64,7 @@ public class BBSession implements IBBSessionL=
istener, IModelElement, Map {=0A=
        public static final int TYPE_STATEMENT =3D 3;=0A=
        public static final int TYPE_FLAG =3D 4;=0A=
=0A=
+       public static final String BB_ENV_FILE =3D "bitbake.env";=0A=
        public static final String BUILDDIR_INDICATORS [] =3D {=0A=
                File.separatorChar + "conf" + File.separatorChar + "local.c=
onf",=0A=
                File.separatorChar + "conf" + File.separatorChar + "bblayer=
s.conf", @@ -69,19 +75,21 @@ public class BBSession implements IBBSessionLi=
stener, IModelElement, Map {=0A=
        protected Map<?,?> properties =3D null;=0A=
        protected List <URI> depends =3D null;=0A=
        protected boolean initialized =3D false;=0A=
+       protected boolean errorOccured =3D false;=0A=
        protected MessageConsole sessionConsole;=0A=
        private final ReentrantReadWriteLock rwlock =3D new ReentrantReadWr=
iteLock();=0A=
        private final Lock rlock =3D rwlock.readLock();=0A=
        private final Lock wlock =3D rwlock.writeLock();=0A=
        protected String parsingCmd;=0A=
        private boolean silent =3D false;=0A=
-=0A=
+       private String errorLines =3D "";=0A=
+=0A=
        public BBSession(ShellSession ssession, URI projectRoot) throws IOE=
xception {=0A=
                shell =3D ssession;=0A=
                this.pinfo =3D new ProjectInfo();=0A=
                pinfo.setLocationURI(projectRoot);=0A=
                pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath=
(projectRoot));=0A=
-               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D1 bitbake -e";=
=0A=
+               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake =
-e >& " +=0A=
+BB_ENV_FILE;=0A=
        }=0A=
=0A=
        public BBSession(ShellSession ssession, URI projectRoot, boolean si=
lent) throws IOException { @@ -330,18 +338,17 @@ public class BBSession imp=
lements IBBSessionListener, IModelElement, Map {=0A=
                }=0A=
        }=0A=
=0A=
-       protected int checkExecuteError(String result, int code) {=0A=
+       protected void checkExecuteError(String result, boolean hasErrors) =
{=0A=
                URI recipeURI =3D getDefaultDepends();=0A=
                String text =3D "Parsing " + ((recipeURI !=3D null) ? ("rec=
ipe " + recipeURI) : "base configurations");=0A=
-               if (code !=3D 0) {=0A=
+               if (hasErrors) {=0A=
                        text =3D text + " ERROR!\n" + result;=0A=
                }else {=0A=
                                text =3D text + " SUCCESS.\n";=0A=
                }=0A=
                if(!silent) {=0A=
-                       displayInConsole(text, code, false);=0A=
+                       displayInConsole(text, -1, false);=0A=
                }=0A=
-               return code;=0A=
        }=0A=
=0A=
        protected void displayInConsole(final String result, final int code=
, boolean clear) { @@ -378,14 +385,21 @@ public class BBSession implements =
IBBSessionListener, IModelElement, Map {=0A=
                        }=0A=
                        try {=0A=
                                if(!initialized) { //recheck=0A=
-                                       int [] codes =3D {-1};=0A=
-                                       String result =3D shell.execute(par=
singCmd, codes);=0A=
-                                       if(checkExecuteError(result, codes[=
0]) =3D=3D 0) {=0A=
-                                               properties =3D parseBBEnvir=
onment(result);=0A=
+                                       boolean hasErrors =3D false;=0A=
+                                       String result =3D shell.execute(par=
singCmd, hasErrors);=0A=
+=0A=
+                                       //FIXME : wait for bitbake to finis=
h=0A=
+                                       properties =3D parseBBEnvironment(r=
esult);=0A=
+=0A=
+                                       if (properties.size() =3D=3D 0) { /=
/ there was an error in sourcing bitbake environment=0A=
+                                               shell.printError(errorLines=
);=0A=
+                                               errorOccured =3D true;=0A=
                                        } else {=0A=
-                                               properties =3D parseBBEnvir=
onment("");=0A=
+                                               errorLines =3D "";=0A=
+                                               errorOccured =3D false;=0A=
+                                               initialized =3D true;=0A=
                                        }=0A=
-                                       initialized =3D true;=0A=
+                                       //FIXME: cleanup BB env file=0A=
                                }=0A=
                        } finally {=0A=
                                //downgrade lock=0A=
@@ -440,8 +454,11 @@ public class BBSession implements IBBSessionListener, =
IModelElement, Map {=0A=
                }=0A=
        }=0A=
=0A=
-       protected void parse(String content, Map outMap) throws Exception {=
=0A=
-               BufferedReader reader =3D new BufferedReader(new StringRead=
er(content));=0A=
+       protected void parse(String bbOutfilePath, Map outMap) throws Excep=
tion {=0A=
+               IHost connection =3D shell.getProjectInfo().getConnection()=
;=0A=
+               InputStream is =3D RemoteHelper.getRemoteInputStream(connec=
tion, bbOutfilePath, BB_ENV_FILE, new NullProgressMonitor());=0A=
+               RemoteHelper.getRemoteHostFile(connection, bbOutfilePath + =
BB_ENV_FILE, new NullProgressMonitor());=0A=
+               BufferedReader reader =3D new BufferedReader(new=0A=
+InputStreamReader(is));=0A=
                String line;=0A=
                boolean inLine =3D false;=0A=
                StringBuffer sb =3D null;=0A=
@@ -508,11 +525,11 @@ public class BBSession implements IBBSessionListener,=
 IModelElement, Map {=0A=
                return null;=0A=
        }=0A=
=0A=
-       protected Map parseBBEnvironment(String bbOut) throws Exception {=
=0A=
+       protected Map parseBBEnvironment(String bbOutFilePath) throws=0A=
+Exception {=0A=
                Map env =3D new Hashtable();=0A=
                this.depends =3D new ArrayList<URI>();=0A=
=0A=
-               parse(bbOut, env);=0A=
+               parse(bbOutFilePath, env);=0A=
=0A=
                String included =3D (String) env.get("BBINCLUDED");=0A=
                if(getDefaultDepends() !=3D null) {=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java=
=0A=
index 44b2696..129d1d9 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java=0A=
@@ -21,6 +21,7 @@ import java.io.Writer;  import org.eclipse.rse.services.f=
iles.IHostFile;=0A=
 import org.yocto.bc.ui.model.ProjectInfo;=0A=
 import org.yocto.remote.utils.ICommandResponseHandler;=0A=
+import org.yocto.remote.utils.RemoteHelper;=0A=
=0A=
 /**=0A=
  * A class for Linux shell sessions.=0A=
@@ -112,11 +113,11 @@ public class ShellSession {=0A=
=0A=
        synchronized=0A=
        public String execute(String command) throws IOException {=0A=
-               return execute(command, (int [])null);=0A=
+               return execute(command, false);=0A=
        }=0A=
=0A=
        synchronized=0A=
-       public String execute(String command, int[] retCode) throws IOExcep=
tion {=0A=
+       public String execute(String command, boolean hasErrors) throws=0A=
+IOException {=0A=
                String errorMessage =3D null;=0A=
                interrupt =3D false;=0A=
                out.write(command);=0A=
@@ -150,12 +151,6 @@ public class ShellSession {=0A=
                        process.destroy();=0A=
                        initializeShell();=0A=
                        interrupt =3D false;=0A=
-               }else if (line !=3D null && retCode !=3D null) {=0A=
-                       try {=0A=
-                               retCode[0]=3DInteger.parseInt(line.substrin=
g(0,line.lastIndexOf(TERMINATOR)));=0A=
-                       }catch (NumberFormatException e) {=0A=
-                               throw new IOException("Can NOT get return c=
ode" + command + LT + line);=0A=
-                       }=0A=
                }=0A=
=0A=
                if (errorMessage !=3D null) {=0A=
@@ -259,4 +254,7 @@ synchronized=0A=
                }=0A=
=0A=
        }=0A=
+       public void printError(String errorLines) {=0A=
+               RemoteHelper.getCommandHandler(projectInfo.getConnection())=
.response(errorLines, true);=0A=
+       }=0A=
 }=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

