Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6842.1616494843291546586
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 03:20:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=s1MwsfDK;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B769A38C0532
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 10:20:41 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so10485295wmi.3
        for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 03:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8DzzuXT/tke/HQEi/IcXBmn4VBvgQJCS3plkrxP2zqc=;
        b=s1MwsfDKTbNNORty+8vyTKbjGKjpZYxzseP1y+3GVgyxWRG+qZ4+79C+ogMzLqCLv0
         /dXZssUUs8qeBpsj3LOrWyTWvhbLVmTXnegent/qR5NWzlhMMmyl0SDzW701H5zyMXkz
         IZxQcJ2SIEXnul1pv2ZYjDJ8T7PYkJ6ewKIdmyi95GZRgyiqM7WQ6G+HFHUia+qiSZ+q
         5KgMtZ1B8Y2pPnUzOM25Il0E/mPB4TZ52u689DGno/hZFWShgFmIk0t4rGDlr8AtNPXT
         hvaBrT1UgWoDRHee1BYKeFb/ODGKQBLurZjC/pru3i6nuhAhp1pbTwftIbcZ7ZmlODYF
         sszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8DzzuXT/tke/HQEi/IcXBmn4VBvgQJCS3plkrxP2zqc=;
        b=tqvjFxxhv+DBdFSJJ4gxV96ynHKuV5H/LDTRcTmvOkop9IiXDeIX4hleuPgcj/h4Xp
         t3bbiMG2e6AOOvppI0y7O+cqbDVih2Rawhe8pZhX6+dcGzc6a/dg5sOL9p5pUWA/0R0I
         +foXS4iPMBYMdSCtWQv8g6qeaqZ30HrOooEjLOzenIirMN+2DqapnV/WaHgIj9yzfMNC
         cQP6Ocx/MVmYv37GC1crkz6am0B2ZHNrMO9PzdedTe3Wa0MPARXTCfV7iMtkFALXgAP3
         zt0Mu+b6sINCeMWyDM0lcgX6O/vdXBTggfCZBW52CzDzZEAzlOtT410heqSjx3dWqyhI
         navw==
X-Gm-Message-State: AOAM5320v6yRhMaWf+34LRKEzHYq/FTLT4pKEj9GN4JewMPiJAYxciCl
	LQy5rBIjIjV0CI/g/vYIBDzQ7KZBKHYJqw==
X-Google-Smtp-Source: ABdhPJzlur8ELAj2A+9Xjfa3L4Btf14vfMxQruNuf38faFPZgKt4Wy9hLtL+DLcvaTKOXq809UL61w==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr2580669wml.123.1616494840086;
        Tue, 23 Mar 2021 03:20:40 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id v3sm2056341wmj.25.2021.03.23.03.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 03:20:39 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3] NanoPi-M4: add machines
Date: Tue, 23 Mar 2021 11:20:13 +0100
Message-Id: <20210323102013.717850-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

We have two board variants, respectively with 2GB and 4GB RAM.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---

Changes from v2:
- commit message rework
- add wic.bmap
Changes from v1:
- split in two distinct machines: nanopi-m4 and nanopi-m4-2gb

 conf/machine/include/nanopi-m4.inc            | 22 +++++++++++++++++++
 conf/machine/nanopi-m4-2gb.conf               |  8 +++++++
 conf/machine/nanopi-m4.conf                   |  8 +++++++
 recipes-kernel/linux/linux-yocto-dev.bbappend |  2 ++
 .../linux/linux-yocto-rt_%.bbappend           |  2 ++
 .../linux/linux-yocto-tiny_%.bbappend         |  2 ++
 recipes-kernel/linux/linux-yocto_%.bbappend   |  2 ++
 7 files changed, 46 insertions(+)
 create mode 100644 conf/machine/include/nanopi-m4.inc
 create mode 100644 conf/machine/nanopi-m4-2gb.conf
 create mode 100644 conf/machine/nanopi-m4.conf

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
new file mode 100644
index 0000000..74cdae8
--- /dev/null
+++ b/conf/machine/include/nanopi-m4.inc
@@ -0,0 +1,22 @@
+# Copyright (C) 2021 Blade SAS
+# Common definitions for all NanoPi M4 RK3399 board variants
+
+require rk3399.inc
+
+KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
+
+RK_BOOT_DEVICE =3D "mmcblk1"
+WKS_FILE ?=3D "rock-pi-4.wks"
+IMAGE_FSTYPES +=3D "wic wic.bmap"
+
+WKS_FILE_DEPENDS ?=3D " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?=3D "\
+    ${KERNEL_IMAGETYPE} \
+    "
+
+SERIAL_CONSOLES =3D "1500000;ttyS2"
diff --git a/conf/machine/nanopi-m4-2gb.conf b/conf/machine/nanopi-m4-2gb=
.conf
new file mode 100644
index 0000000..9fd7279
--- /dev/null
+++ b/conf/machine/nanopi-m4-2gb.conf
@@ -0,0 +1,8 @@
+# Copyright (C) 2021 Blade SAS
+
+#@TYPE: Machine
+#@NAME: NanoPi M4
+#@DESCRIPTION: NanoPi M4 RK3399 board from FriendlyElec, 2GB variant
+
+require include/nanopi-m4.inc
+UBOOT_MACHINE =3D "nanopi-m4-2gb-rk3399_defconfig"
diff --git a/conf/machine/nanopi-m4.conf b/conf/machine/nanopi-m4.conf
new file mode 100644
index 0000000..648fc75
--- /dev/null
+++ b/conf/machine/nanopi-m4.conf
@@ -0,0 +1,8 @@
+# Copyright (C) 2021 Blade SAS
+
+#@TYPE: Machine
+#@NAME: NanoPi M4
+#@DESCRIPTION: NanoPi M4 RK3399 board from FriendlyElec, 4GB variant
+
+require include/nanopi-m4.inc
+UBOOT_MACHINE =3D "nanopi-m4-rk3399_defconfig"
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kern=
el/linux/linux-yocto-dev.bbappend
index e5ea197..7702e3f 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
+COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-ker=
nel/linux/linux-yocto-rt_%.bbappend
index e5ea197..7702e3f 100644
--- a/recipes-kernel/linux/linux-yocto-rt_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
@@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
+COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
diff --git a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend b/recipes-k=
ernel/linux/linux-yocto-tiny_%.bbappend
index e5ea197..7702e3f 100644
--- a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
@@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
+COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel=
/linux/linux-yocto_%.bbappend
index e5ea197..7702e3f 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
+COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
--=20
2.30.2

