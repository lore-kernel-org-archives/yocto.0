Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15906E01409
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:22:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629222"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:24 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:02 +0300
Message-Id: <1370451622-10619-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 01/21] Fix ShellSession execute
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:26 -0000

- use ICommandResponseHandler to write to the console, and in particular CommandResponseHandler implementation
	- discard all Writer usages since they are no longer needed
- use RemoteHelper implementation to source the environment for bitbake
	 - make sure to disable sanity checkes before sourcing in order to avoid unwanted errors
	 - export the number of columns used for the shell, otherwise the lines will be automatically splitted at a default size(80 characters)
	 - before running any command, make sure to source the environment since each command will be ran in a different terminal

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |  104 ++++++++------------
 .../src/org/yocto/bc/ui/Activator.java             |    2 +-
 2 files changed, 43 insertions(+), 63 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 129d1d9..e8ed384 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -18,10 +18,14 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.Writer;
 
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.remote.utils.ICommandResponseHandler;
 import org.yocto.remote.utils.RemoteHelper;
+import org.yocto.remote.utils.YoctoCommand;
 
 /**
  * A class for Linux shell sessions.
@@ -43,6 +47,10 @@ public class ShellSession {
 	 */
 	public static final String TERMINATOR = "#234o987dsfkcqiuwey18837032843259d";
 	public static final String LT = System.getProperty("line.separator");
+	public static final String exportCmd = "export BB_ENV_EXTRAWHITE=\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
+	public static final String exportColumnsCmd = "export COLUMNS=1000";
+	private static final String BUILD_DIR = "/build/";
+
 	
 	public static String getFilePath(String file) throws IOException {
 		File f = new File(file);
@@ -65,12 +73,9 @@ public class ShellSession {
 	private Process process;
 
 	private OutputStream pos = null;
-	//private File initFile = null;
 	private String shellPath = null;
 	private final String initCmd;
 	private final IHostFile root;
-	private final Writer out;
-	
 	private ProjectInfo projectInfo;
 
 	public ProjectInfo getProjectInfo() {
@@ -81,33 +86,29 @@ public class ShellSession {
 		this.projectInfo = projectInfo;
 	}
 
-	public ShellSession(ProjectInfo pInfo, int shellType, IHostFile root, String initCmd, Writer out) throws IOException {
+	public ShellSession(ProjectInfo pInfo, int shellType, IHostFile root, String initCmd) throws IOException {
 		this.projectInfo = pInfo;
 		this.root = root;
 		this.initCmd  = initCmd;
-		if (out == null) {
-			this.out = new NullWriter();
-		} else {
-			this.out = out;
-		}
 		if (shellType == SHELL_TYPE_SH) {
 			shellPath = "/bin/sh";
 		}
 		shellPath  = "/bin/bash";
-		
-		initializeShell();
+
+		initializeShell(new NullProgressMonitor());
 	}
 
-	private void initializeShell() throws IOException {
-		process = Runtime.getRuntime().exec(shellPath);
-		pos = process.getOutputStream();
-		
-		if (root != null) {
-			out.write(execute("cd " + root.getAbsolutePath()));
-		}
-		
-		if (initCmd != null) {
-			out.write(execute("source " + initCmd));
+	private void initializeShell(IProgressMonitor monitor) throws IOException {
+		try {
+			if (root != null) {
+				IHost connection = projectInfo.getConnection();
+				RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);
+				RemoteHelper.handleRunCommandRemote(connection,  new YoctoCommand(exportCmd, root.getAbsolutePath(), ""), monitor);
+			} else {
+				throw new Exception("Root file not found!");
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
 		}
 	}
 
@@ -118,51 +119,32 @@ public class ShellSession {
 
 	synchronized 
 	public String execute(String command, boolean hasErrors) throws IOException {
-		String errorMessage = null;
-		interrupt = false;
-		out.write(command);
-		out.write(LT);
-		
-		sendToProcessAndTerminate(command);
-
-		if (process.getErrorStream().available() > 0) {
-			byte[] msg = new byte[process.getErrorStream().available()];
-
-			process.getErrorStream().read(msg, 0, msg.length);
-			out.write(new String(msg));
-			out.write(LT);
-			errorMessage = "Error while executing: " + command + LT + new String(msg);
+		try {
+			if (projectInfo.getConnection() != null) {
+				command = getInitCmd() + command;
+				RemoteHelper.handleRunCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, getBuildDirAbsolutePath(), ""), new NullProgressMonitor());
+				return getBuildDirAbsolutePath();
+			}
+			return null;
+		} catch (Exception e) {
+			e.printStackTrace();
 		}
-		
-		BufferedReader br = new BufferedReader(new InputStreamReader(process
-				.getInputStream()));
-
-		StringBuffer sb = new StringBuffer();
-		String line = null;
+		return null;
+	}
 
-		while (((line = br.readLine()) != null) && !line.endsWith(TERMINATOR) && !interrupt) {
-			sb.append(line);
-			sb.append(LT);
-			out.write(line);
-			out.write(LT);
-		}
-		
-		if (interrupt) {
-			process.destroy();
-			initializeShell();
-			interrupt = false;
-		}
-		
-		if (errorMessage != null) {
-			throw new IOException(errorMessage);
-		}
+	private String getBuildDirAbsolutePath() {
+		return root.getAbsolutePath() + BUILD_DIR;
+	}
 
-		return sb.toString();
+	private String getInitCmd() {
+		return "source " + initCmd + " " + getBuildDirAbsolutePath()
+				+ " > tempsf; rm -rf tempsf;" + exportCmd + ";"
+				+ exportColumnsCmd + ";" + "cd " + getBuildDirAbsolutePath()
+				+ ";";
 	}
 
 synchronized 
 	public void execute(String command, ICommandResponseHandler handler) throws IOException {
-		System.out.println(command);
 		execute(command, TERMINATOR, handler);
 	}
 	
@@ -183,14 +165,12 @@ synchronized
 				byte[] msg = new byte[errIs.available()];
 
 				errIs.read(msg, 0, msg.length);
-				out.write(new String(msg));
 				handler.response(new String(msg), true);
 			} 
 			
 			std = br.readLine();
 			
 			if (std != null && !std.endsWith(terminator)) {
-				out.write(std);
 				handler.response(std, false);
 			} 
 			
@@ -198,7 +178,7 @@ synchronized
 		
 		if (interrupt) {
 			process.destroy();
-			initializeShell();
+			initializeShell(null);
 			interrupt = false;
 		}
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index ded1e44..dc2e858 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -191,7 +191,7 @@ public class Activator extends AbstractUIPlugin {
 		
 		if (ss == null) {
 			IHostFile remoteHostFile = RemoteHelper.getRemoteHostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);
-			ss = new ShellSession(projInfo, ShellSession.SHELL_TYPE_BASH, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath), out);
+			ss = new ShellSession(projInfo, ShellSession.SHELL_TYPE_BASH, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath));
 		}
 		
 		return ss;
-- 
1.7.9.5


