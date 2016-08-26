Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 561C7E00CA3; Fri, 26 Aug 2016 14:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 306EDE00C9A
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 14:04:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 26 Aug 2016 14:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,582,1464678000"; d="scan'208";a="1042060682"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.17.210])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2016 14:04:41 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Aug 2016 16:06:47 -0500
Message-Id: <1472245607-17638-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Cc: joshua.g.lock@intel.com
Subject: [PATCH] [yocto-autobuilder] RunOeSelftest.py: changed to new oe-selftest syntax
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
X-List-Received-Date: Fri, 26 Aug 2016 21:04:43 -0000

oe-selftest is changing syntax with YOCTO #8938. This patch modifies required commands to avoid breaking oe-seltest autobuilder. Should be integrated together with the syntax changing patch.

[YOCTO #8938]
---
 lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
index 809bcc3..513ace2 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -34,9 +34,9 @@ class RunOeSelftest(ShellCommand):
         self.command += "netstat -an | grep -q 5901 ;"
         self.command += "if [ $? -ne 0 ]; then echo 'Starting a VNC server on :1'; vncserver :1; else echo 'Will use a VNC server already running on :1'; fi;"
         if self.tests == None:
-            self.command += "if [ -d ../meta-selftest ]; then export DISPLAY=:1; oe-selftest --run-all-tests; else echo 'Skipping step - no meta-selftest layer here'; fi"
+            self.command += "if [ -d ../meta-selftest ]; then export DISPLAY=:1; oe-selftest run; else echo 'Skipping step - no meta-selftest layer here'; fi"
         else:
-            self.command += "if [ -d ../meta-selftest ]; then export DISPLAY=:1; oe-selftest " + self.tests + "; else echo 'Skipping step - no meta-selftest layer here'; fi"
+            self.command += "if [ -d ../meta-selftest ]; then export DISPLAY=:1; oe-selftest run --tests " + self.tests + "; else echo 'Skipping step - no meta-selftest layer here'; fi"
         ShellCommand.start(self)
 
     def _createOESelftestErrorReport(self, log):
-- 
2.4.11


