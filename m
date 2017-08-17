Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85B5EE00D57; Thu, 17 Aug 2017 15:02:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8940EE00D03
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 15:02:23 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 15:02:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,389,1498546800"; d="scan'208";a="138901952"
Received: from arbrindl-dev.jf.intel.com ([10.7.159.68])
	by orsmga005.jf.intel.com with ESMTP; 17 Aug 2017 15:02:22 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Aug 2017 15:00:37 -0700
Message-Id: <1503007237-32095-1-git-send-email-amanda.r.brindle@intel.com>
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
X-List-Received-Date: Thu, 17 Aug 2017 22:02:24 -0000

Before, if a user edited a layer's name, they would be redirected
to a url utilizing the old name and then receive a 404 Page not
found error. Now, the url utilizes the new name.

Fixes [YOCTO #11932]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/views.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index eaeb5c3..1661cb3 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -186,6 +186,10 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                     return HttpResponseRedirect(reverse('submit_layer_thanks'))
             messages.success(request, 'Layer %s saved successfully.' % layeritem.name)
             if return_url:
+                if returnto == 'layer_review':
+                    return_url = reverse_lazy(returnto, args=(layeritem.name,))
+                else:
+                    return_url = reverse_lazy(returnto, args=(branch, layeritem.name))
                 return HttpResponseRedirect(return_url)
     else:
         form = EditLayerForm(request.user, layerbranch, instance=layeritem)
-- 
2.7.4


