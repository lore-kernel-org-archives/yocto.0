Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web09.6180.1612435629571683892
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 02:47:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AjkZB7/c;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id a8so3801609lfi.8
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 02:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ppg2h0njbynni8kx7xI0LmbmJYJYkHagsazz2Ujz58c=;
        b=AjkZB7/cYEN+hNEpFAjMrHZJRfZHjWtjq+XidATzC3PoxHvM/BRPWNQurUd7PKTTXD
         gfdaN+wM1vm4ukMR/OI0nJTpdvIssForqZL2N8o8hc9E+aOEmtrhb/QAPdZ1y+YBVnBC
         Qp6FUiMR21aSrX/JrHzhpgHWhV7n4CCkZTF1vD6bDwz/+86/tuK4wFFOmpUZ8xrm4Ag6
         nOvMNQTWIt62IYjj74kWU+hjIn/xiCgo8QpGUATxonGLuaJboU/K8uX5pQLoeNcRnf+Y
         yzuDeOPbWOH7P+qGjzA3qoeRlHsoOjxNUKohO2SQm202dB3taBKEzH7JY2uiqoXhXPxL
         D73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ppg2h0njbynni8kx7xI0LmbmJYJYkHagsazz2Ujz58c=;
        b=Y6thcYnlZJTaiYcDSRezhkZYLSjmOyj7kTmXxnEAOsjEAJpKUlmjIeQUIBWxddUmaO
         SPux6rO00bAK3hANu00qa+bVFhBzrbJt/8E4UAxbQxAFWmjHZa1uqX0qH8TNkg8dD3O/
         dO1AiEkQ0hsA61SXDGfxSsUWPfYOwpaMVH11kg2dqkp9svoZ6mrPoc86iwXZG9D4gPjm
         y867whT4hm5zzy6Uf0jXpDq+1K0RXnwMOhq8ivBtFNTSiWC7ZZ/l4WobDDXZWF0UIRjH
         QF/+fvDOnxd2vddYOpJlFfRGwZAJz2D1dg5fEI4ukKpc/wBe2Z8MpVYYHNYTJnZSVd74
         M46w==
X-Gm-Message-State: AOAM532fo3GWoWnEf18kQ+EA6ZhKkpGjstLzaOlQuDDqUVMjX/MUPQIp
	9zaeQffJ0MQBr5s9C+LWS3ZhvP200EUsI/CT
X-Google-Smtp-Source: ABdhPJx+fZmkBUJZQ9kCJpiZU6k/ySC16uA4VlJPBcKgAtYPrVXDrto9wz6f9cr8+CthPv/zmCWSPg==
X-Received: by 2002:ac2:484b:: with SMTP id 11mr4238817lfy.605.1612435627665;
        Thu, 04 Feb 2021 02:47:07 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:6dc7:7f99:796b:dced])
        by smtp.gmail.com with ESMTPSA id y29sm554389lfj.198.2021.02.04.02.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 02:47:07 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: andrei.gherzan@huawei.com,
	stefan.schmidt@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [PATCH 2/2] zephyr-peripheral-esp: fix compilation
Date: Thu,  4 Feb 2021 11:47:02 +0100
Message-Id: <20210204104702.3214176-3-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210204104702.3214176-1-wojciech.zmuda@huawei.com>
References: <20210204104702.3214176-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

