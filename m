Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3B37E01448
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:48 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584827"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:47 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:24 +0200
Message-Id: <1354097550-21312-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 2/8] Initialize bitbake session & environment parse variables
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Nov 2012 10:21:48 -0000

- source oe-init-env for the connection shell
- parse environment variables

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   13 +++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   53 ++++++++------------
 2 files changed, 26 insertions(+), 40 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index e182d05..5f919c3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -329,18 +329,17 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	protected int checkExecuteError(String result, int code) {
+	protected void checkExecuteError(String result, boolean hasErrors) {
 		URI recipeURI = getDefaultDepends();
 		String text = "Parsing " + ((recipeURI != null) ? ("recipe " + recipeURI) : "base configurations");
-		if (code != 0) {
+		if (hasErrors) {
 			text = text + " ERROR!\n" + result;
 		}else {
 				text = text + " SUCCESS.\n";
 		}
 		if(!silent) {
-			displayInConsole(text, code, false);
+			displayInConsole(text, -1, false);
 		}
-		return code;
 	}
 
 	protected void displayInConsole(final String result, final int code, boolean clear) {
@@ -377,9 +376,9 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			}
 			try {
 				if(!initialized) { //recheck
-					int [] codes = {-1};
-					String result = shell.execute(parsingCmd, codes);
-					if(checkExecuteError(result, codes[0]) == 0) {
+					boolean hasErrors = false;	
+					String result = shell.execute(parsingCmd, hasErrors);
+					if(!hasErrors) {
 						properties = parseBBEnvironment(result);
 					} else {
 						properties = parseBBEnvironment("");
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index a7ed3d6..a8c46dd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -20,6 +20,7 @@ import java.io.Writer;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.remote.utils.YoctoCommand;
@@ -92,43 +93,29 @@ public class ShellSession {
 	}
 
 	private void initializeShell(IProgressMonitor monitor) throws IOException {
-//		try {
-//			RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName()), new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);
-//		} catch (CoreException e) {
-//			e.printStackTrace();
-//		}
-
-//		process = Runtime.getRuntime().exec(shellPath);
-//		pos = process.getOutputStream();
-//		
-//		if (root != null) {
-//			out.write(execute("cd " + root.getAbsolutePath()));
-//		}
-//		
-//		if (initCmd != null) {
-//			out.write(execute("source " + initCmd));
-//		}
+		try {
+			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
 	}
 
 	synchronized 
 	public String execute(String command) throws IOException {
-		return execute(command, (int [])null);
+		return execute(command, false);
 	}
 
 	synchronized 
-	public String execute(String command, int[] retCode) throws IOException {
-		//FIXME : parse output 
-//		try {
-//			RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName()), new YoctoCommand(command, root.getAbsolutePath(), ""), new NullProgressMonitor());
-//		} catch (Exception e) {
-//			e.printStackTrace();
-//		}
-//		
-//		String errorMessage = null;
-//		interrupt = false;
-//		out.write(command);
-//		out.write(LT);
-//		
+	public String execute(String command, boolean hasErrors) throws IOException {
+		try {
+			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
+			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath(), ""), new NullProgressMonitor());
+			return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+		return null;
 //		sendToProcessAndTerminate(command);
 //
 //		if (process.getErrorStream().available() > 0) {
@@ -143,7 +130,7 @@ public class ShellSession {
 //		BufferedReader br = new BufferedReader(new InputStreamReader(process
 //				.getInputStream()));
 //
-		StringBuffer sb = new StringBuffer();
+//		StringBuffer sb = new StringBuffer();
 //		String line = null;
 
 //		while (((line = br.readLine()) != null) && !line.endsWith(TERMINATOR) && !interrupt) {
@@ -169,8 +156,8 @@ public class ShellSession {
 //		if (errorMessage != null) {
 //			throw new IOException(errorMessage);
 //		}
-
-		return sb.toString();
+//
+//		return sb.toString();
 	}
 
 synchronized 
-- 
1.7.9.5


