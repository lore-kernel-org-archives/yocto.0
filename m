Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 061F5E00DAC; Tue, 31 May 2016 04:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECB29E00DA0
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 04:59:23 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2632.sfr.fr (SMTP Server) with ESMTP id 287611C001CA8;
	Tue, 31 May 2016 13:59:23 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2632.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 31 May 2016 13:59:23 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 19:58:59 +0800
Message-Id: <1464695939-115117-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1464695939-115117-1-git-send-email-herve.jourdain@neuf.fr>
References: <1464695939-115117-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi.inc: KERNEL_OUTPUT has been removed in kernel.bbclass
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
X-List-Received-Date: Tue, 31 May 2016 11:59:29 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 4799c74..6133b02 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -66,7 +66,9 @@ do_rpiboot_mkimage() {
     if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            for type in ${KERNEL_IMAGETYPES} ; do
+                ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_DIR}/$type
+            done
         fi
     fi
 }
@@ -76,7 +78,9 @@ do_bundle_initramfs_append() {
         if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
             if test -n "${KERNEL_DEVICETREE}"; then
                 # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-                ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+                for type in ${KERNEL_IMAGETYPES} ; do
+                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
+                done
             fi
         fi
     fi
-- 
2.7.4


