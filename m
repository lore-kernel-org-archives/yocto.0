Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.336.1616425667517541776
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 08:07:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=ZfBJEzEC;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7004838C05F8
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 15:07:46 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id b9so17435544wrt.8
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 08:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pOPOCDZV8OVC7VLloKr96t85hS/Dyc0PgAK+q1Ahuqo=;
        b=ZfBJEzEC7j8Nvnb3dqzoiY5D5ZgvODECyXOBGkB/43UfVq5pW3DVor5HdzTXk4PI11
         Pn7dbsrWtYKna6k34hsw4ErKLO6u3wXiMu4XvEmCwy2ZRu1qOGmvi8Qu2eyOqu7tZZK5
         YZv3WkDLn8ZOSVGXiv0y0xR//W19deGUxEF9fGaHzAKMVWt7d2qBW+/hc13/LCVO6DOS
         5DfceH8L68t0FMW6+5GCV3HFTA/Fhkj7bP0qufHYpZKMZViGEdRCqOBKLP8Cjckh/9jP
         8IEl5HgBhOJrdfotNxN8umwG0xUzBYaezJlitkxD96Qz9TO4IES+GAfMumUGstJPOH0D
         J/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pOPOCDZV8OVC7VLloKr96t85hS/Dyc0PgAK+q1Ahuqo=;
        b=pDyZ9BiCJjLJIWdkyZRYFFZ1YQI7+ZxIk9NzOUJVadL8ahW2e3YY+Fh8u5ynQJa1eL
         MmzKYJ37xECI17S/OpJKDLJ6n/dFvORQc2NRdReBctqtS/e3o37PplmWUB8Hq2EcPK4p
         upH0l/bw2gxz3L4cWLxpR1rMZsolOO3+wPyBVQ1E9nLCDauNb08mo+brVQD9GTzbu+/O
         3ODzAZ5waQOQ5vcdNPYuKsr5/7su0WNdqHrZz75ypQojRlEsJlteigfO0reFwSjoUDhp
         1N8Va3OEnrtgH7+Ohq8lbyBnMgaALFvi62810G524htu9tKlBwKXAgYW0II5LyUE0LIQ
         jkxw==
X-Gm-Message-State: AOAM530KHynzHFUay6sVxQd1qizWaZa5bGnn9RClm71w79oPQGKKsmn8
	UB1YGHQW+/r44OGSqzXDSBfJPWXeEWFi5w==
X-Google-Smtp-Source: ABdhPJxiOOA07LOwWISQjI/bfUMQ3LphsUQQkDvZkzj/3NnikIjSmHIlIrdahRquyn8b0axYlDtWeg==
X-Received: by 2002:a7b:c188:: with SMTP id y8mr312275wmi.76.1616425664783;
        Mon, 22 Mar 2021 08:07:44 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id d13sm20751534wro.23.2021.03.22.08.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 08:07:44 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2] Add machine definitions for NanoPi-M4 boards, 2GB and 4GB variants
Date: Mon, 22 Mar 2021 16:07:20 +0100
Message-Id: <20210322150720.580313-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

---

Changes from v1: split in two distinct machines: nanopi-m4 and nanopi-m4-=
2gb

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
index 0000000..f6d9c11
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

