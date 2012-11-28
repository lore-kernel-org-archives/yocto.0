Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91FEBE0145B
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:52 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584849"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:51 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:27 +0200
Message-Id: <1354097550-21312-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 5/8] Fix remote deletion of files
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
X-List-Received-Date: Wed, 28 Nov 2012 10:21:52 -0000

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


