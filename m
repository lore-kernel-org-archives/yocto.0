Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.8061.1595287075250312415
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 16:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRcUaeHf;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id 11so8074468qkn.2
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 16:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LSqxv/lKrFa1MNzOiKVbRyzexdBvyh0RAROINdonyyI=;
        b=jRcUaeHfgEw+sDmMmyW45690IblSqYH6leV8GDAKgMk2DSwTv+wjwxlNuIf8wWV+VQ
         P9ML/xMHn9JtiV0IZNfGbPz4ZiZA1AO722quUQGwKvYQOvTttqRBo8p2rNMqYjVVTJAV
         oNsamFj+sDojfKm3LFsQQv1It+/w+zhBAFN5aCyIlq1SrumEgxp1vu89EWB8fEXxriks
         lkyIms+MuDzYuOpQwvnaqi06MO3r+RvQngw21vGJTuNtM/ntT8kHr8Wpg1LTYPKJpri4
         2HI2gB0wO/PubHDrNxNEApxaeI2aiueead1xKhRw25sLIW07OKxuc1+Vkp9Bz8MhHhZ0
         r25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LSqxv/lKrFa1MNzOiKVbRyzexdBvyh0RAROINdonyyI=;
        b=L24NpvkUIB3BFsSALl78qv/0YFrYXSaCdvIbIrkQY+GbZEmBBHdqzdl34wLm5JqsNh
         j278FEv25176sV+GNWQueGpcv8G8Xle1yYIXgseblJ31Dx5b7EGb3vNvQFUE8NCzo0x5
         KEcbjvancSymbn1F0JSZBFC8vHmC2r2AWpy/lMyPgPUsfX0oNjlNY35o0PbR0VS/zmnf
         NGHXVMcBhawgTPi71xDfkGJyxa5bekUhjCrLy4G12qiB5c5v6N9kUCEMXB5MsOu02JXR
         eDGsnus0AV20+c7fIFtuT7q/HuzPi/i2aMiibZTqi5fqUAqxR8lJlt0fKnVqyNYgSTfk
         plqA==
X-Gm-Message-State: AOAM532aWE9NY0+rszPJ1e6yPEiuicKFFbNIbnIxgs/GgvwwE90KoFvi
	kTdK0dDVuoufXCS+xZ+0TinV1Izx
X-Google-Smtp-Source: ABdhPJwbu0PyYK4siaTbZrZ+ptyniM+fy72EVOebz5Qy/cDrATofGNjPDnkTXdnpbOUC73TRGILbNA==
X-Received: by 2002:a37:27d2:: with SMTP id n201mr1873395qkn.43.1595287074067;
        Mon, 20 Jul 2020 16:17:54 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3.suse ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id q13sm19474157qtp.42.2020.07.20.16.17.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 16:17:53 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2] arm-none-eabi-gcc: remove
Date: Mon, 20 Jul 2020 19:17:51 -0400
Message-Id: <20200720231751.7460-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd637
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We already have a dependency on meta-arm/meta-arm in order to build
tf-a (there's no point carrying our own recipe when there's a common,
consolidated one to use in meta-arm).

meta-arm/meta-arm now has a dependency on meta-arm/meta-arm-toolchain.
meta-arm-toolchain has a recipe for virtual/arm-none-eabi-gcc, so we might
as well use that too, and remove our own version. Note that using the
meta-arm-toolchain recipe required a small change to how the dependency is
specified.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                        |  2 +-
 .../trusted-firmware-a_%.bbappend             |  2 +-
 ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 -------------------
 3 files changed, 2 insertions(+), 39 deletions(-)
 delete mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb

diff --git a/README b/README
index e1cfe3e..a751fce 100644
--- a/README
+++ b/README
@@ -12,7 +12,7 @@ Dependencies:
 	branch: matched branches (e.g. master, sumo, ...)
 
 	URI: git://git.yoctoproject.org/meta-arm
-	layers: meta-arm
+	layers: meta-arm, meta-arm-toolchain
 	branch: matched branches (e.g. master, sumo, ...)
 
 Status of supported boards:
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index ecde25d..2374205 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -1,6 +1,6 @@
 # Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
 # toolchain
-DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc"
+DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
 
 COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
 
diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
deleted file mode 100644
index a0c832d..0000000
--- a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-# Copyright (C) 2019 Garmin Ltd. or its subsidaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
-LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
-
-LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
-
-PROVIDES = "virtual/arm-none-eabi-gcc"
-
-SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
-
-SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
-SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
-
-S = "${WORKDIR}/${BPN}-${PV}"
-
-inherit native
-
-COMPATIBLE_HOST = "x86_64.*-linux"
-
-do_install() {
-    install -d ${D}${datadir}/arm-none-eabi/
-    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
-
-    install -d ${D}${bindir}
-    # Symlink all executables into bindir
-    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
-        lnr $f ${D}${bindir}/$(basename $f)
-    done
-}
-
-INSANE_SKIP_${PN} = "already-stripped"
-
-INHIBIT_SYSROOT_STRIP = "1"
-INHIBIT_PACKAGE_STRIP = "1"
-INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
-- 
2.26.0.106.g9fadedd637

