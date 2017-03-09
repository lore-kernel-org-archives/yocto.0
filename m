Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB726E009B2; Thu,  9 Mar 2017 07:43:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 173EAE009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 07:43:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Mar 2017 07:42:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,136,1486454400"; d="scan'208";a="58181300"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.117])
	by orsmga002.jf.intel.com with ESMTP; 09 Mar 2017 07:42:56 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Mar 2017 09:42:49 -0600
Message-Id: <1489074169-8393-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] series.py: return bundle objects only when authenticated
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
X-List-Received-Date: Thu, 09 Mar 2017 15:43:02 -0000

If a non-authenticated user tries to get a series view from
patchwork web UI, a 500 error message is displayed caused by
the database access attempted when filtering the bundle objects.

This change allows not-logged users to acces series view by
returning an empty bundle variable, instead of trying to
access the database.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/views/series.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/patchwork/views/series.py b/patchwork/views/series.py
index cb3b721..765d2e5 100644
--- a/patchwork/views/series.py
+++ b/patchwork/views/series.py
@@ -48,7 +48,10 @@ class SeriesView(View):
         revisions = get_list_or_404(SeriesRevision, series=series)
         patchform = PatchForm(project=series.project)
         createbundleform = CreateBundleForm()
-        bundles = Bundle.objects.filter(owner=request.user)
+        if request.user.is_authenticated():
+            bundles = Bundle.objects.filter(owner=request.user)
+        else:
+            bundles=""
         for revision in revisions:
             revision.patch_list = revision.ordered_patches().\
                 select_related('state', 'submitter')
-- 
2.7.4


