Return-Path: <belen.barros.pena@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A712DE00947; Thu, 13 Aug 2015 06:25:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 442B8E00947
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:25:43 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2015 06:25:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,670,1432623600"; d="scan'208";a="624808448"
Received: from bbarrosp-mac03.isw.intel.com ([10.237.224.32])
	by orsmga003.jf.intel.com with ESMTP; 13 Aug 2015 06:25:42 -0700
From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 14:25:35 +0100
Message-Id: <1439472336-20463-1-git-send-email-belen.barros.pena@linux.intel.com>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
Subject: [PATCH 1/2] rrs: remove sorting from the 'No update reason' column
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
X-List-Received-Date: Thu, 13 Aug 2015 13:25:45 -0000

Nothing useful can come from sorting by this column.

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
---
 templates/rrs/recipes.html | 1 +
 1 file changed, 1 insertion(+)

diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index 5d2ee5f..3ac73d2 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -293,6 +293,7 @@ $(document).ready(function() {
             2: { sorter: false },
             5: { sorter: false },
             6: { sorter: false },
+            7: { sorter: false },
         }
     }); 
 {% endif %}
-- 
2.3.2 (Apple Git-55)


