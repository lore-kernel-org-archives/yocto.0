Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8513E0030A; Fri, 11 Jul 2014 06:58:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FEFCE002AC
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 06:58:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jul 2014 06:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,643,1400050800"; d="scan'208";a="571735768"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 11 Jul 2014 06:58:32 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id B75A66A4007;
	Fri, 11 Jul 2014 06:57:59 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Jul 2014 19:03:24 +0300
Message-Id: <1405094604-16522-1-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] oeqa/controllers/beaglebonetarget.py: fix deploy when kernel file is a broken link
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
X-List-Received-Date: Fri, 11 Jul 2014 13:58:35 -0000

Sometimes the uncompressed rootfs image contains boot/uImage but if it's a symlink, it seems broken from the master image's point of view.
Because [ -e /mnt/testrootfs/boot/uImage ] will return 1, it will proceed to copy the backup kernel file over it but cp ~/test-kernel /mnt/testrootfs/boot/uImage will also fail with:
cp: not writing through dangling symlink

Adding a new check here, if the boot/uImage is a link, leave it as is.

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
index b2e9050..0f1aeb3 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -45,7 +45,7 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
                 'mount -L testrootfs /mnt/testrootfs',
                 'rm -rf /mnt/testrootfs/*',
                 'tar xvf ~/test-rootfs.%s -C /mnt/testrootfs' % self.image_fstype,
-                '[ -e /mnt/testrootfs/boot/uImage ] || cp ~/test-kernel /mnt/testrootfs/boot/uImage',
+                '[ -e /mnt/testrootfs/boot/uImage ] || [ -L /mnt/testrootfs/boot/uImage ] || cp ~/test-kernel /mnt/testrootfs/boot/uImage',
                 ]
 
         for _, dtbfn in self.dtbs.iteritems():
-- 
1.8.3.2


