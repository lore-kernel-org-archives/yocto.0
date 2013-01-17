Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A67E01473
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2013 04:11:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2013 04:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,486,1355126400"; d="scan'208";a="248283875"
Received: from unknown (HELO localhost.localdomain) ([10.237.108.37])
	by orsmga001.jf.intel.com with ESMTP; 17 Jan 2013 04:11:11 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Jan 2013 14:11:07 +0200
Message-Id: <1358424667-3614-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2] [local patch for org.eclipse.rse.services] Fix race conditions for reading output from local processes
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
X-List-Received-Date: Thu, 17 Jan 2013 12:11:13 -0000

When creating a new LocalHostShell a new LocalHostThread is created, along side with two LocalShellOutputReaders (output and error).
Both readers will receive a reference to one of the localhostThread's readers.
When the thread finishes its task, the reader is closed. If any of the readers is "late" trying to read data, will through an error similar to "Ensure open stream" or "Pipe closed".
Any reading done on the reader should be done atomically, such that no reader should be caught off-guard when the stream closes.
Also, the readers should reference the thread's reader, otherwise nulling this reference will be useless.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../dstore/shells/DStoreShellOutputReader.java     |   52 ++++++++++++--------
 .../services/local/shells/LocalHostShell.java      |   22 ++++-----
 .../local/shells/LocalShellOutputReader.java       |   52 ++++++++++++++------
 .../services/local/shells/LocalShellThread.java    |   24 +++++++--
 .../.settings/.api_filters                         |   38 +++++++++++---
 .../shells/TerminalServiceShellOutputReader.java   |   25 +++++++---
 .../services/shells/IHostShellOutputReader.java    |   21 ++++++--
 7 files changed, 162 insertions(+), 72 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
index 84c9bb9..3f3e476 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shells/DStoreShellOutputReader.java
@@ -7,16 +7,19 @@
  *
  * Initial Contributors:
  * The following IBM employees contributed to the Remote System Explorer
- * component that contains this file: David McKnight, Kushal Munir, 
- * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson, 
+ * component that contains this file: David McKnight, Kushal Munir,
+ * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson,
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
- * 
+ *
  * Contributors:
  * David McKnight (IBM) - [286671] return null when status is null
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.dstore.shells;
 
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.extra.DomainEvent;
 import org.eclipse.dstore.extra.IDomainListener;
@@ -41,13 +44,13 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 			_status.getDataStore().getDomainNotifier().addDomainListener(this);
 		}
 	}
-	
+
 	public String getWorkingDirectory()
 	{
 		String pwd = _status.getSource();
 		return pwd;
 	}
-	
+
 	protected IHostOutput internalReadLine()
 	{
 		if (_status != null && _keepRunning)
@@ -57,9 +60,9 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 			while (newSize > _statusOffset)
 			{
 				DataElement line = _status.get(_statusOffset++);
-				
-			
-				
+
+
+
 				String type = line.getType();
 				boolean isError =  type.equals("error") || type.equals("stderr"); //$NON-NLS-1$ //$NON-NLS-2$
 				if (_isErrorReader && isError)
@@ -71,13 +74,13 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 					return new DStoreHostOutput(line);
 				}
 			}
-			
-		
+
+
 			try
 			{
 				if (_hostShell.isActive())
 				{
-					waitForResponse();	
+					waitForResponse();
 					return internalReadLine();
 				}
 				else
@@ -86,7 +89,7 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 				}
 			}
 			catch (Exception e)
-			{					
+			{
 				e.printStackTrace();
 			}
 		}
@@ -128,7 +131,7 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 	            // for now, this is pulled via internalReadLine()
 	        	notifyResponse();
 	        }
-		
+
 	}
 
 	/**
@@ -138,16 +141,16 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 	{
 		try
 		{
-			wait();		
+			wait();
 		}
 		catch (InterruptedException e)
 		{
 			e.printStackTrace();
 		}
 	}
-	
+
 	/**
-	 * Causes all threads waiting for this 
+	 * Causes all threads waiting for this
 	 * to wake up.
 	 */
 	public synchronized void notifyResponse()
@@ -161,13 +164,22 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 			e.printStackTrace();
 		}
 	}
-	
+
 	public void finish()
 	{
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
@@ -177,7 +189,7 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
         int currentSize = _linesOfOutput.size();
 
         for (int loop = currentSize; loop < totalSize; loop++)
-        {        	        	        	            
+        {
         	DataElement result = (DataElement) results.get(loop);
             addLine(result.getName());
         }
@@ -185,4 +197,4 @@ public class DStoreShellOutputReader extends AbstractHostShellOutputReader imple
 	*/
 
 }
- 
+
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
index 250a904..d272989 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalHostShell.java
@@ -7,10 +7,10 @@
  *
  * Initial Contributors:
  * The following IBM employees contributed to the Remote System Explorer
- * component that contains this file: David McKnight, Kushal Munir, 
- * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson, 
+ * component that contains this file: David McKnight, Kushal Munir,
+ * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson,
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
- * 
+ *
  * Contributors:
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
  *******************************************************************************/
@@ -18,8 +18,6 @@
 package org.eclipse.rse.internal.services.local.shells;
 
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.rse.internal.services.local.shells.LocalShellOutputReader;
-import org.eclipse.rse.internal.services.local.shells.LocalShellThread;
 import org.eclipse.rse.services.shells.AbstractHostShell;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IHostShellOutputReader;
@@ -33,19 +31,19 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 	private LocalShellThread _shellThread;
 	private LocalShellOutputReader _stdoutHandler;
 	private LocalShellOutputReader _stderrHandler;
-	
+
 	public LocalHostShell(String initialWorkingDirectory, String invocation, String encoding, String[] environment)
 	{
-		_shellThread = new LocalShellThread(initialWorkingDirectory, invocation, encoding, environment);	
-		_stdoutHandler = new LocalShellOutputReader(this, _shellThread.getOutputStream(), false);
-		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(),true);
+		_shellThread = new LocalShellThread(initialWorkingDirectory, invocation, encoding, environment);
+		_stdoutHandler = new LocalShellOutputReader(this, _shellThread.getOutputStream(), _shellThread, false);
+		_stderrHandler = new LocalShellOutputReader(this, _shellThread.getErrorStream(), _shellThread, true);
 	}
-	
+
 	protected void run(IProgressMonitor monitor)
 	{
 		_shellThread.start();
 	}
- 
+
 
 	/* (non-Javadoc)
 	 * @see org.eclipse.rse.services.shells.IHostShell#isActive()
@@ -68,7 +66,7 @@ public class LocalHostShell extends AbstractHostShell implements IHostShell
 	{
 		_shellThread.sendInput(command);
 	}
-	
+
 	public IHostShellOutputReader getStandardOutputReader()
 	{
 		return _stdoutHandler;
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
index ab8ff5c..ad3fa86 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutputReader.java
@@ -7,10 +7,10 @@
  *
  * Initial Contributors:
  * The following IBM employees contributed to the Remote System Explorer
- * component that contains this file: David McKnight, Kushal Munir, 
- * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson, 
+ * component that contains this file: David McKnight, Kushal Munir,
+ * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson,
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
- * 
+ *
  * Contributors:
  * {Name} (company) - description of contribution.
  *******************************************************************************/
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
index 0a33ad4..7407f2e 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellThread.java
@@ -16,7 +16,7 @@
  * Lothar Werzinger (Tradescape) - [161838] Support terminating local shells
  * David McKnight       (IBM)    - [189387] Use specified encoding for shell output
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive() wrong
- * Anna Dushistova  (MontaVsita) - [249354] Incorrect behaviour of local shells subsystem runCommand method 
+ * Anna Dushistova  (MontaVsita) - [249354] Incorrect behaviour of local shells subsystem runCommand method
  *******************************************************************************/
 
 package org.eclipse.rse.internal.services.local.shells;
@@ -29,6 +29,8 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.OutputStreamWriter;
 import java.net.URL;
+import java.util.concurrent.locks.Lock;
+import java.util.concurrent.locks.ReentrantLock;
 
 import org.eclipse.core.runtime.FileLocator;
 
@@ -62,9 +64,10 @@ public class LocalShellThread extends Thread
 	private BufferedReader _stdInput;
 	private BufferedReader _stdError;
 
+	private Lock _lock;
 	/**
 	 * constructor for local command shell monitor
-	 * 
+	 *
 	 * @param cwd initial working directory
 	 * @param invocation launch shell command
 	 * @param encoding encoding to use or <code>null</code> for default
@@ -192,7 +195,7 @@ public class LocalShellThread extends Thread
 							args = new String[1];
 							args[0] = _invocation;
 							_theProcess = Runtime.getRuntime().exec(args[0], envVars, theDirectory);
-						} else {	
+						} else {
 							args = new String[3];
 							args[0] = theShell;
 							args[1] = "-c";//$NON-NLS-1$
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
index 16364e1..fef0032 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceShellOutputReader.java
@@ -7,13 +7,13 @@
  *
  * Initial Contributors:
  * The following IBM employees contributed to the Remote System Explorer
- * component that contains this file: David McKnight, Kushal Munir, 
- * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson, 
+ * component that contains this file: David McKnight, Kushal Munir,
+ * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson,
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
- * 
+ *
  * Contributors:
- * Martin Oberhuber (Wind River) - Adapted from LocalShellOutputReader. 
- * Martin Oberhuber (Wind River) - Added vt100 escape sequence ignoring. 
+ * Martin Oberhuber (Wind River) - Adapted from LocalShellOutputReader.
+ * Martin Oberhuber (Wind River) - Added vt100 escape sequence ignoring.
  * Anna Dushistova  (MontaVista) - adapted from SshShellOutputReader
  * Anna Dushistova  (MontaVista) - [240523] [rseterminals] Provide a generic adapter factory that adapts any ITerminalService to an IShellService
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs error when hostShell.exit() is called
@@ -23,6 +23,7 @@ package org.eclipse.rse.internal.services.shells;
 
 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.rse.internal.services.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -125,8 +126,8 @@ public class TerminalServiceShellOutputReader extends
 				// in the Buffer...If not, then we assume it is waiting for
 				// input.
 				if (!done && !fReader.ready()) {
-					// wait to make sure -- max. 500 msec to wait for new chars 
-					// if we are not at a CRLF seems to be appropriate for the 
+					// wait to make sure -- max. 500 msec to wait for new chars
+					// if we are not at a CRLF seems to be appropriate for the
 					// Pipes and Threads in ssh.
 					long waitIncrement = 500;
 					// Check if we think we are at a prompt
@@ -163,7 +164,7 @@ public class TerminalServiceShellOutputReader extends
 		}
 		return new SimpleHostOutput(theLine.toString());
 	}
-	
+
 	/**
 	 * Stop the reader Thread, forcing internalReadLine() to return.
 	 * Does not close the Stream.
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
+		return null;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
index 103c31f..f8d49b0 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
@@ -1,21 +1,24 @@
 /********************************************************************************
  * Copyright (c) 2006 IBM Corporation. All rights reserved.
  * This program and the accompanying materials are made available under the terms
- * of the Eclipse Public License v1.0 which accompanies this distribution, and is 
+ * of the Eclipse Public License v1.0 which accompanies this distribution, and is
  * available at http://www.eclipse.org/legal/epl-v10.html
- * 
+ *
  * Initial Contributors:
  * The following IBM employees contributed to the Remote System Explorer
- * component that contains this file: David McKnight, Kushal Munir, 
- * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson, 
+ * component that contains this file: David McKnight, Kushal Munir,
+ * Michael Berger, David Dykstal, Phil Coulthard, Don Yantzi, Eric Simpson,
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley.
- * 
+ *
  * Contributors:
  * {Name} (company) - description of contribution.
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


