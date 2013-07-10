Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF10E01466
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 04:23:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2013 04:23:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1035,1363158000"; d="scan'208";a="343292911"
Received: from ideapad.rb.intel.com ([10.237.105.140])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2013 04:23:07 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jul 2013 14:01:44 +0300
Message-Id: <1373454104-7389-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Update Powertop command for YP SDK
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
X-List-Received-Date: Wed, 10 Jul 2013 11:23:12 -0000

- powertop package has been updated from 1.13 to 2.3 and the command line options have changed
	- option '-d' no longer exists -> option --debug seems to its successor
	- option '-t' is not documented, but still works -> changed to --time, which is documented

[Yocto #4830]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/PowertopModel.java     |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index af6cca0..79bef61 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -60,7 +60,7 @@ public class PowertopModel extends BaseModel {
 		remoteFile = new String(REMOTE_FILE_PREFIX + currentDate);
 		localFile = new String(remoteFile + LOCAL_FILE_SUFFIX);
 		
-		String args = "start -l " + remoteFile + " powertop -d -t " + time.toString();
+		String args = "start -l " + remoteFile + " powertop --debug --time " + time.toString();
 		if(showpid)
 			args += " -p";
 		runRemoteShellExec(monitor, args, true);
-- 
1.7.9.5


