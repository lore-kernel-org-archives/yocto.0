Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFAA7E00A9B; Thu, 19 Jan 2017 03:51:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23880E00A93
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:07 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id 96so3718973uaq.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=F0xLlH3Gwl4x9V3DwioQvv3tvh18JJVfNMkaPaiKL2c=;
	b=YvL1gjcmY+zfRZ+2bQii+NKqkXpoo04sW1Y23uJX0qZUBdzIbxzPEG5GkgOPujK3l2
	FJ+vpOZcax+HuagTlC2168AziQC+jg2Yq9n07or7vHiI8h3oFuvusbDWSkmIV9BKgutY
	vACDXdgbpw68nIGcW27N4VNdA7TY3HaaymSCd0W23CCPtRP1Px+iDicYiE2LyMOl+EKu
	hNbLDQEAxGZ4uLPkKb3A2dxoP+mim68KDuwDguHRNFdQQTV4hyiqExX3qFPJ/Tbl4LN8
	0IKHSzl5j1fciad/8RCeAFRYQPzf5SUlkk/4RTgMX/JRmonL2AQH8z3Q8y3kjJjdvq1f
	GMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=F0xLlH3Gwl4x9V3DwioQvv3tvh18JJVfNMkaPaiKL2c=;
	b=ifhQ9sKMxYxp/C+y19SdYZ+gdaLTGC05EoZ2Q5zR1fXo+FEiYDAZkhP08z21RBDco5
	Ueh8Fyku0tfJC3222AKK4VG4UINjyU+pztJhspmlRdKh5W06K/7XNGOlnDVoP2riukxV
	n5Gvmm/vednWj/+vcjYKn5kQa8iQK5JhuWlAiANrwT8WBxLU3MdQkkInGo54Ls8pgpUG
	DXIeLCzmlPBy8sEs5/rv7gXMiV6V4a0fIdwdbCZvvEjSAI5kDoxgz9GEbV+b+XwVme0n
	LjeINXnDrn3LP9RwqNfs+6qb46/gFpgaznN2OkrUC0pvcnpd53gH/gM4sGeimXHQayG7
	0EfQ==
X-Gm-Message-State: AIkVDXJo2AsZpd7avMjicqevF0v0ocyO5q7pazx1EAkp6fHBj7uOvG7PwlhgpeF2Boraqg==
X-Received: by 10.200.36.75 with SMTP id d11mr7115694qtd.268.1484826666467;
	Thu, 19 Jan 2017 03:51:06 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	i48sm2833382qti.37.2017.01.19.03.51.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 03:51:05 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 12:50:54 +0100
Message-Id: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][morty][PATCH 1/6] linux-raspberrypi: Drop v4.1
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
X-List-Received-Date: Thu, 19 Jan 2017 11:51:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Paul Barker <paul@paulbarker.me.uk>

The linux-raspberrypi 4.1 recipe has been broken for a while, probably since
09b76a43f6f6852406de385a45f472c52b6a8571. It should now be safe to drop this
version.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 ---------------------
 ...ove-unused-sm_cache_map_vector-definition.patch |  31 ------
 .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      |  78 ---------------
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  12 ---
 4 files changed, 231 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
deleted file mode 100644
index e6e0a84..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
+++ /dev/null
@@ -1,110 +0,0 @@
-From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
-Date: Fri, 8 Jan 2016 09:02:44 +0100
-Subject: [PATCH] dts: add overlay for pitft22
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Upstream-Status: Pending
-
-Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
-https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
-
-Signed-off-by: Petter Mabäcker <petter@technux.se>
----
- arch/arm/boot/dts/overlays/Makefile            |  1 +
- arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
- 2 files changed, 70 insertions(+)
- create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
-
-diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Makefile
-index 1a60e9c..a2535a2 100644
---- a/arch/arm/boot/dts/overlays/Makefile
-+++ b/arch/arm/boot/dts/overlays/Makefile
-@@ -37,6 +37,7 @@ dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += mz61581-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += piscreen2r-overlay.dtb
-+dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += pitft28-capacitive-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += pitft28-resistive-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += pps-gpio-overlay.dtb
-diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
-new file mode 100755
-index 0000000..894ba22
---- /dev/null
-+++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
-@@ -0,0 +1,69 @@
-+/*
-+ * Device Tree overlay for pitft by Adafruit
-+ *
-+ */
-+
-+/dts-v1/;
-+/plugin/;
-+
-+/ {
-+        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
-+
-+        fragment@0 {
-+                target = <&spi0>;
-+                __overlay__ {
-+                        status = "okay";
-+
-+                        spidev@0{
-+                                status = "disabled";
-+                        };
-+
-+                        spidev@1{
-+                                status = "disabled";
-+                        };
-+                };
-+        };
-+
-+        fragment@1 {
-+                target = <&gpio>;
-+                __overlay__ {
-+                        pitft_pins: pitft_pins {
-+                                brcm,pins = <25>;
-+                                brcm,function = <1>; /* out */
-+                                brcm,pull = <0>; /* none */
-+                        };
-+                };
-+        };
-+
-+        fragment@2 {
-+                target = <&spi0>;
-+                __overlay__ {
-+                        /* needed to avoid dtc warning */
-+                        #address-cells = <1>;
-+                        #size-cells = <0>;
-+
-+                        pitft: pitft@0{
-+                                compatible = "ilitek,ili9340";
-+                                reg = <0>;
-+                                pinctrl-names = "default";
-+                                pinctrl-0 = <&pitft_pins>;
-+
-+                                spi-max-frequency = <32000000>;
-+                                rotate = <90>;
-+                                fps = <25>;
-+                                bgr;
-+                                buswidth = <8>;
-+                                dc-gpios = <&gpio 25 0>;
-+                                debug = <0>;
-+                        };
-+
-+                };
-+        };
-+
-+        __overrides__ {
-+                speed =   <&pitft>,"spi-max-frequency:0";
-+                rotate =  <&pitft>,"rotate:0";
-+                fps =     <&pitft>,"fps:0";
-+                debug =   <&pitft>,"debug:0";
-+        };
-+};
--- 
-1.9.1
-
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
deleted file mode 100644
index 8d4a900..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-The code using it also ifdef'ed with 0, anyyd gcc 6
-complains
-
-error: 'sm_cache_map_vector' defined but not used
-
-The code using it also ifdef'ed out
-
-Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++
- 1 file changed, 2 insertions(+)
-
---- a/drivers/char/broadcom/vc_sm/vmcs_sm.c
-+++ b/drivers/char/broadcom/vc_sm/vmcs_sm.c
-@@ -197,12 +197,14 @@ struct SM_STATE_T {
- static struct SM_STATE_T *sm_state;
- static int sm_inited;
- 
-+#if 0
- static const char *const sm_cache_map_vector[] = {
- 	"(null)",
- 	"host",
- 	"videocore",
- 	"host+videocore",
- };
-+#endif
- 
- /* ---- Private Function Prototypes -------------------------------------- */
- 
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
deleted file mode 100644
index 61ec2fb..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
+++ /dev/null
@@ -1,78 +0,0 @@
-Fix compile with GCC6
-
-Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
-
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: source/include/linux/compiler-gcc6.h
-===================================================================
---- /dev/null
-+++ source/include/linux/compiler-gcc6.h
-@@ -0,0 +1,67 @@
-+#ifndef __LINUX_COMPILER_H
-+#error "Please don't include <linux/compiler-gcc5.h> directly, include <linux/compiler.h> instead."
-+#endif
-+
-+#define __used				__attribute__((__used__))
-+#define __must_check			__attribute__((warn_unused_result))
-+#define __compiler_offsetof(a, b)	__builtin_offsetof(a, b)
-+
-+/* Mark functions as cold. gcc will assume any path leading to a call
-+   to them will be unlikely.  This means a lot of manual unlikely()s
-+   are unnecessary now for any paths leading to the usual suspects
-+   like BUG(), printk(), panic() etc. [but let's keep them for now for
-+   older compilers]
-+
-+   Early snapshots of gcc 4.3 don't support this and we can't detect this
-+   in the preprocessor, but we can live with this because they're unreleased.
-+   Maketime probing would be overkill here.
-+
-+   gcc also has a __attribute__((__hot__)) to move hot functions into
-+   a special section, but I don't see any sense in this right now in
-+   the kernel context */
-+#define __cold			__attribute__((__cold__))
-+
-+#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
-+
-+#ifndef __CHECKER__
-+# define __compiletime_warning(message) __attribute__((warning(message)))
-+# define __compiletime_error(message) __attribute__((error(message)))
-+#endif /* __CHECKER__ */
-+
-+/*
-+ * Mark a position in code as unreachable.  This can be used to
-+ * suppress control flow warnings after asm blocks that transfer
-+ * control elsewhere.
-+ *
-+ * Early snapshots of gcc 4.5 don't support this and we can't detect
-+ * this in the preprocessor, but we can live with this because they're
-+ * unreleased.  Really, we need to have autoconf for the kernel.
-+ */
-+#define unreachable() __builtin_unreachable()
-+
-+/* Mark a function definition as prohibited from being cloned. */
-+#define __noclone	__attribute__((__noclone__))
-+
-+/*
-+ * Tell the optimizer that something else uses this function or variable.
-+ */
-+#define __visible __attribute__((externally_visible))
-+
-+/*
-+ * GCC 'asm goto' miscompiles certain code sequences:
-+ *
-+ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670
-+ *
-+ * Work it around via a compiler barrier quirk suggested by Jakub Jelinek.
-+ *
-+ * (asm goto is automatically volatile - the naming reflects this.)
-+ */
-+#define asm_volatile_goto(x...)	do { asm goto(x); asm (""); } while (0)
-+
-+#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
-+#define __HAVE_BUILTIN_BSWAP32__
-+#define __HAVE_BUILTIN_BSWAP64__
-+#define __HAVE_BUILTIN_BSWAP16__
-+#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
-+
-+#define KASAN_ABI_VERSION 4
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
deleted file mode 100644
index 87c77b8..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-LINUX_VERSION ?= "4.1.21"
-
-SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
-           file://0001-dts-add-overlay-for-pitft22.patch \
-           file://0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch \
-           file://0003-fix-gcc6.patch \
-          "
-
-require linux-raspberrypi.inc
-- 
2.7.4


