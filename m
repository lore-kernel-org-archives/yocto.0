Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533A9E01488
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:52:59 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 05:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="238023052"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 05:52:57 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2013 15:32:59 +0300
Message-Id: <1367929980-1807-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 7/8] Refactor powertop, oprofile and ust2 models to remove duplicate code
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
X-List-Received-Date: Tue, 07 May 2013 12:52:59 -0000

- each of the powertop, oprofile and ust2 commands runs a command remote using RemoteShellExec(former RemoteApplication) following these steps:
        - start the command
        - wait to terminate
        - terminate the command
        - check exit code
- in order to remove duplicate code in these models
        -> move this code stub to BaseModel in the method runRemoteShellExec
        -> customize the retrieval of remote file after running the command (special case for ust2)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   19 +++++++++
 .../sdk/remotetools/actions/OprofileModel.java     |   32 +--------------
 .../sdk/remotetools/actions/PowertopModel.java     |   20 +---------
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   41 +++++++-------------
 4 files changed, 37 insertions(+), 75 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index a5ffb2c..2e15e48 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -10,6 +10,8 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.actions;
 
+import java.io.IOException;
+import java.io.InputStream;
 import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -17,6 +19,7 @@ import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
 import org.yocto.sdk.remotetools.RSEHelper;
+import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 
 abstract public class BaseModel implements IRunnableWithProgress {
 	protected IHost host;
@@ -41,6 +44,7 @@ abstract public class BaseModel implements IRunnableWithProgress {
 	private static final String POST_PROCESS_MSG = "Finishing ";
 	private static final String CLEAN_MSG = "Cleaning ";
 	private static final String DOTS = "...";
+	private static final String FAILED_ERR_MSG = " failed with exit code ";
 
 	public void preProcess(IProgressMonitor monitor) throws InvocationTargetException,	InterruptedException{
 		//upload script to remote
@@ -101,4 +105,19 @@ abstract public class BaseModel implements IRunnableWithProgress {
 	protected void getDataFile(IProgressMonitor monitor) throws Exception {
 		RSEHelper.getRemoteFile( host, localFile, remoteFile, monitor);
 	}
+	protected void runRemoteShellExec(IProgressMonitor monitor, String args, boolean cancelable) throws Exception {
+		try {
+			RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
+			exec.start(null, args, monitor);
+			monitor.worked(1);
+			checkTerminate(exec.getInputStream());
+			int exit_code = exec.waitFor(cancelable ? monitor : null);
+			exec.terminate();
+			if(exit_code != 0)
+				throw new Exception(taskName + FAILED_ERR_MSG + new Integer(exit_code).toString());
+		} finally {
+			monitor.done();
+		}
+	}
+	protected void checkTerminate(InputStream inputStream) throws IOException {}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index 2c63f20..c125df7 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -26,7 +26,6 @@ import org.yocto.sdk.ide.preferences.PreferenceConstants;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.LocalJob;
 import org.yocto.sdk.remotetools.Messages;
-import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 
 public class OprofileModel extends BaseModel {
 	
@@ -44,40 +43,13 @@ public class OprofileModel extends BaseModel {
 	}
 	
 	private void startServer(IProgressMonitor monitor) throws Exception {
-		int exit_code;
-		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
 		String args="start -d oprofile-server";
-		
-		try {
-			monitor.beginTask("Starting oprofile-server", 2);
-			//starting oprofile-server
-			exec.start(null,args,monitor);
-			monitor.worked(1);
-
-			exit_code = exec.waitFor(monitor);
-			exec.terminate();
-			if(exit_code!=0) {
-				throw new RuntimeException("Starting oprofile-server failed with exit code " + new Integer(exit_code).toString());
-			}
-		}finally {
-			monitor.done();
-		}
+		runRemoteShellExec(monitor, args, true);
 	}
 	
 	private void stopServer(IProgressMonitor monitor) throws Exception {
-		
-		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
 		String args = "stop -d oprofile-server";
-		try {
-			monitor.beginTask("Stopping oprofile-server", 2);
-			exec.start(null, args, monitor);
-			monitor.worked(1);
-			//no cancel for stop server
-			exec.waitFor(null);
-			exec.terminate();
-		}finally {
-			monitor.done();
-		}
+		runRemoteShellExec(monitor, args, false);
 	}
 	
 	private String getSearchPath()
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index a99000c..af6cca0 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -13,7 +13,6 @@ package org.yocto.sdk.remotetools.actions;
 import java.io.File;
 import java.lang.reflect.InvocationTargetException;
 import java.text.SimpleDateFormat;
-import java.util.ArrayList;
 import java.util.Calendar;
 
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -23,8 +22,6 @@ import org.eclipse.swt.widgets.Display;
 import org.eclipse.ui.IWorkbenchPage;
 import org.eclipse.ui.PartInitException;
 import org.eclipse.ui.PlatformUI;
-import org.yocto.sdk.remotetools.RSEHelper;
-import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 import org.yocto.sdk.remotetools.views.BaseFileView;
 
 public class PowertopModel extends BaseModel {
@@ -59,8 +56,6 @@ public class PowertopModel extends BaseModel {
 	}
 	
 	private void generateData(IProgressMonitor monitor) throws Exception {
-		int exit_code;
-		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
 		String currentDate = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()).toString();
 		remoteFile = new String(REMOTE_FILE_PREFIX + currentDate);
 		localFile = new String(remoteFile + LOCAL_FILE_SUFFIX);
@@ -68,20 +63,7 @@ public class PowertopModel extends BaseModel {
 		String args = "start -l " + remoteFile + " powertop -d -t " + time.toString();
 		if(showpid)
 			args += " -p";
-		
-		try {
-			monitor.beginTask("Starting powertop", 2);
-			//starting oprofile-server
-			exec.start(null,args,monitor);
-			monitor.worked(1);
-			exit_code = exec.waitFor(monitor);
-			exec.terminate();
-			if(exit_code != 0) {
-				throw new Exception("Starting powertop failed with exit code " + new Integer(exit_code).toString());
-			}
-		}finally {
-			monitor.done();
-		}
+		runRemoteShellExec(monitor, args, true);
 	}
 
 	@Override
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index ce58546..8dcc5b3 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -12,6 +12,8 @@ package org.yocto.sdk.remotetools.actions;
 
 import java.io.BufferedReader;
 import java.io.File;
+import java.io.IOException;
+import java.io.InputStream;
 import java.io.InputStreamReader;
 import java.lang.reflect.InvocationTargetException;
 
@@ -26,7 +28,6 @@ import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
-import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 
 public class Ust2Model extends BaseModel {
 	
@@ -55,33 +56,21 @@ public class Ust2Model extends BaseModel {
 		this.window = window;
 	}
 	
-	private void generateData(IProgressMonitor monitor) throws Exception {
-		int exit_code;
-		RemoteShellExec exec = new RemoteShellExec(host, remoteExec);
-		
-		try {
-			String temp;
-			int idx;
-			monitor.beginTask("Getting remote ust2 trace", 2);
-			//starting usttrace
-			exec.start(null, trace_loc, monitor);
-			monitor.worked(1);
-			BufferedReader in = new BufferedReader(new InputStreamReader(exec.getInputStream()));
-			while((temp = in.readLine())!=null) {
-				idx = temp.indexOf(DATAFILE_PREFIX);
-				if(idx != -1) {
-					remoteFile = temp.substring(idx + DATAFILE_PREFIX.length());
-					break;
-				}
-			}
-			exit_code = exec.waitFor(monitor);
-			exec.terminate();
-			if(exit_code!=0) {
-				throw new Exception("Getting remote ust2 trace failed with exit code " + new Integer(exit_code).toString());
+	@Override
+	protected void checkTerminate(InputStream is) throws IOException {
+		String temp;
+		BufferedReader in = new BufferedReader(new InputStreamReader(is));
+		while((temp = in.readLine())!=null) {
+			int idx = temp.indexOf(DATAFILE_PREFIX);
+			if(idx != -1) {
+				remoteFile = temp.substring(idx + DATAFILE_PREFIX.length());
+				break;
 			}
-		}finally {
-			monitor.done();
 		}
+	}
+
+	private void generateData(IProgressMonitor monitor) throws Exception {
+		runRemoteShellExec(monitor, trace_loc, true);
 		if(remoteFile == null)
 			throw new Exception("Ust: null remote data file");
 		if(remoteFile.endsWith(REMOTE_FILE_SUFFIX)==false)
-- 
1.7.9.5


