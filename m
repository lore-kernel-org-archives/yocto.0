Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96232E01458
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 01:12:22 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2013 01:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,550,1355126400"; d="scan'208";a="282971281"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2013 01:12:20 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Jan 2013 10:58:29 +0200
Message-Id: <1359363509-32604-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v5] [399231] Fix race conditions when reading using LocalShellOutputReader(s)
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
X-List-Received-Date: Mon, 28 Jan 2013 09:12:23 -0000

When running a remote command with a Local connection from a Linux host a new LocalHostShell is created.
At this time, a new LocalHostThread is launched, along side with two LocalShellOutputReaders (output and error). The constructors for the OutputReaders will receive a reference to the reader created by the LocalHostThread.

When calling runCommandRemote, the newly created IHostShell is returned, making it possible to create an adapter(IHostShellProcessAdapter) that  will then be used to read all available output from the readers.
When the LocalShellThread finishes running its run() method, it will perform a cleanup causing both readers (output and error) to be closed.
If at this point, there are any readers, or handlers to the readers that are still trying to read data (read using handlers readers), an error will be thrown saying that the the pipe to the stream is closed ("Ensure open stream"/ "Pipe closed" errors).
After inspecting the internalReadLine, it seems that it expects a null reference of the reader in order to consider that the reading is done.
In order to ensure that this will happen once the LocalShellThread closes the stream(s), we will make sure that the reference to the readers is set to null, and that LocalShellOutputReader(s) use the same reference of the reader as the LocalShellThread. For this to happen, a reference of the thread must be kept in the reader, in order to retrieve the correct reference of the underlying reader.
Since there can still be race conditions in this solution, all operations that involve the reference to now the only reader, must be performed under mutual exclusion using a shared lock between the LocalShellOutputReader and LocalShellThread.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../dstore/shells/DStoreShellOutputReader.java     |   20 +++++++-
 .../services/local/shells/LocalHostShell.java      |   12 +++--
 .../local/shells/LocalShellOutputReader.java       |   53 ++++++++++++++------
 .../services/local/shells/LocalShellThread.java    |   24 +++++++++
 .../.settings/.api_filters                         |   38 +++++++++++---
 .../shells/TerminalServiceShellOutputReader.java   |   20 ++++++++
 .../services/shells/IHostShellOutputReader.java    |   20 +++++++-
 7 files changed, 159 insertions(+), 28 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
index 84c9bb9..d918b35 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
@@ -13,10 +13,19 @@
  * 
  * Contributors:
  * David McKnight (IBM) - [286671] return null when status is null
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
+ * Legal Message:
+ * I, Ioana Grigorpol, declare that I developed the attached code from scratch,
+ * without referencing any 3rd party materials except material licensed under
+ * the EPL.
+ * I am authorized by my employer to make this contribution under the EPL.
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.dstore.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.extra.DomainEvent;
 import org.eclipse.dstore.extra.IDomainListener;
@@ -167,7 +176,16 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 		super.finish();
 		notifyResponse();
 	}
-	
+
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
index 250a904..b2eed82 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
@@ -13,6 +13,12 @@
  * 
  * Contributors:
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
+ * Legal Message:
+ * I, Ioana Grigorpol, declare that I developed the attached code from scratch,
+ * without referencing any 3rd party materials except material licensed under
+ * the EPL.
+ * I am authorized by my employer to make this contribution under the EPL.
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
@@ -36,9 +42,9 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 	
 	public LocalHostShell(String initialWorkingDirectory, String invocation, String encoding, String[] environment)
 	{
-		_shellThread = new LocalShellThread(initialWorkingDirectory, invocation, encoding, environment);	
-		_stdoutHandler = new LocalShellOutputReader(this, _shellThread.getOutputStream(), false);
-		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(),true);
+		_shellThread = new LocalShellThread(initialWorkingDirectory, invocation, encoding, environment);
+		_stdoutHandler = new LocalShellOutputReader(this, _shellThread.getOutputStream(), _shellThread, false);
+		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(), _shellThread, true);
 	}
 	
 	protected void run(IProgressMonitor monitor)
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
index ab8ff5c..e1d6f36 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
@@ -12,13 +12,19 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
  * 
  * Contributors:
- * {Name} (company) - description of contribution.
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
+ * Legal Message:
+ * I, Ioana Grigorpol, declare that I developed the attached code from scratch,
+ * without referencing any 3rd party materials except material licensed under
+ * the EPL.
+ * I am authorized by my employer to make this contribution under the EPL.
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.rse.internal.services.local.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -33,14 +39,16 @@ import org.eclipse.rse.services.shells.SimpleHostOutput;
  */
 public class LocalShellOutputReader extends AbstractHostShellOutputReader implements IHostShellOutputReader
 {
-	protected BufferedReader _reader;
+//	protected BufferedReader _reader;
+	private LocalShellThread _shellThread;
 	private String fPromptChars = ">$%#]"; //Characters we accept as the end of a prompt //$NON-NLS-1$;
 
-	
-	public LocalShellOutputReader(IHostShell hostShell, BufferedReader reader, boolean isErrorReader)
+
+	public LocalShellOutputReader(IHostShell hostShell, BufferedReader reader, LocalShellThread shellThread, boolean isErrorReader)
 	{
 		super(hostShell, isErrorReader);
-		_reader = reader;
+//		_reader = reader;
+		_shellThread = shellThread;
 	}
 	/*
 	protected Object internalReadLine()
@@ -137,9 +145,11 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 	}
 */
 	protected IHostOutput internalReadLine() {
-		if (_reader == null) {
+		getLock().lock();
+		if (getReader() == null) {
 			//Our workaround sets the stderr reader to null, so we never give any stderr output.
 			//TODO Check if ssh supports some method of having separate stdout and stderr streams
+			getLock().unlock();
 			return null;
 		}
 		StringBuffer theLine = new StringBuffer();
@@ -149,12 +159,14 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 		boolean done = false;
 		while (!done && !isFinished()) {
 			try {
-				ch = _reader.read();
+				ch = getReader().read();
 				switch (ch) {
 				case -1:
 				case 65535:
-					if (theLine.length() == 0) // End of Reader
+					if (theLine.length() == 0) {// End of Reader
+						getLock().unlock();
 						return null;
+					}
 					done = true;
 					break;
 				case '\b': //backspace
@@ -185,13 +197,13 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
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
@@ -202,9 +214,9 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 				// there are more characters
 				// in the Buffer...If not, then we assume it is waiting for
 				// input.
-				if (!done && !_reader.ready()) {
-					// wait to make sure -- max. 500 msec to wait for new chars 
-					// if we are not at a CRLF seems to be appropriate for the 
+				if (!done && !getReader().ready()) {
+					// wait to make sure -- max. 500 msec to wait for new chars
+					// if we are not at a CRLF seems to be appropriate for the
 					// Pipes and Threads in ssh.
 					long waitIncrement = 500;
 					// Check if we think we are at a prompt
@@ -219,7 +231,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 						Thread.sleep(waitIncrement);
 					} catch (InterruptedException e) {
 					}
-					if (!_reader.ready()) {
+					if (!getReader().ready()) {
 						done = true;
 					}
 				}
@@ -228,6 +240,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 				//our reader thread completely... the exception could just be
 				//temporary, and we should keep running!
 				Activator.getDefault().logException(e);
+				getLock().unlock();
 				return null;
 			}
 		}
@@ -235,8 +248,20 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 			String debugLine = theDebugLine.toString();
 			debugLine.compareTo(""); //$NON-NLS-1$
 		}
+		getLock().unlock();
 		return new SimpleHostOutput(theLine.toString());
 	}
+	private Lock getLock() {
+		return _shellThread.getLock();
+	}
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
index 0a33ad4..567d0eb 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
@@ -17,6 +17,12 @@
  * David McKnight       (IBM)    - [189387] Use specified encoding for shell output
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
  * Anna Dushistova  (MontaVsita) - [249354] Incorrect behaviour of local shells subsystem runCommand method 
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
+ * Legal Message:
+ * I, Ioana Grigorpol, declare that I developed the attached code from scratch,
+ * without referencing any 3rd party materials except material licensed under
+ * the EPL.
+ * I am authorized by my employer to make this contribution under the EPL.
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
@@ -29,6 +35,8 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.OutputStreamWriter;
 import java.net.URL;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 
 import org.eclipse.core.runtime.FileLocator;
 
@@ -62,6 +70,7 @@ public class LocalShellThread extends Thread
 	private BufferedReader _stdInput;
 	private BufferedReader _stdError;
 
+	private Lock _lock;
 	/**
 	 * constructor for local command shell monitor
 	 * 
@@ -260,6 +269,7 @@ public class LocalShellThread extends Thread
 
 			_stdError = new BufferedReader(new InputStreamReader(_theProcess.getErrorStream()));
 
+			_lock = new ReentrantLock();
 		}
 		catch (IOException e)
 		{
@@ -438,9 +448,14 @@ public class LocalShellThread extends Thread
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
 
@@ -511,4 +526,13 @@ public class LocalShellThread extends Thread
 	}
 
 
+	public Lock getLock() {
+		return _lock;
+	}
+
+
+	public void setLock(Lock _lock) {
+		this._lock = _lock;
+	}
+
 }
diff --git a/rse/plugins/org.eclipse.rse.services/.settings/.api_filters b/rse/plugins/org.eclipse.rse.services/.settings/.api_filters
index 19273c2..da9417a 100644
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
@@ -32,13 +40,13 @@
         <filter id="305324134">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.BaseShellDecorator"/>
-                <message_argument value="org.eclipse.rse.services_3.1.1"/>
+                <message_argument value="org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id="305324134">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.BaseShellDecorator"/>
-                <message_argument value="org.eclipse.rse.services_3.1.0"/>
+                <message_argument value="org.eclipse.rse.services_3.1.1"/>
             </message_arguments>
         </filter>
     </resource>
@@ -46,13 +54,13 @@
         <filter id="305324134">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.IBaseShell"/>
-                <message_argument value="org.eclipse.rse.services_3.1.1"/>
+                <message_argument value="org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id="305324134">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.IBaseShell"/>
-                <message_argument value="org.eclipse.rse.services_3.1.0"/>
+                <message_argument value="org.eclipse.rse.services_3.1.1"/>
             </message_arguments>
         </filter>
     </resource>
@@ -88,13 +96,13 @@
         <filter id="305324134">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.TerminalShellDecorator"/>
-                <message_argument value="org.eclipse.rse.services_3.1.1"/>
+                <message_argument value="org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id="305324134">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.TerminalShellDecorator"/>
-                <message_argument value="org.eclipse.rse.services_3.1.0"/>
+                <message_argument value="org.eclipse.rse.services_3.1.1"/>
             </message_arguments>
         </filter>
     </resource>
@@ -109,13 +117,27 @@
         <filter id="305365105">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.ProcessBaseShell"/>
-                <message_argument value="org.eclipse.rse.services_3.1.1"/>
+                <message_argument value="org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id="305365105">
             <message_arguments>
                 <message_argument value="org.eclipse.rse.internal.services.terminals.ProcessBaseShell"/>
-                <message_argument value="org.eclipse.rse.services_3.1.0"/>
+                <message_argument value="org.eclipse.rse.services_3.1.1"/>
+            </message_arguments>
+        </filter>
+    </resource>
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
             </message_arguments>
         </filter>
     </resource>
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
index 16364e1..67a4ccd 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
@@ -17,12 +17,21 @@
  * Anna Dushistova  (MontaVista) - adapted from SshShellOutputReader
  * Anna Dushistova  (MontaVista) - [240523] [rseterminals] Provide a generic adapter factory that adapts any ITerminalService to an IShellService
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs error when hostShell.exit() is called
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
+ * Legal Message:
+ * I, Ioana Grigorpol, declare that I developed the attached code from scratch,
+ * without referencing any 3rd party materials except material licensed under
+ * the EPL.
+ * I am authorized by my employer to make this contribution under the EPL.
+
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 
 import org.eclipse.rse.internal.services.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -36,6 +45,7 @@ import org.eclipse.rse.services.shells.SimpleHostOutput;
 public class TerminalServiceShellOutputReader extends
 		AbstractHostShellOutputReader {
 	protected BufferedReader fReader;
+	protected Lock lock;
 	private volatile Thread fReaderThread = null;
 	private volatile boolean isCanceled = false;
 	private String fPromptChars = ">$%#]"; //Characters we accept as the end of a prompt //$NON-NLS-1$;
@@ -174,4 +184,14 @@ public class TerminalServiceShellOutputReader extends
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
index 103c31f..1399866 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
@@ -11,11 +11,19 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
  * 
  * Contributors:
- * {Name} (company) - description of contribution.
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when trying to read from local processes using LocalShellOutputReader
+ * Legal Message:
+ * I, Ioana Grigorpol, declare that I developed the attached code from scratch,
+ * without referencing any 3rd party materials except material licensed under
+ * the EPL.
+ * I am authorized by my employer to make this contribution under the EPL.
  ********************************************************************************/
 
 package org.eclipse.rse.services.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 public interface IHostShellOutputReader extends IHostShellOutputNotifier
 {
 	public IHostOutput readLine();
@@ -23,4 +31,12 @@ public interface IHostShellOutputReader extends IHostShellOutputNotifier
 	public void addOutputListener(IHostShellOutputListener listener);
 	public boolean isErrorReader();
 	public void finish();
-}
\ No newline at end of file
+	/**
+	 * @since 3.2
+	 */
+	public BufferedReader getReader();
+	/**
+	 * @since 3.2
+	 */
+	public Lock getReaderLock();
+}
-- 
1.7.9.5


