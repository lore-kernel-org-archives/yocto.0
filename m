Return-Path: <pierre.ficheux@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47EB3E00BBC; Sat,  1 Jul 2017 01:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
X-Greylist: delayed 484 seconds by postgrey-1.32 at yocto-www;
	Sat, 01 Jul 2017 01:00:30 PDT
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FEBBE00BB3
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 01:00:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 9D0AF1EE3839;
	Sat,  1 Jul 2017 09:52:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id PCldv4KMmTiR; Sat,  1 Jul 2017 09:52:25 +0200 (CEST)
Received: from pierre-N24-25JU.home (LFbn-1-1016-11.w86-247.abo.wanadoo.fr
	[86.247.60.11])
	by idris.smile.fr (Postfix) with ESMTPSA id 79EEE1EE37FF;
	Sat,  1 Jul 2017 09:52:25 +0200 (CEST)
From: Pierre FICHEUX <pierre.ficheux@smile.fr>
To: yocto@yoctoproject.org
Date: Sat,  1 Jul 2017 09:52:09 +0200
Message-Id: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] Added missing LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Sat, 01 Jul 2017 08:00:34 -0000

This problem causes the following error :

ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary

Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
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
2.7.4


