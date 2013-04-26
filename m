Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43ADEE01519
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 07:51:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Apr 2013 07:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,559,1363158000"; d="scan'208";a="293621297"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 26 Apr 2013 07:51:03 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Apr 2013 17:32:01 +0300
Message-Id: <1366986723-27748-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 2/4] Refactor Model(s) to display customized messages
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
X-List-Received-Date: Fri, 26 Apr 2013 14:51:06 -0000

- added new subtask for each of the models offered by YP for Remote Tools

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   70 ++++++++++++--------
 .../sdk/remotetools/actions/OprofileModel.java     |   15 +++--
 .../sdk/remotetools/actions/PowertopModel.java     |   13 ++--
 .../sdk/remotetools/actions/SystemtapModel.java    |    7 +-
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   10 +--
 .../sdk/remotetools/actions/UstModelLegacy.java    |   10 +--
 6 files changed, 76 insertions(+), 49 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index 4f6a5c8..e1abd63 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -18,49 +18,63 @@ import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
 
 abstract public class BaseModel implements IRunnableWithProgress {
-	
-	protected IHost rseConnection;
+	protected IHost host;
+	protected String taskName;
+
+	private static final int WORKLOAD = 100;
+
+	private static final int INIT_PERCENT = 5;
+	private static final int PRE_PROCESS_PERCENT = 30;
+	private static final int PROCESS_PERCENT = 30;
+	private static final int POST_PROCESS_PERCENT = 30;
+	private static final int CLEAN_PERCENT = 5;
+
+	private static final String RUN_MSG = "Running task: ";
+	private static final String INIT_MSG = "Initializing ";
+	private static final String PRE_PROCESS_MSG = "Preparing ";
+	private static final String PROCESS_MSG = "Processing ";
+	private static final String POST_PROCESS_MSG = "Finishing ";
+	private static final String CLEAN_MSG = "Cleaning ";
+	private static final String DOTS = "...";
 
 	abstract public void preProcess(IProgressMonitor monitor) throws InvocationTargetException,	InterruptedException;
 	abstract public void postProcess(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException;
 	abstract public void process(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException;
 	
-	public BaseModel(IHost rseConnection) {
-		this.rseConnection=rseConnection;
+	BaseModel(IHost host, String taskName) {
+		this.host = host;
+		this.taskName = taskName;
 	}
-	
 	protected void init(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
-		/*
-		if(rseConnection==null) {
-			throw new InvocationTargetException(new Exception("NULL rse connection"),"NULL rse connection");
-		}*/
 	}
 	
-	protected void uninit(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
-
+	protected void clean(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 	}
-	
+
 	public void run(IProgressMonitor monitor) throws InvocationTargetException,
     InterruptedException {
 	
 		try {
-			monitor.beginTask("", 100);
-			init(new SubProgressMonitor(monitor,5));
-			if(monitor.isCanceled())
-				throw new InterruptedException("User canncelled");
-			preProcess(new SubProgressMonitor(monitor,30));
-			if(monitor.isCanceled())
-				throw new InterruptedException("User canncelled");
-			process(new SubProgressMonitor(monitor,30));
-			if(monitor.isCanceled())
-				throw new InterruptedException("User canncelled");
-			postProcess(new SubProgressMonitor(monitor,30));
-		}catch (InterruptedException e){
-			throw e;
-		}catch (InvocationTargetException e) {
+			monitor.beginTask(RUN_MSG + taskName, WORKLOAD);
+
+			monitor.subTask(INIT_MSG + taskName + DOTS);
+			init(new SubProgressMonitor(monitor, INIT_PERCENT));
+
+			monitor.subTask(PRE_PROCESS_MSG + taskName + DOTS);
+			preProcess(new SubProgressMonitor(monitor, PRE_PROCESS_PERCENT));
+
+			monitor.subTask(PROCESS_MSG + taskName + DOTS);
+			process(new SubProgressMonitor(monitor, PROCESS_PERCENT));
+
+			monitor.subTask(POST_PROCESS_MSG + taskName + DOTS);
+			postProcess(new SubProgressMonitor(monitor, POST_PROCESS_PERCENT));
+		} catch (InterruptedException e){
+			throw new InterruptedException("User cancelled!");
+		} catch (InvocationTargetException e) {
 			throw e;
-		}finally {
-			uninit(new SubProgressMonitor(monitor,5));
+		} finally {
+			monitor.subTask(CLEAN_MSG + taskName + DOTS);
+			clean(new SubProgressMonitor(monitor, CLEAN_PERCENT));
 			monitor.done();
 		}
 	}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index 17b54b3..71ff4d9 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -36,18 +36,21 @@ public class OprofileModel extends BaseModel {
 	static final private String LOCAL_SCRIPT="resources/yocto_tool.sh";
 	static final private String LOCAL_EXEC="oprofile-viewer";
 	
+	private static final String TASK_NAME = "oprofile command";
+
 	private IWorkbenchWindow window;
 	public OprofileModel(IHost host, IWorkbenchWindow window) {
-		super(host);
+		super(host, TASK_NAME);
 		this.window=window;
 	}
+
 	@Override
 	public void preProcess(IProgressMonitor monitor)
 			throws InvocationTargetException, InterruptedException {
 		//upload script to remote
 		try {
 			RSEHelper.putRemoteFileInPlugin(
-					rseConnection, 
+					host,
 					LOCAL_SCRIPT, 
 					REMOTE_EXEC,
 					monitor);
@@ -68,7 +71,7 @@ public class OprofileModel extends BaseModel {
 	
 	private void startServer(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(rseConnection,null,REMOTE_EXEC,null);
+		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
 		String args="start -d oprofile-server";
 		
 		try {
@@ -89,7 +92,7 @@ public class OprofileModel extends BaseModel {
 	
 	private void stopServer(IProgressMonitor monitor) throws Exception {
 		
-		RemoteApplication app=new RemoteApplication(rseConnection,null,REMOTE_EXEC,null);
+		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
 		String args="stop -d oprofile-server";
 		try {
 			monitor.beginTask("Stopping oprofile-server", 2);
@@ -177,8 +180,8 @@ public class OprofileModel extends BaseModel {
 			
 			new LocalJob("oprofile-viewer",
 					(searchPath!=null) ? 
-						new String[] {LOCAL_EXEC,"-h",rseConnection.getHostName(),"-s",searchPath} : 
-						new String[] {LOCAL_EXEC,"-h",rseConnection.getHostName()},
+						new String[] {LOCAL_EXEC,"-h",host.getHostName(),"-s",searchPath} :
+						new String[] {LOCAL_EXEC,"-h",host.getHostName()},
 					null,
 					null,
 					window).schedule();
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index cdf4afd..c5f11d3 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -33,15 +33,18 @@ public class PowertopModel extends BaseModel {
 	final private String LOCAL_SCRIPT="resources/yocto_tool.sh";
 	final private String REMOTE_FILE_PREFIX="/tmp/yocto-powertop-";
 	final private String LOCAL_FILE_SUFFIX=".local";
+
+	private static final String TASK_NAME = "powertop command";
+
 	private Float time;
 	private boolean showpid;
 	Display display;
-	
+
 	String localfile;
 	String remotefile;
 	
 	public PowertopModel(IHost host, Float time,boolean showpid,Display display) {
-		super(host);
+		super(host, TASK_NAME);
 		this.time=time;
 		this.showpid=showpid;
 		this.display=display;
@@ -53,7 +56,7 @@ public class PowertopModel extends BaseModel {
 		//upload script to remote
 		try {
 			RSEHelper.putRemoteFileInPlugin(
-					rseConnection, 
+					host,
 					LOCAL_SCRIPT, 
 					REMOTE_EXEC,
 					monitor);
@@ -79,7 +82,7 @@ public class PowertopModel extends BaseModel {
 	
 	private void generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(rseConnection,null,REMOTE_EXEC,null);
+		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
 		String currentDate=new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()).toString();
 		remotefile=new String(REMOTE_FILE_PREFIX + currentDate);
 		localfile=new String(remotefile + LOCAL_FILE_SUFFIX);
@@ -117,7 +120,7 @@ public class PowertopModel extends BaseModel {
 	private void getDataFile(IProgressMonitor monitor) throws Exception {
 				
 		RSEHelper.getRemoteFile(
-				rseConnection, 
+				host,
 				localfile,
 				remotefile, 
 				monitor);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index 0d22d97..41c79df 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -24,17 +24,20 @@ import org.yocto.sdk.remotetools.ShellSession;
 public class SystemtapModel extends BaseModel {
 	protected static final String DEFAULT_INIT_SCRIPT = "oe-init-build-env";
 	protected static final String SYSTEMTAP_CONSOLE = "Systemtap Console";
+
+	private static final String TASK_NAME = "systemtap command";
+
 	protected MessageConsole sessionConsole;
 	private String metadata_location;
 	private String remote_host;
 	private String user_id;
 	private String systemtap_script;
 	private String systemtap_args;
-	
+
 	Display display;
 	
 	public SystemtapModel(String metadata_location, String remote_host, String user_id, String systemtap_script, String systemtap_args, Display display) {
-		super(null);
+		super(null, TASK_NAME);
 		this.metadata_location=metadata_location;
 		this.remote_host=remote_host;
 		this.user_id=user_id;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index dbde287..171f17b 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -40,6 +40,8 @@ public class Ust2Model extends BaseModel {
 	static final private String LOCAL_EXEC="lttv-gui";
 	public static final String TRACE_FOLDER_NAME = "Traces";
 	static final private String DATAFILE_PREFIX = "ustfile:";
+
+	private static final String TASK_NAME = "ust2trace command";
 		
 	private String trace_loc;
 	
@@ -50,7 +52,7 @@ public class Ust2Model extends BaseModel {
 	private IWorkbenchWindow window;
 	
 	public Ust2Model(IHost host, String trace, String project, IWorkbenchWindow window) {
-		super(host);
+		super(host, TASK_NAME);
 		trace_loc=trace;
 		
 		prj_name = project;
@@ -63,7 +65,7 @@ public class Ust2Model extends BaseModel {
 		///upload script to remote
 		try {
 			RSEHelper.putRemoteFileInPlugin(
-					rseConnection, 
+					host,
 					LOCAL_SCRIPT, 
 					REMOTE_EXEC,
 					monitor);
@@ -91,7 +93,7 @@ public class Ust2Model extends BaseModel {
 	
 	private String generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(rseConnection,null,REMOTE_EXEC,null);
+		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
 		
 		String remoteDataFile=null;
 		
@@ -131,7 +133,7 @@ public class Ust2Model extends BaseModel {
 		localfile=new String(datafile.substring(0,datafile.length()-4) + LOCAL_FILE_SUFFIX);
 		
 		RSEHelper.getRemoteFile(
-				rseConnection, 
+				host,
 				localfile,
 				datafile, 
 				monitor);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/UstModelLegacy.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/UstModelLegacy.java
index 776f3d5..5920fda 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/UstModelLegacy.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/UstModelLegacy.java
@@ -42,6 +42,8 @@ public class UstModelLegacy extends BaseModel {
 	static final private String LOCAL_EXEC="lttv-gui";
 	public static final String TRACE_FOLDER_NAME = "Traces";
 	static final private String DATAFILE_PREFIX = "ustfile:";
+
+	private static final String TASK_NAME = "usttrace command";
 		
 	private String argument;
 	private String application;
@@ -52,7 +54,7 @@ public class UstModelLegacy extends BaseModel {
 	private IWorkbenchWindow window;
 	
 	public UstModelLegacy(IHost host, String app,String arg, String project, IWorkbenchWindow window) {
-		super(host);
+		super(host, TASK_NAME);
 		application=app;
 		argument=arg;
 		prj_name = project;
@@ -65,7 +67,7 @@ public class UstModelLegacy extends BaseModel {
 		///upload script to remote
 		try {
 			RSEHelper.putRemoteFileInPlugin(
-					rseConnection, 
+					host,
 					LOCAL_SCRIPT, 
 					REMOTE_EXEC,
 					monitor);
@@ -93,7 +95,7 @@ public class UstModelLegacy extends BaseModel {
 	
 	private String generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(rseConnection,null,REMOTE_EXEC,null);
+		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
 		String tempArgs=new String();
 		if(application!=null)
 			tempArgs=tempArgs.concat(application + " ");
@@ -137,7 +139,7 @@ public class UstModelLegacy extends BaseModel {
 		localfile=new String(datafile.substring(0,datafile.length()-4) + LOCAL_FILE_SUFFIX);
 		
 		RSEHelper.getRemoteFile(
-				rseConnection, 
+				host,
 				localfile,
 				datafile, 
 				monitor);
-- 
1.7.9.5


