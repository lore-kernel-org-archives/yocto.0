Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75A39E0155A
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 17:27:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jun 2013 17:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,818,1363158000"; d="scan'208";a="251738014"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jun 2013 17:27:48 -0700
Received: from orsmsx109.amr.corp.intel.com (10.22.240.7) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 6 Jun 2013 17:27:48 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.228]) with mapi id
	14.03.0123.003; Thu, 6 Jun 2013 17:27:47 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 9/9] Redirect bitbake environment
	parsing to	file & parse
Thread-Index: AQHOYSpjFNG5krtg/0eGMihWR+gzu5kpaIKg
Date: Fri, 7 Jun 2013 00:27:46 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C380C2@ORSMSX103.amr.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-10-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1370352368-18730-10-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
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
X-List-Received-Date: Fri, 07 Jun 2013 00:27:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ioana,

There're couple fixme in wait for bitbake to finish and clean up the enviro=
nment file that seems not addressed.  Also, please make sure the changed fi=
les have valid license info.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, June 04, 2013 6:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [Refactor RFC 9/9] Redirect bitbake environment parsing to=
 file & parse

- when running "bitbake -e" the output is sent to the console, poluting it
- instead, send the output to a file (bitbake.env) and parse the file accor=
dingly
- if an error has occured while running the commad, all the error lines are=
 collected and displayed on the console

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    2 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   49 +++++++++++++---=
----
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   14 +++---
 3 files changed, 40 insertions(+), 25 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java=
 b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 1baf124..6168f8c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -26,7 +26,7 @@ public class BBRecipe extends BBSession {
                super(session.shell, session.pinfo.getOriginalURI());
                this.session =3D session;
                this.fileURI =3D filePath;
-               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D1 bitbake -e -=
b " + filePath;
+               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake =
-e -b " +
+filePath.getPath() + " >& " + BB_ENV_FILE;
        }

        @Override
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.jav=
a b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index fcde557..9bc4dcc 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -15,6 +15,8 @@ import java.io.File;
 import java.io.FileFilter;
 import java.io.IOException;
 import java.io.StringReader;
+import java.io.InputStream;
+import java.io.InputStreamReader;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
@@ -33,9 +35,11 @@ import org.eclipse.core.resources.IProject;
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
@@ -45,6 +49,7 @@ import org.eclipse.ui.progress.WorkbenchJob;

 import org.yocto.bc.ui.model.IModelElement;
 import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.remote.utils.RemoteHelper;

 /**
  * BBSession encapsulates a global bitbake configuration and is the primar=
y interface @@ -59,6 +64,7 @@ public class BBSession implements IBBSessionL=
istener, IModelElement, Map {
        public static final int TYPE_STATEMENT =3D 3;
        public static final int TYPE_FLAG =3D 4;

+       public static final String BB_ENV_FILE =3D "bitbake.env";
        public static final String BUILDDIR_INDICATORS [] =3D {
                File.separatorChar + "conf" + File.separatorChar + "local.c=
onf",
                File.separatorChar + "conf" + File.separatorChar + "bblayer=
s.conf", @@ -69,19 +75,21 @@ public class BBSession implements IBBSessionLi=
stener, IModelElement, Map {
        protected Map<?,?> properties =3D null;
        protected List <URI> depends =3D null;
        protected boolean initialized =3D false;
+       protected boolean errorOccured =3D false;
        protected MessageConsole sessionConsole;
        private final ReentrantReadWriteLock rwlock =3D new ReentrantReadWr=
iteLock();
        private final Lock rlock =3D rwlock.readLock();
        private final Lock wlock =3D rwlock.writeLock();
        protected String parsingCmd;
        private boolean silent =3D false;
-
+       private String errorLines =3D "";
+
        public BBSession(ShellSession ssession, URI projectRoot) throws IOE=
xception {
                shell =3D ssession;
                this.pinfo =3D new ProjectInfo();
                pinfo.setLocationURI(projectRoot);
                pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath=
(projectRoot));
-               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D1 bitbake -e";
+               this.parsingCmd =3D "DISABLE_SANITY_CHECKS=3D\"1\" bitbake =
-e >& " +
+BB_ENV_FILE;
        }

        public BBSession(ShellSession ssession, URI projectRoot, boolean si=
lent) throws IOException { @@ -330,18 +338,17 @@ public class BBSession imp=
lements IBBSessionListener, IModelElement, Map {
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
, boolean clear) { @@ -378,14 +385,21 @@ public class BBSession implements =
IBBSessionListener, IModelElement, Map {
                        }
                        try {
                                if(!initialized) { //recheck
-                                       int [] codes =3D {-1};
-                                       String result =3D shell.execute(par=
singCmd, codes);
-                                       if(checkExecuteError(result, codes[=
0]) =3D=3D 0) {
-                                               properties =3D parseBBEnvir=
onment(result);
+                                       boolean hasErrors =3D false;
+                                       String result =3D shell.execute(par=
singCmd, hasErrors);
+
+                                       //FIXME : wait for bitbake to finis=
h
+                                       properties =3D parseBBEnvironment(r=
esult);
+
+                                       if (properties.size() =3D=3D 0) { /=
/ there was an error in sourcing bitbake environment
+                                               shell.printError(errorLines=
);
+                                               errorOccured =3D true;
                                        } else {
-                                               properties =3D parseBBEnvir=
onment("");
+                                               errorLines =3D "";
+                                               errorOccured =3D false;
+                                               initialized =3D true;
                                        }
-                                       initialized =3D true;
+                                       //FIXME: cleanup BB env file
                                }
                        } finally {
                                //downgrade lock
@@ -440,8 +454,11 @@ public class BBSession implements IBBSessionListener, =
IModelElement, Map {
                }
        }

-       protected void parse(String content, Map outMap) throws Exception {
-               BufferedReader reader =3D new BufferedReader(new StringRead=
er(content));
+       protected void parse(String bbOutfilePath, Map outMap) throws Excep=
tion {
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
@@ -508,11 +525,11 @@ public class BBSession implements IBBSessionListener,=
 IModelElement, Map {
                return null;
        }

-       protected Map parseBBEnvironment(String bbOut) throws Exception {
+       protected Map parseBBEnvironment(String bbOutFilePath) throws
+Exception {
                Map env =3D new Hashtable();
                this.depends =3D new ArrayList<URI>();

-               parse(bbOut, env);
+               parse(bbOutFilePath, env);

                String included =3D (String) env.get("BBINCLUDED");
                if(getDefaultDepends() !=3D null) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 44b2696..129d1d9 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -21,6 +21,7 @@ import java.io.Writer;  import org.eclipse.rse.services.f=
iles.IHostFile;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.remote.utils.ICommandResponseHandler;
+import org.yocto.remote.utils.RemoteHelper;

 /**
  * A class for Linux shell sessions.
@@ -112,11 +113,11 @@ public class ShellSession {

        synchronized
        public String execute(String command) throws IOException {
-               return execute(command, (int [])null);
+               return execute(command, false);
        }

        synchronized
-       public String execute(String command, int[] retCode) throws IOExcep=
tion {
+       public String execute(String command, boolean hasErrors) throws
+IOException {
                String errorMessage =3D null;
                interrupt =3D false;
                out.write(command);
@@ -150,12 +151,6 @@ public class ShellSession {
                        process.destroy();
                        initializeShell();
                        interrupt =3D false;
-               }else if (line !=3D null && retCode !=3D null) {
-                       try {
-                               retCode[0]=3DInteger.parseInt(line.substrin=
g(0,line.lastIndexOf(TERMINATOR)));
-                       }catch (NumberFormatException e) {
-                               throw new IOException("Can NOT get return c=
ode" + command + LT + line);
-                       }
                }

                if (errorMessage !=3D null) {
@@ -259,4 +254,7 @@ synchronized
                }

        }
+       public void printError(String errorLines) {
+               RemoteHelper.getCommandHandler(projectInfo.getConnection())=
.response(errorLines, true);
+       }
 }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

