Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D57B9E01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 07:43:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2013 07:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,859,1363158000"; d="scan'208";a="349335446"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2013 07:44:00 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Jun 2013 17:20:57 +0300
Message-Id: <1371133257-829-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Adapt OutputProcessor to retrieve reader from shell
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
X-List-Received-Date: Thu, 13 Jun 2013 14:43:51 -0000

- adapt code to use IHostShell interface modifyied locally in order to retrieve the same underlying error and output stream

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/remote/utils/OutputProcessor.java    |   10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
index 401a782..04c04e1 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
@@ -49,14 +49,8 @@ public abstract class OutputProcessor{
 		BufferedReader inbr = null;
 		BufferedReader errbr = null;
 
-		if (hostShell instanceof LocalHostShell) {
-			inbr = ((LocalHostShell)hostShell).getReader(false);
-			errbr = ((LocalHostShell)hostShell).getReader(true);
-		} else {
-			Process p = new HostShellProcessAdapter(hostShell);
-			inbr = new BufferedReader(new InputStreamReader(p.getInputStream()));
-			errbr = new BufferedReader(new InputStreamReader(p.getErrorStream()));
-		}
+		inbr = hostShell.getReader(false);
+		errbr = hostShell.getReader(true);
 		boolean cancel = false;
 		while (!cancel) {
 			if(monitor.isCanceled()) {
-- 
1.7.9.5


