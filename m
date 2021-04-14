Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.14060.1618411042635099035
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=RRfPNDYo;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7DF4938C0530
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:22 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id o21-20020a1c4d150000b029012e52898006so1033183wmh.0
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/JsQhrwIamdtJFXSJZqfixcw5WQXn9Cek23dV7xJJAs=;
        b=RRfPNDYoV2r6BhGhqEiC6QwEKisPBLmsb4qFUNfGLdRwFmgw7duKJRRZYyoiYNaHW6
         ZcaNwq14v2kf/Qki6FVHiwoDX89xUkXj2Bg+9h+nA7B2dSgVaN1t9SS7qrWo/p6CpSkm
         rc5adbw54Ge4U9jqhj6i3oPRm/oATO1mwKZd9gZKfqDozj6fAVlvx8w1qkuIAZUupcvp
         93pYDJCe8GxfvloFK46eo00Vumhym5PnmvvyrAwhSsydnxCi4Tr6GmppRuhKG3kXbIkI
         SVjiAeN2olyCJ8ZNkALqdxsZUskNJI5ZGFWk8Pisc5tYh6QJM7hmjUcM1V0EBm8nOA9y
         pVFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/JsQhrwIamdtJFXSJZqfixcw5WQXn9Cek23dV7xJJAs=;
        b=WY3CdAAvRwSleTjwyVJAbHsMMo/RS+VKVDftZbTs2T7Y6tBGxdzceizVoMwVz74DVe
         XOUMNUSijZoplhwn6Oh6X/OdQ9IoudY26R0rowf/sYViFCF7ptSgPjhNS57lSZmVQ8lZ
         xSrp+dfUhL/Bmgv/FTKKZifEprwO9pvzhSv+LH2D29VKbnQObFx9FxivgInuPvqAefSl
         4rR624NJzBUSxsiwA6ScuQpfYCzxmARiq4DLVnYa9MJMWGx1pducnQuLTmNOhHYKU+RD
         hMDBpuxPPkEL5LSEFldEFm5lUtAkDLhOXif69XSPBuh+vM4w5UxcHLSKgiCkJvApBlAs
         BubA==
X-Gm-Message-State: AOAM531fRd5+S16NAC52UZKRn6osQdkTv7qAnsdtsWz33J+yJAzT+SZ7
	ZuO11rU9cu/wKWHeOM83lhKGosRiaXZmkg==
X-Google-Smtp-Source: ABdhPJyM2CI2lw/j0EJkgNqp2nMZgFAhq6YaWHw1RZ1qLmNPTaBVGi/facO7h+5oNxkef6vn+8uVfw==
X-Received: by 2002:a1c:bd85:: with SMTP id n127mr3362072wmf.37.1618411041181;
        Wed, 14 Apr 2021 07:37:21 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:20 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 4/6] WIP optee-os: rk3399 support
Date: Wed, 14 Apr 2021 16:36:36 +0200
Message-Id: <20210414143638.4139270-5-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210414143638.4139270-1-yann@blade-group.com>
References: <20210414143638.4139270-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This is the current state of working patches being discussed in
https://github.com/OP-TEE/optee_os/issues/4542
---
 conf/machine/include/rk3399.inc               |  2 +
 ...399-enable-serial-console-by-default.patch | 46 +++++++++++++++++++
 .../optee/files/rk3399-boot-fix.patch         | 13 ++++++
 recipes-security/optee/optee%.bbappend        |  2 +
 recipes-security/optee/optee-os_%.bbappend    |  9 ++++
 5 files changed, 72 insertions(+)
 create mode 100644 recipes-security/optee/files/0001-rk3399-enable-seria=
l-console-by-default.patch
 create mode 100644 recipes-security/optee/files/rk3399-boot-fix.patch
 create mode 100644 recipes-security/optee/optee-os_%.bbappend

diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk339=
9.inc
index f6b7826..9ac434e 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -13,6 +13,8 @@ KBUILD_DEFCONFIG ?=3D "defconfig"
 KERNEL_CLASSES =3D "kernel-fitimage"
 KERNEL_IMAGETYPE =3D "fitImage"
=20
+OPTEEMACHINE =3D "rockchip-rk3399"
+
 TFA_PLATFORM =3D "rk3399"
 TFA_BUILD_TARGET =3D "bl31"
=20
diff --git a/recipes-security/optee/files/0001-rk3399-enable-serial-conso=
le-by-default.patch b/recipes-security/optee/files/0001-rk3399-enable-ser=
ial-console-by-default.patch
new file mode 100644
index 0000000..31daef7
--- /dev/null
+++ b/recipes-security/optee/files/0001-rk3399-enable-serial-console-by-d=
efault.patch
@@ -0,0 +1,46 @@
+From 0e2cbe08532a1344aab62f21b032ce6171e50f49 Mon Sep 17 00:00:00 2001
+From: Yann Dirson <yann@blade-group.com>
+Date: Mon, 12 Apr 2021 10:49:18 +0200
+Subject: [PATCH] rk3399: enable serial console by default
+Upstream-Status: Submitted [https://github.com/OP-TEE/optee_os/pull/4551=
]
+
+Signed-off-by: Yann Dirson <yann@blade-group.com>
+---
+ core/arch/arm/plat-rockchip/conf.mk | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+Index: git/core/arch/arm/plat-rockchip/conf.mk
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- git.orig/core/arch/arm/plat-rockchip/conf.mk
++++ git/core/arch/arm/plat-rockchip/conf.mk
+@@ -26,8 +26,6 @@ CFG_EARLY_CONSOLE_BAUDRATE ?=3D 1500000
+ CFG_EARLY_CONSOLE_CLK_IN_HZ ?=3D 24000000
+ endif
+=20
+-CFG_EARLY_CONSOLE ?=3D n
+-
+ ifeq ($(PLATFORM_FLAVOR),rk3399)
+ include core/arch/arm/cpu/cortex-armv8-0.mk
+ $(call force,CFG_TEE_CORE_NB_CORE,6)
+@@ -37,6 +35,12 @@ CFG_TZDRAM_START ?=3D 0x30000000
+ CFG_TZDRAM_SIZE  ?=3D 0x02000000
+ CFG_SHMEM_START  ?=3D 0x32000000
+ CFG_SHMEM_SIZE   ?=3D 0x00400000
++
++CFG_EARLY_CONSOLE ?=3D y
++CFG_EARLY_CONSOLE_BASE ?=3D UART2_BASE
++CFG_EARLY_CONSOLE_SIZE ?=3D UART2_SIZE
++CFG_EARLY_CONSOLE_BAUDRATE ?=3D 1500000
++CFG_EARLY_CONSOLE_CLK_IN_HZ ?=3D 24000000
+ endif
+=20
+ ifeq ($(PLATFORM_FLAVOR),px30)
+@@ -47,6 +51,8 @@ CFG_TZDRAM_START ?=3D 0x30000000
+ CFG_TZDRAM_SIZE  ?=3D 0x02000000
+ CFG_SHMEM_START  ?=3D 0x32000000
+ CFG_SHMEM_SIZE   ?=3D 0x00400000
++
++CFG_EARLY_CONSOLE ?=3D n
+ endif
+=20
+ ifeq ($(platform-flavor-armv8),1)
diff --git a/recipes-security/optee/files/rk3399-boot-fix.patch b/recipes=
-security/optee/files/rk3399-boot-fix.patch
new file mode 100644
index 0000000..d346157
--- /dev/null
+++ b/recipes-security/optee/files/rk3399-boot-fix.patch
@@ -0,0 +1,13 @@
+Index: git/core/arch/arm/kernel/entry_a64.S
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- git.orig/core/arch/arm/kernel/entry_a64.S
++++ git/core/arch/arm/kernel/entry_a64.S
+@@ -219,7 +219,7 @@ clear_nex_bss:
+ 	adr_l	x0, __text_start
+ 	ldr	x1, cached_mem_end
+ 	sub	x1, x1, x0
+-	bl	dcache_cleaninv_range
++/*	bl	dcache_cleaninv_range*/
+=20
+=20
+ 	/*
diff --git a/recipes-security/optee/optee%.bbappend b/recipes-security/op=
tee/optee%.bbappend
index 2a8722a..ec11863 100644
--- a/recipes-security/optee/optee%.bbappend
+++ b/recipes-security/optee/optee%.bbappend
@@ -1,2 +1,4 @@
+COMPATIBLE_MACHINE_rk3399 ?=3D "rk3399"
+
 inherit features_check
 REQUIRED_DISTRO_FEATURES =3D "optee"
diff --git a/recipes-security/optee/optee-os_%.bbappend b/recipes-securit=
y/optee/optee-os_%.bbappend
new file mode 100644
index 0000000..eceb694
--- /dev/null
+++ b/recipes-security/optee/optee-os_%.bbappend
@@ -0,0 +1,9 @@
+EXTRA_OEMAKE_append_rk3399 =3D " \
+    CFG_CORE_ASLR=3Dn \
+"
+
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+SRC_URI +=3D "\
+    file://rk3399-boot-fix.patch \
+    file://0001-rk3399-enable-serial-console-by-default.patch \
+"
--=20
2.30.2

