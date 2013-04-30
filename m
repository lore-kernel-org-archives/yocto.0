Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CBFE01518
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 07:55:59 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Apr 2013 07:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,582,1363158000"; d="scan'208";a="234834780"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Apr 2013 07:55:57 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Apr 2013 17:36:27 +0300
Message-Id: <1367332592-2585-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 4/8] Add default behaviour for commands for post processing
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
X-List-Received-Date: Tue, 30 Apr 2013 14:56:00 -0000

- after processing the remote tool command, the post processing action is performed
- for most of the remote tools commands, this action doesn't actually do something, with to exceptions that perform some file cleanup
        - provide empty behaviour for post-processing action in BaseModel and only perform clean-up for actions that need it

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    3 ++-
 .../sdk/remotetools/actions/OprofileModel.java     |    6 ------
 .../sdk/remotetools/actions/PowertopModel.java     |    1 -
 .../sdk/remotetools/actions/SystemtapModel.java    |    5 -----
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   12 ------------
 5 files changed, 2 insertions(+), 25 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index e13d1cf..650cc67 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -52,7 +52,8 @@ abstract public class BaseModel implements IRunnableWithProgress {
 			throw new InvocationTargetException(e, e.getMessage());
 		}
 	}
-	abstract public void postProcess(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException;
+	public void postProcess(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException{}
+
 	abstract public void process(IProgressMonitor monitor) throws InvocationTargetException,InterruptedException;
 	
 	BaseModel(IHost host, String taskName, String localScript, String remoteExec) {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index 31c0667..794a101 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -42,12 +42,6 @@ public class OprofileModel extends BaseModel {
 		super(host, TASK_NAME, LOCAL_SCRIPT, REMOTE_EXEC);
 		this.window = window;
 	}
-
-	@Override
-	public void postProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-
-	}
 	
 	private void startServer(IProgressMonitor monitor) throws Exception {
 		int exit_code;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index dc43af0..0bd4e9e 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -57,7 +57,6 @@ public class PowertopModel extends BaseModel {
 		try {
 			new File(localfile).delete();
 		}catch (Exception e) {
-			
 		}
 	}
 	
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
index 294f866..ed8960d 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapModel.java
@@ -83,9 +83,4 @@ public class SystemtapModel extends BaseModel {
 			throw new InvocationTargetException(e,e.getMessage());
 		}
 	}
-	
-	@Override
-	public void postProcess(IProgressMonitor monitor) 
-			throws InvocationTargetException, InterruptedException {}
-
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index 40a86d5..2f508a6 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -57,18 +57,6 @@ public class Ust2Model extends BaseModel {
 		prj_name = project;
 		this.window = window;
 	}
-
-	@Override
-	public void postProcess(IProgressMonitor monitor)
-			throws InvocationTargetException, InterruptedException {
-		try {
-			//new File(localfile).delete();
-			//NOT delete the directory since lttv-gui is running asynchronously
-			//new File(localfile.substring(0,localfile.length()-LOCAL_FILE_SUFFIX.length())).delete();
-		}catch (Exception e) {
-			
-		}
-	}
 	
 	private String generateData(IProgressMonitor monitor) throws Exception {
 		int exit_code;
-- 
1.7.9.5


