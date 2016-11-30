Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E46BE00503; Wed, 30 Nov 2016 09:15:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28989E00498
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 09:15:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2016 09:15:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,574,1473145200"; d="scan'208";a="1075683762"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.146])
	by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2016 09:15:01 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2016 11:14:46 -0600
Message-Id: <1480526086-7951-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v2] patchwork/models: Include first patch's name in series name
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
X-List-Received-Date: Wed, 30 Nov 2016 17:15:07 -0000

Patch Series created without a cover letter are named using a
non-descriptive generic string.

This change names the series using either the first 30 characters in
patch #1 plus the remaining patches number, or the patch name for
one-patch (1/1) series.

[Yocto #10625]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/models.py | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/patchwork/models.py b/patchwork/models.py
index 3f531e6..2dfd884 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1042,6 +1042,22 @@ def _series_supersede_previous_patches(series):
 def _on_revision_complete(sender, revision, **kwargs):
     series = revision.series
 
+    # Now we know how many patches are in the revision,
+    # so we can update the name for series without a cover letter
+    if series.name == SERIES_DEFAULT_NAME:
+        try:
+            name = series.latest_revision().ordered_patches()[0].name
+            n = re.compile(r'(\[\d+\/\d+\]\s?)')
+            name = n.sub('', name)
+            c = len(series.latest_revision().ordered_patches())
+            # For one-patch series (1/1) without cover letter
+            if c == 1:
+                series.name = name
+            else:
+                series.name = "\"%s...\" and %s more" % (name[:30], c-1)
+        except:
+            pass
+
     # update series.last_revision
     series.last_revision = series.latest_revision()
     series.save()
-- 
1.9.1


