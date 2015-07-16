Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F036E00978; Thu, 16 Jul 2015 03:10:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AD41E00957
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 03:10:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jul 2015 03:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,487,1432623600"; d="scan'208";a="729961635"
Received: from araska-mobl4.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.19.170])
	by orsmga001.jf.intel.com with ESMTP; 16 Jul 2015 03:10:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Jul 2015 11:10:00 +0100
Message-Id: <1437041400-17423-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [yocto-docs][PATCH] ref-manual: fix example of setting root password using extrausers
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
X-List-Received-Date: Thu, 16 Jul 2015 10:10:37 -0000

We need to use usermod here not useradd.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/ref-manual/ref-classes.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index d482ca0..253079d 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -860,7 +860,7 @@
         <literallayout class='monospaced'>
      inherit extrausers
      EXTRA_USERS_PARAMS = "\
-         useradd -P 1876*18 root; \
+         usermod -P 1876*18 root; \
          "
         </literallayout>
     </para>
-- 
2.1.0


