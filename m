Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF93E00A73; Tue, 28 Jul 2015 07:27:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12852E0099A
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 07:27:36 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 28 Jul 2015 07:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,563,1432623600"; d="scan'208";a="531671556"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.56.19])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2015 07:27:35 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 28 Jul 2015 09:27:17 -0500
Message-Id: <1438093638-7722-3-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 2/3] rrs-additional.css: Added min-width to last update column
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
X-List-Received-Date: Tue, 28 Jul 2015 14:27:36 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This adds the min-width for the last updated column
to the css.

[YOCTO #8018]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 rrs/static/css/rrs-additional.css | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/rrs/static/css/rrs-additional.css b/rrs/static/css/rrs-additional.css
index 15a2059..bdfa151 100644
--- a/rrs/static/css/rrs-additional.css
+++ b/rrs/static/css/rrs-additional.css
@@ -17,6 +17,10 @@
     min-width: 60px;
 }
 
+.last_updated_column {
+    min-width: 60px;
+}
+
 .maintainer_column {
     min-width: 110px;
 }
-- 
1.9.1


