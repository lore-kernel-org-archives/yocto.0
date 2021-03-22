Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12869.1616420565777534547
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 06:42:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=uIysbng6;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A732238C0834
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 13:42:45 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id o16so16879664wrn.0
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 06:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zh2eokAh8mDc8J+SjEu6qFAgJ1ksJrUNNjg7uPNdpoU=;
        b=uIysbng6pRJKrgHAERF5JNW3Cfzx/QwsiGfdvp66IO3BdaYGq65sVscNtq9yVvsCHV
         x2yt4vZ+RzGb0HhnHssp6uA4X0bOO9vwvKMHnR9frehqXnT9NzR0aIurjK5x6/gswN1b
         QymYbahtomkKoYWYtpINA8juKPu62/J4bURlaZlwzE3/3KGl0IMipKcvoDhgP8672XTz
         fAyhW7BkiVN+Ww2AYzkymISi/Izk6aJI43MASk1i+hTUKgZ9UkU+tz+CQVsVIA9wECXG
         MFmeN/E/sLWB5akgZyrLkPbGOzkDv9Ofbl/u4vMy0zN8a2YSzlaCc2Eb6gwiui0KobhG
         7olg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zh2eokAh8mDc8J+SjEu6qFAgJ1ksJrUNNjg7uPNdpoU=;
        b=KGuwHZKrIILEWafMs5/ONQ3T64naV7+lpVIAk7v+BcJnQRjiEQT47Id58DJ+QK05sM
         vconrjrcp+EYm1At2j4P/u7WyjCtPyudtkj6FD7dIjm3jThk55gkv0hqejwJHsN4E/Ao
         Kgvk/7cNjJFk4on7CNnu86HwaiCMVgm+VRk4SWn3EdpDwYXGtKoenf4lukAlGP3P4R4e
         X8favLhlncUrGIW4F5KpZUYhZcpVYJsTegp9h3kYLbb8hNvExxN+iV/h4JHIYuGhU+96
         V7r5WJRh+GxTdSK+xLPNpukQt7ZV2aSVGcq5nTC/uYTxQc1md9RNDZPIk6GbDHsq+Xcc
         7+Bw==
X-Gm-Message-State: AOAM5334lCeq0X0xmy3TzhxC4fJs/TFK8rikH7ubTCPn4ggurdTFmK4x
	ZWHUncY1W6ZyIE7LvjDD8YTtGt5qNV2nUg==
X-Google-Smtp-Source: ABdhPJzYTp3l9ybB/fCjoG4vLNsxMIfZNFf3MyIpEl+HKIbs2SjiCTxe7dwUFp9V7hirGXMI4ixhWQ==
X-Received: by 2002:adf:d1cd:: with SMTP id b13mr18283060wrd.47.1616420564309;
        Mon, 22 Mar 2021 06:42:44 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id j14sm19855827wrw.69.2021.03.22.06.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 06:42:43 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
Date: Mon, 22 Mar 2021 14:42:12 +0100
Message-Id: <20210322134212.576790-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This supports both the 2GB and 4GB versions of the board.  This is not
done with 2 different machine definitions since only u-boot has to
change between those two configurations, but with a NANOPIM4_HW variable
to set in local.conf.

Note I could only test the 2GB version.

---

 conf/machine/nanopi-m4.conf                   | 29 +++++++++++++++++++
 recipes-kernel/linux/linux-yocto-dev.bbappend |  1 +
 .../linux/linux-yocto-rt_%.bbappend           |  1 +
 .../linux/linux-yocto-tiny_%.bbappend         |  1 +
 recipes-kernel/linux/linux-yocto_%.bbappend   |  1 +
 5 files changed, 33 insertions(+)
 create mode 100644 conf/machine/nanopi-m4.conf

diff --git a/conf/machine/nanopi-m4.conf b/conf/machine/nanopi-m4.conf
new file mode 100644
index 0000000..64a962e
--- /dev/null
+++ b/conf/machine/nanopi-m4.conf
@@ -0,0 +1,29 @@
+# Copyright (C) 2021 Blade SAS
+
+#@TYPE: Machine
+#@NAME: NanoPi M4
+#@DESCRIPTION: NanoPi M4 RK3399 board from FriendlyElec, 2GB and 4GB var=
iants
+
+# specify NANOPIM4_HW=3D"" in local.conf for the 4GB version
+NANOPIM4_HW ?=3D "-2gb"
+
+require include/rk3399.inc
+
+KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
+UBOOT_MACHINE =3D "nanopi-m4${NANOPIM4_HW}-rk3399_defconfig"
+
+RK_BOOT_DEVICE =3D "mmcblk1"
+WKS_FILE ?=3D "rock-pi-4.wks"
+IMAGE_FSTYPES +=3D "wic"
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
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kern=
el/linux/linux-yocto-dev.bbappend
index e5ea197..3eca360 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -6,3 +6,4 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-ker=
nel/linux/linux-yocto-rt_%.bbappend
index e5ea197..3eca360 100644
--- a/recipes-kernel/linux/linux-yocto-rt_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
@@ -6,3 +6,4 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
diff --git a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend b/recipes-k=
ernel/linux/linux-yocto-tiny_%.bbappend
index e5ea197..3eca360 100644
--- a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
@@ -6,3 +6,4 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel=
/linux/linux-yocto_%.bbappend
index e5ea197..3eca360 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -6,3 +6,4 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
 COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
 COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
+COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
--=20
2.30.2

