Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0952BE00C6B; Sun, 25 Mar 2018 12:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE7EBE00474
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2018 12:31:43 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Mar 2018 12:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,361,1517904000"; d="scan'208";a="28315467"
Received: from prabhakp-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.164.175])
	by orsmga008.jf.intel.com with ESMTP; 25 Mar 2018 12:31:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Mar 2018 08:31:00 +1300
Message-Id: <20180325193101.13451-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [layerindex-web][PATCH 1/2] context_processors.py: adjust default site name
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
X-List-Received-Date: Sun, 25 Mar 2018 19:31:45 -0000

Default site name should be Layer Index, not metadata index as it was
before.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/context_processors.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/context_processors.py b/layerindex/context_processors.py
index e2852ee..c21c4a9 100644
--- a/layerindex/context_processors.py
+++ b/layerindex/context_processors.py
@@ -12,10 +12,10 @@ def layerindex_context(request):
     if site and site.name and site.name != 'example.com':
         site_name = site.name
     else:
-        site_name = 'OpenEmbedded metadata index'
+        site_name = 'OpenEmbedded Layer Index'
     return {
         'all_branches': Branch.objects.exclude(name='oe-classic').order_by('sort_priority'),
         'unpublished_count': LayerItem.objects.filter(status='N').count(),
         'oe_classic': Branch.objects.filter(name='oe-classic'),
         'site_name': site_name
-    }
\ No newline at end of file
+    }
-- 
2.14.3


