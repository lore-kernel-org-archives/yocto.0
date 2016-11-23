Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DE55E00CE9; Wed, 23 Nov 2016 15:27:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20984E00CD6
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 15:27:21 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 23 Nov 2016 15:27:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,540,1473145200"; d="scan'208";a="1089671740"
Received: from unknown (HELO aehernan-MOBL1.zpn.intel.com) ([10.219.18.92])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2016 15:27:20 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 23 Nov 2016 17:27:21 -0600
Message-Id: <20161123232721.30576-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.1
Subject: [PATCH] example-recipe: Fix LDFLAGS compilation issue on newly created recipes
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
X-List-Received-Date: Wed, 23 Nov 2016 23:27:22 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
index 5fbf594..e534d36 100644
--- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
@@ -14,7 +14,7 @@ SRC_URI = "file://helloworld.c"
 S = "${WORKDIR}"
 
 do_compile() {
-	     ${CC} helloworld.c -o helloworld
+	     ${CC} ${LDFLAGS} helloworld.c -o helloworld
 }
 
 do_install() {
-- 
2.10.1


