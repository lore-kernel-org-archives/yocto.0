Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E864E01409
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 08:39:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2013 08:39:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,913,1363158000"; d="scan'208";a="357457282"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2013 08:39:49 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 18:18:38 +0300
Message-Id: <1371827919-18181-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide access to readers in host shell
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
X-List-Received-Date: Fri, 21 Jun 2013 15:39:51 -0000

- add a plain getter in the AbstractHostShell class:
	- the compilation is not broken for subclasses of this class since it always returns null
        - the targeted classes (local and remote) can implement the getter (local implementation is already there)
        - the reader can be accessed and the output can be read in a synchronous way
- add implementation of getReader in TerminaServiceHostShell
        - store the underlying reader as a field of this class & return it
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../services/shells/TerminalServiceHostShell.java  |   20 ++++++++++++--------
 .../rse/services/shells/AbstractHostShell.java     |    9 +++++++--
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
index 2a461ad..0775894 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
@@ -22,6 +22,7 @@
  * Anna Dushistova  (MontaVista) - [258720] SshHostShell fails to run command if initialWorkingDirectory supplied
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs error when hostShell.exit() is called
  * Martin Oberhuber (Wind River) - [356132] wait for initial output
+ * Ioana Grigoropol (Intel)      - [411343] Provide access to readers in host shell
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.shells;
@@ -47,7 +48,7 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 	public static final String SHELL_INVOCATION = ">"; //$NON-NLS-1$
 
 	ITerminalShell fTerminalShell;
-	
+	BufferedReader fBufReader;
 	private TerminalServiceShellOutputReader fStdoutHandler;
 	
 	private TerminalServiceShellOutputReader fStderrHandler;
@@ -60,21 +61,21 @@ public class TerminalServiceHostShell extends AbstractHostShell {
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
@@ -170,4 +171,7 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 		return "echo $PWD'>'"; //$NON-NLS-1$
 	}
 
+	public BufferedReader getReader(boolean isErrorReader) {
+		return fBufReader;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/AbstractHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/AbstractHostShell.java
index 0ac8e3f..4d189b6 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/AbstractHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/AbstractHostShell.java
@@ -11,11 +11,13 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
  * 
  * Contributors:
- * {Name} (company) - description of contribution.
+ *   Ioana Grigoropol (Intel)      - [411343] Provide access to readers in host shell
  ********************************************************************************/
 
 package org.eclipse.rse.services.shells;
 
+import java.io.BufferedReader;
+
 
 public abstract class AbstractHostShell implements IHostShell
 {
@@ -34,4 +36,7 @@ public abstract class AbstractHostShell implements IHostShell
 		}
 	}
 
-}
\ No newline at end of file
+	public BufferedReader getReader(boolean isErrorReader){
+		return null;
+	}
+}
-- 
1.7.10.4


