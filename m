Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F68CE00AA2; Tue,  2 May 2017 14:50:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 418BEE009C2
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 14:50:30 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 May 2017 14:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,281,1491289200"; d="scan'208";a="852182040"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.113])
	by FMSMGA003.fm.intel.com with ESMTP; 02 May 2017 14:50:28 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 May 2017 16:50:06 -0500
Message-Id: <1493761806-16439-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1492457188-18773-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1492457188-18773-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v3] models.py: Improve Series naming when no cover letter is provided
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
X-List-Received-Date: Tue, 02 May 2017 21:50:34 -0000

The number/order prefix from a patch Subject line
is inapropriately included when naming a Series where
a cover letter is not provided and an additional
prefix is present at the Subject.

This change improves the substitution regex to omit
the number/order prefix but include any other prefix
that may be present.

[YOCTO #11305]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---

Notes:
    Changes in V3: remove the number/order prefix without
    changing any other other existing prefix, as this may be
    required for mapping the patch to additional branches
    other than master.

 patchwork/models.py | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/patchwork/models.py b/patchwork/models.py
index ddc3254..7944b98 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1046,8 +1046,12 @@ def _on_revision_complete(sender, revision, **kwargs):
     # so we can update the name for series without a cover letter
     if series.name == SERIES_DEFAULT_NAME:
         name = series.latest_revision().ordered_patches()[0].name
-        n = re.compile(r'(\[\d+\/\d+\]\s?)')
-        name = n.sub('', name)
+        n = re.compile(
+            r'((\[.*\]\s?)*\[.*\w+.*(\W+\d+\/\d+)+\s*\]\s?)|(\[\d+\/\d+\]\s?)')
+        if n.match(name):
+            name = re.sub(
+                r'n.match(name).group(3) or re.escape(n.match(name).group(4)',
+                name)
         c = len(series.latest_revision().ordered_patches())
         # For one-patch series (1/1) without cover letter
         if c == 1:
-- 
2.7.4


