Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C14E00EAC; Tue, 16 Aug 2016 11:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9CBFE00EA5
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 11:17:10 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 16 Aug 2016 11:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="866453805"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga003.jf.intel.com with ESMTP; 16 Aug 2016 11:17:09 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Aug 2016 11:18:17 -0700
Message-Id: <1471371497-19334-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][neon][PATCH] scripts/setup.sh: fix download URIs
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
X-List-Received-Date: Tue, 16 Aug 2016 18:17:12 -0000

The non-upstream URIs were accidentally still pointing to Mars data.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 30f4463..75310ab 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -227,8 +227,8 @@ then
         TM_SITE="http://download.eclipse.org/tm/updates/4.0/GA"
         TM_TERMINAL_SITE="http://download.eclipse.org/tm/terminal/marketplace"
 else
-        MAIN_SITE="http://downloads.yoctoproject.org/eclipse/mars/"
-        DEPRECATED_SITE="http://downloads.yoctoproject.org/eclipse/luna/ftp.osuosl.org/pub/eclipse/releases/luna"
+        MAIN_SITE="http://downloads.yoctoproject.org/eclipse/neon/"
+        DEPRECATED_SITE="http://downloads.yoctoproject.org/eclipse/mars"
         TM_SITE="http://downloads.yoctoproject.org/eclipse/tm/updates/4.0/"
         TM_TERMINAL_SITE="http://downloads.yoctoproject.org/eclipse/tm/terminal/marketplace"
 fi
-- 
2.7.4


