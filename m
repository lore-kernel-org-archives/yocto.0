Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06357E00AF0; Mon, 12 Jun 2017 04:59:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Jun 2017 04:59:56 PDT
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BDCDE00A9B
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 04:59:56 -0700 (PDT)
Received: from [65.35.172.144] ([65.35.172.144:37540]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 24/8F-10880-EF18E395; Mon, 12 Jun 2017 11:58:54 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Mon, 12 Jun 2017 07:56:48 -0400
Message-Id: <1497268608-5218-1-git-send-email-drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH] chip: Make sure to append to MACHINE_EXTRA_RRECOMMENDS rather than overwriting
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
X-List-Received-Date: Mon, 12 Jun 2017 11:59:58 -0000

From: Drew Moseley <drew.moseley@mender.io>

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 conf/machine/chip.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index 7624de6..0a45a2f 100644
--- a/conf/machine/chip.conf
+++ b/conf/machine/chip.conf
@@ -27,7 +27,7 @@ UBOOT_MACHINE = "CHIP_defconfig"
 MACHINE_FEATURES = "usbgadget usbhost wifi"
 
 # Include wifi modules and firmware
-MACHINE_EXTRA_RRECOMMENDS = "kernel-module-r8723bs rtl8723bs"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-module-r8723bs rtl8723bs"
 
 UBI_VOLNAME = "rootfs"
 MKUBIFS_ARGS = "--min-io-size 16384 --leb-size 2064384 --max-leb-cnt 2000"
-- 
2.7.4


