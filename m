Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5855E0094C; Thu,  4 May 2017 11:52:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32CAAE007EE
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 11:52:24 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2017 11:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,289,1491289200"; d="scan'208";a="95688612"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by orsmga005.jf.intel.com with ESMTP; 04 May 2017 11:52:22 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 May 2017 13:52:20 -0500
Message-Id: <1493923940-13792-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1493761806-16439-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1493761806-16439-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v5] models.py: Improve Series naming when no cover letter is provided
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
X-List-Received-Date: Thu, 04 May 2017 18:52:25 -0000

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
    Changes in V5: Fixed argument formatting in re.sub function
    
    Changes in V4: use group naming in regex instead of integer
    indexing for readibility purposes
    
    Changes in V3: remove the number/order prefix without
    changing any other other existing prefix, as this may be
    required for mapping the patch to additional branches
    other than master.

 patchwork/models.py | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/patchwork/models.py b/patchwork/models.py
index ddc3254..7dd8120 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1046,8 +1046,14 @@ def _on_revision_complete(sender, revision, **kwargs):
     # so we can update the name for series without a cover letter
     if series.name == SERIES_DEFAULT_NAME:
         name = series.latest_revision().ordered_patches()[0].name
-        n = re.compile(r'(\[\d+\/\d+\]\s?)')
-        name = n.sub('', name)
+        n = re.compile(r'((\[.*\]\s?)*\[.*\w+.*'
+                       '(?P<comb_pref>\W+\d+\/\d+)+\s*\]\s?)'
+                       '|(?P<ind_pref>\[\d+\/\d+\]\s?)')
+        if n.match(name):
+            name = re.sub(
+                n.match(name).group("comb_pref") or
+                re.escape(n.match(name).group("ind_pref")),
+                '', name)
         c = len(series.latest_revision().ordered_patches())
         # For one-patch series (1/1) without cover letter
         if c == 1:
-- 
2.7.4


