Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62D46E00BD6; Wed, 28 Jun 2017 18:14:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C16E00BDA
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 18:14:53 -0700 (PDT)
Received: from [65.32.40.152] ([65.32.40.152:47378]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 06/FE-10880-C8454595; Thu, 29 Jun 2017 01:14:52 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Wed, 28 Jun 2017 21:12:03 -0400
Message-Id: <ef210e07d2b7161718afb1e33e663a3fcee7c06b.1498698415.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1498698415.git.drew.moseley@mender.io>
References: <cover.1498698415.git.drew.moseley@mender.io>
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH V3 1/4] chip: Make page size into a variable.
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
X-List-Received-Date: Thu, 29 Jun 2017 01:14:57 -0000

From: Drew Moseley <drew.moseley@mender.io>

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 conf/machine/chip.conf | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index 0a45a2f..dad1bdb 100644
--- a/conf/machine/chip.conf
+++ b/conf/machine/chip.conf
@@ -30,5 +30,6 @@ MACHINE_FEATURES = "usbgadget usbhost wifi"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-module-r8723bs rtl8723bs"
 
 UBI_VOLNAME = "rootfs"
-MKUBIFS_ARGS = "--min-io-size 16384 --leb-size 2064384 --max-leb-cnt 2000"
-UBINIZE_ARGS = "--min-io-size 16384 --peb-size 2097152 --sub-page-size 16384"
+CHIP_UBI_PAGE_SIZE = "16384"
+MKUBIFS_ARGS = "--min-io-size ${CHIP_UBI_PAGE_SIZE} --leb-size 2064384 --max-leb-cnt 2000"
+UBINIZE_ARGS = "--min-io-size ${CHIP_UBI_PAGE_SIZE} --peb-size 2097152 --sub-page-size 16384"
-- 
2.7.4


