Return-Path: <belen.barros.pena@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515DBE009D7; Thu, 13 Aug 2015 06:26:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7152BE00947
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:25:52 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 13 Aug 2015 06:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,670,1432623600"; d="scan'208";a="624808541"
Received: from bbarrosp-mac03.isw.intel.com ([10.237.224.32])
	by orsmga003.jf.intel.com with ESMTP; 13 Aug 2015 06:25:52 -0700
From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 14:25:36 +0100
Message-Id: <1439472336-20463-2-git-send-email-belen.barros.pena@linux.intel.com>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
In-Reply-To: <1439472336-20463-1-git-send-email-belen.barros.pena@linux.intel.com>
References: <1439472336-20463-1-git-send-email-belen.barros.pena@linux.intel.com>
Subject: [PATCH 2/2] rrs: avoid too many columns in the recipes table
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
X-List-Received-Date: Thu, 13 Aug 2015 13:26:02 -0000

Currently, when you select 'Can't be updated' in the upstream
status filter, the resulting table will add the 'No update reason'
column to the default column set.

Although this is probably useful information to see in the
table itself, it results in too many columns, and a rather
unpleasant layout change.

This patch hides the 'Summary' column whenever you select
'Can't be updated' in the upstream status filter, effectively
replacing the 'Summary' with the 'No update reason' column,
which is probably more relevant in this context. Now you
have less columns distracting you, and a slightly less
jumpy layout change.

A designer would have come up with this solution in the
first place. Sadly, she was never asked.

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
---
 templates/rrs/recipes.html | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index 3ac73d2..8927b2f 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -218,8 +218,10 @@ $(document).ready(function() {
     function applyFilters() {
         if (upstreamStatus == 'Can\'t be updated') {
             $('.no_update_reason_column').show()
+            $('.summary_column').hide()            
         } else {
             $('.no_update_reason_column').hide()
+            $('.summary_column').show()            
         }
 
         if (upstreamStatus == 'All') {
-- 
2.3.2 (Apple Git-55)


