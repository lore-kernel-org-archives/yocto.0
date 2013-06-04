Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D48D9E014F8
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 06:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571110"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:39 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:26:05 +0300
Message-Id: <1370352368-18730-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 6/9] Remove unused method loadInit in Activator
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:23 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/ui/Activator.java             |   23 --------------------
 1 file changed, 23 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 505a254..a6c10c6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -187,29 +187,6 @@ public class Activator extends AbstractUIPlugin {
 		return ss;
 	}
 
-	private static String loadInit(String absolutePath) throws CoreException {
-		IProject [] prjs = ResourcesPlugin.getWorkspace().getRoot().getProjects();
-		IProject foundPrj = null;
-		
-		for (int i = 0; i < prjs.length; ++i) {
-			IProject p = prjs[i];
-			
-			System.out
-					.println(p.getDescription().getLocationURI().getPath());
-			
-			if (p.getDescription().getLocationURI().getPath().equals(absolutePath)) {
-				foundPrj = p;
-				break;
-			}
-		}
-		
-		if (foundPrj == null) {
-			throw new RuntimeException("Unable to find project associated with path! " + absolutePath);
-		}
-	
-		return foundPrj.getPersistentProperty(CreateBBCProjectOperation.BBC_PROJECT_INIT);
-	}
-	
 	public static void putProjInfo(String location, ProjectInfo pinfo) {
 		if (projInfoMap == null) {
 			projInfoMap = new Hashtable();
-- 
1.7.9.5


