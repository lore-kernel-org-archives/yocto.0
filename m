Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C74B2E00E5E; Mon,  8 Jan 2018 20:21:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1D9FE00E22
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 20:21:24 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 20:21:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,334,1511856000"; 
   d="scan'208";a="9740756"
Received: from cooi24-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.11])
	by orsmga006.jf.intel.com with ESMTP; 08 Jan 2018 20:21:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Jan 2018 17:20:28 +1300
Message-Id: <21f343201dd11876c91d1437d7d0ca6647fdba25.1515471545.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <cover.1515471545.git.paul.eggleton@linux.intel.com>
References: <cover.1515471545.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 5/6] views: fix "layer:" keyword on recipe search page
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
X-List-Received-Date: Tue, 09 Jan 2018 04:21:29 -0000

We were using the layerbranch id to search for the specified layer,
which is most likely to return either no results or results for the
wrong layer. We can also avoid specifying the id field at all here as
the filter() function can handle real objects.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 5b111a3..84de4e0 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -449,11 +449,11 @@ class RecipeSearchView(ListView):
                     messages.add_message(self.request, messages.ERROR, 'The \
 layer name is expected to follow the \"layer:\" prefix without any spaces.')
                 else:
-                    query_layer = LayerBranch.objects.filter(
-                        layer__name=query_layername)
+                    query_layer = LayerItem.objects.filter(
+                        name=query_layername)
                     if query_layer:
                         init_qs = init_qs.filter(
-                            layerbranch__layer__id=query_layer[0].id)
+                            layerbranch__layer=query_layer[0])
                     else:
                         messages.add_message(self.request, messages.ERROR,
                                             'No layer \"%s\" was found.'
-- 
2.9.5


