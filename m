Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EAE2E00AE0; Fri,  7 Apr 2017 08:04:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188CAE0098A
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 08:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491577472; x=1523113472; h=from:to:subject:date:message-id;
	bh=zy9NryJIW5arGN+zW0hPag+hsDjhIT9CuKZYZcUkz3Y=;
	b=wvXPyjc9XgB/b0EVQL3QZvSC0VxTyfw+HVMbCUP91U6rTDyIFshpIkom
	l8fG/+I1IGhxmEuNWIjDlEG+i0G73Q==;
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Apr 2017 08:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,165,1488873600"; d="scan'208";a="86013771"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.121])
	by fmsmga005.fm.intel.com with ESMTP; 07 Apr 2017 08:04:30 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Apr 2017 10:04:18 -0500
Message-Id: <1491577458-7364-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [[patchwork][PATCH] models.py: Improve Series naming when no cover letter is provided
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
X-List-Received-Date: Fri, 07 Apr 2017 15:04:35 -0000

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
 patchwork/models.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/patchwork/models.py b/patchwork/models.py
index ddc3254..8b72f4a 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1046,8 +1046,8 @@ def _on_revision_complete(sender, revision, **kwargs):
     # so we can update the name for series without a cover letter
     if series.name == SERIES_DEFAULT_NAME:
         name = series.latest_revision().ordered_patches()[0].name
-        n = re.compile(r'(\[\d+\/\d+\]\s?)')
-        name = n.sub('', name)
+        n = re.compile(r'(\[\s*\w*\s*v\d+)(\W*\d+\/\d+)(\s*\]\s?.)*')
+        name = n.sub(r'\g<1>\g<3>', name)
         c = len(series.latest_revision().ordered_patches())
         # For one-patch series (1/1) without cover letter
         if c == 1:
-- 
2.7.4


