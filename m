Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
 by mx.groups.io with SMTP id smtpd.web11.7203.1601331986203184032
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 15:26:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=Q+hbY6Nn;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.193, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f193.google.com with SMTP id a4so2102442qth.0
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 15:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=it+j7TxTrQx4yqvpZkpm4jRT9iK9NdjjBc9/H1xQwjE=;
        b=Q+hbY6Nn8UedtlJSa4m+DRDl7rEH1ApKLHwXIQ1lJgJUso2Ix8xB3ACGFKZxy7eY9n
         RisM5FATNhp7FUpg+ywg9BtxBZH5eGPWoKWQRtSDPOA2CFYupqLzG6fIZNOKHeRfO5rK
         gPcvwV3v7UtADAuPH8cIhPd3QSLOFy8m852Sdh6MgZtj6ZkP3NWkB14ROgO06/D2jYBF
         v4iYJP6OCCrv1hvc0z8mEOSXhDN0zKxOjR1S7j5uklSkhh1MUV0zewn71hnhbiJGJ3si
         F+l0bFXbiXHBrxso/g866PkVOQsBQcJlNRVYjN/jZ704W9Ux6cVYhiocknySMs7V6lW6
         rTyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=it+j7TxTrQx4yqvpZkpm4jRT9iK9NdjjBc9/H1xQwjE=;
        b=WO81yiH5NQI20poPR/MTwZHGNSXO8KZPCTH+3Vw6CvojmiGEckV5NQD1+oM2cdatzk
         28rmLGv7C05Sd/3bysPXFceOFkqNu+HrchCSeo76sllfnCG10wih71bdkYPVO12PEOVo
         blKt2Oymhrx4k4/e0cXaBizVOkaoefkUS4LCFahMIKu2CL7i/VIlUfDrw+wqPlzjuN2u
         35lTl7H8On94PcrKCSTtjbqmTC0Id6zh6IhChiLGarVTF6xFA+lejvXkt8XFmt2KK/Dd
         PVmUYKPDo3k59ps+vULC2z0kG8xC8CNP4drmNntHh8PoIfs2iGPz0whqas5LwUEKzRo8
         AXKw==
X-Gm-Message-State: AOAM532xm5S3xJaW5plJXZUhEo22oj6EiA5dF6kKAf7FmzHjrp+Etolu
	vu11P8AZvTaFfYsCApvIzII05/TtWW+D0ytH
X-Google-Smtp-Source: ABdhPJwpK3OITi+42lovanTFrs2YROZpivBIwtTbcJ8Aj4Wsiiqqnh3F+uAAqnDCPYqPs2RrNWJ11g==
X-Received: by 2002:ac8:76cb:: with SMTP id q11mr303783qtr.63.1601331985018;
        Mon, 28 Sep 2020 15:26:25 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id z2sm2428422qkg.40.2020.09.28.15.26.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 15:26:24 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr.bbclass: Add ability to set board
Date: Mon, 28 Sep 2020 18:26:20 -0400
Message-Id: <20200928222620.16007-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, there is no ability to set the board used by Zephyr.  This
limits the ability to set the board to something other than the machine
name.  By setting up an intermediate variable, ZEPHYR_BOARD, this can be
set by those that know better (with the default to use the machine name
as before).

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 classes/zephyr.bbclass | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/classes/zephyr.bbclass b/classes/zephyr.bbclass
index 3ea074613117..ead762aea11c 100644
--- a/classes/zephyr.bbclass
+++ b/classes/zephyr.bbclass
@@ -1,5 +1,3 @@
-
-
 inherit terminal
 
 OE_TERMINAL_EXPORTS += "HOST_EXTRACFLAGS HOSTLDFLAGS TERMINFO CROSS_CURSES_LIB CROSS_CURSES_INC"
@@ -10,11 +8,12 @@ CROSS_CURSES_INC = '-DCURSES_LOC="<curses.h>"'
 TERMINFO = "${STAGING_DATADIR_NATIVE}/terminfo"
 
 KCONFIG_CONFIG_COMMAND ??= "menuconfig"
+ZEPHYR_BOARD ?= "${MACHINE}"
 
 python () {
     # Translate MACHINE into Zephyr BOARD
     # Zephyr BOARD is basically our MACHINE, except we must use "-" instead of "_"
-    board = d.getVar('MACHINE',True)
+    board = d.getVar('ZEPHYR_BOARD', True)
     board = board.replace('-', '_')
     d.setVar('BOARD',board)
 }
-- 
2.20.1

