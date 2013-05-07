Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01AC6E01495
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:52:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 05:52:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="238023016"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 05:52:52 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2013 15:32:55 +0300
Message-Id: <1367929980-1807-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 3/8] Unify preProcess for all commands models
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
X-List-Received-Date: Tue, 07 May 2013 12:52:54 -0000

- all remote tools models(except systemtap) perform the same action in the pre-processing step duplicating the code
        - move the default code for pre-processing step in the BaseModel
        - move the local script path and the remote executable location variables that are needed for pre-processing in the BaseModel
        - customize the variables in the constructor of each remote tool model

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   20 ++++++++-
 .../sdk/remotetools/actions/OprofileModel.java     |   44 +++++-------------
 .../sdk/remotetools/actions/PowertopModel.java     |   39 +++++-----------
 .../sdk/remotetools/actions/SystemtapModel.java    |   30 ++++++-------
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   47 ++++++--------------
 5 files changed, 67 insertions(+), 113 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index 7ac6209..cd05cae 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -16,10 +16,13 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
+import org.yocto.sdk.remotetools.RSEHelper;
 
 abstract public class BaseModel implements IRunnableWithProgress {
 	protected IHost host;
 	protected String taskName;
+	protected String localScript;
+	protected String remoteExec;
 
 	private static final int WORKLOAD = 100;
 
@@ -37,13 +40,26 @@ abstract public class BaseModel implements IRunnableWithProgress {
 	private static final String CLEAN_MSG = "Cleaning ";
 	private static final String DOTS = "...";
 
-	abstract public void preProcess(IProgressMonitor monitor) throws InvocationTargetException,	InterruptedException;
+	public void preProcess(IProgressMonitor monitor) throws InvocationTargetException,	InterruptedException{
+		//upload script to remote
+		try {
+			RSEHelper.putRemoteFileInPlugin(host, localScript, remoteExec, monitor);
+		}catch (InterruptedException e){
+			throw e;
+		}catch (InvocationTargetException e) {
+			throw e;
+		}catch (Exception e) {
+			throw new InvocationTargetException(e, e.getMessage());
+		}
+	}
 	abstract public void postProcess(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException;
 	abstract public void process(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException;
 	
-	public BaseModel(IHost host, String taskName) {
+	public BaseModel(IHost host, String taskName, String localScript, String remoteExec) {
 		this.host = host;
 		this.taskName = taskName;
+		this.localScript = localScript;
+		this.remoteExec = remoteExec;
 	}
 	protected void init(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 	}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index 71ff4d9..2bb3101 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -18,49 +18,29 @@ import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.SubProgressMonitor;
-import org.eclipse.rse.core.model.IHost;
 import org.eclipse.jface.preference.IPreferenceStore;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
-
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
-import org.yocto.sdk.remotetools.remote.RemoteApplication;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.LocalJob;
 import org.yocto.sdk.remotetools.Messages;
-import org.yocto.sdk.remotetools.RSEHelper;
+import org.yocto.sdk.remotetools.remote.RemoteApplication;
 
 public class OprofileModel extends BaseModel {
 	
-	static final private String REMOTE_EXEC="/tmp/yocto_tool.sh";
-	static final private String LOCAL_SCRIPT="resources/yocto_tool.sh";
-	static final private String LOCAL_EXEC="oprofile-viewer";
-	
+	private static final String REMOTE_EXEC = "/tmp/yocto_tool.sh";
+	private static final String LOCAL_SCRIPT = "resources/yocto_tool.sh";
+
+	private static final String LOCAL_EXEC = "oprofile-viewer";
+
 	private static final String TASK_NAME = "oprofile command";
 
 	private IWorkbenchWindow window;
 	public OprofileModel(IHost host, IWorkbenchWindow window) {
-		super(host, TASK_NAME);
-		this.window=window;
-	}
-
-	@Override
-	public void preProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-		//upload script to remote
-		try {
-			RSEHelper.putRemoteFileInPlugin(
-					host,
-					LOCAL_SCRIPT, 
-					REMOTE_EXEC,
-					monitor);
-		}catch (InterruptedException e){
-			throw e;
-		}catch (InvocationTargetException e) {
-			throw e;
-		}catch (Exception e) {
-			throw new InvocationTargetException(e,e.getMessage());
-		}
+		super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
+		this.window = window;
 	}
 
 	@Override
@@ -71,7 +51,7 @@ public class OprofileModel extends BaseModel {
 	
 	private void startServer(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
+		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
 		String args="start -d oprofile-server";
 		
 		try {
@@ -92,8 +72,8 @@ public class OprofileModel extends BaseModel {
 	
 	private void stopServer(IProgressMonitor monitor) throws Exception {
 		
-		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
-		String args="stop -d oprofile-server";
+		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null); 
+		String args = "stop -d oprofile-server";
 		try {
 			monitor.beginTask("Stopping oprofile-server", 2);
 			app.start(null,args,monitor);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index c5f11d3..d054ad6 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -29,10 +29,11 @@ import org.yocto.sdk.remotetools.views.BaseFileView;
 
 public class PowertopModel extends BaseModel {
 	
-	final private String REMOTE_EXEC="/tmp/yocto_tool.sh";
-	final private String LOCAL_SCRIPT="resources/yocto_tool.sh";
-	final private String REMOTE_FILE_PREFIX="/tmp/yocto-powertop-";
-	final private String LOCAL_FILE_SUFFIX=".local";
+	private static final String REMOTE_EXEC = "/tmp/yocto_tool.sh";
+	private static final String LOCAL_SCRIPT = "resources/yocto_tool.sh";
+
+	private static final String REMOTE_FILE_PREFIX = "/tmp/yocto-powertop-";
+	private static final String LOCAL_FILE_SUFFIX = ".local";
 
 	private static final String TASK_NAME = "powertop command";
 
@@ -44,31 +45,11 @@ public class PowertopModel extends BaseModel {
 	String remotefile;
 	
 	public PowertopModel(IHost host, Float time,boolean showpid,Display display) {
-		super(host, TASK_NAME);
+		super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
 		this.time=time;
 		this.showpid=showpid;
 		this.display=display;
 	}
-	
-	@Override
-	public void preProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-		//upload script to remote
-		try {
-			RSEHelper.putRemoteFileInPlugin(
-					host,
-					LOCAL_SCRIPT, 
-					REMOTE_EXEC,
-					monitor);
-		}catch (InterruptedException e){
-			throw e;
-		}catch (InvocationTargetException e) {
-			throw e;
-		}catch (Exception e) {
-			throw new InvocationTargetException(e,e.getMessage());
-		}
-
-	}
 
 	@Override
 	public void postProcess(IProgressMonitor monitor)
@@ -82,13 +63,13 @@ public class PowertopModel extends BaseModel {
 	
 	private void generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
+		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
 		String currentDate=new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()).toString();
-		remotefile=new String(REMOTE_FILE_PREFIX + currentDate);
-		localfile=new String(remotefile + LOCAL_FILE_SUFFIX);
+		remotefile = new String(REMOTE_FILE_PREFIX + currentDate);
+		localfile = new String(remotefile + LOCAL_FILE_SUFFIX);
 		
 		ArrayList <String> param= new ArrayList <String>();
-		param.add(REMOTE_EXEC);
+		param.add(remoteExec);
 		param.add("start");
 		param.add("-l");
 		param.add(remotefile);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index 41c79df..294f866 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -37,13 +37,13 @@ public class SystemtapModel extends BaseModel {
 	Display display;
 	
 	public SystemtapModel(String metadata_location, String remote_host, String user_id, String systemtap_script, String systemtap_args, Display display) {
-		super(null, TASK_NAME);
-		this.metadata_location=metadata_location;
-		this.remote_host=remote_host;
-		this.user_id=user_id;
-		this.systemtap_script=systemtap_script;
+		super(null, TASK_NAME, "", "");
+		this.metadata_location = metadata_location;
+		this.remote_host = remote_host;
+		this.user_id = user_id;
+		this.systemtap_script = systemtap_script;
 		this.systemtap_args = systemtap_args;
-		this.display=display;
+		this.display = display;
 		if (sessionConsole == null) {
 			IConsoleManager conMan = ConsolePlugin.getDefault().getConsoleManager();
 			IConsole[] existing = conMan.getConsoles();
@@ -62,13 +62,12 @@ public class SystemtapModel extends BaseModel {
 	}
 	
 	@Override
-	
-	public void preProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-	}
+	public void preProcess(IProgressMonitor monitor) 
+			throws InvocationTargetException, InterruptedException {}
     
-	public void process(IProgressMonitor monitor)
-	throws InvocationTargetException, InterruptedException {
+	@Override
+	public void process(IProgressMonitor monitor) 
+			throws InvocationTargetException, InterruptedException {
 		try {
 			ShellSession shell = new ShellSession(ShellSession.SHELL_TYPE_BASH, 
 												new File(this.metadata_location),
@@ -85,9 +84,8 @@ public class SystemtapModel extends BaseModel {
 		}
 	}
 	
-	
-	public void postProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-	}
+	@Override
+	public void postProcess(IProgressMonitor monitor) 
+			throws InvocationTargetException, InterruptedException {}
 
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index 171f17b..40a86d5 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -20,26 +20,25 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.SubProgressMonitor;
-import org.eclipse.core.runtime.IPath;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
-
 import org.yocto.sdk.remotetools.RSEHelper;
 import org.yocto.sdk.remotetools.remote.RemoteApplication;
 
 public class Ust2Model extends BaseModel {
 	
-	static final private String REMOTE_EXEC="/tmp/ust_tar.sh";
-	static final private String LOCAL_SCRIPT="resources/ust_tar.sh";
+	private static final String REMOTE_EXEC = "/tmp/ust_tar.sh";
+	private static final String LOCAL_SCRIPT = "resources/ust_tar.sh";
 	
-	static final private String LOCAL_FILE_SUFFIX=".local.tar";
-	static final private String REMOTE_FILE_SUFFIX=".tar";
-	static final private String LOCAL_EXEC="lttv-gui";
-	public static final String TRACE_FOLDER_NAME = "Traces";
-	static final private String DATAFILE_PREFIX = "ustfile:";
+	private static final String LOCAL_FILE_SUFFIX = ".local.tar";
+	private static final String REMOTE_FILE_SUFFIX = ".tar";
+	private static final String LOCAL_EXEC = "lttv-gui";
+	private static final String TRACE_FOLDER_NAME = "Traces";
+	private static final String DATAFILE_PREFIX = "ustfile:";
 
 	private static final String TASK_NAME = "ust2trace command";
 		
@@ -52,31 +51,11 @@ public class Ust2Model extends BaseModel {
 	private IWorkbenchWindow window;
 	
 	public Ust2Model(IHost host, String trace, String project, IWorkbenchWindow window) {
-		super(host, TASK_NAME);
-		trace_loc=trace;
+		super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
+		trace_loc = trace;
 		
 		prj_name = project;
-		this.window=window;
-	}
-
-	@Override
-	public void preProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-		///upload script to remote
-		try {
-			RSEHelper.putRemoteFileInPlugin(
-					host,
-					LOCAL_SCRIPT, 
-					REMOTE_EXEC,
-					monitor);
-		}catch (InterruptedException e){
-			throw e;
-		}catch (InvocationTargetException e) {
-			throw e;
-		}catch (Exception e) {
-			throw new InvocationTargetException(e,e.getMessage());
-		}
-
+		this.window = window;
 	}
 
 	@Override
@@ -93,9 +72,9 @@ public class Ust2Model extends BaseModel {
 	
 	private String generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-		RemoteApplication app=new RemoteApplication(host,null,REMOTE_EXEC,null);
+		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
 		
-		String remoteDataFile=null;
+		String remoteDataFile = null;
 		
 		try {
 			String temp;
-- 
1.7.9.5


