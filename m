Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19576E01506
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 06:48:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571100"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:38 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:26:04 +0300
Message-Id: <1370352368-18730-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 5/9] Remove storing of init script location
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:22 -0000

- when create a new bitbake commander project and when initializing the configuration - the location of the init bitbake script is stored in a file called .eclipse-data
- the information stored here is never used

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   23 --------------------
 .../BBConfigurationInitializeOperation.java        |    1 -
 .../newproject/CreateBBCProjectOperation.java      |    6 -----
 3 files changed, 30 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
index 25dac97..b8d4b29 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
@@ -79,27 +79,4 @@ public class ProjectInfoHelper {
 
 		return null;
 	}
-
-	/**
-	 * This method will store the path to the bitbake init script for future
-	 * reference.
-	 * 
-	 * @param path
-	 * @param projInfo
-	 * @throws IOException
-	 */
-	public static void store(String path, ProjectInfo projInfo) throws IOException {
-		writeToFile(path, projInfo.getInitScriptPath());
-	}
-
-	private static void writeToFile(String path, String init) throws IOException {
-		File outFile = new File(path, ".eclipse-data");
-		FileOutputStream fos = new FileOutputStream(outFile);
-
-		fos.write(init.getBytes());
-
-		fos.flush();
-		fos.close();
-	}
-
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 4f15107..64c3e6e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -39,7 +39,6 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 	public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		BBSession session;
 		try {
-			ProjectInfoHelper.store(pinfo.getRootPath(), pinfo);
 			session = Activator.getBBSession(pinfo.getRootPath(), writer);
 			session.initialize();
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index dc0153b..1d54ea3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -85,12 +85,6 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 
 		IProject proj = wsroot.getProject(projInfo.getProjectName());
 		proj.create(desc, monitor);
-		try {
-			ProjectInfoHelper.store(proj.getLocationURI().getPath(), projInfo);
-		} catch (IOException e) {
-			throw new InvocationTargetException(e);
-		}
-		
 		proj.open(monitor);
 
 		addNatures(proj, monitor);
-- 
1.7.9.5


