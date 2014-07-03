Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 063ABE0045F; Thu,  3 Jul 2014 08:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4F6CE00404
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 08:52:35 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jul 2014 08:52:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="359324658"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2014 08:47:10 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id BFE8F6A4007;
	Thu,  3 Jul 2014 08:51:54 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  3 Jul 2014 20:57:10 +0300
Message-Id: <1404410230-15143-1-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] grubtarget.py: Change 'test' GRUB entry selection method
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
X-List-Received-Date: Thu, 03 Jul 2014 15:52:39 -0000

Using character combinations for <arrow down> to select the test image will not always work.

Using the '--hotkey x' option added to the 'test' GRUB menuentry to select the 'test' GRUB entry.

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
index 02ada65..7bc807d 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
@@ -55,7 +55,7 @@ class GrubTarget(MasterImageHardwareTarget):
             serialconn = pexpect.spawn(self.serialcontrol_cmd, env=self.origenv, logfile=sys.stdout)
             serialconn.expect("GNU GRUB  version 2.00")
             serialconn.expect("Linux")
-            serialconn.sendline("OB\r")
+            serialconn.sendline("x")
             serialconn.expect("login:", timeout=120)
             serialconn.close()
         except pexpect.ExceptionPexpect as e:
-- 
1.8.3.2


