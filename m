Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA9BE014A1
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:52:56 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 05:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="238023029"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 05:52:55 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2013 15:32:57 +0300
Message-Id: <1367929980-1807-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 5/8] Remove duplicate code when getting remote data from powertop and ust2
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
X-List-Received-Date: Tue, 07 May 2013 12:52:56 -0000

    - powertop and ust2 models contain duplicate code that performs the same action when getting data from remote host (method getDataFile)
        - unify getDataFile method implementation by removing the extra param from ust2-> convert it into a field of BaseModel
            - move getDataFile method to BaseModel in order to remove duplicate code
        - move localFile and remoteFile variables to BaseModel
        - ensure that each model will check the validity of the remote file at the end of generateData method
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    5 +++
 .../sdk/remotetools/actions/PowertopModel.java     |   25 +++---------
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   40 ++++++--------------
 3 files changed, 23 insertions(+), 47 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index 094291c..a5ffb2c 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -23,6 +23,8 @@ abstract public class BaseModel implements IRunnableWithProgress {
 	protected String taskName;
 	protected String localScript;
 	protected String remoteExec;
+	protected String localFile;
+	protected String remoteFile;
 
 	private static final int WORKLOAD = 100;
 
@@ -96,4 +98,7 @@ abstract public class BaseModel implements IRunnableWithProgress {
 		}
 	}
 
+	protected void getDataFile(IProgressMonitor monitor) throws Exception {
+		RSEHelper.getRemoteFile( host, localFile, remoteFile, monitor);
+	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index d054ad6..1c4c539 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -40,9 +40,6 @@ public class PowertopModel extends BaseModel {
 	private Float time;
 	private boolean showpid;
 	Display display;
-
-	String localfile;
-	String remotefile;
 	
 	public PowertopModel(IHost host, Float time,boolean showpid,Display display) {
 		super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
@@ -55,7 +52,7 @@ public class PowertopModel extends BaseModel {
 	public void postProcess(IProgressMonitor monitor)
 			throws InvocationTargetException, InterruptedException {
 		try {
-			new File(localfile).delete();
+			new File(localFile).delete();
 		}catch (Exception e) {
 			
 		}
@@ -65,21 +62,21 @@ public class PowertopModel extends BaseModel {
 		int exit_code;
 		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
 		String currentDate=new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()).toString();
-		remotefile = new String(REMOTE_FILE_PREFIX + currentDate);
-		localfile = new String(remotefile + LOCAL_FILE_SUFFIX);
+		remoteFile = new String(REMOTE_FILE_PREFIX + currentDate);
+		localFile = new String(remoteFile + LOCAL_FILE_SUFFIX);
 		
 		ArrayList <String> param= new ArrayList <String>();
 		param.add(remoteExec);
 		param.add("start");
 		param.add("-l");
-		param.add(remotefile);
+		param.add(remoteFile);
 		param.add("powertop");
 		param.add("-d");
 		param.add("-t");
 		param.add(time.toString());
 		if(showpid)
 			param.add("-p");
-		String args = "start -l " + remotefile + " powertop -d -t " + time.toString();
+		String args = "start -l " + remoteFile + " powertop -d -t " + time.toString();
 		if(showpid)
 			args += " -p";
 		
@@ -98,16 +95,6 @@ public class PowertopModel extends BaseModel {
 		}
 	}
 
-	private void getDataFile(IProgressMonitor monitor) throws Exception {
-				
-		RSEHelper.getRemoteFile(
-				host,
-				localfile,
-				remotefile, 
-				monitor);
-	}
-	
-	
 	@Override
 	public void process(IProgressMonitor monitor)
 			throws InvocationTargetException, InterruptedException {
@@ -131,7 +118,7 @@ public class PowertopModel extends BaseModel {
 						e.printStackTrace();
 						return;
 					}
-					view.setInput(localfile);
+					view.setInput(localFile);
 					page.bringToTop(view);
 				}
 			});
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index 2f508a6..8d764e5 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -26,7 +26,6 @@ import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
-import org.yocto.sdk.remotetools.RSEHelper;
 import org.yocto.sdk.remotetools.remote.RemoteApplication;
 
 public class Ust2Model extends BaseModel {
@@ -46,8 +45,6 @@ public class Ust2Model extends BaseModel {
 	
 	private String prj_name;
 	
-	private String localfile;
-	
 	private IWorkbenchWindow window;
 	
 	public Ust2Model(IHost host, String trace, String project, IWorkbenchWindow window) {
@@ -58,12 +55,10 @@ public class Ust2Model extends BaseModel {
 		this.window = window;
 	}
 	
-	private String generateData(IProgressMonitor monitor) throws Exception {
+	private void generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
 		RemoteApplication app = new RemoteApplication(host, null, remoteExec, null);
 		
-		String remoteDataFile = null;
-		
 		try {
 			String temp;
 			int idx;
@@ -75,7 +70,7 @@ public class Ust2Model extends BaseModel {
 			while((temp=in.readLine())!=null) {
 				idx=temp.indexOf(DATAFILE_PREFIX);
 				if(idx!=-1) {
-					remoteDataFile=temp.substring(idx + DATAFILE_PREFIX.length());
+					remoteFile = temp.substring(idx + DATAFILE_PREFIX.length());
 					break;
 				}
 			}
@@ -87,33 +82,22 @@ public class Ust2Model extends BaseModel {
 		}finally {
 			monitor.done();
 		}
-		if(remoteDataFile==null)
+		if(remoteFile == null)
 			throw new Exception("Ust: null remote data file");
-		return remoteDataFile;
-	}
-	
-	private void getDataFile(IProgressMonitor monitor,String datafile) throws Exception {
-		
-		if(datafile.endsWith(REMOTE_FILE_SUFFIX)==false)
-			throw new Exception("Wrong ust data file "+datafile);
-		
-		localfile=new String(datafile.substring(0,datafile.length()-4) + LOCAL_FILE_SUFFIX);
+		if(remoteFile.endsWith(REMOTE_FILE_SUFFIX)==false)
+			throw new Exception("Wrong ust data file " + remoteFile);
 		
-		RSEHelper.getRemoteFile(
-				host,
-				localfile,
-				datafile, 
-				monitor);
+		localFile = new String(remoteFile.substring(0, remoteFile.length()-4) + LOCAL_FILE_SUFFIX);
 	}
 
 	private void importToProject(IProgressMonitor monitor) throws Exception {
-		ProcessBuilder pb = new ProcessBuilder("tar", "fx", localfile);
+		ProcessBuilder pb = new ProcessBuilder("tar", "fx", localFile);
 		pb.directory(new File("/tmp"));
 		Process p=pb.start();
 		if(p.waitFor()!=0)
 			throw new Exception("extract ust data files failed");
 		
-		String traceName = localfile.substring(0,localfile.length()-LOCAL_FILE_SUFFIX.length());
+		String traceName = localFile.substring(0,localFile.length()-LOCAL_FILE_SUFFIX.length());
 		
 		IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
 		IPath full_path = wsroot.getFullPath();
@@ -142,12 +126,12 @@ public class Ust2Model extends BaseModel {
 		String viewerParam=new String(LOCAL_EXEC);
 		int i;
 		
-		ProcessBuilder pb = new ProcessBuilder("tar", "fx", localfile);
+		ProcessBuilder pb = new ProcessBuilder("tar", "fx", localFile);
 		pb.directory(new File("/tmp"));
 		Process p=pb.start();
 		if(p.waitFor()!=0)
 			throw new Exception("extract ust data files failed");
-		File f=new File(localfile.substring(0,localfile.length()-LOCAL_FILE_SUFFIX.length()));
+		File f=new File(localFile.substring(0,localFile.length()-LOCAL_FILE_SUFFIX.length()));
 		File []subdir=f.listFiles();
 		
 		for (i=0;i<subdir.length;i++) {
@@ -171,11 +155,11 @@ public class Ust2Model extends BaseModel {
 			//preparing remote trace
 			
 			monitor.subTask("Preparing user space lttng data file remotely");
-			datafile=generateData(new SubProgressMonitor(monitor,30));
+			generateData(new SubProgressMonitor(monitor,30));
 			
 			//download datafile to local
 			monitor.subTask("Downloading user space lttng data file");
-			getDataFile(new SubProgressMonitor(monitor,30),datafile);
+			getDataFile(new SubProgressMonitor(monitor,30));
 			
 			//extract datafile and import to lttng project
 			importToProject(new SubProgressMonitor(monitor,30));
-- 
1.7.9.5


