Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 556E6E00C19; Mon, 14 Aug 2017 15:54:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8A2E008D2
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 15:54:39 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2017 15:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,375,1498546800"; d="scan'208";a="137417024"
Received: from arbrindl-dev.jf.intel.com ([10.7.159.68])
	by orsmga005.jf.intel.com with ESMTP; 14 Aug 2017 15:54:39 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Aug 2017 15:50:56 -0700
Message-Id: <1502751056-7648-1-git-send-email-amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][PATCH] Redirect user to correct url after editing a layer
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
X-List-Received-Date: Mon, 14 Aug 2017 22:54:41 -0000

Before, if a user edited a layer's name, they would be redirected
to a url utilizing the old name and then receive a 404 Page not
found error. Now, the url utilizes the new name.

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index eaeb5c3..2a25455 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -105,11 +105,6 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
         layerbranch = get_object_or_404(LayerBranch, layer=layeritem, branch=branchobj)
         deplistlayers = LayerItem.objects.exclude(id=layeritem.id).order_by('name')
         returnto = request.GET.get('returnto', 'layer_item')
-        if returnto:
-            if returnto == 'layer_review':
-                return_url = reverse_lazy(returnto, args=(layeritem.name,))
-            else:
-                return_url = reverse_lazy(returnto, args=(branch, layeritem.name))
     else:
         # Submit mode
         layeritem = LayerItem()
@@ -185,6 +180,15 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                         msg.send()
                     return HttpResponseRedirect(reverse('submit_layer_thanks'))
             messages.success(request, 'Layer %s saved successfully.' % layeritem.name)
+            if slug:
+                returnto = request.GET.get('returnto', 'layer_item')
+                if returnto:
+                    if returnto == 'layer_review':
+                        return_url = reverse_lazy(returnto, args=(layeritem.name,))
+                    else:
+                        return_url = reverse_lazy(returnto, args=(branch, layeritem.name))
+
+
             if return_url:
                 return HttpResponseRedirect(return_url)
     else:
-- 
2.7.4


