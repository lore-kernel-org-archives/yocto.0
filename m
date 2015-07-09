Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAEB1E00A5B; Thu,  9 Jul 2015 08:39:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0339FE00A39
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 08:39:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2015 08:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,440,1432623600"; d="scan'208";a="761326810"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 08:39:28 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 10:39:14 -0500
Message-Id: <1436456354-6416-4-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 3/3] base_toplevel.html: Changed format of percentage done
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
X-List-Received-Date: Thu, 09 Jul 2015 15:39:29 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Changed the text of percentage done to updated. Also
added a tooltip that shows how this percentage is calculated.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 templates/rrs/base_toplevel.html | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/templates/rrs/base_toplevel.html b/templates/rrs/base_toplevel.html
index 9804c03..fd0c96c 100644
--- a/templates/rrs/base_toplevel.html
+++ b/templates/rrs/base_toplevel.html
@@ -66,7 +66,7 @@
                     </span>
                     <ul class="nav">
                         <li class="divider-vertical"></li>
-                        <li class="lead" id="percentage"><strong>{{ recipes_percentage }}%</strong> done</li>
+                        <li class="lead" id="percentage" data-toggle="tooltip" title="Upgrades done in the period divided by recipes not updated at the beginning of the period"><strong>{{ recipes_percentage }}%</strong> Updated</li>
                         <li class="divider-vertical"></li>
                         <li class="lead" id="up-to-date-recipes">Up-to-date: <span class="text-success">{{ recipes_up_to_date }}</strong></li>
                         <li class="divider-vertical"></li>
-- 
1.9.1


