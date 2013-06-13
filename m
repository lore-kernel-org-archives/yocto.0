Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4409CE01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 07:47:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jun 2013 07:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,859,1363158000"; d="scan'208";a="316501396"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 13 Jun 2013 07:47:34 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Jun 2013 17:24:57 +0300
Message-Id: <1371133497-1055-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [Upstream org.eclipse.tm] Add getReader method in IHostShell
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
X-List-Received-Date: Thu, 13 Jun 2013 14:47:58 -0000

- added method in IHostShell to be implemented in TerminalHostShell
- this method is already implemented in LocalHostShell upstream

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../services/dstore/shells/DStoreHostShell.java    |    7 +++++++
 .../services/shells/TerminalServiceHostShell.java  |   19 +++++++++++--------
 .../eclipse/rse/services/shells/IHostShell.java    |    3 +++
 3 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java
index 06763d3..5094cd1 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java
@@ -18,6 +18,8 @@
 
 package org.eclipse.rse.internal.services.dstore.shells;
 
+import java.io.BufferedReader;
+
 import org.eclipse.dstore.core.model.DE;
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.core.model.DataStore;
@@ -92,5 +94,10 @@ public class DStoreHostShell extends AbstractHostShell implements IHostShell
 		
 	}
 
+	public BufferedReader getReader(boolean isErrorReader) {
+		// TODO Auto-generated method stub
+		return null;
+	}
+
 	
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
index 2a461ad..9a8e890 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
@@ -47,7 +47,7 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 	public static final String SHELL_INVOCATION = ">"; //$NON-NLS-1$
 
 	ITerminalShell fTerminalShell;
-	
+	BufferedReader fBufReader;
 	private TerminalServiceShellOutputReader fStdoutHandler;
 	
 	private TerminalServiceShellOutputReader fStderrHandler;
@@ -60,21 +60,21 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 		try {
 			fTerminalShell = terminalShell;
 			String encoding = fTerminalShell.getDefaultEncoding();
-			BufferedReader bufReader;
+
 			if (encoding != null) {
-				bufReader = new BufferedReader(new InputStreamReader(fTerminalShell
+				fBufReader = new BufferedReader(new InputStreamReader(fTerminalShell
 						.getInputStream(), encoding)); 
 			} else {
-				bufReader = new BufferedReader(new InputStreamReader(fTerminalShell
+				fBufReader = new BufferedReader(new InputStreamReader(fTerminalShell
 								.getInputStream()));
 			}
 			//bug 356132: wait for initial output before sending any command
 			//FIXME this should likely move into the TerminalServiceShellWriterThread, so wait can be canceled
-			bufReader.mark(1);
-			bufReader.read();
-			bufReader.reset();
+			fBufReader.mark(1);
+			fBufReader.read();
+			fBufReader.reset();
 			
-			fStdoutHandler = new TerminalServiceShellOutputReader(this, bufReader, false);
+			fStdoutHandler = new TerminalServiceShellOutputReader(this, fBufReader, false);
 			fStderrHandler = new TerminalServiceShellOutputReader(this, null, true);
 			OutputStream outputStream = fTerminalShell.getOutputStream();
 			if (encoding != null) {
@@ -170,4 +170,7 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 		return "echo $PWD'>'"; //$NON-NLS-1$
 	}
 
+	public BufferedReader getReader(boolean isErrorReader) {
+		return fBufReader;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java
index 8139cfc..e7fd70b 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java
@@ -16,6 +16,8 @@
 
 package org.eclipse.rse.services.shells;
 
+import java.io.BufferedReader;
+
 
 public interface IHostShell 
 {
@@ -29,4 +31,5 @@ public interface IHostShell
 	
 	public void exit();
 	
+	public BufferedReader getReader(boolean isErrorReader);
 }
\ No newline at end of file
-- 
1.7.9.5


