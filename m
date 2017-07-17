Return-Path: <pierre.ficheux@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8D33E00C28; Mon, 17 Jul 2017 01:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 768BBE00C22
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 01:01:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 842C31EE23BE;
	Mon, 17 Jul 2017 10:01:02 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id oBt03JWYc8h0; Mon, 17 Jul 2017 10:01:02 +0200 (CEST)
Received: from pierre-N24-25JU.home (LFbn-1-4293-49.w92-169.abo.wanadoo.fr
	[92.169.45.49])
	by idris.smile.fr (Postfix) with ESMTPSA id 6B1061EE18DF;
	Mon, 17 Jul 2017 10:01:02 +0200 (CEST)
From: Pierre FICHEUX <pierre.ficheux@smile.fr>
To: yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 10:00:55 +0200
Message-Id: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 08:01:07 -0000

This problem causes the following error :

ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary


Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
---
 .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
index 5fbf594..2c478ad 100644
--- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
@@ -14,7 +14,8 @@ SRC_URI = "file://helloworld.c"
 S = "${WORKDIR}"
 
 do_compile() {
-	     ${CC} helloworld.c -o helloworld
+	     ${CC} ${CPPFLAGS} ${CFLAGS} -c helloworld.c -o helloworld.o
+	     ${CC} ${LDFLAGS} helloworld.o -o helloworld
 }
 
 do_install() {
-- 
2.7.4


