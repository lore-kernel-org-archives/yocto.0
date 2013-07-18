Return-Path: <Adrian.Dudau@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 42DD7E013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:11:52 -0700 (PDT)
Received: from sestows827.enea.se (172.16.141.139) by SESTOEX03.enea.se
	(172.21.1.38) with Microsoft SMTP Server (TLS) id 14.2.318.1;
	Thu, 18 Jul 2013 16:11:47 +0200
From: Adrian Dudau <adrian.dudau@enea.com>
To: <jessica.zhang@intel.com>
Date: Thu, 18 Jul 2013 16:11:44 +0200
Message-ID: <1374156704-14050-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [172.16.141.139]
Cc: yocto@yoctoproject.org
Subject: [PATCHv2 1/1][eclipse-poky] systemtap: add button to browse to build folder
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
X-List-Received-Date: Thu, 18 Jul 2013 14:11:54 -0000
Content-Type: text/plain

[Yocto #4223]
Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../src/org/yocto/remote/utils/ShellSession.java   |    6 +++--
 .../src/org/yocto/sdk/remotetools/Messages.java    |    1 +
 .../sdk/remotetools/actions/SystemtapHandler.java  |    3 ++-
 .../sdk/remotetools/actions/SystemtapModel.java    |    6 +++--
 .../actions/SystemtapSettingDialog.java            |   28 ++++++++++++++++++++
 .../org/yocto/sdk/remotetools/messages.properties  |    1 +
 6 files changed, 40 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
index 4ac8001..0922824 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
@@ -46,6 +46,7 @@ public class ShellSession {
 	private String shellPath = null;
 	private final String initCmd;
 	private final File root;
+	private final File builddir;
 
 	private OutputStreamWriter out;
 
@@ -68,8 +69,9 @@ public class ShellSession {
 		return sb.toString();
 	}
 
-	public ShellSession(int shellType, File root, String initCmd, OutputStream out) throws IOException {
+	public ShellSession(int shellType, File root, File builddir, String initCmd, OutputStream out) throws IOException {
 		this.root = root;
+		this.builddir = builddir;
 		this.initCmd  = initCmd;
 		if (out == null) {
 			this.out = new OutputStreamWriter(null);
@@ -93,7 +95,7 @@ public class ShellSession {
 		}
 
 		if (initCmd != null) {
-			execute("source " + initCmd);
+			execute("source " + initCmd + " " + builddir.getAbsolutePath());
 		}
 	}
 
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.java
index 66ba62b..cbf2b05 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.java
@@ -40,6 +40,7 @@ public class Messages extends NLS {
 	public static String TerminalViewer_text;
 	//public static String Systemtap_KO_Text;
 	public static String Metadata_Location;
+	public static String Builddir_Location;
 	public static String User_ID;
 	public static String Remote_Host;
 	public static String Systemtap_Script;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
index 184582a..f5d34d8 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
@@ -37,12 +37,13 @@ public class SystemtapHandler extends AbstractHandler {
 		if(setting.open() == BaseSettingDialog.OK) {
 
 			String metadata_location = ((SystemtapSettingDialog)setting).getMetadataLocation();
+			String builddir_location = ((SystemtapSettingDialog)setting).getBuilddirLocation();
 			String remote_host = ((SystemtapSettingDialog)setting).getRemoteHost();
 			String user_id = ((SystemtapSettingDialog)setting).getUserID();
 			String systemtap_script = ((SystemtapSettingDialog)setting).getSystemtapScript();
 			String systemtap_args = ((SystemtapSettingDialog)setting).getSystemtapArgs();
 			IProgressService progressService = PlatformUI.getWorkbench().getProgressService();
-			SystemtapModel op = new SystemtapModel(metadata_location,remote_host, user_id, systemtap_script,
+			SystemtapModel op = new SystemtapModel(metadata_location, builddir_location, remote_host, user_id, systemtap_script,
 					systemtap_args,window.getShell().getDisplay());
 			try {
 				progressService.busyCursorWhile(op);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index f443e00..bb2fa2d 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -29,6 +29,7 @@ public class SystemtapModel extends BaseModel {
 
 	protected MessageConsole sessionConsole;
 	private String metadata_location;
+	private String builddir_location;
 	private String remote_host;
 	private String user_id;
 	private String systemtap_script;
@@ -36,9 +37,10 @@ public class SystemtapModel extends BaseModel {
 
 	Display display;
 	
-	public SystemtapModel(String metadata_location, String remote_host, String user_id, String systemtap_script, String systemtap_args, Display display) {
+	public SystemtapModel(String metadata_location, String builddir_location, String remote_host, String user_id, String systemtap_script, String systemtap_args, Display display) {
 		super(null, TASK_NAME, "", "");
 		this.metadata_location = metadata_location;
+		this.builddir_location = builddir_location;
 		this.remote_host = remote_host;
 		this.user_id = user_id;
 		this.systemtap_script = systemtap_script;
@@ -70,7 +72,7 @@ public class SystemtapModel extends BaseModel {
 			throws InvocationTargetException, InterruptedException {
 		try {
 			ShellSession shell = new ShellSession(ShellSession.SHELL_TYPE_BASH, 
-												new File(this.metadata_location),
+												new File(this.metadata_location), new File(this.builddir_location),
 												DEFAULT_INIT_SCRIPT, sessionConsole.newOutputStream());
 			boolean acceptedKey = shell.ensureKnownHostKey(user_id, remote_host);
 			if (acceptedKey) {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index c447569..760715c 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
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
 		metadataLocationBtn = addDirSelectButton(textContainer, metadataLocationText);
 		
 		label = new Label(projComp, SWT.NONE);
+		label.setText(Messages.Builddir_Location);
+		textContainer = new Composite(projComp, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
+		builddirLocationText = (Text)addTextControl(textContainer, builddir_location);
+		builddirLocationBtn = addDirSelectButton(textContainer, builddirLocationText);
+
+		label = new Label(projComp, SWT.NONE);
 		label.setText(Messages.User_ID);
 		userIDText = new Text(projComp, SWT.SINGLE | SWT.BORDER);
 		
@@ -219,6 +234,19 @@ public class SystemtapSettingDialog extends Dialog {
 			CommonHelper.showErrorDialog("SystemTap Error", null, "The specified metadata location is not a directory!");
 			return;
 		}
+		builddir_location = builddirLocationText.getText();
+		if ( (builddir_location == null) || builddir_location.isEmpty()) {
+			CommonHelper.showErrorDialog("SystemTap Error", null, "Please specify your builddir location!");
+			return;
+		}
+		File builddir_dir = new File(builddir_location);
+		if (!builddir_dir.exists()) {
+			CommonHelper.showErrorDialog("SystemTap Error", null, "The specified builddir location does not exist!");
+		}
+		if (!metadata_dir.isDirectory()) {
+			CommonHelper.showErrorDialog("SystemTap Error", null, "The specified builddir location is not a directory!");
+			return;
+		}
 		user_id = userIDText.getText();
 		if ( (user_id == null) || user_id.isEmpty()) {
 			CommonHelper.showErrorDialog("SystemTap Error", null, "Please specify remote user id!");
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
index 7bbf987..2d6d8af 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
@@ -35,6 +35,7 @@ Powertop_ShowPid_Text=show pids in wakeups list
 TerminalViewer_text=This view is dedicated to Yocto Remote tools. Please use the "Yocto Remote Tools" menu to open the view.
 //Systemtap_KO_Text=Kernel Module:
 Metadata_Location=Metadata Location:
+Builddir_Location=Build dir Location:
 User_ID=User ID:
 Remote_Host=Remote Host:
 Systemtap_Script=Systemtap Script:
-- 
1.7.9.5


