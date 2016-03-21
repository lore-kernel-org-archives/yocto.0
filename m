Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39ABDE00BB9; Mon, 21 Mar 2016 13:42:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 108ACE00973
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 13:42:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2016 13:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,373,1455004800"; d="scan'208";a="928855578"
Received: from wcrandle-mobl1.jf.intel.com ([10.24.6.123])
	by fmsmga001.fm.intel.com with ESMTP; 21 Mar 2016 13:42:51 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 Mar 2016 13:42:37 -0700
Message-Id: <1458592957-26199-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [PATCH] add !meta-poky to .gitignore file
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
X-List-Received-Date: Mon, 21 Mar 2016 20:42:57 -0000

Another meta-yocto -> meta-poky transition item. Git complained
on commit that files in meta-poky could not be committed.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .gitignore | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index 036ad09..196952e 100644
--- a/.gitignore
+++ b/.gitignore
@@ -14,6 +14,7 @@ hob-image-*.bb
 *.orig
 *.rej
 *~
+!meta-poky
 !meta-yocto
 !meta-yocto-bsp
 !meta-yocto-imported
-- 
2.5.0


