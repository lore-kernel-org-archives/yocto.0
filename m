Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4F4CE00B21; Sat, 19 Dec 2015 16:05:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E8FDE00406
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 16:05:23 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id c96so60970751qgd.3
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 16:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=V79Xhs+eScKpsCNP4nnnl/qXHZT19Bv22LYN0pX95HE=;
	b=K2wif/vuy5Rim/4OaULFY72hIqOiS6w1SxR9tjLzV3MRzgoRdKpBd0ruTfZiLDdgp+
	V6dIDvPNGUN72bqlF/3EjEnjaJYNYBmW9SNahNwMsKp0tT9On2M6NiCPMJ+jSfQaVqju
	ga4khSgLw5jCNcboC8RB6qZzvLxqu2gx166y4+a6cz5xuc5Z5Zc6xkkzEsZx8VFl56Mo
	+cVRW5+vuzvrTpgtpg4hqCEXqsc+yI15H+bfMWT72qm/DUFRSeVKfuj9+t3LEfQRP934
	mDu0MBtMaUx5SHlsPtx9w8UmEZWusTYlSlcI6vqVOscAAdV7h4Ikp88unIcurLgR3FN+
	8k3w==
X-Received: by 10.140.20.144 with SMTP id 16mr15872849qgj.45.1450569922907;
	Sat, 19 Dec 2015 16:05:22 -0800 (PST)
Received: from ip-96-114-220-84.ae.ccp.cable.comcast.com ([96.114.220.84])
	by smtp.gmail.com with ESMTPSA id 4sm9848088qkx.18.2015.12.19.16.05.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 19 Dec 2015 16:05:22 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 20 Dec 2015 00:05:17 +0000
Message-Id: <1450569917-439-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.6.4
Subject: [meta-yocto][PATCH] poky-tiny: Use musl for default system C library
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
X-List-Received-Date: Sun, 20 Dec 2015 00:05:27 -0000

poky-tiny is reference for smallest footprint distro that can be
generated using yocto project infrastructure. Therefore switch to using
musl which gives the smallest footprint with a lot of extra stretching
for adding new package if needed, core-image-minimal for qemux86 comes
out to be 716K ( rootfs only ), boot tested on qemux86/poky-tiny

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 25 +++++--------------------
 1 file changed, 5 insertions(+), 20 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index b0227de..de3a441 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -25,12 +25,12 @@
 # [ ] Define linux-yocto-tiny configs for all supported BSPs
 # [ ] Drop ldconfig from the installation
 # [ ] Modify the runqemu scripts to work with ext2 parameter:
-#     runqemu qemux86 qemuparams="-nographic" bootparams="console=ttyS0,115200 root=0800" 
+#     runqemu qemux86 qemuparams="-nographic" bootparams="console=ttyS0,115200 root=0800"
 # [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
 
 require conf/distro/poky.conf
 DISTRO = "poky-tiny"
-
+TCLIBC = "musl"
 # FIXME: consider adding a new "tiny" feature
 #DISTRO_FEATURES_append = " tiny"
 
@@ -57,27 +57,11 @@ ENABLE_WIDEC_class-native = "true"
 # eglibc->bash->gettext->libc-posix-clang-wchar dependency.
 USE_NLS="no"
 
-# Reconfigure eglibc for a smaller installation
-# Comment out any of the lines below to disable them in the build
-DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
-DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
-
-# Required for "who"
-DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-utmpx libc-getlogin"
-DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
-DISTRO_FEATURES_LIBC_NET = "libc-inet libc-nis"
-
-DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
-                        ${DISTRO_FEATURES_LIBC_MINIMAL} \
-                        ${DISTRO_FEATURES_LIBC_REGEX} \
-                        ${DISTRO_FEATURES_LIBC_NET} \
-                       "
-
 # Comment out any of the lines below to disable them in the build
 # DISTRO_FEATURES options:
 # alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci
 DISTRO_FEATURES_TINY = "pci"
-DISTRO_FEATURES_NET = "ipv4"
+DISTRO_FEATURES_NET = "ipv4 ipv6"
 DISTRO_FEATURES_USB = "usbhost"
 #DISTRO_FEATURES_USBGADGET = "usbgadget"
 #DISTRO_FEATURES_WIFI = "wifi"
@@ -87,13 +71,14 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                    ${DISTRO_FEATURES_USB} \
                    ${DISTRO_FEATURES_USBGADGET} \
                    ${DISTRO_FEATURES_WIFI} \
-                   ${DISTRO_FEATURES_LIBC} \
                   "
 
 # Enable LFS - see bug YOCTO #5865
 DISTRO_FEATURES_append_libc-uclibc = " largefile"
+DISTRO_FEATURES_append_libc-musl = " largefile"
 
 DISTRO_FEATURES_class-native = "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES_class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 # Use tmpdevfs and the busybox runtime services
 VIRTUAL-RUNTIME_dev_manager = ""
-- 
2.6.4


