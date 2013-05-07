Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 241EEE0054B
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:55:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 May 2013 05:55:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="333161006"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 07 May 2013 05:55:31 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.198]) with mapi id
	14.01.0355.002; Tue, 7 May 2013 13:54:42 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 2/8] Refactor Model(s) to display customized
	messages
Thread-Index: AQHORbL/CZHOYe2fNEqwOkTc+75kE5jwouIAgAkVeZ8=
Date: Tue, 7 May 2013 12:54:42 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A46391560C4E0@IRSMSX102.ger.corp.intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
	<1367332592-2585-3-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C7077BAC4@fmsmsx152.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C7077BAC4@fmsmsx152.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Subject: Re: [PATCH 2/8] Refactor Model(s) to display customized messages
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
X-List-Received-Date: Tue, 07 May 2013 12:55:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I guess this was just a refactoring slip up. =0A=
I have sent a v2 of the patch.=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Wednesday, May 01, 2013 10:10 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH 2/8] Refactor Model(s) to display customized me=
ssages=0A=
=0A=
Hi Ioana,=0A=
=0A=
Why we're changing "public BaseModel(...)" to "BaseModel(...)"?=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Tuesday, April 30, 2013 7:36 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH 2/8] Refactor Model(s) to display customized messag=
es=0A=
=0A=
- each of the remote tools models (systemtap, oprofile, powertop, ust2, ust=
legacy) inherits BaseModel class=0A=
- when running any of these models there are a series of actions performed =
such as:=0A=
        - init=0A=
        - pre-process=0A=
        - process=0A=
        - post-process=0A=
        - clean=0A=
- while the action is running a progress monitor is display showing no mess=
age and no progress update=0A=
        - in order to set an appropriate message for the monitor, define a =
taskName at the parent level=0A=
                that will be customized by each of the models=0A=
        - each time the action performed changes the monitor's subtask mess=
age should be updated accordingly=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   70 ++++++++++++----=
----=0A=
 .../sdk/remotetools/actions/OprofileModel.java     |   15 +++--=0A=
 .../sdk/remotetools/actions/PowertopModel.java     |   13 ++--=0A=
 .../sdk/remotetools/actions/SystemtapModel.java    |    7 +-=0A=
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   10 +--=0A=
 5 files changed, 70 insertions(+), 45 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/BaseModel.java=0A=
index 4f6a5c8..e1abd63 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseModel.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=0A=
+++ tions/BaseModel.java=0A=
@@ -18,49 +18,63 @@ import org.eclipse.jface.operation.IRunnableWithProgres=
s;=0A=
 import org.eclipse.rse.core.model.IHost;=0A=
=0A=
 abstract public class BaseModel implements IRunnableWithProgress {=0A=
-=0A=
-       protected IHost rseConnection;=0A=
+       protected IHost host;=0A=
+       protected String taskName;=0A=
+=0A=
+       private static final int WORKLOAD =3D 100;=0A=
+=0A=
+       private static final int INIT_PERCENT =3D 5;=0A=
+       private static final int PRE_PROCESS_PERCENT =3D 30;=0A=
+       private static final int PROCESS_PERCENT =3D 30;=0A=
+       private static final int POST_PROCESS_PERCENT =3D 30;=0A=
+       private static final int CLEAN_PERCENT =3D 5;=0A=
+=0A=
+       private static final String RUN_MSG =3D "Running task: ";=0A=
+       private static final String INIT_MSG =3D "Initializing ";=0A=
+       private static final String PRE_PROCESS_MSG =3D "Preparing ";=0A=
+       private static final String PROCESS_MSG =3D "Processing ";=0A=
+       private static final String POST_PROCESS_MSG =3D "Finishing ";=0A=
+       private static final String CLEAN_MSG =3D "Cleaning ";=0A=
+       private static final String DOTS =3D "...";=0A=
=0A=
        abstract public void preProcess(IProgressMonitor monitor) throws In=
vocationTargetException,     InterruptedException;=0A=
        abstract public void postProcess(IProgressMonitor monitor) throws I=
nvocationTargetException,InterruptedException;=0A=
        abstract public void process(IProgressMonitor monitor) throws Invoc=
ationTargetException,InterruptedException;=0A=
=0A=
-       public BaseModel(IHost rseConnection) {=0A=
-               this.rseConnection=3DrseConnection;=0A=
+       BaseModel(IHost host, String taskName) {=0A=
+               this.host =3D host;=0A=
+               this.taskName =3D taskName;=0A=
        }=0A=
-=0A=
        protected void init(IProgressMonitor monitor) throws InvocationTarg=
etException, InterruptedException {=0A=
-               /*=0A=
-               if(rseConnection=3D=3Dnull) {=0A=
-                       throw new InvocationTargetException(new Exception("=
NULL rse connection"),"NULL rse connection");=0A=
-               }*/=0A=
        }=0A=
=0A=
-       protected void uninit(IProgressMonitor monitor) throws InvocationTa=
rgetException, InterruptedException {=0A=
-=0A=
+       protected void clean(IProgressMonitor monitor) throws=0A=
+InvocationTargetException, InterruptedException {=0A=
        }=0A=
-=0A=
+=0A=
        public void run(IProgressMonitor monitor) throws InvocationTargetEx=
ception,=0A=
     InterruptedException {=0A=
=0A=
                try {=0A=
-                       monitor.beginTask("", 100);=0A=
-                       init(new SubProgressMonitor(monitor,5));=0A=
-                       if(monitor.isCanceled())=0A=
-                               throw new InterruptedException("User cannce=
lled");=0A=
-                       preProcess(new SubProgressMonitor(monitor,30));=0A=
-                       if(monitor.isCanceled())=0A=
-                               throw new InterruptedException("User cannce=
lled");=0A=
-                       process(new SubProgressMonitor(monitor,30));=0A=
-                       if(monitor.isCanceled())=0A=
-                               throw new InterruptedException("User cannce=
lled");=0A=
-                       postProcess(new SubProgressMonitor(monitor,30));=0A=
-               }catch (InterruptedException e){=0A=
-                       throw e;=0A=
-               }catch (InvocationTargetException e) {=0A=
+                       monitor.beginTask(RUN_MSG + taskName, WORKLOAD);=0A=
+=0A=
+                       monitor.subTask(INIT_MSG + taskName + DOTS);=0A=
+                       init(new SubProgressMonitor(monitor, INIT_PERCENT))=
;=0A=
+=0A=
+                       monitor.subTask(PRE_PROCESS_MSG + taskName + DOTS);=
=0A=
+                       preProcess(new SubProgressMonitor(monitor, PRE_PROC=
ESS_PERCENT));=0A=
+=0A=
+                       monitor.subTask(PROCESS_MSG + taskName + DOTS);=0A=
+                       process(new SubProgressMonitor(monitor, PROCESS_PER=
CENT));=0A=
+=0A=
+                       monitor.subTask(POST_PROCESS_MSG + taskName + DOTS)=
;=0A=
+                       postProcess(new SubProgressMonitor(monitor, POST_PR=
OCESS_PERCENT));=0A=
+               } catch (InterruptedException e){=0A=
+                       throw new InterruptedException("User cancelled!");=
=0A=
+               } catch (InvocationTargetException e) {=0A=
                        throw e;=0A=
-               }finally {=0A=
-                       uninit(new SubProgressMonitor(monitor,5));=0A=
+               } finally {=0A=
+                       monitor.subTask(CLEAN_MSG + taskName + DOTS);=0A=
+                       clean(new SubProgressMonitor(monitor, CLEAN_PERCENT=
));=0A=
                        monitor.done();=0A=
                }=0A=
        }=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/OprofileModel.java=0A=
index 17b54b3..71ff4d9 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/OprofileModel.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=0A=
+++ tions/OprofileModel.java=0A=
@@ -36,18 +36,21 @@ public class OprofileModel extends BaseModel {=0A=
        static final private String LOCAL_SCRIPT=3D"resources/yocto_tool.sh=
";=0A=
        static final private String LOCAL_EXEC=3D"oprofile-viewer";=0A=
=0A=
+       private static final String TASK_NAME =3D "oprofile command";=0A=
+=0A=
        private IWorkbenchWindow window;=0A=
        public OprofileModel(IHost host, IWorkbenchWindow window) {=0A=
-               super(host);=0A=
+               super(host, TASK_NAME);=0A=
                this.window=3Dwindow;=0A=
        }=0A=
+=0A=
        @Override=0A=
        public void preProcess(IProgressMonitor monitor)=0A=
                        throws InvocationTargetException, InterruptedExcept=
ion {=0A=
                //upload script to remote=0A=
                try {=0A=
                        RSEHelper.putRemoteFileInPlugin(=0A=
-                                       rseConnection,=0A=
+                                       host,=0A=
                                        LOCAL_SCRIPT,=0A=
                                        REMOTE_EXEC,=0A=
                                        monitor);=0A=
@@ -68,7 +71,7 @@ public class OprofileModel extends BaseModel {=0A=
=0A=
        private void startServer(IProgressMonitor monitor) throws Exception=
 {=0A=
                int exit_code;=0A=
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);=0A=
+               RemoteApplication app=3Dnew=0A=
+RemoteApplication(host,null,REMOTE_EXEC,null);=0A=
                String args=3D"start -d oprofile-server";=0A=
=0A=
                try {=0A=
@@ -89,7 +92,7 @@ public class OprofileModel extends BaseModel {=0A=
=0A=
        private void stopServer(IProgressMonitor monitor) throws Exception =
{=0A=
=0A=
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);=0A=
+               RemoteApplication app=3Dnew=0A=
+RemoteApplication(host,null,REMOTE_EXEC,null);=0A=
                String args=3D"stop -d oprofile-server";=0A=
                try {=0A=
                        monitor.beginTask("Stopping oprofile-server", 2); @=
@ -177,8 +180,8 @@ public class OprofileModel extends BaseModel {=0A=
=0A=
                        new LocalJob("oprofile-viewer",=0A=
                                        (searchPath!=3Dnull) ?=0A=
-                                               new String[] {LOCAL_EXEC,"-=
h",rseConnection.getHostName(),"-s",searchPath} :=0A=
-                                               new String[] {LOCAL_EXEC,"-=
h",rseConnection.getHostName()},=0A=
+                                               new String[] {LOCAL_EXEC,"-=
h",host.getHostName(),"-s",searchPath} :=0A=
+                                               new String[] {LOCAL_EXEC,"-=
h",host.getHostName()},=0A=
                                        null,=0A=
                                        null,=0A=
                                        window).schedule();=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/PowertopModel.java=0A=
index cdf4afd..c5f11d3 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/PowertopModel.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=0A=
+++ tions/PowertopModel.java=0A=
@@ -33,15 +33,18 @@ public class PowertopModel extends BaseModel {=0A=
        final private String LOCAL_SCRIPT=3D"resources/yocto_tool.sh";=0A=
        final private String REMOTE_FILE_PREFIX=3D"/tmp/yocto-powertop-";=
=0A=
        final private String LOCAL_FILE_SUFFIX=3D".local";=0A=
+=0A=
+       private static final String TASK_NAME =3D "powertop command";=0A=
+=0A=
        private Float time;=0A=
        private boolean showpid;=0A=
        Display display;=0A=
-=0A=
+=0A=
        String localfile;=0A=
        String remotefile;=0A=
=0A=
        public PowertopModel(IHost host, Float time,boolean showpid,Display=
 display) {=0A=
-               super(host);=0A=
+               super(host, TASK_NAME);=0A=
                this.time=3Dtime;=0A=
                this.showpid=3Dshowpid;=0A=
                this.display=3Ddisplay;=0A=
@@ -53,7 +56,7 @@ public class PowertopModel extends BaseModel {=0A=
                //upload script to remote=0A=
                try {=0A=
                        RSEHelper.putRemoteFileInPlugin(=0A=
-                                       rseConnection,=0A=
+                                       host,=0A=
                                        LOCAL_SCRIPT,=0A=
                                        REMOTE_EXEC,=0A=
                                        monitor);=0A=
@@ -79,7 +82,7 @@ public class PowertopModel extends BaseModel {=0A=
=0A=
        private void generateData(IProgressMonitor monitor) throws Exceptio=
n {=0A=
                int exit_code;=0A=
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);=0A=
+               RemoteApplication app=3Dnew=0A=
+RemoteApplication(host,null,REMOTE_EXEC,null);=0A=
                String currentDate=3Dnew SimpleDateFormat("yyyyMMddHHmmssSS=
S").format(Calendar.getInstance().getTime()).toString();=0A=
                remotefile=3Dnew String(REMOTE_FILE_PREFIX + currentDate);=
=0A=
                localfile=3Dnew String(remotefile + LOCAL_FILE_SUFFIX); @@ =
-117,7 +120,7 @@ public class PowertopModel extends BaseModel {=0A=
        private void getDataFile(IProgressMonitor monitor) throws Exception=
 {=0A=
=0A=
                RSEHelper.getRemoteFile(=0A=
-                               rseConnection,=0A=
+                               host,=0A=
                                localfile,=0A=
                                remotefile,=0A=
                                monitor);=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/y=
octo/sdk/remotetools/actions/SystemtapModel.java=0A=
index 0d22d97..41c79df 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapModel.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=0A=
+++ tions/SystemtapModel.java=0A=
@@ -24,17 +24,20 @@ import org.yocto.sdk.remotetools.ShellSession;=0A=
 public class SystemtapModel extends BaseModel {=0A=
        protected static final String DEFAULT_INIT_SCRIPT =3D "oe-init-buil=
d-env";=0A=
        protected static final String SYSTEMTAP_CONSOLE =3D "Systemtap Cons=
ole";=0A=
+=0A=
+       private static final String TASK_NAME =3D "systemtap command";=0A=
+=0A=
        protected MessageConsole sessionConsole;=0A=
        private String metadata_location;=0A=
        private String remote_host;=0A=
        private String user_id;=0A=
        private String systemtap_script;=0A=
        private String systemtap_args;=0A=
-=0A=
+=0A=
        Display display;=0A=
=0A=
        public SystemtapModel(String metadata_location, String remote_host,=
 String user_id, String systemtap_script, String systemtap_args, Display di=
splay) {=0A=
-               super(null);=0A=
+               super(null, TASK_NAME);=0A=
                this.metadata_location=3Dmetadata_location;=0A=
                this.remote_host=3Dremote_host;=0A=
                this.user_id=3Duser_id;=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/Ust2Model.java=0A=
index dbde287..171f17b 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/Ust2Model.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=0A=
+++ tions/Ust2Model.java=0A=
@@ -40,6 +40,8 @@ public class Ust2Model extends BaseModel {=0A=
        static final private String LOCAL_EXEC=3D"lttv-gui";=0A=
        public static final String TRACE_FOLDER_NAME =3D "Traces";=0A=
        static final private String DATAFILE_PREFIX =3D "ustfile:";=0A=
+=0A=
+       private static final String TASK_NAME =3D "ust2trace command";=0A=
=0A=
        private String trace_loc;=0A=
=0A=
@@ -50,7 +52,7 @@ public class Ust2Model extends BaseModel {=0A=
        private IWorkbenchWindow window;=0A=
=0A=
        public Ust2Model(IHost host, String trace, String project, IWorkben=
chWindow window) {=0A=
-               super(host);=0A=
+               super(host, TASK_NAME);=0A=
                trace_loc=3Dtrace;=0A=
=0A=
                prj_name =3D project;=0A=
@@ -63,7 +65,7 @@ public class Ust2Model extends BaseModel {=0A=
                ///upload script to remote=0A=
                try {=0A=
                        RSEHelper.putRemoteFileInPlugin(=0A=
-                                       rseConnection,=0A=
+                                       host,=0A=
                                        LOCAL_SCRIPT,=0A=
                                        REMOTE_EXEC,=0A=
                                        monitor);=0A=
@@ -91,7 +93,7 @@ public class Ust2Model extends BaseModel {=0A=
=0A=
        private String generateData(IProgressMonitor monitor) throws Except=
ion {=0A=
                int exit_code;=0A=
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);=0A=
+               RemoteApplication app=3Dnew=0A=
+RemoteApplication(host,null,REMOTE_EXEC,null);=0A=
=0A=
                String remoteDataFile=3Dnull;=0A=
=0A=
@@ -131,7 +133,7 @@ public class Ust2Model extends BaseModel {=0A=
                localfile=3Dnew String(datafile.substring(0,datafile.length=
()-4) + LOCAL_FILE_SUFFIX);=0A=
=0A=
                RSEHelper.getRemoteFile(=0A=
-                               rseConnection,=0A=
+                               host,=0A=
                                localfile,=0A=
                                datafile,=0A=
                                monitor);=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

