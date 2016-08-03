Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67719E00D71; Wed,  3 Aug 2016 12:58:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D00E00D54
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 12:58:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 03 Aug 2016 12:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,467,1464678000"; d="scan'208";a="1007906382"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 03 Aug 2016 12:58:47 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2016 12:59:31 -0700
Message-Id: <1470254371-30125-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][PATCH] setup.sh: change TM mirror url
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
X-List-Received-Date: Wed, 03 Aug 2016 19:58:51 -0000

It makes more sense to have everything related to eclipse in one
directory under http://downloads.yoctoproject.org/eclipse so
move tm/ to be a subdirectory of eclipse/

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 8b2ccd6..233309f 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -227,7 +227,7 @@ then
         TM_SITE="http://download.eclipse.org/tm/updates/4.0/GA"
 else
         MAIN_SITE="http://downloads.yoctoproject.org/eclipse/mars/"
-        TM_SITE="http://downloads.yoctoproject.org/tm/updates/4.0/"
+        TM_SITE="http://downloads.yoctoproject.org/eclipse/tm/updates/4.0/"
         DEPRECATED_SITE="http://downloads.yoctoproject.org/eclipse/luna/ftp.osuosl.org/pub/eclipse/releases/luna"
 fi
 
-- 
2.7.4


