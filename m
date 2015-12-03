Return-Path: <belen.barros.pena@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E599AE00457; Thu,  3 Dec 2015 06:26:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ABD3E0033E
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 06:26:28 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 03 Dec 2015 06:26:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="833509154"
Received: from bbarrosp-mac03.isw.intel.com ([10.237.224.81])
	by orsmga001.jf.intel.com with ESMTP; 03 Dec 2015 06:26:26 -0800
From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  3 Dec 2015 14:26:15 +0000
Message-Id: <1449152775-7761-1-git-send-email-belen.barros.pena@linux.intel.com>
X-Mailer: git-send-email 2.4.9 (Apple Git-60)
Subject: [PATCH] [rrs] Show the 'Upstream version' column only when relevant
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
X-List-Received-Date: Thu, 03 Dec 2015 14:26:32 -0000

From: Belen Barros Pena <belen.barros.pena@intel.com>

Currently the recipes table always shows the 'Upstream version' column.
However, for recipes up-to-date, this column is irrelevant, since for such
recipes 'version' always equals 'upstream version'.

Since the vast majority of the recipes are up-to-date, when you are
showing all the recipes the 'upstream version' column is also pretty
useless.

The column is only really relevant when you are looking at recipes
with status 'not updated' or 'can't be updated'. I would have thought
there would be nothing to show in the 'Upstream version' column for
recipes with status 'Unknown', but it turns out some of those do have
an upstream version value, that I thought might be useful to the
maintainer somehow.

So, this patch hides the 'Upstream version' column whenever you are
looking at all the recipes or up-to-date recipes; and shows it when
you select any of the other recipe statuses

Signed-off-by: Belen Barros Pena <belen.barros.pena@intel.com>
---
 templates/rrs/recipes.html | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index be2a3a5..96a3bbc 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -234,6 +234,12 @@ $(document).ready(function() {
             $('.summary_column').show()            
         }
 
+        if (upstreamStatus == 'Up-to-date' || upstreamStatus == 'All') {
+            $('.upstream_version_column').hide();
+        } else {
+            $('.upstream_version_column').show();
+        }
+
         if (upstreamStatus == 'All') {
             upstreamStatusFilter = ''
         } else {
-- 
2.4.9 (Apple Git-60)


