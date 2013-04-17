Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B4D5E0148C
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 10:19:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Apr 2013 10:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,495,1363158000"; d="scan'208";a="296464325"
Received: from ideapad.rb.intel.com ([10.237.105.146])
	by orsmga001.jf.intel.com with ESMTP; 17 Apr 2013 10:19:42 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 20:01:23 +0300
Message-Id: <1366218083-5274-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][master]Add host to known_host for running crosstap script
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
X-List-Received-Date: Wed, 17 Apr 2013 17:19:44 -0000

- when running crosstap script, if the host does not exist in known_hosts, the interface blocks until the user enters "yes" or "no" in Eclipse console
- in order to prevent this, we try to connect to the host beforehand printing all the debug messages and wait  to see if there was a key found
  - if there was no key found, a message dialog is shown to the user asking to confirm adding this new host to known_host.
    - if approved - we run "ssh -o StrictHostKeyChecking=no" which does not require any input from the user and automatically adds the host & proceed to running crosstap command
    - if the user does not approve -> message is displayed that authentication failed
  - if there was at least one key found
    - parse the debug messages further to see if the keys match
          - message "Authentication succeeded" is encountered -> proceed to running crosstap command
          - authentication failed due to change in keys -> collect error message and display it to the user

[Yocto #4307]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/sdk/remotetools/ShellSession.java    |   89 ++++++++++++++++++++
 .../sdk/remotetools/actions/SystemtapModel.java    |   17 ++--
 2 files changed, 98 insertions(+), 8 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
index bd1cb38..5602798 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
@@ -19,6 +19,10 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.OutputStreamWriter;
 import java.lang.reflect.InvocationTargetException;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;
+
+import org.eclipse.jface.dialogs.MessageDialog;
 
 public class ShellSession {
 	/**
@@ -213,6 +217,91 @@ public class ShellSession {
 			interrupt = false;
 		}
 	}
+	synchronized
+	public boolean ensureKnownHostKey(String user, String host) throws IOException {
+
+		boolean loadKeysMatch = false;
+		boolean accepted = false;
+		Process proc = Runtime.getRuntime().exec("ssh -o LogLevel=DEBUG3 " + user + "@" + host);
+		Pattern patternLoad = Pattern.compile("^debug3: load_hostkeys: loaded (\\d+) keys");
+		Pattern patternAuthSucceeded = Pattern.compile("^debug1: Authentication succeeded.*");
+
+		try {
+			InputStream es = proc.getErrorStream();
+			String info;
+			while (!loadKeysMatch) {
+				info = null;
+				StringBuffer buffer = new StringBuffer();
+				int c;
+				while (es.available() > 0) {
+					c = es.read();
+					char ch = (char) c;
+					buffer.append(ch);
+					if (ch == '\r') {
+						info = buffer.toString().trim();
+						Matcher m = patternLoad.matcher(info);
+						if(m.matches()) {
+							int keys = new Integer(m.group(1));
+							if (keys == 0) {
+								proc.destroy();
+								accepted = MessageDialog.openQuestion(null, "Host authenticity", "The authenticity of host '" + host + "(" + host + ")' can't be established.\nAre you sure you want to continue connecting ?");
+								if (accepted){
+									proc = Runtime.getRuntime().exec("ssh -o StrictHostKeyChecking=no " + user + "@" + host);//add host key to known_hosts
+									try {
+										Thread.sleep(2000); //wait for process to finish
+									} catch (InterruptedException e) {
+										e.printStackTrace();
+									}
+									proc.destroy();
+								} else {
+									MessageDialog.openError(null, "Host authenticity", "Host key verification failed.");
+								}
+							} else {
+								String errorMsg = "";
+								// wait to check if key is the same and authentication succeeds
+								while (es.available() > 0) {
+									c = es.read();
+									ch = (char) c;
+									buffer.append(ch);
+									if (ch == '\r') {
+										info = buffer.toString().trim();
+										Matcher mAuthS = patternAuthSucceeded.matcher(info);
+										if(mAuthS.matches()) {
+											accepted = true;
+											break;
+										} else {
+											if (!info.startsWith("debug"))
+												errorMsg += info + "\n";
+										}
+										try {
+											Thread.sleep(100);
+										} catch (InterruptedException e) {
+											// TODO Auto-generated catch block
+											e.printStackTrace();
+										}
+										buffer.delete(0, buffer.length());
+									}
+								}
+								if (!accepted && !errorMsg.isEmpty())
+									MessageDialog.openError(null, "Host authenticity", errorMsg);
+							}
+							loadKeysMatch = true;
+							break;
+						}
+						buffer.delete(0, buffer.length());
+					}
+				}
+			}
+			es.close();
+		} catch (IOException e) {
+			try {
+				throw new InvocationTargetException(e);
+			} catch (InvocationTargetException e1) {
+				e1.printStackTrace();
+			}
+		}
+		return accepted;
+	}
 	
 	private void clearErrorStream(InputStream is) {
 	
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index 79f2dd1..0d22d97 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -10,8 +10,8 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.actions;
 
-import java.lang.reflect.InvocationTargetException;
 import java.io.File;
+import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.swt.widgets.Display;
@@ -19,7 +19,6 @@ import org.eclipse.ui.console.ConsolePlugin;
 import org.eclipse.ui.console.IConsole;
 import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.MessageConsole;
-
 import org.yocto.sdk.remotetools.ShellSession;
 
 public class SystemtapModel extends BaseModel {
@@ -64,18 +63,20 @@ public class SystemtapModel extends BaseModel {
 	public void preProcess(IProgressMonitor monitor)
 			throws InvocationTargetException, InterruptedException {
 	}
-
+    
 	public void process(IProgressMonitor monitor)
 	throws InvocationTargetException, InterruptedException {
 		try {
 			ShellSession shell = new ShellSession(ShellSession.SHELL_TYPE_BASH, 
 												new File(this.metadata_location),
 												DEFAULT_INIT_SCRIPT, sessionConsole.newOutputStream());
-			String crosstapCmd = "crosstap " + user_id + "@" + remote_host + " " + systemtap_script;
-			if (systemtap_args != null)
-				crosstapCmd = crosstapCmd + " " + systemtap_args;
-			shell.execute(crosstapCmd);
-									
+			boolean acceptedKey = shell.ensureKnownHostKey(user_id, remote_host);
+			if (acceptedKey) {
+				String crosstapCmd = "crosstap " + user_id + "@" + remote_host + " " + systemtap_script;
+				if (systemtap_args != null)
+					crosstapCmd = crosstapCmd + " " + systemtap_args;
+				shell.execute(crosstapCmd);
+			}
 		} catch (Exception e) {
 			throw new InvocationTargetException(e,e.getMessage());
 		}
-- 
1.7.9.5


