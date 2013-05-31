Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02971E01472
	for <yocto@yoctoproject.org>; Fri, 31 May 2013 05:29:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2013 05:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,778,1363158000"; d="scan'208";a="346243556"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2013 05:29:29 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 31 May 2013 15:07:46 +0300
Message-Id: <1370002066-30984-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Fix Thread Access exception for systemtap Dialogs
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
X-List-Received-Date: Fri, 31 May 2013 12:29:50 -0000

- when displaying MessageDialogs an error occurs due to illegal thread accessing GUI classes
	- in order to fix this, a new DialogRunnable is used, that will use invoke synchronous to display the message dialog

[Yocto #4585]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils/DialogRunnable.java |   26 ++++++++++++++++++++
 .../src/org/yocto/remote/utils/ShellSession.java   |   13 ++++++----
 2 files changed, 34 insertions(+), 5 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/DialogRunnable.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/DialogRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/DialogRunnable.java
new file mode 100644
index 0000000..5fbab76
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/DialogRunnable.java
@@ -0,0 +1,26 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.jface.dialogs.MessageDialog;
+
+public 	class DialogRunnable implements Runnable{
+	int type = 0;
+	boolean result;
+	public static final int QUESTION = 1;
+	public static final int ERROR = 2;
+	String title;
+	String message;
+
+	DialogRunnable(String title, String message, int type){
+		this.title = title;
+		this.message = message;
+		this.type = type;
+	}
+	@Override
+	public void run() {
+		if (type == QUESTION) {
+			result = MessageDialog.openQuestion(null, title, message);
+		} else if (type == ERROR) {
+			MessageDialog.openError(null, title, message);
+		}
+	}
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
index 0f4097b..4ac8001 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
@@ -22,7 +22,7 @@ import java.lang.reflect.InvocationTargetException;
 import java.util.regex.Matcher;
 import java.util.regex.Pattern;
 
-import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.swt.widgets.Display;
 
 public class ShellSession {
 	/**
@@ -242,7 +242,9 @@ public class ShellSession {
 							int keys = new Integer(m.group(1));
 							if (keys == 0) {
 								proc.destroy();
-								accepted = MessageDialog.openQuestion(null, "Host authenticity", "The authenticity of host '" + host + "(" + host + ")' can't be established.\nAre you sure you want to continue connecting ?");
+								DialogRunnable runnable = new DialogRunnable("Host authenticity", "The authenticity of host '" + host + "(" + host + ")' can't be established.\nAre you sure you want to continue connecting ?", DialogRunnable.QUESTION);
+								Display.getDefault().syncExec(runnable);
+								accepted = runnable.result;
 								if (accepted){
 									proc = Runtime.getRuntime().exec("ssh -o StrictHostKeyChecking=no " + user + "@" + host);//add host key to known_hosts
 									try {
@@ -252,7 +254,7 @@ public class ShellSession {
 									}
 									proc.destroy();
 								} else {
-									MessageDialog.openError(null, "Host authenticity", "Host key verification failed.");
+									Display.getDefault().syncExec( new DialogRunnable("Host authenticity", "Host key verification failed.", DialogRunnable.ERROR));
 								}
 							} else {
 								String errorMsg = "";
@@ -280,8 +282,9 @@ public class ShellSession {
 										buffer.delete(0, buffer.length());
 									}
 								}
-								if (!accepted && !errorMsg.isEmpty())
-									MessageDialog.openError(null, "Host authenticity", errorMsg);
+								if (!accepted && !errorMsg.isEmpty()) {
+									Display.getDefault().syncExec( new DialogRunnable("Host authenticity", errorMsg, DialogRunnable.ERROR));
+								}
 							}
 							loadKeysMatch = true;
 							break;
-- 
1.7.9.5


