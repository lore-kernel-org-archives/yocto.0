Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B851BE00310
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 12:09:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2013 12:07:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,590,1363158000"; d="scan'208";a="329746064"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2013 12:09:09 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
	FMSMSX103.amr.corp.intel.com (10.19.9.34) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 1 May 2013 12:09:08 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX114.amr.corp.intel.com ([169.254.6.140]) with mapi id
	14.01.0355.002; Wed, 1 May 2013 12:09:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 3/8] Unify preProcess for all commands models
Thread-Index: AQHORbMNKsZKD9CzoUGI6THLCiq/8pjwsZPw
Date: Wed, 1 May 2013 19:09:07 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C7077BAB4@fmsmsx152.amr.corp.intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
	<1367332592-2585-4-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1367332592-2585-4-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [PATCH 3/8] Unify preProcess for all commands models
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
X-List-Received-Date: Wed, 01 May 2013 19:09:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Since we're changing to "private static final String", please be consistent=
, there're still usage of "final private String"...

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, April 30, 2013 7:36 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 3/8] Unify preProcess for all commands models

- all remote tools models(except systemtap) perform the same action in the =
pre-processing step duplicating the code
        - move the default code for pre-processing step in the BaseModel
        - move the local script path and the remote executable location var=
iables that are needed for pre-processing in the BaseModel
        - customize the variables in the constructor of each remote tool mo=
del

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   22 +++++++--
 .../sdk/remotetools/actions/OprofileModel.java     |   42 +++++-----------=
-
 .../sdk/remotetools/actions/PowertopModel.java     |   39 +++++-----------
 .../sdk/remotetools/actions/SystemtapModel.java    |   30 ++++++-------
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   47 ++++++----------=
----
 5 files changed, 67 insertions(+), 113 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/BaseModel.java
index e1abd63..e13d1cf 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/BaseModel.java
@@ -16,11 +16,14 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
+import org.yocto.sdk.remotetools.RSEHelper;

 abstract public class BaseModel implements IRunnableWithProgress {
        protected IHost host;
        protected String taskName;
-
+       protected String localScript;
+       protected String remoteExec;
+
        private static final int WORKLOAD =3D 100;

        private static final int INIT_PERCENT =3D 5; @@ -37,13 +40,26 @@ ab=
stract public class BaseModel implements IRunnableWithProgress {
        private static final String CLEAN_MSG =3D "Cleaning ";
        private static final String DOTS =3D "...";

-       abstract public void preProcess(IProgressMonitor monitor) throws In=
vocationTargetException,     InterruptedException;
+       public void preProcess(IProgressMonitor monitor) throws InvocationT=
argetException,      InterruptedException{
+               //upload script to remote
+               try {
+                       RSEHelper.putRemoteFileInPlugin(host, localScript, =
remoteExec, monitor);
+               }catch (InterruptedException e){
+                       throw e;
+               }catch (InvocationTargetException e) {
+                       throw e;
+               }catch (Exception e) {
+                       throw new InvocationTargetException(e, e.getMessage=
());
+               }
+       }
        abstract public void postProcess(IProgressMonitor monitor) throws I=
nvocationTargetException,InterruptedException;
        abstract public void process(IProgressMonitor monitor) throws Invoc=
ationTargetException,InterruptedException;

-       BaseModel(IHost host, String taskName) {
+       BaseModel(IHost host, String taskName, String localScript, String
+remoteExec) {
                this.host =3D host;
                this.taskName =3D taskName;
+               this.localScript =3D localScript;
+               this.remoteExec =3D remoteExec;
        }
        protected void init(IProgressMonitor monitor) throws InvocationTarg=
etException, InterruptedException {
        }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/OprofileModel.java
index 71ff4d9..31c0667 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/OprofileModel.java
@@ -18,49 +18,29 @@ import java.lang.reflect.InvocationTargetException;

 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.SubProgressMonitor;
-import org.eclipse.rse.core.model.IHost;  import org.eclipse.jface.prefere=
nce.IPreferenceStore;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
-
 import org.yocto.sdk.ide.YoctoSDKPlugin;  import org.yocto.sdk.ide.prefere=
nces.PreferenceConstants;
-import org.yocto.sdk.remotetools.remote.RemoteApplication;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.LocalJob;
 import org.yocto.sdk.remotetools.Messages;
-import org.yocto.sdk.remotetools.RSEHelper;
+import org.yocto.sdk.remotetools.remote.RemoteApplication;

 public class OprofileModel extends BaseModel {

-       static final private String REMOTE_EXEC=3D"/tmp/yocto_tool.sh";
-       static final private String LOCAL_SCRIPT=3D"resources/yocto_tool.sh=
";
-       static final private String LOCAL_EXEC=3D"oprofile-viewer";
+       private static final String REMOTE_EXEC =3D "/tmp/yocto_tool.sh";
+       private static final String LOCAL_SCRIPT =3D "resources/yocto_tool.=
sh";
+
+       private static final String LOCAL_EXEC =3D "oprofile-viewer";

        private static final String TASK_NAME =3D "oprofile command";

        private IWorkbenchWindow window;
        public OprofileModel(IHost host, IWorkbenchWindow window) {
-               super(host, TASK_NAME);
-               this.window=3Dwindow;
-       }
-
-       @Override
-       public void preProcess(IProgressMonitor monitor)
-                       throws InvocationTargetException, InterruptedExcept=
ion {
-               //upload script to remote
-               try {
-                       RSEHelper.putRemoteFileInPlugin(
-                                       host,
-                                       LOCAL_SCRIPT,
-                                       REMOTE_EXEC,
-                                       monitor);
-               }catch (InterruptedException e){
-                       throw e;
-               }catch (InvocationTargetException e) {
-                       throw e;
-               }catch (Exception e) {
-                       throw new InvocationTargetException(e,e.getMessage(=
));
-               }
+               super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
+               this.window =3D window;
        }

        @Override
@@ -71,7 +51,7 @@ public class OprofileModel extends BaseModel {

        private void startServer(IProgressMonitor monitor) throws Exception=
 {
                int exit_code;
-               RemoteApplication app=3Dnew RemoteApplication(host,null,REM=
OTE_EXEC,null);
+               RemoteApplication app =3D new RemoteApplication(host, null,=
 remoteExec,
+null);
                String args=3D"start -d oprofile-server";

                try {
@@ -92,8 +72,8 @@ public class OprofileModel extends BaseModel {

        private void stopServer(IProgressMonitor monitor) throws Exception =
{

-               RemoteApplication app=3Dnew RemoteApplication(host,null,REM=
OTE_EXEC,null);
-               String args=3D"stop -d oprofile-server";
+               RemoteApplication app =3D new RemoteApplication(host, null,=
 remoteExec, null);
+               String args =3D "stop -d oprofile-server";
                try {
                        monitor.beginTask("Stopping oprofile-server", 2);
                        app.start(null,args,monitor);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/PowertopModel.java
index c5f11d3..dc43af0 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/PowertopModel.java
@@ -29,10 +29,11 @@ import org.yocto.sdk.remotetools.views.BaseFileView;

 public class PowertopModel extends BaseModel {

-       final private String REMOTE_EXEC=3D"/tmp/yocto_tool.sh";
-       final private String LOCAL_SCRIPT=3D"resources/yocto_tool.sh";
-       final private String REMOTE_FILE_PREFIX=3D"/tmp/yocto-powertop-";
-       final private String LOCAL_FILE_SUFFIX=3D".local";
+       private static final String REMOTE_EXEC =3D "/tmp/yocto_tool.sh";
+       private static final String LOCAL_SCRIPT =3D "resources/yocto_tool.=
sh";
+
+       final private String REMOTE_FILE_PREFIX =3D "/tmp/yocto-powertop-";
+       final private String LOCAL_FILE_SUFFIX =3D ".local";

        private static final String TASK_NAME =3D "powertop command";

@@ -44,31 +45,11 @@ public class PowertopModel extends BaseModel {
        String remotefile;

        public PowertopModel(IHost host, Float time,boolean showpid,Display=
 display) {
-               super(host, TASK_NAME);
+               super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
                this.time=3Dtime;
                this.showpid=3Dshowpid;
                this.display=3Ddisplay;
        }
-
-       @Override
-       public void preProcess(IProgressMonitor monitor)
-                       throws InvocationTargetException, InterruptedExcept=
ion {
-               //upload script to remote
-               try {
-                       RSEHelper.putRemoteFileInPlugin(
-                                       host,
-                                       LOCAL_SCRIPT,
-                                       REMOTE_EXEC,
-                                       monitor);
-               }catch (InterruptedException e){
-                       throw e;
-               }catch (InvocationTargetException e) {
-                       throw e;
-               }catch (Exception e) {
-                       throw new InvocationTargetException(e,e.getMessage(=
));
-               }
-
-       }

        @Override
        public void postProcess(IProgressMonitor monitor) @@ -82,13 +63,13 =
@@ public class PowertopModel extends BaseModel {

        private void generateData(IProgressMonitor monitor) throws Exceptio=
n {
                int exit_code;
-               RemoteApplication app=3Dnew RemoteApplication(host,null,REM=
OTE_EXEC,null);
+               RemoteApplication app =3D new RemoteApplication(host, null,=
 remoteExec,
+null);
                String currentDate=3Dnew SimpleDateFormat("yyyyMMddHHmmssSS=
S").format(Calendar.getInstance().getTime()).toString();
-               remotefile=3Dnew String(REMOTE_FILE_PREFIX + currentDate);
-               localfile=3Dnew String(remotefile + LOCAL_FILE_SUFFIX);
+               remotefile =3D new String(REMOTE_FILE_PREFIX + currentDate)=
;
+               localfile =3D new String(remotefile + LOCAL_FILE_SUFFIX);

                ArrayList <String> param=3D new ArrayList <String>();
-               param.add(REMOTE_EXEC);
+               param.add(remoteExec);
                param.add("start");
                param.add("-l");
                param.add(remotefile);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/y=
octo/sdk/remotetools/actions/SystemtapModel.java
index 41c79df..294f866 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapModel.java
@@ -37,13 +37,13 @@ public class SystemtapModel extends BaseModel {
        Display display;

        public SystemtapModel(String metadata_location, String remote_host,=
 String user_id, String systemtap_script, String systemtap_args, Display di=
splay) {
-               super(null, TASK_NAME);
-               this.metadata_location=3Dmetadata_location;
-               this.remote_host=3Dremote_host;
-               this.user_id=3Duser_id;
-               this.systemtap_script=3Dsystemtap_script;
+               super(null, TASK_NAME, "", "");
+               this.metadata_location =3D metadata_location;
+               this.remote_host =3D remote_host;
+               this.user_id =3D user_id;
+               this.systemtap_script =3D systemtap_script;
                this.systemtap_args =3D systemtap_args;
-               this.display=3Ddisplay;
+               this.display =3D display;
                if (sessionConsole =3D=3D null) {
                        IConsoleManager conMan =3D ConsolePlugin.getDefault=
().getConsoleManager();
                        IConsole[] existing =3D conMan.getConsoles(); @@ -6=
2,13 +62,12 @@ public class SystemtapModel extends BaseModel {
        }

        @Override
-
-       public void preProcess(IProgressMonitor monitor)
-                       throws InvocationTargetException, InterruptedExcept=
ion {
-       }
+       public void preProcess(IProgressMonitor monitor)
+                       throws InvocationTargetException, InterruptedExcept=
ion {}

-       public void process(IProgressMonitor monitor)
-       throws InvocationTargetException, InterruptedException {
+       @Override
+       public void process(IProgressMonitor monitor)
+                       throws InvocationTargetException, InterruptedExcept=
ion {
                try {
                        ShellSession shell =3D new ShellSession(ShellSessio=
n.SHELL_TYPE_BASH,
                                                                           =
                     new File(this.metadata_location), @@ -85,9 +84,8 @@ pu=
blic class SystemtapModel extends BaseModel {
                }
        }

-
-       public void postProcess(IProgressMonitor monitor)
-                       throws InvocationTargetException, InterruptedExcept=
ion {
-       }
+       @Override
+       public void postProcess(IProgressMonitor monitor)
+                       throws InvocationTargetException, InterruptedExcept=
ion {}

 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/Ust2Model.java
index 171f17b..40a86d5 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/Ust2Model.java
@@ -20,26 +20,25 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.SubProgressMonitor;
-import org.eclipse.core.runtime.IPath;
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.ui.IWorkbench=
Window;
-
 import org.yocto.sdk.remotetools.RSEHelper;
 import org.yocto.sdk.remotetools.remote.RemoteApplication;

 public class Ust2Model extends BaseModel {

-       static final private String REMOTE_EXEC=3D"/tmp/ust_tar.sh";
-       static final private String LOCAL_SCRIPT=3D"resources/ust_tar.sh";
+       private static final String REMOTE_EXEC =3D "/tmp/ust_tar.sh";
+       private static final String LOCAL_SCRIPT =3D "resources/ust_tar.sh"=
;

-       static final private String LOCAL_FILE_SUFFIX=3D".local.tar";
-       static final private String REMOTE_FILE_SUFFIX=3D".tar";
-       static final private String LOCAL_EXEC=3D"lttv-gui";
-       public static final String TRACE_FOLDER_NAME =3D "Traces";
-       static final private String DATAFILE_PREFIX =3D "ustfile:";
+       private static final String LOCAL_FILE_SUFFIX =3D ".local.tar";
+       private static final String REMOTE_FILE_SUFFIX =3D ".tar";
+       private static final String LOCAL_EXEC =3D "lttv-gui";
+       private static final String TRACE_FOLDER_NAME =3D "Traces";
+       private static final String DATAFILE_PREFIX =3D "ustfile:";

        private static final String TASK_NAME =3D "ust2trace command";

@@ -52,31 +51,11 @@ public class Ust2Model extends BaseModel {
        private IWorkbenchWindow window;

        public Ust2Model(IHost host, String trace, String project, IWorkben=
chWindow window) {
-               super(host, TASK_NAME);
-               trace_loc=3Dtrace;
+               super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
+               trace_loc =3D trace;

                prj_name =3D project;
-               this.window=3Dwindow;
-       }
-
-       @Override
-       public void preProcess(IProgressMonitor monitor)
-                       throws InvocationTargetException, InterruptedExcept=
ion {
-               ///upload script to remote
-               try {
-                       RSEHelper.putRemoteFileInPlugin(
-                                       host,
-                                       LOCAL_SCRIPT,
-                                       REMOTE_EXEC,
-                                       monitor);
-               }catch (InterruptedException e){
-                       throw e;
-               }catch (InvocationTargetException e) {
-                       throw e;
-               }catch (Exception e) {
-                       throw new InvocationTargetException(e,e.getMessage(=
));
-               }
-
+               this.window =3D window;
        }

        @Override
@@ -93,9 +72,9 @@ public class Ust2Model extends BaseModel {

        private String generateData(IProgressMonitor monitor) throws Except=
ion {
                int exit_code;
-               RemoteApplication app=3Dnew RemoteApplication(host,null,REM=
OTE_EXEC,null);
+               RemoteApplication app =3D new RemoteApplication(host, null,=
 remoteExec,
+null);

-               String remoteDataFile=3Dnull;
+               String remoteDataFile =3D null;

                try {
                        String temp;
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

