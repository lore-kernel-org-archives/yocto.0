Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D732E00A6D; Tue,  2 Aug 2016 13:53:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 136A9E00A08
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 13:53:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 02 Aug 2016 13:53:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,462,1464678000"; d="scan'208";a="1007251604"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 02 Aug 2016 13:53:40 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2016 13:53:31 -0700
Message-Id: <1470171212-25096-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH 1/2] BuildImages.py: skip uclibc with core version >= 9
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
X-List-Received-Date: Tue, 02 Aug 2016 20:53:44 -0000

Starting with oe-core version 9, we don't need to build uclibc anymore.

[YOCTO #10020]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 9ea350f..cb011ba 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -120,7 +120,7 @@ class BuildImages(BitbakeShellCommand):
                 self.finished(SUCCESS)
                 self.description = ["Skipping no-x11 Build"]
             elif self.layerversion_core is not None \
-               and int(self.layerversion_core) < 8 \
+               and int(self.layerversion_core) != 8 \
                and 'uclibc' in self.localconf:
                 self.finished(SUCCESS)
                 self.description = ["Skipping uclibc Build"]
-- 
2.5.5


