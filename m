Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C7CAE0097D; Sat,  4 Feb 2017 10:40:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 877D0E0091A
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:40:46 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="55400536"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:36:46 -0800
Message-Id: <1486233410-15671-4-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
References: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH 3/7] zephyr-getchar: minor cleanup
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
X-List-Received-Date: Sat, 04 Feb 2017 18:40:53 -0000

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
index 3a34b22..f721033 100644
--- a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
+++ b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
@@ -12,7 +12,7 @@ S = "${WORKDIR}/git/zephyr_getchar"
 ZEPHYR_SRC_DIR = "${S}"
 ZEPHYR_BASE="${STAGING_DIR_TARGET}/usr/src/zephyr"
 
-DEPENDS += " zephyr-kernel-src"
+DEPENDS += "zephyr-kernel-src"
 
 do_compile () {
     cd ${ZEPHYR_SRC_DIR}
@@ -21,7 +21,6 @@ do_compile () {
 
 do_deploy () {
     install -D ${S}/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
-    export DEPLOY_DIR_IMAGE=${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
-- 
2.7.4


