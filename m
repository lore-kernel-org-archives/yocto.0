Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDE0E0072F
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 03:06:25 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2013 03:06:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,579,1355126400"; d="scan'208";a="197658662"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Feb 2013 03:06:23 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  1 Feb 2013 12:52:02 +0200
Message-Id: <1359715922-20022-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Adapt API to RSE API local patch change
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
X-List-Received-Date: Fri, 01 Feb 2013 11:06:26 -0000

- make a single point change to output processing after running a command
- read output from remote commands using IHostShell interface

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/remote/utils/CommandRunnable.java |   58 +------------------
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   61 ++++++++++++++++++++
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   59 +------------------
 .../bc/remote/utils/YoctoRunnableWithProgress.java |   61 +-------------------
 4 files changed, 68 insertions(+), 171 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
index 98c3758..7406f50 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
@@ -1,11 +1,13 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.BufferedReader;
+import java.io.InputStreamReader;
 import java.util.concurrent.locks.Lock;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 
 public class CommandRunnable implements Runnable{
@@ -26,7 +28,7 @@ public class CommandRunnable implements Runnable{
 	public void run() {
 		try {
 			hostShell = RemoteHelper.runCommandRemote(connection, cmd, monitor);
-			cmd.setProcessBuffer(processOutput());
+			cmd.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler, new char[]{'\n'}));
 		} catch (CoreException e) {
 			e.printStackTrace();
 		} catch (Exception e) {
@@ -34,58 +36,4 @@ public class CommandRunnable implements Runnable{
 		}
 	}
 
-	private ProcessStreamBuffer processOutput() throws Exception {
-		if (hostShell == null)
-			throw new Exception("An error has occured while trying to run remote command!");
-
-		Lock lock = hostShell.getStandardOutputReader().getReaderLock();
-		lock.lock();
-		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
-		BufferedReader inbr = hostShell.getStandardOutputReader().getReader();
-		BufferedReader errbr = hostShell.getStandardErrorReader().getReader();
-		boolean cancel = false;
-		while (!cancel) {
-			if(monitor.isCanceled()) {
-				cancel = true;
-				lock.unlock();
-				throw new InterruptedException("User Cancelled");
-			}
-			StringBuffer buffer = new StringBuffer();
-			int c;
-			if (errbr != null)
-			while ((c = errbr.read()) != -1) {
-				char ch = (char) c;
-				buffer.append(ch);
-				if (ch == '\n'){
-					String str = buffer.toString();
-					processBuffer.addErrorLine(str);
-					System.out.println(str);
-					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-						break;
-					}
-					cmdHandler.response(str, true);
-					buffer.delete(0, buffer.length());
-				}
-			}
-			if (inbr != null)
-			while ((c = inbr.read()) != -1) {
-				char ch = (char) c;
-				buffer.append(ch);
-				if (ch == '\n'){
-					String str = buffer.toString();
-					processBuffer.addOutputLine(str);
-					System.out.println(str);
-					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-						break;
-					}
-					cmdHandler.response(str, false);
-					buffer.delete(0, buffer.length());
-				}
-			}
-			cancel = true;
-		}
-		lock.unlock();
-		return processBuffer;
-	}
-
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 9bce9e3..507ac54 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -10,12 +10,16 @@
  ********************************************************************************/
 package org.yocto.bc.remote.utils;
 
+import java.io.BufferedReader;
 import java.io.File;
 import java.io.InputStream;
+import java.io.InputStreamReader;
 import java.net.URI;
 import java.net.URISyntaxException;
+import java.util.Arrays;
 import java.util.HashMap;
 import java.util.Map;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -35,6 +39,7 @@ import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
@@ -78,6 +83,62 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getHostShell();
 	}
 
+	public static ProcessStreamBuffer processOutput(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler, char[] ending) throws Exception {
+		if (hostShell == null)
+			throw new Exception("An error has occured while trying to run remote command!");
+
+		Lock lock = hostShell.getLock();
+		lock.lock();
+		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
+		
+		BufferedReader inbr = hostShell.getReader(false);
+		BufferedReader errbr = hostShell.getReader(true);
+		
+		boolean cancel = false;
+		while (!cancel) {
+			if(monitor.isCanceled()) {
+				cancel = true;
+				lock.unlock();
+				throw new InterruptedException("User Cancelled");
+			}
+			StringBuffer buffer = new StringBuffer();
+			int c;
+			if (errbr != null)
+				while ((c = errbr.read()) != -1) {
+					char ch = (char) c;
+					buffer.append(ch);
+					if (Arrays.asList(ending).contains(ch)){
+						String str = buffer.toString();
+						processBuffer.addErrorLine(str);
+						System.out.println(str);
+						if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+							break;
+						}
+						cmdHandler.response(str, true);
+						buffer.delete(0, buffer.length());
+					}
+				}
+			if (inbr != null)
+				while ((c = inbr.read()) != -1) {
+					char ch = (char) c;
+					buffer.append(ch);
+					if (ch == '\n'){
+						String str = buffer.toString();
+						processBuffer.addOutputLine(str);
+						System.out.println(str);
+						if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+							break;
+						}
+						cmdHandler.response(str, false);
+						buffer.delete(0, buffer.length());
+					}
+				}
+			cancel = true;
+		}
+		lock.unlock();
+		return processBuffer;
+	}
+	
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
 		if (remoteConnection == null)
 			return null;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index ba925ca..52bc011 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -1,6 +1,7 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.BufferedReader;
+import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.List;
@@ -18,6 +19,7 @@ import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.internal.services.local.shells.LocalShellService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
@@ -42,56 +44,6 @@ public class RemoteMachine {
 	public RemoteMachine(IHost connection) {
 		setConnection(connection);
 	}
-	private ProcessStreamBuffer processOutput(IHostShell shell, IProgressMonitor monitor) throws Exception {
-		if (shell == null)
-			throw new Exception("An error has occured while trying to run remote command!");
-		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
-		
-		Lock lock = shell.getStandardOutputReader().getReaderLock();
-		lock.lock();
-		BufferedReader inbr =  shell.getStandardOutputReader().getReader();
-		BufferedReader errbr =  shell.getStandardErrorReader().getReader();
-		
-		boolean cancel = false;
-		while (!cancel) {
-			if(monitor.isCanceled()) {
-				cancel = true;
-				throw new InterruptedException("User Cancelled");
-			}
-			StringBuffer buffer = new StringBuffer();
-			int c;
-			if (errbr != null)
-			while ((c = errbr.read()) != -1) {
-				char ch = (char) c;
-				buffer.append(ch);
-				if (ch == '\n'){
-					String str = buffer.toString();
-					processBuffer.addErrorLine(str);
-					System.out.println(str);
-					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-						break;
-					}
-					buffer.delete(0, buffer.length());
-				}
-			}
-			if (inbr != null)
-			while ((c = inbr.read()) != -1) {
-				char ch = (char) c;
-				buffer.append(ch);
-				if (ch == '\n'){
-					String str = buffer.toString();
-					processBuffer.addOutputLine(str);
-					System.out.println(str);
-					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-						break;
-					}
-					buffer.delete(0, buffer.length());
-				}
-			}
-			cancel = true;
-		}
-		return processBuffer;
-	}
 
 	public String[] prepareEnvString(IProgressMonitor monitor){
 		String[] env = null;
@@ -123,13 +75,11 @@ public class RemoteMachine {
 
 			IShellService shellService = getShellService(new SubProgressMonitor(monitor, 7));
 
-//			HostShellProcessAdapter p = null;
 			ProcessStreamBuffer buffer = null;
 			try {
 				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
 				IHostShell hostShell = shellService.runCommand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
-//				p = new HostShellProcessAdapter(hostShell);
-				buffer = processOutput(hostShell, subMonitor);
+				buffer = RemoteHelper.processOutput(subMonitor, hostShell, cmdHandler, new char[]{'\n'});
 				for(int i = 0; i < buffer.getOutputLines().size(); i++) {
 					String out = buffer.getOutputLines().get(i);
 					String[] tokens = out.split("=");
@@ -141,9 +91,6 @@ public class RemoteMachine {
 						environment.put(varName, varValue);
 				}
 			} catch (Exception e) {
-//				if (p != null) {
-//					p.destroy();
-//				}
 				e.printStackTrace();
 			}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
index 5aa6fd2..e748be7 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -1,9 +1,7 @@
 package org.yocto.bc.remote.utils;
 
-import java.io.BufferedReader;
 import java.io.IOException;
 import java.lang.reflect.InvocationTargetException;
-import java.util.concurrent.locks.Lock;
 import java.util.regex.Matcher;
 import java.util.regex.Pattern;
 
@@ -100,70 +98,13 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 		public void run() {
 			try {
 				hostShell = RemoteHelper.runCommandRemote(this.connection, command, monitor);
-				command.setProcessBuffer(processOutput());
+				command.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler, new char[]{'\n', '\r'}));
 			} catch (CoreException e) {
 				e.printStackTrace();
 			} catch (Exception e) {
 				e.printStackTrace();
 			}
 		}
-		private ProcessStreamBuffer processOutput() throws Exception {
-			if (hostShell == null)
-				throw new Exception("An error has occured while trying to run remote command!");
-			monitor.beginTask(taskName, RemoteHelper.TOTALWORKLOAD);
-			Lock lock = hostShell.getStandardOutputReader().getReaderLock();
-			lock.lock();
-			ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
-			BufferedReader inbr = hostShell.getStandardOutputReader().getReader();
-			BufferedReader errbr = hostShell.getStandardErrorReader().getReader();
-			boolean cancel = false;
-			while (!cancel) {
-				if(monitor.isCanceled()) {
-					cancel = true;
-					lock.unlock();
-					throw new InterruptedException("User Cancelled");
-				}
-				StringBuffer buffer = new StringBuffer();
-				int c;
-				if (errbr != null) {
-					while ((c = errbr.read()) != -1) {
-						char ch = (char) c;
-						buffer.append(ch);
-						if (ch == '\n' || ch == '\r'){
-							String str = buffer.toString();
-							processBuffer.addOutputLine(str);
-							System.out.println(str);
-							if (ch == '\r')
-								reportProgress(str);
-							if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-								break;
-							}
-							cmdHandler.response(str, false);
-							buffer.delete(0, buffer.length());
-						}
-					}
-				}
-				if (inbr != null) {
-					while ((c = inbr.read()) != -1) {
-						char ch = (char) c;
-						buffer.append(ch);
-						if (ch == '\n'){
-							String str = buffer.toString();
-							processBuffer.addOutputLine(str);
-							System.out.println(str);
-							if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-								break;
-							}
-							cmdHandler.response(str, false);
-							buffer.delete(0, buffer.length());
-						}
-					}
-				}
-				cancel = true;
-			}
-			lock.unlock();
-			return processBuffer;
-		}
 	}
 	private void updateMonitor(final int work){
 
-- 
1.7.9.5


