Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC8F6E01043; Sat, 23 Jul 2016 08:11:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC7BE0103B
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 08:11:17 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 23 Jul 2016 08:11:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,409,1464678000"; d="scan'208";a="144267945"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.252.139.212])
	by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2016 08:11:16 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Jul 2016 08:11:04 -0700
Message-Id: <1469286665-16059-2-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
References: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 1/2] BuildSet.py: allow using local git mirror even if OPTIMIZED_GIT_CLONE is False
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
X-List-Received-Date: Sat, 23 Jul 2016 15:11:51 -0000

OPTIMIZED_GIT_CLONE controls the use of two features: a local git mirror
directory and an optimized move/copy of old build directories. Allow the
use of the local mirror, even if the optimized move/copy is not used.

To disable the local mirror, comment out the setting of OGIT_MIRROR_DIR,
as well as setting OPTIMIZED_GIT_CLONE False.

[YOCOT #10010]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 lib/python2.7/site-packages/autobuilder/BuildSet.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/BuildSet.py b/lib/python2.7/site-packages/autobuilder/BuildSet.py
index 8c2208e..1418a8d 100644
--- a/lib/python2.7/site-packages/autobuilder/BuildSet.py
+++ b/lib/python2.7/site-packages/autobuilder/BuildSet.py
@@ -82,6 +82,8 @@ class BuildSet():
                                     method='barecopy'
                                     storedir=os.environ.get('OGIT_TRASH_DIR')
                                     mirrordir=os.environ.get('OGIT_MIRROR_DIR')
+                            elif os.environ.get('OGIT_MIRROR_DIR', None) != None:
+                                mirrordir=os.environ.get('OGIT_MIRROR_DIR')
                             if 'poky' in layername or 'oecore' in layername:
                                 workdir = 'build'
                             elif "eclipse-poky" in layername:
-- 
2.5.5


