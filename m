Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
 by mx.groups.io with SMTP id smtpd.web09.2778.1575430243915411296
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 19:30:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fo/2xbV0;
 spf=pass (domain: gmail.com, ip: 209.85.166.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f65.google.com with SMTP id c16so6376942ioh.6
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 19:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4dRb3x7gIp18H0Z77AfkxppQAWAGViwypbZMUphxU0o=;
        b=fo/2xbV0IW7wkqUsMUZEjhGs6u5LIpTKG2Q4sL/OOQvU9VfP63gNcCpkz7ohITfA+M
         vAVYYwy23zIXwVwRodv0+zA6P1pwUiSJjCwU+IC4ZuX/oW4Er8K2ksoLCCIB4CM/8+LX
         EyagHWMCD6W9qlN5niUSDasbj2F+T7bCYmjJeuuba3UgPR6zNr/I5VrXggdydsi3zAJ7
         EfxhmAMGjofuuDwRgAox+EMRgKBGTRs5lZimQKtc4U2iY2PwVxsrlJXrJC2WW+te3vlg
         Zo2ulUTey2Krl2mw/vkC1IaeZKabYhcMNFFTr9AtAhuYPpVjO+VlWLRSnX5bnGT2eT7q
         03Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4dRb3x7gIp18H0Z77AfkxppQAWAGViwypbZMUphxU0o=;
        b=c8GGCLj4C71MMSPIYubQBgxbDh3HivZVgQDUH80CracOf99nIBTTMPiiKMj4IPcsyE
         5TETLy9k5UV5BghrfYE8U0NlJB+PAMrIy4Ma9Ad3DbzgvW9U+5BU8StjujDnZOc+WHfx
         FN9nKReq5uG2kqaNF0ipgtOGvtckoN9LCXjWjKEzLNXgOa1LCAP/A+7y0LRabVRw0Kgv
         Rr+LjzdeJBbJZ2bH1ofNEfO113QM/QybGyOouBo5ql7JtC6MKP2pEK07fk77icUZOcPi
         6eBgNjWQKnB9wFfe17m/JVMhlBUZlLPSor3wj98F1P+0tikwFBoBDBpq8DOLrXtbDp1e
         WIdQ==
X-Gm-Message-State: APjAAAVuF1y9KeZmVAhMbUdiVM2Nr0reY8Jp3/CjsD6DHcAVvJXPNzxG
	LI25a8PIemMzYKa5W7bImR6E61WT8Ds=
X-Google-Smtp-Source: APXvYqx2CRhH17j5vje6jHLeKzGY/PmeQiR/pKI42bc+ztKRs2JpZRAbj46G5IN5DOjJGxcRxOSZiA==
X-Received: by 2002:a6b:6217:: with SMTP id f23mr628530iog.177.1575430242879;
        Tue, 03 Dec 2019 19:30:42 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id e15sm1382281ile.28.2019.12.03.19.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 19:30:42 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] Fix rk3288 bootloader
Date: Tue,  3 Dec 2019 21:30:34 -0600
Message-Id: <20191204033034.2004660-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recent versions of u-boot use a combined SPL/TPL (called idbloader.img)
in the loader1 partition, which then loads the full u-boot from the
loader2 partition. Update the GPT partition class to reflect this
change. Additionally, remove the u-boot bbappend since it is no longer
needed.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 classes/rockchip-gpt-img.bbclass     | 6 ++----
 conf/machine/include/rk3288.inc      | 2 +-
 recipes-bsp/u-boot/u-boot_%.bbappend | 8 --------
 3 files changed, 3 insertions(+), 13 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
index 5e545bf..f40cf36 100644
--- a/classes/rockchip-gpt-img.bbclass
+++ b/classes/rockchip-gpt-img.bbclass
@@ -135,9 +135,7 @@ EOF
 
 generate_rk3288_loader1_image () {
 
-	# Burn bootloader
-	mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY} ${WORKDIR}/${UBOOT}
-	cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>  ${WORKDIR}/${UBOOT}
-	dd if=${WORKDIR}/${UBOOT} of=${GPTIMG} conv=notrunc,fsync seek=64
+	dd if=${DEPLOY_DIR_IMAGE}/idbloader.img-${MACHINE} of=${GPTIMG} conv=notrunc,fsync seek=64
+	dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin of=${GPTIMG} conv=notrunc,fsync seek=16384
 
 }
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 0528e8a..08cb561 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -10,7 +10,7 @@ require conf/machine/include/rockchip-defaults.inc
 SERIAL_CONSOLES = "115200;ttyS2"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "u-boot-spl-dtb.bin"
+SPL_BINARY ?= "idbloader.img"
 
 IMAGE_FSTYPES = "rockchip-gpt-img"
 IMAGE_CLASSES += "rockchip-gpt-img"
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
deleted file mode 100644
index b9ee8af..0000000
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-do_compile_append_rk3288 () {
-	# copy to default search path
-	if [ ${SPL_BINARY} ]; then
-		cp ${B}/spl/${SPL_BINARY} ${B}/
-	fi
-}
-- 
2.23.0

