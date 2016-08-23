Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 072CAE00D7E; Tue, 23 Aug 2016 10:14:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F3CAE00D76
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 10:14:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 23 Aug 2016 10:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,567,1464678000"; d="scan'208";a="1019148834"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.54])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2016 10:14:51 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 10:14:47 -0700
Message-Id: <1471972487-24148-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-wic.conf: publish qemux86; add missing error reporting steps
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
X-List-Received-Date: Tue, 23 Aug 2016 17:14:58 -0000

Commit 623665a11e added support for building a qemux86 image, but the
step to actually publish it did not get included. Also, nightly-wic.conf
was missed when the other config files were updated to include the
DownloadErrorReports and SendErrorReport steps.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-wic.conf | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-config.controller/nightly-wic.conf
index 59ea34c..1b91852 100644
--- a/buildset-config.controller/nightly-wic.conf
+++ b/buildset-config.controller/nightly-wic.conf
@@ -32,5 +32,7 @@ steps: [{'SetDest':{}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
-        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86', 'genericx86-64']}}]
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}},
+        {'PublishArtifacts': {'artifacts': ['qemux86', 'qemux86-64', 'genericx86', 'genericx86-64']}}]
 
-- 
2.5.5


