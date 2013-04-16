Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5FDEE014DD
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 06:50:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Apr 2013 06:50:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,486,1363158000"; d="scan'208";a="323088616"
Received: from ideapad.rb.intel.com ([10.237.105.146])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2013 06:50:23 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Apr 2013 16:32:17 +0300
Message-Id: <1366119137-3830-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][master]Capture error output of crosstap command
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
X-List-Received-Date: Tue, 16 Apr 2013 13:50:25 -0000

- when running a command using system tap plugin make sure to read all output from standard and error output and display it accordingly

[Yocto #4270]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/sdk/remotetools/ShellSession.java    |   79 ++++++++++++--------
 1 file changed, 48 insertions(+), 31 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
index bf41d3f..bd1cb38 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
@@ -18,6 +18,7 @@ import java.io.InputStream;
 import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.OutputStreamWriter;
+import java.lang.reflect.InvocationTargetException;
 
 public class ShellSession {
 	/**
@@ -149,43 +150,59 @@ public class ShellSession {
 		}
 		return sb.toString();
 	}
-	
+
 	synchronized 
 	public void execute(String command) throws IOException {
 		interrupt = false;
 		String errorMessage = null;
 		
-		InputStream errIs = process.getErrorStream();
-		if (errIs.available() > 0) {
-			clearErrorStream(errIs);
-		}
 		sendToProcessAndTerminate(command);
-		
-		BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
-		String std = null;
-		
-		do {		
-			if (errIs.available() > 0) {
-				byte[] msg = new byte[errIs.available()];
-
-				errIs.read(msg, 0, msg.length);
-				String msg_str = new String(msg);
-				
-				out.write(msg_str);
-				out.write(LT);
-				if (!msg_str.contains("WARNING"))
-					errorMessage = msg_str;
-			} 
-			
-			std = br.readLine();
-		
-			if (std != null && !std.endsWith(TERMINATOR)) {
-				out.write(std);
-				out.write(LT);
-			} 
-			
-		} while (!std.endsWith(TERMINATOR) && !interrupt);
-		
+		boolean cancel = false;
+		try {
+			InputStream is = process.getInputStream();
+			InputStream es = process.getErrorStream();
+			String info;
+			while (!cancel) {
+				info = null;
+				StringBuffer buffer = new StringBuffer();
+				int c;
+				while (is.available() > 0) {
+					c = is.read();
+					char ch = (char) c;
+					buffer.append(ch);
+					if (ch == '\n') {
+						info = buffer.toString();
+						if (!info.trim().endsWith(TERMINATOR)) {
+							out.write(info);
+							out.write(LT);
+							buffer.delete(0, buffer.length());
+						} else {
+							cancel = true;
+							break;
+						}
+					}
+				}
+				while (es.available() > 0) {
+					c = es.read();
+					char ch = (char) c;
+					buffer.append(ch);
+					if (ch == '\n') {
+						info = buffer.toString();
+						if (!info.contains("WARNING"))
+							errorMessage += info;
+						out.write(info);
+						out.write(LT);
+						buffer.delete(0, buffer.length());
+					}
+				}
+			}
+		} catch (IOException e) {
+			try {
+				throw new InvocationTargetException(e);
+			} catch (InvocationTargetException e1) {
+				e1.printStackTrace();
+			}
+		} 
 		out.flush();
 		if (errorMessage != null) {
 			throw new IOException(errorMessage);
-- 
1.7.9.5


