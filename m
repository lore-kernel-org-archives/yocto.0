Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F2E4E00310
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 12:10:22 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 May 2013 12:10:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,590,1363158000"; d="scan'208";a="296105901"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2013 12:10:21 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
	FMSMSX105.amr.corp.intel.com (10.19.9.36) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 1 May 2013 12:10:20 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX113.amr.corp.intel.com ([169.254.4.18]) with mapi id
	14.01.0355.002; Wed, 1 May 2013 12:10:20 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 2/8] Refactor Model(s) to display customized
	messages
Thread-Index: AQHORbMJfkrw/VjxjkOVZbSmfvEdzJjws2GQ
Date: Wed, 1 May 2013 19:10:20 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C7077BAC4@fmsmsx152.amr.corp.intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
	<1367332592-2585-3-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1367332592-2585-3-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
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
X-List-Received-Date: Wed, 01 May 2013 19:10:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Why we're changing "public BaseModel(...)" to "BaseModel(...)"?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, April 30, 2013 7:36 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 2/8] Refactor Model(s) to display customized messag=
es

- each of the remote tools models (systemtap, oprofile, powertop, ust2, ust=
legacy) inherits BaseModel class
- when running any of these models there are a series of actions performed =
such as:
        - init
        - pre-process
        - process
        - post-process
        - clean
- while the action is running a progress monitor is display showing no mess=
age and no progress update
        - in order to set an appropriate message for the monitor, define a =
taskName at the parent level
                that will be customized by each of the models
        - each time the action performed changes the monitor's subtask mess=
age should be updated accordingly

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   70 ++++++++++++----=
----
 .../sdk/remotetools/actions/OprofileModel.java     |   15 +++--
 .../sdk/remotetools/actions/PowertopModel.java     |   13 ++--
 .../sdk/remotetools/actions/SystemtapModel.java    |    7 +-
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   10 +--
 5 files changed, 70 insertions(+), 45 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/BaseModel.java
index 4f6a5c8..e1abd63 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/BaseModel.java
@@ -18,49 +18,63 @@ import org.eclipse.jface.operation.IRunnableWithProgres=
s;
 import org.eclipse.rse.core.model.IHost;

 abstract public class BaseModel implements IRunnableWithProgress {
-
-       protected IHost rseConnection;
+       protected IHost host;
+       protected String taskName;
+
+       private static final int WORKLOAD =3D 100;
+
+       private static final int INIT_PERCENT =3D 5;
+       private static final int PRE_PROCESS_PERCENT =3D 30;
+       private static final int PROCESS_PERCENT =3D 30;
+       private static final int POST_PROCESS_PERCENT =3D 30;
+       private static final int CLEAN_PERCENT =3D 5;
+
+       private static final String RUN_MSG =3D "Running task: ";
+       private static final String INIT_MSG =3D "Initializing ";
+       private static final String PRE_PROCESS_MSG =3D "Preparing ";
+       private static final String PROCESS_MSG =3D "Processing ";
+       private static final String POST_PROCESS_MSG =3D "Finishing ";
+       private static final String CLEAN_MSG =3D "Cleaning ";
+       private static final String DOTS =3D "...";

        abstract public void preProcess(IProgressMonitor monitor) throws In=
vocationTargetException,     InterruptedException;
        abstract public void postProcess(IProgressMonitor monitor) throws I=
nvocationTargetException,InterruptedException;
        abstract public void process(IProgressMonitor monitor) throws Invoc=
ationTargetException,InterruptedException;

-       public BaseModel(IHost rseConnection) {
-               this.rseConnection=3DrseConnection;
+       BaseModel(IHost host, String taskName) {
+               this.host =3D host;
+               this.taskName =3D taskName;
        }
-
        protected void init(IProgressMonitor monitor) throws InvocationTarg=
etException, InterruptedException {
-               /*
-               if(rseConnection=3D=3Dnull) {
-                       throw new InvocationTargetException(new Exception("=
NULL rse connection"),"NULL rse connection");
-               }*/
        }

-       protected void uninit(IProgressMonitor monitor) throws InvocationTa=
rgetException, InterruptedException {
-
+       protected void clean(IProgressMonitor monitor) throws
+InvocationTargetException, InterruptedException {
        }
-
+
        public void run(IProgressMonitor monitor) throws InvocationTargetEx=
ception,
     InterruptedException {

                try {
-                       monitor.beginTask("", 100);
-                       init(new SubProgressMonitor(monitor,5));
-                       if(monitor.isCanceled())
-                               throw new InterruptedException("User cannce=
lled");
-                       preProcess(new SubProgressMonitor(monitor,30));
-                       if(monitor.isCanceled())
-                               throw new InterruptedException("User cannce=
lled");
-                       process(new SubProgressMonitor(monitor,30));
-                       if(monitor.isCanceled())
-                               throw new InterruptedException("User cannce=
lled");
-                       postProcess(new SubProgressMonitor(monitor,30));
-               }catch (InterruptedException e){
-                       throw e;
-               }catch (InvocationTargetException e) {
+                       monitor.beginTask(RUN_MSG + taskName, WORKLOAD);
+
+                       monitor.subTask(INIT_MSG + taskName + DOTS);
+                       init(new SubProgressMonitor(monitor, INIT_PERCENT))=
;
+
+                       monitor.subTask(PRE_PROCESS_MSG + taskName + DOTS);
+                       preProcess(new SubProgressMonitor(monitor, PRE_PROC=
ESS_PERCENT));
+
+                       monitor.subTask(PROCESS_MSG + taskName + DOTS);
+                       process(new SubProgressMonitor(monitor, PROCESS_PER=
CENT));
+
+                       monitor.subTask(POST_PROCESS_MSG + taskName + DOTS)=
;
+                       postProcess(new SubProgressMonitor(monitor, POST_PR=
OCESS_PERCENT));
+               } catch (InterruptedException e){
+                       throw new InterruptedException("User cancelled!");
+               } catch (InvocationTargetException e) {
                        throw e;
-               }finally {
-                       uninit(new SubProgressMonitor(monitor,5));
+               } finally {
+                       monitor.subTask(CLEAN_MSG + taskName + DOTS);
+                       clean(new SubProgressMonitor(monitor, CLEAN_PERCENT=
));
                        monitor.done();
                }
        }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/OprofileModel.java
index 17b54b3..71ff4d9 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/OprofileModel.java
@@ -36,18 +36,21 @@ public class OprofileModel extends BaseModel {
        static final private String LOCAL_SCRIPT=3D"resources/yocto_tool.sh=
";
        static final private String LOCAL_EXEC=3D"oprofile-viewer";

+       private static final String TASK_NAME =3D "oprofile command";
+
        private IWorkbenchWindow window;
        public OprofileModel(IHost host, IWorkbenchWindow window) {
-               super(host);
+               super(host, TASK_NAME);
                this.window=3Dwindow;
        }
+
        @Override
        public void preProcess(IProgressMonitor monitor)
                        throws InvocationTargetException, InterruptedExcept=
ion {
                //upload script to remote
                try {
                        RSEHelper.putRemoteFileInPlugin(
-                                       rseConnection,
+                                       host,
                                        LOCAL_SCRIPT,
                                        REMOTE_EXEC,
                                        monitor);
@@ -68,7 +71,7 @@ public class OprofileModel extends BaseModel {

        private void startServer(IProgressMonitor monitor) throws Exception=
 {
                int exit_code;
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);
+               RemoteApplication app=3Dnew
+RemoteApplication(host,null,REMOTE_EXEC,null);
                String args=3D"start -d oprofile-server";

                try {
@@ -89,7 +92,7 @@ public class OprofileModel extends BaseModel {

        private void stopServer(IProgressMonitor monitor) throws Exception =
{

-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);
+               RemoteApplication app=3Dnew
+RemoteApplication(host,null,REMOTE_EXEC,null);
                String args=3D"stop -d oprofile-server";
                try {
                        monitor.beginTask("Stopping oprofile-server", 2); @=
@ -177,8 +180,8 @@ public class OprofileModel extends BaseModel {

                        new LocalJob("oprofile-viewer",
                                        (searchPath!=3Dnull) ?
-                                               new String[] {LOCAL_EXEC,"-=
h",rseConnection.getHostName(),"-s",searchPath} :
-                                               new String[] {LOCAL_EXEC,"-=
h",rseConnection.getHostName()},
+                                               new String[] {LOCAL_EXEC,"-=
h",host.getHostName(),"-s",searchPath} :
+                                               new String[] {LOCAL_EXEC,"-=
h",host.getHostName()},
                                        null,
                                        null,
                                        window).schedule();
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/PowertopModel.java
index cdf4afd..c5f11d3 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/PowertopModel.java
@@ -33,15 +33,18 @@ public class PowertopModel extends BaseModel {
        final private String LOCAL_SCRIPT=3D"resources/yocto_tool.sh";
        final private String REMOTE_FILE_PREFIX=3D"/tmp/yocto-powertop-";
        final private String LOCAL_FILE_SUFFIX=3D".local";
+
+       private static final String TASK_NAME =3D "powertop command";
+
        private Float time;
        private boolean showpid;
        Display display;
-
+
        String localfile;
        String remotefile;

        public PowertopModel(IHost host, Float time,boolean showpid,Display=
 display) {
-               super(host);
+               super(host, TASK_NAME);
                this.time=3Dtime;
                this.showpid=3Dshowpid;
                this.display=3Ddisplay;
@@ -53,7 +56,7 @@ public class PowertopModel extends BaseModel {
                //upload script to remote
                try {
                        RSEHelper.putRemoteFileInPlugin(
-                                       rseConnection,
+                                       host,
                                        LOCAL_SCRIPT,
                                        REMOTE_EXEC,
                                        monitor);
@@ -79,7 +82,7 @@ public class PowertopModel extends BaseModel {

        private void generateData(IProgressMonitor monitor) throws Exceptio=
n {
                int exit_code;
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);
+               RemoteApplication app=3Dnew
+RemoteApplication(host,null,REMOTE_EXEC,null);
                String currentDate=3Dnew SimpleDateFormat("yyyyMMddHHmmssSS=
S").format(Calendar.getInstance().getTime()).toString();
                remotefile=3Dnew String(REMOTE_FILE_PREFIX + currentDate);
                localfile=3Dnew String(remotefile + LOCAL_FILE_SUFFIX); @@ =
-117,7 +120,7 @@ public class PowertopModel extends BaseModel {
        private void getDataFile(IProgressMonitor monitor) throws Exception=
 {

                RSEHelper.getRemoteFile(
-                               rseConnection,
+                               host,
                                localfile,
                                remotefile,
                                monitor);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/y=
octo/sdk/remotetools/actions/SystemtapModel.java
index 0d22d97..41c79df 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapModel.java
@@ -24,17 +24,20 @@ import org.yocto.sdk.remotetools.ShellSession;
 public class SystemtapModel extends BaseModel {
        protected static final String DEFAULT_INIT_SCRIPT =3D "oe-init-buil=
d-env";
        protected static final String SYSTEMTAP_CONSOLE =3D "Systemtap Cons=
ole";
+
+       private static final String TASK_NAME =3D "systemtap command";
+
        protected MessageConsole sessionConsole;
        private String metadata_location;
        private String remote_host;
        private String user_id;
        private String systemtap_script;
        private String systemtap_args;
-
+
        Display display;

        public SystemtapModel(String metadata_location, String remote_host,=
 String user_id, String systemtap_script, String systemtap_args, Display di=
splay) {
-               super(null);
+               super(null, TASK_NAME);
                this.metadata_location=3Dmetadata_location;
                this.remote_host=3Dremote_host;
                this.user_id=3Duser_id;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/Ust2Model.java
index dbde287..171f17b 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/Ust2Model.java
@@ -40,6 +40,8 @@ public class Ust2Model extends BaseModel {
        static final private String LOCAL_EXEC=3D"lttv-gui";
        public static final String TRACE_FOLDER_NAME =3D "Traces";
        static final private String DATAFILE_PREFIX =3D "ustfile:";
+
+       private static final String TASK_NAME =3D "ust2trace command";

        private String trace_loc;

@@ -50,7 +52,7 @@ public class Ust2Model extends BaseModel {
        private IWorkbenchWindow window;

        public Ust2Model(IHost host, String trace, String project, IWorkben=
chWindow window) {
-               super(host);
+               super(host, TASK_NAME);
                trace_loc=3Dtrace;

                prj_name =3D project;
@@ -63,7 +65,7 @@ public class Ust2Model extends BaseModel {
                ///upload script to remote
                try {
                        RSEHelper.putRemoteFileInPlugin(
-                                       rseConnection,
+                                       host,
                                        LOCAL_SCRIPT,
                                        REMOTE_EXEC,
                                        monitor);
@@ -91,7 +93,7 @@ public class Ust2Model extends BaseModel {

        private String generateData(IProgressMonitor monitor) throws Except=
ion {
                int exit_code;
-               RemoteApplication app=3Dnew RemoteApplication(rseConnection=
,null,REMOTE_EXEC,null);
+               RemoteApplication app=3Dnew
+RemoteApplication(host,null,REMOTE_EXEC,null);

                String remoteDataFile=3Dnull;

@@ -131,7 +133,7 @@ public class Ust2Model extends BaseModel {
                localfile=3Dnew String(datafile.substring(0,datafile.length=
()-4) + LOCAL_FILE_SUFFIX);

                RSEHelper.getRemoteFile(
-                               rseConnection,
+                               host,
                                localfile,
                                datafile,
                                monitor);
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

