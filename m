Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0D6CE0149D
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:07:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2013 01:07:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="334817006"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2013 01:07:11 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 10:46:59 +0300
Message-Id: <1368085635-24575-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 2/7] Move RemoteShellExec to separate plugin
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
X-List-Received-Date: Thu, 09 May 2013 08:07:13 -0000

- RemoteShellExec is a wrapper over a remote executiong of a command in a shell and it belongs to org.yocto.remote.utils plugin
- remove RemoteShellExec from remotetools plugin and add it to org.yocto.remote.utils
- modify org.yocto.sdk.remotetools to use implementation from org.yocto.remote.utils

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/remote/utils/RemoteShellExec.java    |  140 ++++++++++++++++++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    2 +-
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 --------------------
 3 files changed, 141 insertions(+), 150 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
new file mode 100644
index 0000000..48b4f4d
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
@@ -0,0 +1,140 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
+import java.io.OutputStream;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
+
+public class RemoteShellExec {
+
+	public static final int
+    STATE_NULL = 0,
+    STATE_RUNNING = 1,
+    STATE_EXITED = 2;
+
+	private final String command;
+	private final IHost host;
+
+	private InputStream fInStream;
+    private OutputStream fOutStream;
+    private InputStream fErrStream;
+    private Process remoteShellProcess;
+
+	private int exitCode = 0;
+	private int status = STATE_NULL;
+
+	private final String RETURN_VALUE_TAG = "org.yocto.sdk.remotetools.RVTAG";
+	private final String RETURN_VALUE_CMD = ";echo \"" + RETURN_VALUE_TAG + "$?\"";
+
+	public RemoteShellExec(IHost host, String command) {
+		assert(host != null);
+		this.host = host;
+		this.command = command;
+	}
+
+	public int getStatus() {
+		return status;
+	}
+
+	public int getExitCode() {
+		return exitCode;
+	}
+
+	private void reset() {
+		fInStream = null;
+		fOutStream = null;
+		fErrStream = null;
+
+		remoteShellProcess = null;
+		exitCode = 0;
+		status = STATE_NULL;
+	}
+
+	public InputStream getInputStream() {
+        return fInStream;
+    }
+
+    public OutputStream getOutputStream() {
+        return fOutStream;
+    }
+
+    public InputStream getErrStream() {
+        return fErrStream;
+    }
+
+	public synchronized void start(String prelaunchCmd, String argument, IProgressMonitor monitor) throws Exception {
+		if(status == STATE_RUNNING)
+				return;
+
+		reset();
+		argument = (argument == null ? RETURN_VALUE_CMD : argument + RETURN_VALUE_CMD);
+		remoteShellProcess = RSEHelper.remoteShellExec(this.host, prelaunchCmd, this.command, argument, monitor);
+		fInStream = remoteShellProcess.getInputStream();
+		fOutStream = remoteShellProcess.getOutputStream();
+		fErrStream = remoteShellProcess.getErrorStream();
+		status = STATE_RUNNING;
+	}
+
+	 public synchronized void terminate() throws Exception {
+		 if(status != STATE_RUNNING || remoteShellProcess != null)
+			 return;
+
+		 remoteShellProcess.destroy();
+		 reset();
+	 }
+
+	 public int waitFor(IProgressMonitor monitor) throws InterruptedException {
+		 while(status == STATE_RUNNING) {
+			 if(monitor != null) {
+	    			if(monitor.isCanceled()) {
+	    				throw new InterruptedException("User Cancelled");
+	    			}
+ 			 }
+
+			 try {
+				 remoteShellProcess.waitFor();
+			 }catch(InterruptedException e){
+				 //get the return value
+				 try {
+					 if(fInStream.available() != 0) {
+						 BufferedReader in = new BufferedReader(new InputStreamReader(fInStream));
+						 String thisline;
+						 int idx;
+						 while((thisline = in.readLine()) != null) {
+							    if(thisline.indexOf(RETURN_VALUE_CMD) == -1) {
+									idx = thisline.indexOf(RETURN_VALUE_TAG);
+									if(idx != -1) {
+										try {
+											exitCode=(new Integer(thisline.substring(idx+RETURN_VALUE_TAG.length()))).intValue();
+										}catch(NumberFormatException e2) {
+										}
+										break;
+									}
+							    }
+						 }
+					 }
+				 }catch(IOException e1) {
+					 //do nothing
+				 }
+			 }finally {
+				 status=STATE_EXITED;
+			 }
+		 }
+		 return exitCode;
+	 }
+}
+
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index 08cb873..dacd192 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -19,7 +19,7 @@ import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
 import org.yocto.remote.utils.RSEHelper;
-import org.yocto.sdk.remotetools.remote.RemoteShellExec;
+import org.yocto.remote.utils.RemoteShellExec;
 
 abstract public class BaseModel implements IRunnableWithProgress {
 	protected IHost host;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
deleted file mode 100644
index bfcbbfc..0000000
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
+++ /dev/null
@@ -1,149 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - initial API and implementation
- *******************************************************************************/
-package org.yocto.sdk.remotetools.remote;
-
-import java.io.BufferedReader;
-import java.io.IOException;
-import java.io.InputStream;
-import java.io.InputStreamReader;
-import java.io.OutputStream;
-
-import org.eclipse.core.runtime.IProgressMonitor;
-//import org.eclipse.tcf.protocol.IToken;
-//import org.eclipse.tcf.services.IStreams;
-//import org.eclipse.tcf.services.IProcesses;
-//import org.eclipse.tcf.util.TCFTask;
-import org.eclipse.rse.core.model.IHost;
-import org.yocto.remote.utils.RSEHelper;
-
-public class RemoteShellExec {
-	
-	public static final int
-    STATE_NULL = 0,
-    STATE_RUNNING = 1,
-    STATE_EXITED = 2;
-	
-	private String command;
-	private IHost host;
-	
-	private InputStream fInStream;
-    private OutputStream fOutStream;
-    private InputStream fErrStream;
-    private Process remoteShellProcess;
-	
-	private int exit_code=0;
-	private int status=STATE_NULL;
-	
-	private String RETURN_VALUE_TAG = "org.yocto.sdk.remotetools.RVTAG";
-	private String RETURN_VALUE_CMD = ";echo \"" + RETURN_VALUE_TAG + "$?\"";
-	
-	public RemoteShellExec(IHost host, String command) {
-		assert(host != null);
-		this.host = host;
-		this.command=command;
-	}
-	
-	public int getStatus()
-	{
-		return status;
-	}
-	
-	public int getExitCode()
-	{
-		return exit_code;
-	}
-	
-	private void reset() {
-		fInStream=null;
-		fOutStream=null;
-		fErrStream=null;
-		
-		remoteShellProcess=null;
-		exit_code=0;
-		status=STATE_NULL;
-	}
-	
-	public InputStream getInputStream() {
-        return fInStream;
-    }
-
-    public OutputStream getOutputStream() {
-        return fOutStream;
-    }
-    
-    public InputStream getErrStream() {
-        return fErrStream;
-    }
-    
-	public synchronized void start(String prelaunchCmd, String argument, IProgressMonitor monitor) throws Exception {
-		if(status == STATE_RUNNING)
-				return;
-	
-		reset();
-		argument = (argument == null ? RETURN_VALUE_CMD : argument + RETURN_VALUE_CMD);
-		remoteShellProcess = RSEHelper.remoteShellExec(this.host, prelaunchCmd, this.command, argument, monitor);
-		fInStream = remoteShellProcess.getInputStream();
-		fOutStream = remoteShellProcess.getOutputStream();
-		fErrStream = remoteShellProcess.getErrorStream();
-		status = STATE_RUNNING;
-	}
-	
-	 public synchronized void terminate() throws Exception {
-		 
-		 if(status != STATE_RUNNING || remoteShellProcess != null)
-			 return;
-		 
-		 remoteShellProcess.destroy();
-		 reset();
-	 }
-	 
-	 public int waitFor(IProgressMonitor monitor) throws InterruptedException {
-		 while(status==STATE_RUNNING) {
-			 if(monitor!=null) {
-	    			if(monitor.isCanceled()) {
-	    				throw new InterruptedException("User Cancelled");
-	    			}
- 			 }
-			 
-			 try {
-				 remoteShellProcess.waitFor();
-			 }catch(InterruptedException e){
-				 //get the return value
-				 try {
-					 if(fInStream.available() != 0) {
-						 BufferedReader in=new BufferedReader(new InputStreamReader(fInStream));
-						 String thisline;
-						 int idx;
-						 while((thisline=in.readLine()) != null) {
-							    if(thisline.indexOf(RETURN_VALUE_CMD)==-1) {
-									idx=thisline.indexOf(RETURN_VALUE_TAG);
-									if(idx != -1) {
-										try {
-											exit_code=(new Integer(thisline.substring(idx+RETURN_VALUE_TAG.length()))).intValue();
-										}catch(NumberFormatException e2) {
-											//
-										}
-										break;
-									}
-							    }
-						 }
-					 }
-				 }catch(IOException e1) {
-					 //do nothing
-				 }
-			 }finally {
-				 status=STATE_EXITED;
-			 }
-		 }
-		 return exit_code;
-	 }
-}
-
-- 
1.7.9.5


