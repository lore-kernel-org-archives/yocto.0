Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EDE0E00C8F; Thu, 19 Sep 2019 01:20:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
	*  1.0 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
X-Greylist: delayed 435 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Sep 2019 01:20:35 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF0A9E00B9E
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 01:20:35 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 46YqNb3B0Yz1rLFn
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 10:13:19 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 46YqNb2MgGz1rV9w
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 10:13:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024) with ESMTP id YexR2xuMDrQ5 for <yocto@yoctoproject.org>;
	Thu, 19 Sep 2019 10:13:18 +0200 (CEST)
X-Auth-Info: 16K603G/Qhiyq6Ry66mtKLJdlbBb6vrhAbOy1mzXzVk=
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de
	[87.138.219.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 10:13:18 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail-internal.denx.de (Postfix) with ESMTP id ADF9A18362B;
	Thu, 19 Sep 2019 10:13:11 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 515)
	id 8E9B31A0091; Thu, 19 Sep 2019 10:13:11 +0200 (CEST)
From: Heiko Schocher <hs@denx.de>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 19 Sep 2019 10:13:10 +0200
Message-Id: <20190919081310.1107197-1-hs@denx.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Cc: Julius Werner <jwerner@chromium.org>
Subject: [PATCH] kernel.fitimage.bbclass: remove ramdisk_ctype
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
X-List-Received-Date: Thu, 19 Sep 2019 08:20:37 -0000
Content-Transfer-Encoding: 8bit

set in the ramdisk node the compression property
always to "none", as U-Boot nowadays since commit:

b1307f884a91 ("fit: Support compression for non-kernel components (e.g. FDT)")

decompress non kernel components. Setting compression
to the used comression algorithm now, will end in
fail of your kernel boot with the ramdisk.

This issue is fixed since commit:

bddd98573465 ("fit: Do not automatically decompress ramdisk images")

which now prints a warning in U-Boot, instead of decompressing
the ramdisk, but we should setup compression property correct.

Signed-off-by: Heiko Schocher <hs@denx.de>
---

 meta/classes/kernel-fitimage.bbclass | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/meta/classes/kernel-fitimage.bbclass b/meta/classes/kernel-fitimage.bbclass
index b51882dce4..1bcb09c598 100644
--- a/meta/classes/kernel-fitimage.bbclass
+++ b/meta/classes/kernel-fitimage.bbclass
@@ -207,7 +207,6 @@ EOF
 fitimage_emit_section_ramdisk() {
 
 	ramdisk_csum="${FIT_HASH_ALG}"
-	ramdisk_ctype="none"
 	ramdisk_loadline=""
 	ramdisk_entryline=""
 
@@ -218,24 +217,6 @@ fitimage_emit_section_ramdisk() {
 		ramdisk_entryline="entry = <${UBOOT_RD_ENTRYPOINT}>;"
 	fi
 
-	case $3 in
-		*.gz)
-			ramdisk_ctype="gzip"
-			;;
-		*.bz2)
-			ramdisk_ctype="bzip2"
-			;;
-		*.lzma)
-			ramdisk_ctype="lzma"
-			;;
-		*.lzo)
-			ramdisk_ctype="lzo"
-			;;
-		*.lz4)
-			ramdisk_ctype="lz4"
-			;;
-	esac
-
 	cat << EOF >> ${1}
                 ramdisk@${2} {
                         description = "${INITRAMFS_IMAGE}";
@@ -243,7 +224,7 @@ fitimage_emit_section_ramdisk() {
                         type = "ramdisk";
                         arch = "${UBOOT_ARCH}";
                         os = "linux";
-                        compression = "${ramdisk_ctype}";
+                        compression = "none";
                         ${ramdisk_loadline}
                         ${ramdisk_entryline}
                         hash@1 {
-- 
2.21.0


