Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AAFEE00D32; Tue, 17 Oct 2017 14:55:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE795E00CB6
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 14:55:04 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 17 Oct 2017 14:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; d="scan'208";a="161614156"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.138])
	by orsmga005.jf.intel.com with ESMTP; 17 Oct 2017 14:55:01 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Oct 2017 16:52:05 -0500
Message-Id: <1508277125-5985-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [rrs][PATCH] local.conf: inherit distrodata
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
X-List-Received-Date: Tue, 17 Oct 2017 21:55:05 -0000

complete recipe information is available from distrodata.

This change inherits distrodata into RRS configuration.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 conf/local.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/local.conf b/conf/local.conf
index b40855a..b569e6c 100644
--- a/conf/local.conf
+++ b/conf/local.conf
@@ -15,3 +15,4 @@ DISTRO = ""
 #require conf/distro/include/distro_alias.inc
 #require conf/distro/include/upstream_tracking.inc
 #require conf/distro/include/package_regex.inc
+INHERIT += "distrodata"
-- 
2.7.4


