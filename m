Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C47EFE009E4; Wed,  5 Aug 2015 09:59:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CA23E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 09:59:45 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 05 Aug 2015 09:59:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,618,1432623600"; d="scan'208";a="619896352"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga003.jf.intel.com with ESMTP; 05 Aug 2015 09:59:45 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Aug 2015 09:55:50 -0700
Message-Id: <1438793750-22967-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-mingw][PATCH] README: minor correction
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
X-List-Received-Date: Wed, 05 Aug 2015 16:59:48 -0000

Fixed references to meta-darwin.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 61eda1b..96995b8 100644
--- a/README
+++ b/README
@@ -1,4 +1,4 @@
-meta-darwin
+meta-mingw
 ==========
 
 OpenEmbedded meta layer for mingw based SDKs
-- 
1.9.1


