Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFC2E01408
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 10:44:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jun 2013 10:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,945,1363158000"; d="scan'208";a="360957362"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2013 10:44:37 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 26 Jun 2013 10:44:36 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.117]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.24]) with mapi id
	14.03.0123.003; Wed, 26 Jun 2013 10:44:36 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Adrian Dudau <adrian.dudau@enea.com>
Thread-Topic: [PATCH 1/1][eclipse-poky] systemtap: add button to browse to
	build folder
Thread-Index: AQHOa1eFWeFR5BOBEkCSnFHa/HbrlJlIUgMA
Date: Wed, 26 Jun 2013 17:44:36 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4F9C6@ORSMSX103.amr.corp.intel.com>
References: <1371472662-30136-1-git-send-email-adrian.dudau@enea.com>
In-Reply-To: <1371472662-30136-1-git-send-email-adrian.dudau@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1][eclipse-poky] systemtap: add button to browse to build folder
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
X-List-Received-Date: Wed, 26 Jun 2013 17:44:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Adrian,

Without changing ShellSession signature, the statement:

+               this.builddir =3D builddir;

Is meaningless, also, you should get an eclipse build error for this line.

Thanks,
Jessica

-----Original Message-----
From: Adrian Dudau [mailto:adrian.dudau@enea.com]
Sent: Monday, June 17, 2013 5:38 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Adrian Dudau
Subject: [PATCH 1/1][eclipse-poky] systemtap: add button to browse to build=
 folder

[Yocto #4223]
Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../src/org/yocto/remote/utils/ShellSession.java   |    4 ++-
 .../src/org/yocto/sdk/remotetools/Messages.java    |    1 +
 .../sdk/remotetools/actions/SystemtapHandler.java  |    3 ++-
 .../sdk/remotetools/actions/SystemtapModel.java    |    6 +++--
 .../actions/SystemtapSettingDialog.java            |   28 ++++++++++++++++=
++++
 .../org/yocto/sdk/remotetools/messages.properties  |    1 +
 6 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Shel=
lSession.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/S=
hellSession.java
index 4ac8001..10cdf94 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSessio=
n.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSes
+++ sion.java
@@ -46,6 +46,7 @@ public class ShellSession {
        private String shellPath =3D null;
        private final String initCmd;
        private final File root;
+       private final File builddir;

        private OutputStreamWriter out;

@@ -70,6 +71,7 @@ public class ShellSession {

        public ShellSession(int shellType, File root, String initCmd, Outpu=
tStream out) throws IOException {
                this.root =3D root;
+               this.builddir =3D builddir;
                this.initCmd  =3D initCmd;
                if (out =3D=3D null) {
                        this.out =3D new OutputStreamWriter(null); @@ -93,7=
 +95,7 @@ public class ShellSession {
                }

                if (initCmd !=3D null) {
-                       execute("source " + initCmd);
+                       execute("source " + initCmd + " " + builddir.getAbs=
olutePath());
                }
        }

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/Messages.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remot=
etools/Messages.java
index 66ba62b..cbf2b05 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messa=
ges.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Me
+++ ssages.java
@@ -40,6 +40,7 @@ public class Messages extends NLS {
        public static String TerminalViewer_text;
        //public static String Systemtap_KO_Text;
        public static String Metadata_Location;
+       public static String Builddir_Location;
        public static String User_ID;
        public static String Remote_Host;
        public static String Systemtap_Script; diff --git a/plugins/org.yoc=
to.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.j=
ava b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapHandler.java
index 9d27e5a..9f45d05 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapHandler.java
@@ -34,6 +34,7 @@ public class SystemtapHandler extends AbstractHandler {
                                );

                String metadata_location =3D ((SystemtapSettingDialog)setti=
ng).getMetadataLocation();
+               String builddir_location =3D
+((SystemtapSettingDialog)setting).getBuilddirLocation();
                String remote_host =3D ((SystemtapSettingDialog)setting).ge=
tRemoteHost();
                String user_id =3D ((SystemtapSettingDialog)setting).getUse=
rID();
                String systemtap_script =3D ((SystemtapSettingDialog)settin=
g).getSystemtapScript();
@@ -41,7 +42,7 @@ public class SystemtapHandler extends AbstractHandler {

                if(setting.open() =3D=3D BaseSettingDialog.OK) {
                        IProgressService progressService =3D PlatformUI.get=
Workbench().getProgressService();
-                       SystemtapModel op =3D new SystemtapModel(metadata_l=
ocation,remote_host, user_id, systemtap_script,
+                       SystemtapModel op =3D new SystemtapModel(metadata_l=
ocation,
+builddir_location, remote_host, user_id, systemtap_script,
                                        systemtap_args,window.getShell().ge=
tDisplay());
                        try {
                                progressService.busyCursorWhile(op);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/y=
octo/sdk/remotetools/actions/SystemtapModel.java
index f443e00..bb2fa2d 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapModel.java
@@ -29,6 +29,7 @@ public class SystemtapModel extends BaseModel {

        protected MessageConsole sessionConsole;
        private String metadata_location;
+       private String builddir_location;
        private String remote_host;
        private String user_id;
        private String systemtap_script;
@@ -36,9 +37,10 @@ public class SystemtapModel extends BaseModel {

        Display display;

-       public SystemtapModel(String metadata_location, String remote_host,=
 String user_id, String systemtap_script, String systemtap_args, Display di=
splay) {
+       public SystemtapModel(String metadata_location, String
+builddir_location, String remote_host, String user_id, String
+systemtap_script, String systemtap_args, Display display) {
                super(null, TASK_NAME, "", "");
                this.metadata_location =3D metadata_location;
+               this.builddir_location =3D builddir_location;
                this.remote_host =3D remote_host;
                this.user_id =3D user_id;
                this.systemtap_script =3D systemtap_script; @@ -70,7 +72,7 =
@@ public class SystemtapModel extends BaseModel {
                        throws InvocationTargetException, InterruptedExcept=
ion {
                try {
                        ShellSession shell =3D new ShellSession(ShellSessio=
n.SHELL_TYPE_BASH,
-                                                                          =
                     new File(this.metadata_location),
+                                                                          =
                     new File(this.metadata_location), new
+File(this.builddir_location),
                                                                           =
                     DEFAULT_INIT_SCRIPT, sessionConsole.newOutputStream())=
;
                        boolean acceptedKey =3D shell.ensureKnownHostKey(us=
er_id, remote_host);
                        if (acceptedKey) {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/s=
rc/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index c447569..760715c 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapSettingDialog.java
@@ -37,18 +37,21 @@ public class SystemtapSettingDialog extends Dialog {
        static protected String TITLE=3D"Systemtap Crosstap";
        protected String title;
        protected String metadata_location;
+       protected String builddir_location;
        protected String systemtap_script;
        protected String user_id;
        protected String remote_host;
        protected String systemtap_args;
        protected boolean okPressed;
        protected Button metadataLocationBtn;
+       protected Button builddirLocationBtn;
        protected Button systemtapScriptBtn;
        protected Text userIDText;
        protected Text remoteHostText;
        protected Text systemtapArgsText;
        protected Text systemtapScriptText;
        protected Text metadataLocationText;
+       protected Text builddirLocationText;

        protected SystemtapSettingDialog(Shell parentShell, String title) {
                super(parentShell);
@@ -75,6 +78,10 @@ public class SystemtapSettingDialog extends Dialog {
                return metadata_location;
        }

+       public String getBuilddirLocation() {
+               return builddir_location;
+       }
+
        public String getRemoteHost() {
                return remote_host;
        }
@@ -119,6 +126,14 @@ public class SystemtapSettingDialog extends Dialog {
                metadataLocationBtn =3D addDirSelectButton(textContainer, m=
etadataLocationText);

                label =3D new Label(projComp, SWT.NONE);
+               label.setText(Messages.Builddir_Location);
+               textContainer =3D new Composite(projComp, SWT.NONE);
+               textContainer.setLayout(new GridLayout(2, false));
+               textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));
+               builddirLocationText =3D (Text)addTextControl(textContainer=
, builddir_location);
+               builddirLocationBtn =3D addDirSelectButton(textContainer,
+builddirLocationText);
+
+               label =3D new Label(projComp, SWT.NONE);
                label.setText(Messages.User_ID);
                userIDText =3D new Text(projComp, SWT.SINGLE | SWT.BORDER);

@@ -219,6 +234,19 @@ public class SystemtapSettingDialog extends Dialog {
                        CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "The specified metadata location is not a directory!");
                        return;
                }
+               builddir_location =3D builddirLocationText.getText();
+               if ( (builddir_location =3D=3D null) || builddir_location.i=
sEmpty()) {
+                       CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "Please specify your builddir location!");
+                       return;
+               }
+               File builddir_dir =3D new File(builddir_location);
+               if (!builddir_dir.exists()) {
+                       CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "The specified builddir location does not exist!");
+               }
+               if (!metadata_dir.isDirectory()) {
+                       CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "The specified builddir location is not a directory!");
+                       return;
+               }
                user_id =3D userIDText.getText();
                if ( (user_id =3D=3D null) || user_id.isEmpty()) {
                        CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "Please specify remote user id!"); diff --git a/plugins/org.yocto.sdk.re=
motetools/src/org/yocto/sdk/remotetools/messages.properties b/plugins/org.y=
octo.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
index 7bbf987..2d6d8af 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messa=
ges.properties
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/me
+++ ssages.properties
@@ -35,6 +35,7 @@ Powertop_ShowPid_Text=3Dshow pids in wakeups list  Termin=
alViewer_text=3DThis view is dedicated to Yocto Remote tools. Please use th=
e "Yocto Remote Tools" menu to open the view.
 //Systemtap_KO_Text=3DKernel Module:
 Metadata_Location=3DMetadata Location:
+Builddir_Location=3DBuild dir Location:
 User_ID=3DUser ID:
 Remote_Host=3DRemote Host:
 Systemtap_Script=3DSystemtap Script:
--
1.7.9.5


