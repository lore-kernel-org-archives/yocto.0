Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A55CE002AB
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 08:53:30 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Jan 2013 08:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,493,1355126400"; d="scan'208";a="245673593"
Received: from igrigorx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.237.108.166])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2013 08:53:28 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Jan 2013 18:53:23 +0200
Message-Id: <1358528003-3695-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v3] [local patch for org.eclipse.rse.services] Fix race conditions for reading output from local processes
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
X-List-Received-Date: Fri, 18 Jan 2013 16:53:30 -0000

When running a command using RSE Api, using a Local connection from a linux host a new LocalHostShell is created.
When this is created, a new LocalHostThread is launched, along side with two LocalShellOutputReaders (output and error). The constructors for the OutputReaders will receive a reference to the reader created by the LocalHostThread.

When calling runCommandRemote, the newly creared IHostShell is returned, making it possible to create an adapter(IHostShellProcessAdapter) that  will then be used to read all available output from the readers.
When the LocalHostThread finishes running its run() method, it will perform a cleanup causing both readers (output and error) to be closed. If at this point, there are any readers, or handlers to the readers that are still trying to read data (using internalReadLine or read on handlers), obviously, an error will be thrown saying that the the pipe to the stream is closed ("Ensure open stream"/ "Pipe closed" errors).
After inspecting the internalReadLine, it seems that it expects a null reference of the reader in order to consider that the reading is done. In order to ensure that this will happen once the LocalHostThread closes the stream(s), we will make sure that the reference to the readers is set to null, and that LocalShellOutputReaders use the same reference. For this to happen, a reference of the thread must be kept in the reader, in order to retrieve the correct reference of the underlying reader.
Since there can still be race conditions in this solution, all operations that involve the reference to now the only reader, must be performed under mutual exclusion using a shared lock between the LocalShellOutputReader and LocalHostThread.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../dstore/shells/DStoreShellOutputReader.java     |   14 +++++-
 .../services/local/shells/LocalHostShell.java      |    6 +--
 .../local/shells/LocalShellOutputReader.java       |   46 ++++++++++++++------
 .../services/local/shells/LocalShellThread.java    |   18 ++++++++
 .../.settings/.api_filters                         |   38 ++++++++++++----
 .../shells/TerminalServiceShellOutputReader.java   |    9 ++++
 .../services/shells/IHostShellOutputReader.java    |   11 +++++
 7 files changed, 117 insertions(+), 25 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
index 84c9bb9..281e240 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
@@ -17,6 +17,9 @@
 
 package org.eclipse.rse.internal.services.dstore.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.extra.DomainEvent;
 import org.eclipse.dstore.extra.IDomainListener;
@@ -167,7 +170,16 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
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
index 250a904..3179bab 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
@@ -36,9 +36,9 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 	
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
index ab8ff5c..021095e 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
@@ -19,6 +19,7 @@ package org.eclipse.rse.internal.services.local.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.rse.internal.services.local.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -33,14 +34,16 @@ import org.eclipse.rse.services.shells.SimpleHostOutput;
  */
 public class LocalShellOutputReader extends AbstractHostShellOutputReader implements IHostShellOutputReader
 {
-	protected BufferedReader _reader;
+//	protected volatile BufferedReader _reader;
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
@@ -137,9 +140,11 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
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
@@ -149,12 +154,14 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
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
@@ -185,13 +192,13 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
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
@@ -202,9 +209,9 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
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
@@ -219,7 +226,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 						Thread.sleep(waitIncrement);
 					} catch (InterruptedException e) {
 					}
-					if (!_reader.ready()) {
+					if (!getReader().ready()) {
 						done = true;
 					}
 				}
@@ -228,6 +235,7 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
 				//our reader thread completely... the exception could just be
 				//temporary, and we should keep running!
 				Activator.getDefault().logException(e);
+				getLock().unlock();
 				return null;
 			}
 		}
@@ -235,8 +243,20 @@ public class LocalShellOutputReader extends AbstractHostShellOutputReader implem
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
index 0a33ad4..18f1373 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
@@ -29,6 +29,8 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.OutputStreamWriter;
 import java.net.URL;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 
 import org.eclipse.core.runtime.FileLocator;
 
@@ -62,6 +64,7 @@ public class LocalShellThread extends Thread
 	private BufferedReader _stdInput;
 	private BufferedReader _stdError;
 
+	private Lock _lock;
 	/**
 	 * constructor for local command shell monitor
 	 * 
@@ -260,6 +263,7 @@ public class LocalShellThread extends Thread
 
 			_stdError = new BufferedReader(new InputStreamReader(_theProcess.getErrorStream()));
 
+			_lock = new ReentrantLock();
 		}
 		catch (IOException e)
 		{
@@ -438,9 +442,14 @@ public class LocalShellThread extends Thread
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
 
@@ -511,4 +520,13 @@ public class LocalShellThread extends Thread
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
index 19273c2..b550320 100644
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
index 16364e1..3e5c655 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
@@ -23,6 +23,7 @@ package org.eclipse.rse.internal.services.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.rse.internal.services.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -174,4 +175,12 @@ public class TerminalServiceShellOutputReader extends
 			fReaderThread.interrupt();
 		}
 	}
+
+	public BufferedReader getReader() {
+		return fReader;
+	}
+
+	public Lock getReaderLock() {
+		return new ReentrantLock();;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
index 103c31f..5f8bf78 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
@@ -16,6 +16,9 @@
 
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


