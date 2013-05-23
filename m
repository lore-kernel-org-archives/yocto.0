Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019B5E014FB
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:59:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2013 07:59:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,728,1363158000"; d="scan'208";a="318423602"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2013 07:59:39 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 17:38:33 +0300
Message-Id: <1369319915-25590-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [eclipse-poky][branch:windows-build][PATCH 2/4] Fix recipe parsing when using Remote host
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
X-List-Received-Date: Thu, 23 May 2013 14:59:41 -0000

- when running a remote command on a remote target, the TerminalServiceHostShell implementation is used for the HostShell(instead of the LocalHostShell)
	- in this case, the shell does not have two readers (input, error), and instead it only offers one reader for both of the streams
	- in the current implementation, the error stream is parsed first because it makes more sense to check for errors before trying to parse the output of the command
		- in the remote case, since all output(error and output) will be sent to the same reader, the needed output of the command will be parsed as error and the output will be empty
		- in order to fix this, we should look at the error lines resulted after running a remote command if we are using a remote target

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   13 ++++++++++---
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    7 ++-----
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    6 ------
 .../org/yocto/bc/remote/utils/YoctoCommand.java    |    2 +-
 5 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 4e57f33..68fc49e 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -30,6 +30,7 @@ Import-Package: org.eclipse.cdt.managedbuilder.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
  org.eclipse.rse.internal.services.local.shells,
+ org.eclipse.rse.internal.services.shells,
  org.eclipse.rse.services,
  org.eclipse.rse.services.clientserver.messages,
  org.eclipse.rse.services.files,
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
index e0d502c..73d0805 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
@@ -8,8 +8,10 @@ public class ProcessStreamBuffer {
 	private static final String WHITESPACES = "\\s+";
 	List<String> errorLines;
 	List<String> outputLines;
+	boolean isTerminal;
 
-	ProcessStreamBuffer(){
+	ProcessStreamBuffer(boolean isTerminal){
+		this.isTerminal = isTerminal;
 		errorLines = new ArrayList<String>();
 		outputLines = new ArrayList<String>();
 	}
@@ -56,8 +58,13 @@ public class ProcessStreamBuffer {
 	}
 
 	public String getOutputLineContaining(String arg, String pattern) {
-		for (int i = outputLines.size() - 1; i >= 0; i--){
-			String line = outputLines.get(i);
+		List<String> lines = null;
+		if (isTerminal)
+			lines = errorLines;
+		else
+			lines = outputLines;
+		for (int i = lines.size() - 1; i >= 0; i--){
+			String line = lines.get(i);
 			if (line.contains(arg)) {
 				String[] tokens = line.split("\\s+");
 				if (Pattern.matches(pattern,  tokens[0])) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 87c8637..5b82e13 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -36,6 +36,7 @@ import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.internal.services.local.shells.LocalHostShell;
+import org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
@@ -76,10 +77,6 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getCmdHandler();
 	}
 
-	public static ProcessStreamBuffer getProcessBuffer(IHost connection) {
-		return getRemoteMachine(connection).getProcessBuffer();
-	}
-
 	public static IHostShell getHostShell(IHost connection) {
 		return getRemoteMachine(connection).getHostShell();
 	}
@@ -93,7 +90,7 @@ public class RemoteHelper {
 			lock = ((LocalHostShell)hostShell).getLock();
 			lock.lock();
 		}
-		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
+		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer(hostShell instanceof TerminalServiceHostShell);
 		
 		BufferedReader inbr = null;
 		BufferedReader errbr = null;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index 52bc011..14501e4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -165,12 +165,6 @@ public class RemoteMachine {
 		return null;
 	}
 
-	public ProcessStreamBuffer getProcessBuffer() {
-		if (processBuffer == null)
-			processBuffer = new ProcessStreamBuffer();
-		return processBuffer;
-	}
-
 	public IHost getConnection() {
 		return connection;
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java
index 0fd4f32..9375806 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java
@@ -11,7 +11,7 @@ public class YoctoCommand {
 		this.setCommand(command);
 		this.setInitialDirectory(initialDirectory);
 		this.setArguments(arguments);
-		this.setProcessBuffer(new ProcessStreamBuffer());
+		this.setProcessBuffer(new ProcessStreamBuffer(false));
 	}
 
 	public String getCommand() {
-- 
1.7.9.5


