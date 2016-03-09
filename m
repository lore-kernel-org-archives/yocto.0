Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19EEFE00C39; Wed,  9 Mar 2016 15:23:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0D02E00ACF
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 15:23:16 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 09 Mar 2016 15:23:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,313,1455004800"; d="scan'208";a="761267804"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.140])
	by orsmga003.jf.intel.com with ESMTP; 09 Mar 2016 15:23:16 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Mar 2016 17:22:32 -0600
Message-Id: <1457565752-20659-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 1/3][eclipse-poky][mars] systemtap: Add button to browse to build folder.
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
X-List-Received-Date: Wed, 09 Mar 2016 23:23:21 -0000

From: Adrian Dudau <adrian.dudau@enea.com>

Fixes [Yocto 4423]
Porting commit a80114b5d1c8d774fd9271da48a38654321d4817 from
the Juno branch.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 .../src/org/yocto/remote/utils/ShellSession.java   |  6 +++--
 .../src/org/yocto/sdk/remotetools/Messages.java    |  1 +
 .../sdk/remotetools/actions/SystemtapHandler.java  |  3 ++-
 .../sdk/remotetools/actions/SystemtapModel.java    |  5 ++--
 .../actions/SystemtapSettingDialog.java            | 28 ++++++++++++++++++++++
 .../org/yocto/sdk/remotetools/messages.properties  |  3 ++-
 6 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
index 4ac8001..2a4dbf5 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
@@ -46,6 +46,7 @@ public class ShellSession {
 	private String shellPath = null;
 	private final String initCmd;
 	private final File root;
+        private final File builddir;
 
 	private OutputStreamWriter out;
 
@@ -68,8 +69,9 @@ public class ShellSession {
 		return sb.toString();
 	}
 
-	public ShellSession(int shellType, File root, String initCmd, OutputStream out) throws IOException {
+	public ShellSession(int shellType, File root, File builddir, String initCmd, OutputStream out) throws IOException {
 		this.root = root;
+                this.builddir = builddir;
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
index 093118d..16f5dc8 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Messages.java
@@ -40,6 +40,7 @@ public class Messages extends NLS {
 	public static String TerminalViewer_text;
 	//public static String Systemtap_KO_Text;
 	public static String Metadata_Location;
+        public static String Builddir_Location;
 	public static String User_ID;
 	public static String Remote_User_ID;
 	public static String Remote_Host;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
index 79048aa..86c963f 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
@@ -53,6 +53,7 @@ public class SystemtapHandler extends AbstractHandler {
 		if(setting.open() == BaseSettingDialog.OK) {
 
 			String metadata_location = ((SystemtapSettingDialog)setting).getMetadataLocation();
+                        String builddir_location = ((SystemtapSettingDialog)setting).getBuilddirLocation();
 			String remote_host = ((SystemtapSettingDialog)setting).getRemoteHost();
 			String user_id = ((SystemtapSettingDialog)setting).getUserID();
 			String systemtap_script = ((SystemtapSettingDialog)setting).getSystemtapScript();
@@ -66,7 +67,7 @@ public class SystemtapHandler extends AbstractHandler {
 			if (terminalSubSystem != null) {
 				TerminalsUI terminalsUI = TerminalsUI.getInstance();
 				TerminalViewer terminalViewer = terminalsUI.activateTerminalsView();
-				SystemtapModel op = new SystemtapModel(metadata_location,remote_host, user_id, systemtap_script,
+				SystemtapModel op = new SystemtapModel(metadata_location,builddir_location,remote_host, user_id, systemtap_script,
 						systemtap_args,window.getShell().getDisplay());
 				try {
 					op.setHost(host);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index c769574..2a76bbd 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -37,6 +37,7 @@ public class SystemtapModel extends BaseModel {
 
 	protected MessageConsole sessionConsole;
 	private String metadata_location;
+        private String builddir_location;
 	private String remote_host;
 	private String user_id;
 	private String systemtap_script;
@@ -44,7 +45,7 @@ public class SystemtapModel extends BaseModel {
 
 	Display display;
 	
-	public SystemtapModel(String metadata_location, String remote_host, String user_id, String systemtap_script, String systemtap_args, Display display) {
+	public SystemtapModel(String metadata_location, String builddir_location, String remote_host, String user_id, String systemtap_script, String systemtap_args, Display display) {
 		super(null, TASK_NAME, "", "");
 		this.metadata_location = metadata_location;
 		this.remote_host = remote_host;
@@ -89,7 +90,7 @@ public class SystemtapModel extends BaseModel {
 			throws InvocationTargetException, InterruptedException {
 		try {
 			ShellSession shell = new ShellSession(ShellSession.SHELL_TYPE_BASH, 
-												new File(this.metadata_location),
+												new File(this.metadata_location), new File(this.builddir_location),
 												DEFAULT_INIT_SCRIPT, sessionConsole.newOutputStream());
 			boolean acceptedKey = shell.ensureKnownHostKey(user_id, remote_host);
 			if (acceptedKey) {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 2b90727..5c14c9a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
@@ -37,18 +37,21 @@ public class SystemtapSettingDialog extends Dialog {
 	static protected String TITLE="Systemtap Crosstap";
 	protected String title;
 	protected String metadata_location;
+        protected String builddir_location;
 	protected String systemtap_script;
 	protected String user_id;
 	protected String remote_host;
 	protected String systemtap_args;
 	protected boolean okPressed;
 	protected Button metadataLocationBtn;
+        protected Button builddirLocationBtn;
 	protected Button systemtapScriptBtn;
 	protected Text userIDText;
 	protected Text remoteHostText;
 	protected Text systemtapArgsText;
 	protected Text systemtapScriptText;
 	protected Text metadataLocationText;
+        protected Text builddirLocationText;
 	
 	protected SystemtapSettingDialog(Shell parentShell, String title) {
 		super(parentShell);
@@ -74,6 +77,10 @@ public class SystemtapSettingDialog extends Dialog {
 	public String getMetadataLocation() {
 		return metadata_location;
 	}
+
+        public String getBuilddirLocation() {
+                return builddir_location;
+        }
 	
 	public String getRemoteHost() {
 		return remote_host;
@@ -119,6 +126,14 @@ public class SystemtapSettingDialog extends Dialog {
 		metadataLocationBtn = addDirSelectButton(textContainer, metadataLocationText);
 		
 		label = new Label(projComp, SWT.NONE);
+                label.setText(Messages.Builddir_Location);
+                textContainer = new Composite(projComp, SWT.NONE);
+                textContainer.setLayout(new GridLayout(2, false));
+                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
+                builddirLocationText = (Text)addTextControl(textContainer, builddir_location);
+                builddirLocationBtn = addDirSelectButton(textContainer, builddirLocationText);
+
+                label = new Label(projComp, SWT.NONE);
 		label.setText(Messages.Remote_User_ID);
 		userIDText = new Text(projComp, SWT.SINGLE | SWT.BORDER);
 		
@@ -219,6 +234,19 @@ public class SystemtapSettingDialog extends Dialog {
 			CommonHelper.showErrorDialog("SystemTap Error", null, "The specified metadata location is not a directory!");
 			return;
 		}
+                builddir_location = builddirLocationText.getText();
+                if ( (builddir_location == null) || builddir_location.isEmpty()) {
+                        CommonHelper.showErrorDialog("SystemTap Error", null, "Please specify your builddir location!");
+                        return;
+                }
+                File builddir_dir = new File(builddir_location);
+                if (!builddir_dir.exists()) {
+                        CommonHelper.showErrorDialog("SystemTap Error", null, "The specified builddir location does not exist!");
+                }
+                if (!metadata_dir.isDirectory()) {
+                        CommonHelper.showErrorDialog("SystemTap Error", null, "The specified builddir location is not a directory!");
+                        return;
+                }
 		user_id = userIDText.getText();
 		if ( (user_id == null) || user_id.isEmpty()) {
 			CommonHelper.showErrorDialog("SystemTap Error", null, "Please specify remote user id!");
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
index bc065b9..173897a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/messages.properties
@@ -35,6 +35,7 @@ Powertop_ShowPid_Text=show pids in wakeups list
 TerminalViewer_text=This view is dedicated to Yocto Remote tools. Please use the "Yocto Remote Tools" menu to open the view.
 //Systemtap_KO_Text=Kernel Module:
 Metadata_Location=Metadata Location:
+Builddir_Location=Build dir Location:
 User_ID=User ID:
 Remote_User_ID=Remote User ID:
 Remote_Host=Remote Host:
@@ -46,4 +47,4 @@ LocalJob_Title=Launching local application
 ErrorLocalJob=Failed in launching local application
 
 RemoteShellExec_1=Executing {0} {1}
-RemoteShellExec_2=Could not create the hostShellProcess.\n
\ No newline at end of file
+RemoteShellExec_2=Could not create the hostShellProcess.\n
-- 
1.9.1


