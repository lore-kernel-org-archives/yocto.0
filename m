Return-Path: <belen.barros.pena@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF73E00B36; Wed, 14 Oct 2015 06:56:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ACB4E00A71
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 06:56:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 14 Oct 2015 06:56:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,681,1437462000"; d="scan'208";a="826497881"
Received: from bbarrosp-mac03.isw.intel.com ([10.237.224.32])
	by orsmga002.jf.intel.com with ESMTP; 14 Oct 2015 06:56:06 -0700
From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Oct 2015 14:56:03 +0100
Message-Id: <1444830963-38835-1-git-send-email-belen.barros.pena@linux.intel.com>
X-Mailer: git-send-email 2.3.8 (Apple Git-58)
Subject: [PATCH] [RRS] Update tool URL in status email
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
X-List-Received-Date: Wed, 14 Oct 2015 13:56:09 -0000

The status email sent to the Yocto Project mailing
list by the Recipe Reporting Tool still shows the
old URL (http://packages.yoctoproject.org).

This patch changes it to the new URL:

http://recipes.yoctoproject.org

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
---
 rrs/tools/rrs_upstream_email.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_upstream_email.py b/rrs/tools/rrs_upstream_email.py
index 8cadd05..3cde73b 100755
--- a/rrs/tools/rrs_upstream_email.py
+++ b/rrs/tools/rrs_upstream_email.py
@@ -47,7 +47,7 @@ RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"
 
 You can check the detail information at:
 
-http://packages.yoctoproject.org/
+http://recipes.yoctoproject.org/
 
 """
 
-- 
2.3.8 (Apple Git-58)


