Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web12.7516.1612444197967427274
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 05:09:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYEKUX8d;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id e18so3272711lja.12
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 05:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y1aKH38H7ZIYnJw+oUasWoeuklBKKyU4TNRvL3vcleQ=;
        b=vYEKUX8dCN8r9Ml+GpyNG6D0SKQEbcu1IbnCMtbYRIVuJGujobmFYWLlhOWIKSOx5p
         TNc+++mA3QKbVe9Oka9Xg7q8YXkwgSOeQhNv5ZTKlBuVy+Or3vkvU/Mlpi6XytA4FMPU
         SFi69ohqjkdOKn7/MkHIW2ppYiYS9x0xdVycHTUvXbxD7v2pMo9GTQ0Qxwsmk/GWdrGU
         u2+5Fqdss9ZxMgHTgVqB3NFNYlc7RAJvJ8BnTPBXygmoECNlhkNZDhcJYwiztvbdB8Tn
         VGU1uYr0WdAmDXvItmvxMO42nq/IDacCt+zS7+n96C1Msjz+Nv1idV+EYfWWHefL6/Ig
         lZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y1aKH38H7ZIYnJw+oUasWoeuklBKKyU4TNRvL3vcleQ=;
        b=gKZVMV/EXOZVGixz7iIZnTd6NLHk3PYLeltgS5G2SdqF5RwrqjuiK2qD1AJ5MKbrC7
         yQtGB2Dw4oqsT4RD2fAhtncCmr6Lu8us9+1hewnh/Fvz/A6WVWwEykkIk8wC4O0ldtDZ
         2653ZUSN57QJNFnQ10VYLyHykytRJwHkiX1c+yNmOY/WvxbwJU8IFgFU4QztMASj+NJu
         K/RkZQbbqwWIQimhFdAbBvV/jv31eInduFKo9loivxGo7DeMNdWM3HdMvmHWYq0Ym9Zs
         1P0GcW4pehoALOtwiG72NIUyQbI8rKx+fhbatqDp3Zrg8jPPWTQJ23u9zzE2K7gJS6Dz
         tJlg==
X-Gm-Message-State: AOAM5335cFldSZqbIzhO+NbeRLljXY3HsNG7QhW2h4z/AY/A9bVcxGHl
	02pDtefxou3Fy7YfxM/3zjqvjZYv/2deaFQ3
X-Google-Smtp-Source: ABdhPJxzFAallDpd5VC8yY8PULpWCa9HaQ+gAxbxBI7IMm/5+K0v/GHgat46LMQzyh+7JgEKqAyUAA==
X-Received: by 2002:a05:651c:1394:: with SMTP id k20mr4849007ljb.38.1612444196013;
        Thu, 04 Feb 2021 05:09:56 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:6dc7:7f99:796b:dced])
        by smtp.gmail.com with ESMTPSA id y10sm599122lfy.57.2021.02.04.05.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 05:09:55 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: andrei.gherzan@huawei.com,
	stefan.schmidt@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 2/2] zephyr-peripheral-esp: fix compilation
Date: Thu,  4 Feb 2021 14:09:50 +0100
Message-Id: <20210204130950.3218546-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210204130950.3218546-1-zmuda.w@gmail.com>
References: <20210204130950.3218546-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Bluetooth peripheral ESP sample application does not compile
because of:
 - broken source directory path passing to cmake,
 - broken paths in do_deploy,
 - unnecessary call for do_install,
 - missing tinycrypt.

The first issue caused the following error:

    <...>/gcc/arm-yocto-eabi/9.3.0/ld: <...>/recipe-sysroot/usr/lib/libc.a(lib_a-exit.o): in function `exit':
    /usr/src/debug/newlib/3.2.0-r0/newlib-3.2.0/newlib/libc/stdlib/exit.c:64: undefined reference to `_exit'
    collect2: error: ld returned 1 exit status

Fix the issue by providing Zephyr source directory to cmake
via OECMAKE_SOURCEPATH variable. On the do_configure step cmake
now gets the full path to the sample source code instead of
Zephyr root directory.

The second and third issue caused errors because of missing files.
Don't execute do_install and use the same paths in deploy as the
other sample apps do.

Inspecting meta-zephyr commits history shows that similar approach
was used in bb files of other sample application when updating
them to work with Zephyr 2.0.

For the missing Tinycrypt, append its location to cmake.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
index 2ffe5ae..192c76d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
@@ -5,15 +5,12 @@ inherit deploy
 ZEPHYR_SAMPLE_NAME="samples/bluetooth/peripheral_esp"
 ZEPHYR_SRC_DIR = "${S}/${ZEPHYR_SAMPLE_NAME}"
 ZEPHYR_BASE = "${S}"
-
-do_compile () {
-    cd ${ZEPHYR_SRC_DIR}
-    oe_runmake ${ZEPHYR_MAKE_ARGS}
-}
+OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
+EXTRA_OECMAKE_append = "\;${S}/modules/crypto/tinycrypt"
 
 do_deploy () {
-    install -D ${ZEPHYR_SAMPLE_NAME}/outdir/${BOARD}/zephyr.elf ${DEPLOYDIR}/${PN}.elf
-    install -D ${ZEPHYR_SAMPLE_NAME}/outdir/${BOARD}/zephyr.bin ${DEPLOYDIR}/${PN}.bin
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
 }
 
 addtask deploy after do_compile
+do_install[noexec] = "1"
-- 
2.25.1

