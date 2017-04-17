Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4E6DE0094C; Mon, 17 Apr 2017 12:26:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DADFE00839
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 12:26:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Apr 2017 12:26:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,215,1488873600"; d="scan'208";a="75257896"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by orsmga002.jf.intel.com with ESMTP; 17 Apr 2017 12:26:29 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 14:26:28 -0500
Message-Id: <1492457188-18773-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH v2] models.py: Improve Series naming when no cover letter is provided
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
X-List-Received-Date: Mon, 17 Apr 2017 19:26:35 -0000

The number/order prefix from a patch Subject line
is inapropriately included when naming a Series where
a cover letter is not provided and an additional
prefix is present at the Subject.

This change improves the substitution regex to omit
the number/order and any other prefix that may be
present.

[YOCTO #11305]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---

Notes:
    Changes in v2: Ommit all of the prefixes that may be present in first patch to name the series

 patchwork/models.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/patchwork/models.py b/patchwork/models.py
index ddc3254..a34e0fc 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1046,7 +1046,7 @@ def _on_revision_complete(sender, revision, **kwargs):
     # so we can update the name for series without a cover letter
     if series.name == SERIES_DEFAULT_NAME:
         name = series.latest_revision().ordered_patches()[0].name
-        n = re.compile(r'(\[\d+\/\d+\]\s?)')
+        n = re.compile(r'(\[.*\]\s?)')
         name = n.sub('', name)
         c = len(series.latest_revision().ordered_patches())
         # For one-patch series (1/1) without cover letter
-- 
2.7.4


