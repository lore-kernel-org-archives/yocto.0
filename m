Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF48AE014BF
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:14:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2013 01:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="239011977"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 09 May 2013 01:13:33 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 10:53:27 +0300
Message-Id: <1368086011-24931-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 08/12] Move ShellSession to org.yocto.remote.utils separate plugin
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
X-List-Received-Date: Thu, 09 May 2013 08:14:02 -0000

- ShellSession is used as a wrapper for a remote shell used for running commands on a remote machine with bitbake environment
- move ShellSession org.yocto.remote.plugin since it is part of remote utilities
- remove shell session class from remotetools plugin
- modify org.yocto.sdk.remotetools to use implementation from org.yocto.remote.utils

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils}/ShellSession.java  |   68 ++++++++------------
 .../sdk/remotetools/actions/SystemtapModel.java    |    2 +-
 2 files changed, 28 insertions(+), 42 deletions(-)
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools => org.yocto.remote.utils/src/org/yocto/remote/utils}/ShellSession.java (95%)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
similarity index 95%
rename from plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
rename to plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
index 5602798..751933f 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
@@ -9,7 +9,7 @@
  *     Ken Gilmer - initial API and implementation
  *     Jessica Zhang - Adopt for Yocto Tools plugin
  *******************************************************************************/
-package org.yocto.sdk.remotetools;
+package org.yocto.remote.utils;
 
 import java.io.BufferedReader;
 import java.io.File;
@@ -37,38 +37,36 @@ public class ShellSession {
 	/**
 	 * String used to isolate command execution
 	 */
-	//public static final String TERMINATOR = "#234o987dsfkcqiuwey18837032843259d";
 	public static final String TERMINATOR = "build$";
 	public static final String LT = System.getProperty("line.separator");
-	
+	private Process process;
+
+	private OutputStream pos = null;
+
+	private String shellPath = null;
+	private final String initCmd;
+	private final File root;
+
+	private OutputStreamWriter out;
+
 	public static String getFilePath(String file) throws IOException {
 		File f = new File(file);
-		
+
 		if (!f.exists() || f.isDirectory()) {
 			throw new IOException("Path passed is not a file: " + file);
 		}
-		
+
 		StringBuffer sb = new StringBuffer();
-		
+
 		String elems[] = file.split(File.separator);
-		
+
 		for (int i = 0; i < elems.length - 1; ++i) {
 			sb.append(elems[i]);
 			sb.append(File.separator);
 		}
-		
+
 		return sb.toString();
 	}
-	private Process process;
-
-	private OutputStream pos = null;
-	
-	private String shellPath = null;
-	private final String initCmd;
-	private final File root;
-	
-	private OutputStreamWriter out;
-	
 
 	public ShellSession(int shellType, File root, String initCmd, OutputStream out) throws IOException {
 		this.root = root;
@@ -82,31 +80,31 @@ public class ShellSession {
 			shellPath = "/bin/sh";
 		}
 		shellPath  = "/bin/bash";
-		
+
 		initializeShell();
 	}
 
 	private void initializeShell() throws IOException {
 		process = Runtime.getRuntime().exec(shellPath);
 		pos = process.getOutputStream();
-		
+
 		if (root != null) {
 			execute("cd " + root.getAbsolutePath());
 		}
-		
+
 		if (initCmd != null) {
 			execute("source " + initCmd);
 		}
 	}
 
-	synchronized 
+	synchronized
 	public String execute(String command, int[] retCode) throws IOException {
 		String errorMessage = null;
-		
+
 		interrupt = false;
 		out.write(command);
 		out.write(LT);
-		
+
 		sendToProcessAndTerminate(command);
 
 		if (process.getErrorStream().available() > 0) {
@@ -119,7 +117,7 @@ public class ShellSession {
 			if (!msg_str.contains("WARNING"))
 				errorMessage = "Error while executing: " + command + LT + new String(msg);
 		}
-		
+
 		BufferedReader br = new BufferedReader(new InputStreamReader(process
 				.getInputStream()));
 
@@ -155,11 +153,11 @@ public class ShellSession {
 		return sb.toString();
 	}
 
-	synchronized 
+	synchronized
 	public void execute(String command) throws IOException {
 		interrupt = false;
 		String errorMessage = null;
-		
+
 		sendToProcessAndTerminate(command);
 		boolean cancel = false;
 		try {
@@ -206,7 +204,7 @@ public class ShellSession {
 			} catch (InvocationTargetException e1) {
 				e1.printStackTrace();
 			}
-		} 
+		}
 		out.flush();
 		if (errorMessage != null) {
 			throw new IOException(errorMessage);
@@ -302,23 +300,11 @@ public class ShellSession {
 		}
 		return accepted;
 	}
-	
-	private void clearErrorStream(InputStream is) {
-	
-		try {
-			byte b[] = new byte[is.available()];
-			is.read(b);			
-			System.out.println("clearing: " + new String(b));
-		} catch (IOException e) {
-			e.printStackTrace();
-			//Ignore any error
-		}
-	}
 
 	/**
 	 * Send command string to shell process and add special terminator string so
 	 * reader knows when output is complete.
-	 * 
+	 *
 	 * @param command
 	 * @throws IOException
 	 */
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index ed8960d..f443e00 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -19,7 +19,7 @@ import org.eclipse.ui.console.ConsolePlugin;
 import org.eclipse.ui.console.IConsole;
 import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.MessageConsole;
-import org.yocto.sdk.remotetools.ShellSession;
+import org.yocto.remote.utils.ShellSession;
 
 public class SystemtapModel extends BaseModel {
 	protected static final String DEFAULT_INIT_SCRIPT = "oe-init-build-env";
-- 
1.7.9.5


