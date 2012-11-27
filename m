Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E410E011ED
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 07:26:11 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Nov 2012 07:26:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,328,1352102400"; d="scan'208";a="247886153"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga002.jf.intel.com with ESMTP; 27 Nov 2012 07:26:09 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Nov 2012 17:17:00 +0200
Message-Id: <1354029423-16104-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 1/4] Fix remote deletion of files
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
X-List-Received-Date: Tue, 27 Nov 2012 15:26:11 -0000

- when deleting a file from a remote directory use the URI and not the location of the file which is null

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 5f919c3..c5354a4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -80,7 +80,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		this.pinfo = new ProjectInfo();
 		pinfo.setLocation(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot));
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e";
+		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e";
 	}
 
 	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) throws IOException {
@@ -376,7 +376,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			}
 			try {
 				if(!initialized) { //recheck
-					boolean hasErrors = false;	
+					boolean hasErrors = false;
 					String result = shell.execute(parsingCmd, hasErrors);
 					if(!hasErrors) {
 						properties = parseBBEnvironment(result);
@@ -725,7 +725,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		try {
 			if (initialized && (removed != null || changed != null)) {
 				for(int i=0;removed != null && i<removed.length;i++) {
-					if (this.depends.contains(removed[i].getLocation().toString())) {
+					if (this.depends.contains(removed[i].getLocationURI())) {
 						initialized = false;
 						return;
 					}
-- 
1.7.9.5


