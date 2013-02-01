Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7022BE0072F
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 02:58:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2013 02:58:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,579,1355126400"; d="scan'208";a="281509332"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2013 02:58:27 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  1 Feb 2013 12:44:23 +0200
Message-Id: <1359715463-19614-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v7] [399231] Fix race conditions when reading using LocalShellOutputReader(s)
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
X-List-Received-Date: Fri, 01 Feb 2013 10:58:29 -0000

When running a remote command with a Local connection from a Linux host a new LocalHostShell is created.
At this time, a new LocalHostThread is launched, along side with two LocalShellOutputReaders (output and error). The constructors for the OutputReaders will receive a reference to the reader created by the LocalHostThread.

When calling runCommandRemote, the newly created IHostShell is returned, making it possible to create an adapter(IHostShellProcessAdapter) that  will then be used to read all available output from the readers.
When the LocalShellThread finishes running its run() method, it will perform a cleanup causing both readers (output and error) to be closed.
If at this point, there are any readers, or handlers to the readers that are still trying to read data (read using handlers readers), an error will be thrown saying that the the pipe to the stream is closed ("Ensure open stream"/ "Pipe closed" errors).
After inspecting the internalReadLine, it seems that it expects a null reference of the reader in order to consider that the reading is done.
In order to ensure that this will happen once the LocalShellThread closes the stream(s), we will make sure that the reference to the readers is set to null, and that LocalShellOutputReader(s) use the same reference of the reader as the LocalShellThread. For this to happen, a reference of the thread must be kept in the reader, in order to retrieve the correct reference of the underlying reader.
Since there can still be race conditions in this solution, all operations that involve the reference to now the only reader, must be performed under mutual exclusion using a shared lock between the LocalShellOutputReader and LocalShellThread.

[update]: do not modify any of the readers;use the shell instead

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../services/dstore/shells/DStoreHostShell.java    |   10 ++++++++
 .../services/local/shells/LocalHostShell.java      |   15 +++++++++++-
 .../services/local/shells/LocalShellThread.java    |   18 +++++++++++++++
 .../.settings/.api_filters                         |   22 ++++++++++++++++++
 .../services/shells/TerminalServiceHostShell.java  |   24 ++++++++++++++------
 .../eclipse/rse/services/shells/IHostShell.java    |   14 ++++++++++--
 6 files changed, 93 insertions(+), 10 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java
index 06763d3..f220581 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreHostShell.java
@@ -14,10 +14,13 @@
  * Contributors:
  * David McKnight   (IBM)  [251619] [dstore] shell output readers not cleaned up on disconnect
  * David McKnight   (IBM)  [244070] [dstore] DStoreHostShell#exit() does not terminate child processes
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader 
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.dstore.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
 import org.eclipse.dstore.core.model.DE;
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.core.model.DataStore;
@@ -92,5 +95,12 @@ public class DStoreHostShell extends AbstractHostShell implements IHostShell
 		
 	}
 
+	public Lock getLock() {
+		return null;
+	}
+
+	public BufferedReader getReader(boolean isErrorReader) {
+		return null;
+	}
 	
 }
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
index 250a904..1ddb0ae 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
@@ -13,10 +13,13 @@
  * 
  * Contributors:
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.rse.internal.services.local.shells.LocalShellOutputReader;
 import org.eclipse.rse.internal.services.local.shells.LocalShellThread;
@@ -38,7 +41,7 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 	{
 		_shellThread = new LocalShellThread(initialWorkingDirectory, invocation, encoding, environment);	
 		_stdoutHandler = new LocalShellOutputReader(this, _shellThread.getOutputStream(), false);
-		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(),true);
+		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(), true);
 	}
 	
 	protected void run(IProgressMonitor monitor)
@@ -84,5 +87,15 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 		writeToShell("exit"); //$NON-NLS-1$
 	}
 
+	public Lock getLock() {
+		return _shellThread.getLock();
+	}
+
+	public BufferedReader getReader(boolean isErrorReader) {
+		if (isErrorReader)
+			return _shellThread.getErrorStream();
+		else
+			return _shellThread.getOutputStream();
+	}
 
 }
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
index 0a33ad4..28e8ad9 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
@@ -17,6 +17,7 @@
  * David McKnight       (IBM)    - [189387] Use specified encoding for shell output
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
  * Anna Dushistova  (MontaVsita) - [249354] Incorrect behaviour of local shells subsystem runCommand method 
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
@@ -29,6 +30,8 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.OutputStreamWriter;
 import java.net.URL;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 
 import org.eclipse.core.runtime.FileLocator;
 
@@ -62,6 +65,7 @@ public class LocalShellThread extends Thread
 	private BufferedReader _stdInput;
 	private BufferedReader _stdError;
 
+	private Lock _lock;
 	/**
 	 * constructor for local command shell monitor
 	 * 
@@ -260,6 +264,7 @@ public class LocalShellThread extends Thread
 
 			_stdError = new BufferedReader(new InputStreamReader(_theProcess.getErrorStream()));
 
+			_lock = new ReentrantLock();
 		}
 		catch (IOException e)
 		{
@@ -438,9 +443,14 @@ public class LocalShellThread extends Thread
 		_isDone = true;
 		try
 		{
+			_lock.lock();
 			_stdInput.close();
 			_stdError.close();
 
+			_stdInput = null;
+			_stdError = null;
+
+			_lock.unlock();
 			if (_theProcess != null)
 			{
 
@@ -511,4 +521,12 @@ public class LocalShellThread extends Thread
 	}
 
 
+	public Lock getLock() {
+		return _lock;
+	}
+
+	public void setLock(Lock _lock) {
+		this._lock = _lock;
+	}
+
 }
diff --git a/rse/plugins/org.eclipse.rse.services/.settings/.api_filters b/rse/plugins/org.eclipse.rse.services/.settings/.api_filters
index 19273c2..11a5ad4 100644
--- a/rse/plugins/org.eclipse.rse.services/.settings/.api_filters
+++ b/rse/plugins/org.eclipse.rse.services/.settings/.api_filters
@@ -1,5 +1,13 @@
 <?xml version="1.0" encoding="UTF-8" standalone="no"?>
 <component id="org.eclipse.rse.services" version="2">
+    <resource path="META-INF/MANIFEST.MF">
+        <filter id="923795461">
+            <message_arguments>
+                <message_argument value="3.2.200"/>
+                <message_argument value="3.2.200"/>
+            </message_arguments>
+        </filter>
+    </resource>
     <resource path="META-INF/MANIFEST.MF" type="org.eclipse.rse.internal.services.terminals.AbstractTerminalService">
         <filter id="305324134">
             <message_arguments>
@@ -119,4 +127,18 @@
             </message_arguments>
         </filter>
     </resource>
+    <resource path="src/org/eclipse/rse/services/shells/IHostShell.java" type="org.eclipse.rse.services.shells.IHostShell">
+        <filter id="403804204">
+            <message_arguments>
+                <message_argument value="org.eclipse.rse.services.shells.IHostShell"/>
+                <message_argument value="getLock()"/>
+            </message_arguments>
+        </filter>
+        <filter id="403804204">
+            <message_arguments>
+                <message_argument value="org.eclipse.rse.services.shells.IHostShell"/>
+                <message_argument value="getReader(boolean)"/>
+            </message_arguments>
+        </filter>
+    </resource>
 </component>
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
index 2a461ad..9699e3a 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceHostShell.java
@@ -22,6 +22,7 @@
  * Anna Dushistova  (MontaVista) - [258720] SshHostShell fails to run command if initialWorkingDirectory supplied
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs error when hostShell.exit() is called
  * Martin Oberhuber (Wind River) - [356132] wait for initial output
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.shells;
@@ -32,6 +33,8 @@ import java.io.OutputStream;
 import java.io.OutputStreamWriter;
 import java.io.PrintWriter;
 import java.nio.charset.Charset;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 import java.util.regex.Pattern;
 
 import org.eclipse.rse.services.clientserver.PathUtility;
@@ -54,27 +57,27 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 	
 	private TerminalServiceShellWriterThread fShellWriter;
 
+	private BufferedReader fBufReader;
 	public TerminalServiceHostShell(ITerminalShell terminalShell,
 			String initialWorkingDirectory, String commandToRun,
 			String[] environment) {
 		try {
 			fTerminalShell = terminalShell;
 			String encoding = fTerminalShell.getDefaultEncoding();
-			BufferedReader bufReader;
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
@@ -170,4 +173,11 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 		return "echo $PWD'>'"; //$NON-NLS-1$
 	}
 
+	public Lock getLock() {
+		return new ReentrantLock();
+	}
+
+	public BufferedReader getReader(boolean isErrorReader) {
+		return fBufReader;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java
index 8139cfc..ed49c1d 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShell.java
@@ -11,11 +11,13 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
  * 
  * Contributors:
- * {Name} (company) - description of contribution.
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  ********************************************************************************/
 
 package org.eclipse.rse.services.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
 
 public interface IHostShell 
 {
@@ -28,5 +30,13 @@ public interface IHostShell
 	public IHostShellOutputReader getStandardErrorReader();
 	
 	public void exit();
+	/**
+	 * @since 3.2
+	 */
+	public Lock getLock();
+	/**
+	 * @since 3.2
+	 */
+	public BufferedReader getReader(boolean isErrorReader);
 	
-}
\ No newline at end of file
+}
-- 
1.7.9.5


