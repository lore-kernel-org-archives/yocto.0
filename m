Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.204.1619197135076415874
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=djBlF+OM;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EADE738C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:54 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id s7so48957968wru.6
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4KbYYzvQKAVWskP8ifet9I+TAHNqyAmvSf2fnSAOu+Y=;
        b=djBlF+OMhBAVWMpjHuB3LDsUYN5D6uVZrP+3mlz/ONwujkUs0IuRiAmNhIDzqCoHlP
         vuYYsEIzA+KnqjquBnuRrXvv8wCwexa7ELGWAH++dTxVkdBL7rlh9qw/9Y+OABrvDzt9
         aQoO3fnOxT8W4I+JKZP/MljuTmAzIXz/CnHSg+bMS7rdSRw59mYL5+zfCmuLkDJ07WoM
         gkS4lIX0Y5LVAHFFTT4f2J10ahlcMRr4OH7S5wVnN8ssPutmKNc5lc9cn44LhQTxlIUb
         fIvSMywbnYRd2AG5Z9NJT8h/4KVC4GWmNjgsibXhH97Utx4AYjJYjJMDL3sNSaxyLzS+
         c5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4KbYYzvQKAVWskP8ifet9I+TAHNqyAmvSf2fnSAOu+Y=;
        b=nRURQ92Lry5IUZmLMO5fHoJnB7CnVE/BKas1ebGrD6+LBsaq+3Se0K6IwOAAWvnPWb
         iswRbEVxu5aRSsg6oZStqqsesFrcxJDdM/BL4Dj5azW4YCsNMTBlUPZjP1hsa2dJ9o9L
         bPGA8VPPGaT3ltT1gwsEdtQkpEYud/pVvoqfhDmGK6SP8XopckfokTK2z9q7nY4g1Efh
         4UTrmPxP4wwuBr69FWRNdmAep4zLIvKpcHZkeU04r3E5qsDgV92u2x72/14nsIBMZ7eD
         6lyULCXDmFR/ITu8ssKYhU3qBXJzdsYgXzepsdOpkD23XPJWCEa1bZV3ReTLzS/T9M+o
         qLig==
X-Gm-Message-State: AOAM533qORb36WKHI2/CmEqHndYQHfrMNWgnEjzV9UtKoi0PfAaCozV3
	pLm/irqkD4NpxpCoaaIEAe5iNN5QTlUcMg==
X-Google-Smtp-Source: ABdhPJx5bDZCqX1TqV+LDaTu2tTqy18BMgzJC3/ZrLwdGOK83Z6j4sx3AQVjs7X4+HFVR/RWf2GWPg==
X-Received: by 2002:a5d:4f82:: with SMTP id d2mr5998040wru.228.1619197133502;
        Fri, 23 Apr 2021 09:58:53 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:53 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 3/7] optee-os: enable rk3399 support, including serial console support
Date: Fri, 23 Apr 2021 18:58:22 +0200
Message-Id: <20210423165826.2229787-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

As discussed in https://github.com/OP-TEE/optee_os/issues/4542, ASLR
support currently has to be disabled for OP-TEE to boot.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 conf/machine/include/rk3399.inc               |  2 +
 ...399-enable-serial-console-by-default.patch | 52 +++++++++++++++++++
 recipes-security/optee/optee%.bbappend        |  1 +
 recipes-security/optee/optee-os_%.bbappend    |  8 +++
 4 files changed, 63 insertions(+)
 create mode 100644 recipes-security/optee/files/0001-rk3399-enable-seria=
l-console-by-default.patch
 create mode 100644 recipes-security/optee/optee%.bbappend
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
index 0000000..c09cfae
--- /dev/null
+++ b/recipes-security/optee/files/0001-rk3399-enable-serial-console-by-d=
efault.patch
@@ -0,0 +1,52 @@
+From 96a614759ff5572b16929379d72376fa6c805a37 Mon Sep 17 00:00:00 2001
+From: Yann Dirson <yann@blade-group.com>
+Date: Mon, 12 Apr 2021 10:49:18 +0200
+Subject: [PATCH] rk3399: enable serial console by default
+Upstream-Status: Backport
+
+The definition is the same as for rk322x.
+
+Signed-off-by: Yann Dirson <yann@blade-group.com>
+Acked-by: Jerome Forissier <jerome@forissier.org>
+---
+ core/arch/arm/plat-rockchip/conf.mk | 10 ++++++++--
+ 1 file changed, 8 insertions(+), 2 deletions(-)
+
+diff --git a/core/arch/arm/plat-rockchip/conf.mk b/core/arch/arm/plat-ro=
ckchip/conf.mk
+index f6eef865..f180d63a 100644
+--- a/core/arch/arm/plat-rockchip/conf.mk
++++ b/core/arch/arm/plat-rockchip/conf.mk
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
+--=20
+2.30.2
+
diff --git a/recipes-security/optee/optee%.bbappend b/recipes-security/op=
tee/optee%.bbappend
new file mode 100644
index 0000000..9a156bb
--- /dev/null
+++ b/recipes-security/optee/optee%.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE_rk3399 ?=3D "rk3399"
diff --git a/recipes-security/optee/optee-os_%.bbappend b/recipes-securit=
y/optee/optee-os_%.bbappend
new file mode 100644
index 0000000..a1b0c4f
--- /dev/null
+++ b/recipes-security/optee/optee-os_%.bbappend
@@ -0,0 +1,8 @@
+EXTRA_OEMAKE_append_rk3399 =3D " \
+    CFG_CORE_ASLR=3Dn \
+"
+
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+SRC_URI +=3D "\
+    file://0001-rk3399-enable-serial-console-by-default.patch \
+"
--=20
2.30.2

