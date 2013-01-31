Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C1FE011AB
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 03:50:18 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jan 2013 03:50:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,575,1355126400"; d="scan'208";a="250724749"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2013 03:50:16 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 31 Jan 2013 13:36:13 +0200
Message-Id: <1359632173-15728-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v6] [399231] Fix race conditions when reading using LocalShellOutputReader(s)
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
X-List-Received-Date: Thu, 31 Jan 2013 11:50:19 -0000

When running a remote command with a Local connection from a Linux host a new LocalHostShell is created.
At this time, a new LocalHostThread is launched, along side with two LocalShellOutputReaders (output and error). The constructors for the OutputReaders will receive a reference to the reader created by the LocalHostThread.

When calling runCommandRemote, the newly created IHostShell is returned, making it possible to create an adapter(IHostShellProcessAdapter) that  will then be used to read all available output from the readers.
When the LocalShellThread finishes running its run() method, it will perform a cleanup causing both readers (output and error) to be closed.
If at this point, there are any readers, or handlers to the readers that are still trying to read data (read using handlers readers), an error will be thrown saying that the the pipe to the stream is closed ("Ensure open stream"/ "Pipe closed" errors).
After inspecting the internalReadLine, it seems that it expects a null reference of the reader in order to consider that the reading is done.
In order to ensure that this will happen once the LocalShellThread closes the stream(s), we will make sure that the reference to the readers is set to null, and that LocalShellOutputReader(s) use the same reference of the reader as the LocalShellThread. For this to happen, a reference of the thread must be kept in the reader, in order to retrieve the correct reference of the underlying reader.
Since there can still be race conditions in this solution, all operations that involve the reference to now the only reader, must be performed under mutual exclusion using a shared lock between the LocalShellOutputReader and LocalShellThread.

[update] : there is no need to protect internalReadLine with locks as long as we do it when reading.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../dstore/shells/DStoreShellOutputReader.java     |   12 ++++++++
 .../services/local/shells/LocalHostShell.java      |    5 ++--
 .../local/shells/LocalShellOutputReader.java       |   29 +++++++++++++-------
 .../services/local/shells/LocalShellThread.java    |   18 ++++++++++++
 .../.settings/.api_filters                         |   22 +++++++++++++++
 .../shells/TerminalServiceShellOutputReader.java   |   14 ++++++++++
 .../services/shells/IHostShellOutputReader.java    |   13 ++++++++-
 7 files changed, 100 insertions(+), 13 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
index 84c9bb9..35dbea4 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
@@ -13,10 +13,13 @@
  * 
  * Contributors:
  * David McKnight (IBM) - [286671] return null when status is null
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.dstore.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.extra.DomainEvent;
 import org.eclipse.dstore.extra.IDomainListener;
@@ -168,6 +171,15 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 		notifyResponse();
 	}
 	
+	public BufferedReader getReader() {
+		// TODO Auto-generated method stub
+		return null;
+	}
+
+	public Lock getReaderLock() {
+		return null;
+	}
+
 	/*
 	private void handleInput()
 	{
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
index 250a904..213bf2e 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
@@ -13,6 +13,7 @@
  * 
  * Contributors:
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
@@ -37,8 +38,8 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 	public LocalHostShell(String initialWorkingDirectory, String invocation, String encoding, String[] environment)
 	{
 		_shellThread = new LocalShellThread(initialWorkingDirectory, invocation, encoding, environment);	
-		_stdoutHandler = new LocalShellOutputReader(this, _shellThread.getOutputStream(), false);
-		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(),true);
+		_stdoutHandler = new LocalShellOutputReader(this, _shellThread, false);
+		_stderrHandler = new LocalShellOutputReader(this, _shellThread, true);
 	}
 	
 	protected void run(IProgressMonitor monitor)
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
index ab8ff5c..fd7096c 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
@@ -12,13 +12,14 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
  * 
  * Contributors:
- * {Name} (company) - description of contribution.
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.rse.internal.services.local.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -33,14 +34,14 @@ import org.eclipse.rse.services.shells.SimpleHostOutput;
  */
 public class LocalShellOutputReader extends AbstractHostShellOutputReader implements IHostShellOutputReader
 {
-	protected BufferedReader _reader;
+	private LocalShellThread _shellThread;
 	private String fPromptChars = ">$%#]"; //Characters we accept as the end of a prompt //$NON-NLS-1$;
 
 	
-	public LocalShellOutputReader(IHostShell hostShell, BufferedReader reader, boolean isErrorReader)
+	public LocalShellOutputReader(IHostShell hostShell, LocalShellThread shellThread, boolean isErrorReader)
 	{
 		super(hostShell, isErrorReader);
-		_reader = reader;
+		_shellThread = shellThread;
 	}
 	/*
 	protected Object internalReadLine()
@@ -137,7 +138,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 	}
 */
 	protected IHostOutput internalReadLine() {
-		if (_reader == null) {
+		if (getReader() == null) {
 			//Our workaround sets the stderr reader to null, so we never give any stderr output.
 			//TODO Check if ssh supports some method of having separate stdout and stderr streams
 			return null;
@@ -149,7 +150,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 		boolean done = false;
 		while (!done && !isFinished()) {
 			try {
-				ch = _reader.read();
+				ch = getReader().read();
 				switch (ch) {
 				case -1:
 				case 65535:
@@ -185,13 +186,13 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 						theLine.append(tch); // Any other character
 					} else if (ch == 27) {
 						// Escape: ignore next char too
-						int nch = _reader.read();
+						int nch = getReader().read();
 						if (theDebugLine!=null) theDebugLine.append((char)nch);
 						if (nch == 91) {
 							//vt100 escape sequence: read until end-of-command (skip digits and semicolon)
 							//e.g. \x1b;13;m --> ignore the entire command, including the trailing m
 							do {
-								nch = _reader.read();
+								nch = getReader().read();
 								if (theDebugLine!=null) theDebugLine.append((char)nch);
 							} while (Character.isDigit((char)nch) || nch == ';');
 						}
@@ -202,7 +203,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 				// there are more characters
 				// in the Buffer...If not, then we assume it is waiting for
 				// input.
-				if (!done && !_reader.ready()) {
+				if (!done && !getReader().ready()) {
 					// wait to make sure -- max. 500 msec to wait for new chars 
 					// if we are not at a CRLF seems to be appropriate for the 
 					// Pipes and Threads in ssh.
@@ -219,7 +220,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 						Thread.sleep(waitIncrement);
 					} catch (InterruptedException e) {
 					}
-					if (!_reader.ready()) {
+					if (!getReader().ready()) {
 						done = true;
 					}
 				}
@@ -237,6 +238,14 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 		}
 		return new SimpleHostOutput(theLine.toString());
 	}
+	public BufferedReader getReader() {
+		if (isErrorReader())
+			return _shellThread.getErrorStream();
+		return _shellThread.getOutputStream();
+	}
+	public Lock getReaderLock() {
+		return _shellThread.getLock();
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
index 19273c2..da67bc9 100644
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
+    <resource path="src/org/eclipse/rse/services/shells/IHostShellOutputReader.java" type="org.eclipse.rse.services.shells.IHostShellOutputReader">
+        <filter id="403804204">
+            <message_arguments>
+                <message_argument value="org.eclipse.rse.services.shells.IHostShellOutputReader"/>
+                <message_argument value="getReader()"/>
+            </message_arguments>
+        </filter>
+        <filter id="403804204">
+            <message_arguments>
+                <message_argument value="org.eclipse.rse.services.shells.IHostShellOutputReader"/>
+                <message_argument value="getReaderLock()"/>
+            </message_arguments>
+        </filter>
+    </resource>
 </component>
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
index 16364e1..9b01c10 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
@@ -17,12 +17,15 @@
  * Anna Dushistova  (MontaVista) - adapted from SshShellOutputReader
  * Anna Dushistova  (MontaVista) - [240523] [rseterminals] Provide a generic adapter factory that adapts any ITerminalService to an IShellService
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs error when hostShell.exit() is called
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 
 import org.eclipse.rse.internal.services.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -36,6 +39,7 @@ import org.eclipse.rse.services.shells.SimpleHostOutput;
 public class TerminalServiceShellOutputReader extends
 		AbstractHostShellOutputReader {
 	protected BufferedReader fReader;
+	protected Lock lock;
 	private volatile Thread fReaderThread = null;
 	private volatile boolean isCanceled = false;
 	private String fPromptChars = ">$%#]"; //Characters we accept as the end of a prompt //$NON-NLS-1$;
@@ -174,4 +178,14 @@ public class TerminalServiceShellOutputReader extends
 			fReaderThread.interrupt();
 		}
 	}
+
+	public BufferedReader getReader() {
+		return fReader;
+	}
+
+	public Lock getReaderLock() {
+		if (lock == null)
+			lock = new ReentrantLock();
+		return lock;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
index 103c31f..b70b3db 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
@@ -11,11 +11,14 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
  * 
  * Contributors:
- * {Name} (company) - description of contribution.
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
  ********************************************************************************/
 
 package org.eclipse.rse.services.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 public interface IHostShellOutputReader extends IHostShellOutputNotifier
 {
 	public IHostOutput readLine();
@@ -23,4 +26,12 @@ public interface IHostShellOutputReader extends IHostShellOutputNotifier
 	public void addOutputListener(IHostShellOutputListener listener);
 	public boolean isErrorReader();
 	public void finish();
+	/**
+	 * @since 3.2
+	 */
+	public BufferedReader getReader();
+	/**
+	 * @since 3.2
+	 */
+	public Lock getReaderLock();
 }
\ No newline at end of file
-- 
1.7.9.5


