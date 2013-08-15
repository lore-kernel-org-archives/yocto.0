Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B725AE0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 16:34:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Aug 2013 16:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,889,1367996400"; 
	d="p7s'?scan'208";a="387028113"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 15 Aug 2013 16:34:14 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 15 Aug 2013 16:34:13 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.129]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.169]) with mapi id
	14.03.0123.003; Thu, 15 Aug 2013 16:34:13 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Adrian Dudau <adrian.dudau@enea.com>
Thread-Topic: [PATCHv2 1/1][eclipse-poky] systemtap: add button to browse to
	build folder
Thread-Index: AQHOg8DR8qUNuZgrnU2Riv9b8/v/p5mXF9CQ
Date: Thu, 15 Aug 2013 23:34:13 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C78FDF@ORSMSX103.amr.corp.intel.com>
References: <1374156704-14050-1-git-send-email-adrian.dudau@enea.com>
In-Reply-To: <1374156704-14050-1-git-send-email-adrian.dudau@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCHv2 1/1][eclipse-poky] systemtap: add button to browse to build folder
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
X-List-Received-Date: Thu, 15 Aug 2013 23:34:25 -0000
X-Groupsio-MsgNum: 15488
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0031_01CE99D5.46621580"

------=_NextPart_000_0031_01CE99D5.46621580
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Adrian,

Sorry for the delay, the patch is merged to eclipse-poky-juno master.  Also,
we're splitting eclipse-poky-juno and eclipse-poky-kepler, can you port the
change to eclipse-poky-kepler?

Thanks,
Jessica

-----Original Message-----
From: Adrian Dudau [mailto:adrian.dudau@enea.com] 
Sent: Thursday, July 18, 2013 7:12 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Adrian Dudau
Subject: [PATCHv2 1/1][eclipse-poky] systemtap: add button to browse to
build folder

[Yocto #4223]
Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../src/org/yocto/remote/utils/ShellSession.java   |    6 +++--
 .../src/org/yocto/sdk/remotetools/Messages.java    |    1 +
 .../sdk/remotetools/actions/SystemtapHandler.java  |    3 ++-
 .../sdk/remotetools/actions/SystemtapModel.java    |    6 +++--
 .../actions/SystemtapSettingDialog.java            |   28
++++++++++++++++++++
 .../org/yocto/sdk/remotetools/messages.properties  |    1 +
 6 files changed, 40 insertions(+), 5 deletions(-)

diff --git
a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.jav
a
b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.jav
a
index 4ac8001..0922824 100644
---
a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.jav
a
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSes
+++ sion.java
@@ -46,6 +46,7 @@ public class ShellSession {
 	private String shellPath = null;
 	private final String initCmd;
 	private final File root;
+	private final File builddir;
 
 	private OutputStreamWriter out;
 
@@ -68,8 +69,9 @@ public class ShellSession {
 		return sb.toString();
 	}
 
-	public ShellSession(int shellType, File root, String initCmd,
OutputStream out) throws IOException {
+	public ShellSession(int shellType, File root, File builddir, String 
+initCmd, OutputStream out) throws IOException {
 		this.root = root;
+		this.builddir = builddir;
 		this.initCmd  = initCmd;
 		if (out == null) {
 			this.out = new OutputStreamWriter(null); @@ -93,7
+95,7 @@ public class ShellSession {
 		}
 
 		if (initCmd != null) {
-			execute("source " + initCmd);
+			execute("source " + initCmd + " " +
builddir.getAbsolutePath());
 		}
 	}
 
diff --git
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.j
ava
b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.j
ava
index 66ba62b..cbf2b05 100644
---
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.j
ava
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Me
+++ ssages.java
@@ -40,6 +40,7 @@ public class Messages extends NLS {
 	public static String TerminalViewer_text;
 	//public static String Systemtap_KO_Text;
 	public static String Metadata_Location;
+	public static String Builddir_Location;
 	public static String User_ID;
 	public static String Remote_Host;
 	public static String Systemtap_Script; diff --git
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapHandler.java
b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapHandler.java
index 184582a..f5d34d8 100644
---
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapHandler.java
@@ -37,12 +37,13 @@ public class SystemtapHandler extends AbstractHandler {
 		if(setting.open() == BaseSettingDialog.OK) {
 
 			String metadata_location =
((SystemtapSettingDialog)setting).getMetadataLocation();
+			String builddir_location = 
+((SystemtapSettingDialog)setting).getBuilddirLocation();
 			String remote_host =
((SystemtapSettingDialog)setting).getRemoteHost();
 			String user_id =
((SystemtapSettingDialog)setting).getUserID();
 			String systemtap_script =
((SystemtapSettingDialog)setting).getSystemtapScript();
 			String systemtap_args =
((SystemtapSettingDialog)setting).getSystemtapArgs();
 			IProgressService progressService =
PlatformUI.getWorkbench().getProgressService();
-			SystemtapModel op = new
SystemtapModel(metadata_location,remote_host, user_id, systemtap_script,
+			SystemtapModel op = new
SystemtapModel(metadata_location, 
+builddir_location, remote_host, user_id, systemtap_script,
 
systemtap_args,window.getShell().getDisplay());
 			try {
 				progressService.busyCursorWhile(op);
diff --git
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapModel.java
b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapModel.java
index f443e00..bb2fa2d 100644
---
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapModel.java
@@ -29,6 +29,7 @@ public class SystemtapModel extends BaseModel {
 
 	protected MessageConsole sessionConsole;
 	private String metadata_location;
+	private String builddir_location;
 	private String remote_host;
 	private String user_id;
 	private String systemtap_script;
@@ -36,9 +37,10 @@ public class SystemtapModel extends BaseModel {
 
 	Display display;
 	
-	public SystemtapModel(String metadata_location, String remote_host,
String user_id, String systemtap_script, String systemtap_args, Display
display) {
+	public SystemtapModel(String metadata_location, String 
+builddir_location, String remote_host, String user_id, String 
+systemtap_script, String systemtap_args, Display display) {
 		super(null, TASK_NAME, "", "");
 		this.metadata_location = metadata_location;
+		this.builddir_location = builddir_location;
 		this.remote_host = remote_host;
 		this.user_id = user_id;
 		this.systemtap_script = systemtap_script; @@ -70,7 +72,7 @@
public class SystemtapModel extends BaseModel {
 			throws InvocationTargetException,
InterruptedException {
 		try {
 			ShellSession shell = new
ShellSession(ShellSession.SHELL_TYPE_BASH, 
-
new File(this.metadata_location),
+
new File(this.metadata_location), new 
+File(this.builddir_location),
 
DEFAULT_INIT_SCRIPT, sessionConsole.newOutputStream());
 			boolean acceptedKey =
shell.ensureKnownHostKey(user_id, remote_host);
 			if (acceptedKey) {
diff --git
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapSettingDialog.java
b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapSettingDialog.java
index c447569..760715c 100644
---
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Sy
stemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapSettingDialog.java
@@ -37,18 +37,21 @@ public class SystemtapSettingDialog extends Dialog {
 	static protected String TITLE="Systemtap Crosstap";
 	protected String title;
 	protected String metadata_location;
+	protected String builddir_location;
 	protected String systemtap_script;
 	protected String user_id;
 	protected String remote_host;
 	protected String systemtap_args;
 	protected boolean okPressed;
 	protected Button metadataLocationBtn;
+	protected Button builddirLocationBtn;
 	protected Button systemtapScriptBtn;
 	protected Text userIDText;
 	protected Text remoteHostText;
 	protected Text systemtapArgsText;
 	protected Text systemtapScriptText;
 	protected Text metadataLocationText;
+	protected Text builddirLocationText;
 	
 	protected SystemtapSettingDialog(Shell parentShell, String title) {
 		super(parentShell);
@@ -75,6 +78,10 @@ public class SystemtapSettingDialog extends Dialog {
 		return metadata_location;
 	}
 	
+	public String getBuilddirLocation() {
+		return builddir_location;
+	}
+
 	public String getRemoteHost() {
 		return remote_host;
 	}
@@ -119,6 +126,14 @@ public class SystemtapSettingDialog extends Dialog {
 		metadataLocationBtn = addDirSelectButton(textContainer,
metadataLocationText);
 		
 		label = new Label(projComp, SWT.NONE);
+		label.setText(Messages.Builddir_Location);
+		textContainer = new Composite(projComp, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL,
SWT.CENTER, true, false));
+		builddirLocationText = (Text)addTextControl(textContainer,
builddir_location);
+		builddirLocationBtn = addDirSelectButton(textContainer, 
+builddirLocationText);
+
+		label = new Label(projComp, SWT.NONE);
 		label.setText(Messages.User_ID);
 		userIDText = new Text(projComp, SWT.SINGLE | SWT.BORDER);
 		
@@ -219,6 +234,19 @@ public class SystemtapSettingDialog extends Dialog {
 			CommonHelper.showErrorDialog("SystemTap Error",
null, "The specified metadata location is not a directory!");
 			return;
 		}
+		builddir_location = builddirLocationText.getText();
+		if ( (builddir_location == null) ||
builddir_location.isEmpty()) {
+			CommonHelper.showErrorDialog("SystemTap Error",
null, "Please specify your builddir location!");
+			return;
+		}
+		File builddir_dir = new File(builddir_location);
+		if (!builddir_dir.exists()) {
+			CommonHelper.showErrorDialog("SystemTap Error",
null, "The specified builddir location does not exist!");
+		}
+		if (!metadata_dir.isDirectory()) {
+			CommonHelper.showErrorDialog("SystemTap Error",
null, "The specified builddir location is not a directory!");
+			return;
+		}
 		user_id = userIDText.getText();
 		if ( (user_id == null) || user_id.isEmpty()) {
 			CommonHelper.showErrorDialog("SystemTap Error",
null, "Please specify remote user id!"); diff --git
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.p
roperties
b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.p
roperties
index 7bbf987..2d6d8af 100644
---
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.p
roperties
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/me
+++ ssages.properties
@@ -35,6 +35,7 @@ Powertop_ShowPid_Text=show pids in wakeups list
TerminalViewer_text=This view is dedicated to Yocto Remote tools. Please use
the "Yocto Remote Tools" menu to open the view.
 //Systemtap_KO_Text=Kernel Module:
 Metadata_Location=Metadata Location:
+Builddir_Location=Build dir Location:
 User_ID=User ID:
 Remote_Host=Remote Host:
 Systemtap_Script=Systemtap Script:
--
1.7.9.5


------=_NextPart_000_0031_01CE99D5.46621580
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIh7DCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIENjCCAx6gAwIBAgIBATANBgkq
hkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsT
HUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5h
bCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvtH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0D
GuOPz+VtUFrWlymUWoCwSXrbLpX9uMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6s
YapeFI+eh6FqUNzXmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+7
10LXa0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzNE0S3ySvd
QwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0WicCAwEAAaOB3DCB2TAd
BgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYDVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMB
Af8wgZkGA1UdIwSBkTCBjoAUrb2YejS0Jvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNF
MRQwEgYDVQQKEwtBZGRUcnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5l
dHdvcmsxIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcNAQEF
BQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxHYINRsPkyPef89iYT
x4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw56wwCURQtjr0W4MHfRnXnJK3s9EK0
hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvCNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1
n6diIWgVIEM8med8vSTYqZEXc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9
F4BrLunMTA5amnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQwggTrMIID06ADAgECAhBS6QLKEehE
nZRlOC+jGjC7MA0GCSqGSIb3DQEBBQUAMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRUcnVz
dCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsxIjAgBgNVBAMTGUFk
ZFRydXN0IEV4dGVybmFsIENBIFJvb3QwHhcNMTMwMzE5MDAwMDAwWhcNMjAwNTMwMTA0ODM4WjB5
MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQK
ExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWlu
ZyBDQSA0QTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOCwzICd2ElV+gPbBPo4x92/
hd12vOs9yyyrv+lr4yHb1G8Z6M9qp75fVCkCN7BNc1EUMa34L7T9Gz4Ldbg8AHy3Oh+Xqp8ovuxa
z7ExgkeIMA5qtVpE0IDQzV1IG+9Xvf+rH6vlnwg6YvEnGoJciwkae6Yf1etHG4rQb52RXpSggwYd
99kuiht2wHZzRgf75POm8A5WOqJg7Ov0bHzcM0FcKPzN6D67sesus8iKEbpX5FRDWzNP/Ua80Dpc
iuFuVZOBBLH1to5QleFvN0CqkXHACiFMcNqvx6B1T22xE66y5hOkUWf/nlpZBlpfprceNhzoDpl9
AUXU0aPbx+8ngaMCAwEAAaOCAXcwggFzMB8GA1UdIwQYMBaAFK29mHo0tCb3+sQmVO8DveAky1Qa
MB0GA1UdDgQWBBQeaSq03Cj+RxhOIQs/vKwRL/CY9TAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/
BAgwBgEB/wIBADA2BgNVHSUELzAtBggrBgEFBQcDBAYKKwYBBAGCNwoDBAYKKwYBBAGCNwoDDAYJ
KwYBBAGCNxUFMBcGA1UdIAQQMA4wDAYKKoZIhvhNAQUBaTBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLnRydXN0LXByb3ZpZGVyLmNvbS9BZGRUcnVzdEV4dGVybmFsQ0FSb290LmNybDA6Bggr
BgEFBQcBAQQuMCwwKgYIKwYBBQUHMAGGHmh0dHA6Ly9vY3NwLnRydXN0LXByb3ZpZGVyLmNvbTA1
BgNVHR4ELjAsoCowC4EJaW50ZWwuY29tMBugGQYKKwYBBAGCNxQCA6ALDAlpbnRlbC5jb20wDQYJ
KoZIhvcNAQEFBQADggEBACnCzaP9kqNSZ6IvBu1uUOhUj6tX5silt7Eg39Wpr8h5IxIHduZ+zCkR
xhJkccaM4jyqXJm312FPidIOetJwqOYDxe/Fne2Zs3JgnJtVBRXyMX8OkANfW0aUwvGzDGkkhJfM
t/T4MGvhxDZqD2bDOtw3Wes4g5z6nEm3H2LPKnf5uXdtq6V6uSBlVLV+i1+0f4UksP97HwE5wS4I
ibYpVcmOzhhpmCggEtiNOIrb0ktVrXnF07fTmQ8jW5ey7Tmwa4DC4WZKSVvqTkfX94eVRtkubipA
O04fTQvRKEnHcEAgCMPlFim0kNCLI9lBS+3xyr5qlilUy/fLEc7yN7HjQuAwggWKMIIEcqADAgEC
AgphHoC3AAAAAAAHMA0GCSqGSIb3DQEBBQUAMFIxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRl
bCBDb3Jwb3JhdGlvbjEnMCUGA1UEAxMeSW50ZWwgRXh0ZXJuYWwgQmFzaWMgUG9saWN5IENBMB4X
DTA5MDUxNTE5MjUxM1oXDTE1MDUxNTE5MzUxM1owVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoTEUlu
dGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENB
IDNBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwY+AYuc47kg7OUdF+vVd8JVv3tXg
FHZBWk9nsKtwhD4UZrYocP/p0+PDE4iu0VN19bgFiKR0WbFRlUFZFZnlXJ7ZwJ0bMVaogQ4TV7Xu
c3HWMzxnoZkSpsNRL68G4+UEUcpChWbkFo0genKfZdnGrCNX2Pn9ysh8+sIay2T7bO1SFVLw4cSD
M7vzg+AP2k6AGecBtkeYQzUVhiZDqJtL6BUIfOhsNgb5hF5GIekUpYHGlS4/5fRZgXD8lrUlbs3y
kQsAUPDRQUFYWCK/VAi6x0u9LLyZywsnnDLTnQ5VzFKGqhTGHD/C/K66hDG+YQ+OFFrULahIKYY3
TTTcYyFBYwIDAQABo4ICXDCCAlgwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUqhZmr7c9VlNg
rg3C7fPuB8tRYH4wCwYDVR0PBAQDAgGGMBIGCSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUC
BBYEFMIrCFPH6F0ywoKA6ZbAuCNCwBX5MBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMB8GA1Ud
IwQYMBaAFBrGDErER2+o260r8PRWBqPtN1QMMIG9BgNVHR8EgbUwgbIwga+ggayggamGTmh0dHA6
Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybIZXaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3NpdG9y
eS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0EuY3JsMIHjBggrBgEF
BQcBAQSB1jCB0zBjBggrBgEFBQcwAoZXaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9j
ZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0EuY3J0MGwG
CCsGAQUFBzAChmBodHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcnQwDQYJKoZI
hvcNAQEFBQADggEBAJRj/V3QxLpU9OUhw6GjVdaHX3c8PmQkMlI92mEsdB0zWgoD7CEx0gGhjVXN
MMMr4L4TLglzKdrt+kLy5Waf9HP+L0xm3Jzup7M+1lOf1TI5G8mZ10f47H9HJwbB7dqCzyNR2ykQ
Kitg6QnJmSycMiVNVS9tHvDJj6AYlirFZeqtxUUSIyxa7z84iV/sXaABgwHDWRnnl2fiVYEgzRaq
9F5ak++Fh43tj7cwoR1IyRDtNmI1t91nkP/wp9Y0xMnhUeW06AIvWUDm3H8XhHX3bSySkvl67dKP
rnRFR7es5expXk3InMHAHfX7XOyaV5V0UPST8XD0fFdsBATfm5w3/sIwggZWMIIFPqADAgECAgoU
k1n3AAEAAF9GMA0GCSqGSIb3DQEBBQUAMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBD
b3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTAe
Fw0xMTA0MTAwNDUwMTVaFw0xNDAzMjUwNDUwMTVaMEExFzAVBgNVBAMTDlpoYW5nLCBKZXNzaWNh
MSYwJAYJKoZIhvcNAQkBFhdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBAKa+dkoJ3IOg6wNoxQfo4QUiQ1Swy03i5fy/G2dZf1QUeTX7TRE0YxH5
ddI5+3R012JQawhHDtAZTtCjH4vTGMYI9QqOQcHUUVTROJqgOm/Gww6PWZrw6pPtI6BioyqNROjU
iYCncRh72Q7DApt/Xal90yLhU2rrgtxM87Ak5cKPdRJ7W6NcxI14KCO70pHMf7nOq+0EEweWrnz2
fzdf+lwPmYG68J+2MrVlWZ8HtC3bFU8x5nxhbkAguWzn+5V/4uMigQoO/7XTY9FbeKzydZcz3qAe
tA7tz2ghJHBdigr24h+aFUJb5smXhKlJbI3Lx8EofmXyyla0JCjpLId6XGcCAwEAAaOCAzkwggM1
MAsGA1UdDwQEAwIEMDBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0D
BAICAIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwHQYDVR0OBBYEFFrRoBxGtuFe0cjYeTjWaC8mdRUc
MD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJZ4S52UGHhP9O
AgFkAgEMMB8GA1UdIwQYMBaAFKoWZq+3PVZTYK4Nwu3z7gfLUWB+MIHPBgNVHR8EgccwgcQwgcGg
gb6ggbuGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJu
YWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBKDEpLmNybIZgaHR0cDovL2NlcnRpZmljYXRl
cy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNz
dWluZyUyMENBJTIwM0EoMSkuY3JsMIH1BggrBgEFBQcBAQSB6DCB5TBsBggrBgEFBQcwAoZgaHR0
cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5h
bCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0EoMSkuY3J0MHUGCCsGAQUFBzAChmlodHRwOi8v
Y2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQSgxKS5jcnQwHwYDVR0lBBgwFgYIKwYB
BQUHAwQGCisGAQQBgjcKAwQwKQYJKwYBBAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEsGA1UdEQREMEKgJwYKKwYBBAGCNxQCA6AZDBdqZXNzaWNhLnpoYW5nQGludGVsLmNvbYEX
amVzc2ljYS56aGFuZ0BpbnRlbC5jb20wDQYJKoZIhvcNAQEFBQADggEBAAVrYvg2/Qva9YsjRnEm
1ln0HxGtId6+oDLfa3iUD15fTM9WndhkFX5/RsKk0kQAknBr/DlzDs2h73gsfLvF4M/VHqfVJ5NM
102Tja28805aat0rtarzs7QklHvfvlPj+nSmKJSLr0NyydaGKXqoftEKuhnyhVHLNBXTHcCTiitg
WCUqnVibR+ezs3BRj3HELY6qmKnKt92ZRpzMldEfbj/Qn6ZdMteaq8Cd5jZlosNdvDd7+zRV5Wo4
lFXwKeG+f4X/H6gTVxY79lK002Xz3RG7vsOIW6DdrvXc07W7oNS1ZsVz8tcG5H5LxniPeqR4Nwb9
NeI/PbPwMgo4ETM4W5wwggZyMIIFWqADAgECAgofzX8BAAIAABdlMA0GCSqGSIb3DQEBBQUAMHkx
CzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDRBMB4XDTEzMDcyMjIyMzYyOVoXDTE2MDcwNjIyMzYyOVowQTEXMBUGA1UEAxMOWmhhbmcs
IEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2EuemhhbmdAaW50ZWwuY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAus8+rXFM8Hk6niQ3hvGG0u4Scg0bT919KmcyohSpUB5c
21TwlRzLyVPF91DX2dRBMuLK3RS52f/UC/FmP8PUehjLJUUQVhvdyb8PeqcSc203mX8IZgrEOIJj
P88qNxDvey6DU8db4aKW2Gl3AHQFEY+9ewujp28NvxCB0rAea+B83CIqGjyk2gSizmBs8zR99cnw
E76r3eiDUEa0PTjLRSUkvhGOpeesdqkbzJv1V2Zpf5UqIKcZ6Y482GpA5dv89CyWbAwQ4x2ezEEP
2EjlWlyaqF3Eg+ecCOVr5ScUAGgqisjDh6Asi8US2jX6GIgZSxCqYxo4+v67QVGYhXgqwQIDAQAB
o4IDMjCCAy4wRAYJKoZIhvcNAQkPBDcwNTAOBggqhkiG9w0DAgICAIAwDgYIKoZIhvcNAwQCAgCA
MAcGBSsOAwIHMAoGCCqGSIb3DQMHMB0GA1UdDgQWBBRqasYYBj1SFQNYkQLBh9HD6hYU1DALBgNV
HQ8EBAMCB4AwHwYDVR0jBBgwFoAUHmkqtNwo/kcYTiELP7ysES/wmPUwgckGA1UdHwSBwTCBvjCB
u6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRl
cm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVz
LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1
aW5nJTIwQ0ElMjA0QS5jcmwwgfUGCCsGAQUFBwEBBIHoMIHlMGwGCCsGAQUFBzAChmBodHRwOi8v
d3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIw
QmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0QSgyKS5jcnQwdQYIKwYBBQUHMAKGaWh0dHA6Ly9jZXJ0
aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJu
YWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDRBKDIpLmNydDA8BgkrBgEEAYI3FQcELzAtBiUr
BgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9TgpHACWeB3r05lfBDAgFkAgEIMB8GA1UdJQQYMBYGCCsG
AQUFBwMEBgorBgEEAYI3CgMMMCkGCSsGAQQBgjcVCgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGC
NwoDDDBLBgNVHREERDBCoCcGCisGAQQBgjcUAgOgGQwXamVzc2ljYS56aGFuZ0BpbnRlbC5jb22B
F2plc3NpY2EuemhhbmdAaW50ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQCF84CjyCAe8e3a2LDc
2s/FMs5/f3/n9XBhyufKMFbl69YKSGHzjR+nA3M3oS6CRJUyKk02WovgcnSu1OUcHb5aARn2f7He
wLwHRatdtUD2QzDjOEbtn5vrvxHEY28cAmrQBgdg4FhjO2z7/eiAoUrj96P0cqeNfxHTu+ku24Jl
5FSbr2YpSQdIoDCaLlMz4M349n/semekzJN00AjxGW6rls77R81ktfmJhcpBVLQdWjpJm2yJ0t5s
NdiwigbAOfAtRmbyHPEpmQ0Z3enZWiYrw+VXNzCW4WL1WADt/9c4aAdfGcY75bI3oEK3oG8InWmZ
2MfdADgxJxW1ZokJsHxiMYIDcDCCA2wCAQEwgYcweTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNB
MRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNV
BAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3VpbmcgQ0EgNEECCh/NfwEAAgAAF2UwCQYFKw4D
AhoFAKCCAb0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTMwODE1
MjMzNDEyWjAjBgkqhkiG9w0BCQQxFgQUu2Liv2++UgYofpqH2ZxgxTLyKIYwcgYJKoZIhvcNAQkP
MWUwYzALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAH
BgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATBzBgkrBgEEAYI3
EAQxZjBkMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UE
AxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQQIKFJNZ9wABAABfRjB1BgsqhkiG
9w0BCRACCzFmoGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSsw
KQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBAgoUk1n3AAEAAF9GMA0G
CSqGSIb3DQEBAQUABIIBAJdu3U1pDEF7MZ2802i/wmFIX/91GBiGjgDYYdo5j4wkrIWoZe3i0F4X
pTG5f/2uhzbAJEfCGHrJWq62ffBKu0OQXjG4M0HsJC0NQcONZcy+rHsBT3Xcc4HArCNxagvTkFR/
7Dwkqb54UQ5B4DtsSMaLh61qec6dlj2y7t+yj9ZjVwHx/bV2UvwyMymqJTjdvRTi/Xs3ulk6M7u2
t3D/zM+KUNC60/23dFSL0ZV4P/rvSvtQKCEE9Ms81ifybAcCq6or1LBtZy2NnOaIsOZ78Hy0y+AD
+10/OUVNIJ2jfuFFetBeHD+wLmsKZhYJeTVrB/t5i4ssoaRlHH+GKPH7kbcAAAAAAAA=

------=_NextPart_000_0031_01CE99D5.46621580--
