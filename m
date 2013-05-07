Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28109E014A3
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:52:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 05:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="238023040"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 05:52:56 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2013 15:32:58 +0300
Message-Id: <1367929980-1807-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 6/8] Refactor RemoteApplication implementation
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
X-List-Received-Date: Tue, 07 May 2013 12:52:58 -0000

- remove references that are not used for running remote commands:
        - remote directory where the command will be ran
        - remove environment on remote host
- rename class to RemoteShellExec since it is a wrapper over a remote shell execution of a command

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/OprofileModel.java     |   18 +--
 .../sdk/remotetools/actions/PowertopModel.java     |   25 +---
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   18 +--
 .../sdk/remotetools/remote/RemoteApplication.java  |  155 --------------------
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 +++++++++++++++++++
 5 files changed, 174 insertions(+), 191 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteApplication.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index ac08600..2c63f20 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -26,7 +26,7 @@ import org.yocto.sdk.ide.preferences.PreferenceConstants;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.LocalJob;
 import org.yocto.sdk.remotetools.Messages;
-import org.yocto.sdk.remotetools.remote.RemoteApplication;
+import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 
 public class OprofileModel extends BaseModel {
 	
@@ -45,17 +45,17 @@ public class OprofileModel extends BaseModel {
 	
 	private void startServer(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
+		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
 		String args="start -d oprofile-server";
 		
 		try {
 			monitor.beginTask("Starting oprofile-server", 2);
 			//starting oprofile-server
-			app.start(null,args,monitor);
+			exec.start(null,args,monitor);
 			monitor.worked(1);
 
-			exit_code=app.waitFor(monitor);
-			app.terminate();
+			exit_code = exec.waitFor(monitor);
+			exec.terminate();
 			if(exit_code!=0) {
 				throw new RuntimeException("Starting oprofile-server failed with exit code " + new Integer(exit_code).toString());
 			}
@@ -66,15 +66,15 @@ public class OprofileModel extends BaseModel {
 	
 	private void stopServer(IProgressMonitor monitor) throws Exception {
 		
-		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null); 
+		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
 		String args = "stop -d oprofile-server";
 		try {
 			monitor.beginTask("Stopping oprofile-server", 2);
-			app.start(null,args,monitor);
+			exec.start(null, args, monitor);
 			monitor.worked(1);
 			//no cancel for stop server
-			app.waitFor(null);
-			app.terminate();
+			exec.waitFor(null);
+			exec.terminate();
 		}finally {
 			monitor.done();
 		}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index 1c4c539..a99000c 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -24,7 +24,7 @@ import org.eclipse.ui.IWorkbenchPage;
 import org.eclipse.ui.PartInitException;
 import org.eclipse.ui.PlatformUI;
 import org.yocto.sdk.remotetools.RSEHelper;
-import org.yocto.sdk.remotetools.remote.RemoteApplication;
+import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 import org.yocto.sdk.remotetools.views.BaseFileView;
 
 public class PowertopModel extends BaseModel {
@@ -60,22 +60,11 @@ public class PowertopModel extends BaseModel {
 	
 	private void generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
-		String currentDate=new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()).toString();
+		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
+		String currentDate = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()).toString();
 		remoteFile = new String(REMOTE_FILE_PREFIX + currentDate);
 		localFile = new String(remoteFile + LOCAL_FILE_SUFFIX);
 		
-		ArrayList <String> param= new ArrayList <String>();
-		param.add(remoteExec);
-		param.add("start");
-		param.add("-l");
-		param.add(remoteFile);
-		param.add("powertop");
-		param.add("-d");
-		param.add("-t");
-		param.add(time.toString());
-		if(showpid)
-			param.add("-p");
 		String args = "start -l " + remoteFile + " powertop -d -t " + time.toString();
 		if(showpid)
 			args += " -p";
@@ -83,11 +72,11 @@ public class PowertopModel extends BaseModel {
 		try {
 			monitor.beginTask("Starting powertop", 2);
 			//starting oprofile-server
-			app.start(null,args,monitor);
+			exec.start(null,args,monitor);
 			monitor.worked(1);
-			exit_code=app.waitFor(monitor);
-			app.terminate();
-			if(exit_code!=0) {
+			exit_code = exec.waitFor(monitor);
+			exec.terminate();
+			if(exit_code != 0) {
 				throw new Exception("Starting powertop failed with exit code " + new Integer(exit_code).toString());
 			}
 		}finally {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index 8d764e5..ce58546 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -26,7 +26,7 @@ import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
-import org.yocto.sdk.remotetools.remote.RemoteApplication;
+import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 
 public class Ust2Model extends BaseModel {
 	
@@ -57,25 +57,25 @@ public class Ust2Model extends BaseModel {
 	
 	private void generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
+		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
 		
 		try {
 			String temp;
 			int idx;
 			monitor.beginTask("Getting remote ust2 trace", 2);
 			//starting usttrace
-			app.start(null,trace_loc,monitor);
+			exec.start(null, trace_loc, monitor);
 			monitor.worked(1);
-			BufferedReader in=new BufferedReader(new InputStreamReader(app.getInputStream()));
-			while((temp=in.readLine())!=null) {
-				idx=temp.indexOf(DATAFILE_PREFIX);
-				if(idx!=-1) {
+			BufferedReader in = new BufferedReader(new InputStreamReader(exec.getInputStream()));
+			while((temp = in.readLine())!=null) {
+				idx = temp.indexOf(DATAFILE_PREFIX);
+				if(idx != -1) {
 					remoteFile = temp.substring(idx + DATAFILE_PREFIX.length());
 					break;
 				}
 			}
-			exit_code=app.waitFor(monitor);
-			app.terminate();
+			exit_code = exec.waitFor(monitor);
+			exec.terminate();
 			if(exit_code!=0) {
 				throw new Exception("Getting remote ust2 trace failed with exit code " + new Integer(exit_code).toString());
 			}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteApplication.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteApplication.java
deleted file mode 100644
index c8ae9c5..0000000
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteApplication.java
+++ /dev/null
@@ -1,155 +0,0 @@
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
-import org.yocto.sdk.remotetools.RSEHelper;
-
-public class RemoteApplication {
-	
-	public static final int
-    STATE_NULL = 0,
-    STATE_RUNNING = 1,
-    STATE_EXITED = 2;
-	
-	private String directory;
-	private String command;
-	private String []environment;
-	private IHost target;
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
-	public RemoteApplication(IHost target,
-			String directory,
-			String command,
-			String[] environment) {
-		assert(target!=null);
-		this.target = target;
-		this.directory=directory;
-		this.command=command;
-		this.environment=environment;
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
-		if(status==STATE_RUNNING)
-				return;
-	
-		reset();
-		remoteShellProcess = RSEHelper.remoteShellExec(this.target, prelaunchCmd, this.command, argument==null?RETURN_VALUE_CMD:argument+RETURN_VALUE_CMD, monitor);
-		fInStream = remoteShellProcess.getInputStream();
-		fOutStream = remoteShellProcess.getOutputStream();
-		fErrStream = remoteShellProcess.getErrorStream();
-		status=STATE_RUNNING;
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
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
new file mode 100644
index 0000000..bb4859d
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
@@ -0,0 +1,149 @@
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
+package org.yocto.sdk.remotetools.remote;
+
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
+import java.io.OutputStream;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+//import org.eclipse.tcf.protocol.IToken;
+//import org.eclipse.tcf.services.IStreams;
+//import org.eclipse.tcf.services.IProcesses;
+//import org.eclipse.tcf.util.TCFTask;
+import org.eclipse.rse.core.model.IHost;
+import org.yocto.sdk.remotetools.RSEHelper;
+
+public class RemoteShellExec {
+	
+	public static final int
+    STATE_NULL = 0,
+    STATE_RUNNING = 1,
+    STATE_EXITED = 2;
+	
+	private String command;
+	private IHost host;
+	
+	private InputStream fInStream;
+    private OutputStream fOutStream;
+    private InputStream fErrStream;
+    private Process remoteShellProcess;
+	
+	private int exit_code=0;
+	private int status=STATE_NULL;
+	
+	private String RETURN_VALUE_TAG = "org.yocto.sdk.remotetools.RVTAG";
+	private String RETURN_VALUE_CMD = ";echo \"" + RETURN_VALUE_TAG + "$?\"";
+	
+	public RemoteShellExec(IHost host, String command) {
+		assert(host != null);
+		this.host = host;
+		this.command=command;
+	}
+	
+	public int getStatus()
+	{
+		return status;
+	}
+	
+	public int getExitCode()
+	{
+		return exit_code;
+	}
+	
+	private void reset() {
+		fInStream=null;
+		fOutStream=null;
+		fErrStream=null;
+		
+		remoteShellProcess=null;
+		exit_code=0;
+		status=STATE_NULL;
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
+		 
+		 if(status != STATE_RUNNING || remoteShellProcess != null)
+			 return;
+		 
+		 remoteShellProcess.destroy();
+		 reset();
+	 }
+	 
+	 public int waitFor(IProgressMonitor monitor) throws InterruptedException {
+		 while(status==STATE_RUNNING) {
+			 if(monitor!=null) {
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
+						 BufferedReader in=new BufferedReader(new InputStreamReader(fInStream));
+						 String thisline;
+						 int idx;
+						 while((thisline=in.readLine()) != null) {
+							    if(thisline.indexOf(RETURN_VALUE_CMD)==-1) {
+									idx=thisline.indexOf(RETURN_VALUE_TAG);
+									if(idx != -1) {
+										try {
+											exit_code=(new Integer(thisline.substring(idx+RETURN_VALUE_TAG.length()))).intValue();
+										}catch(NumberFormatException e2) {
+											//
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
+		 return exit_code;
+	 }
+}
+
-- 
1.7.9.5


