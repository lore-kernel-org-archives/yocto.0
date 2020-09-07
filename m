Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web12.6488.1599511859094350737
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DkyuNFZT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id w5so16952288wrp.8
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EoroUtyMcaOG+yQWPfAKTHHaKVmChrrS6XAcPa9kNE8=;
        b=DkyuNFZTrCd6lHHA7n26k67lJkrrEfT29EYnBpRq/30nsvMk6p47eAvtiYHWZVYUTj
         FSu+NuUwYm2tP8NygqOrtsbiIBMpq0fqQSKWZbWTJ4bjp8SXpfyDJTZM9F64dEavp2TO
         xe0ANa+A+LMniRoBd0LLDFLWzdMODsRk/CRxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EoroUtyMcaOG+yQWPfAKTHHaKVmChrrS6XAcPa9kNE8=;
        b=iWQBrWbFCmkE+ZKYdT4hvnu9nYgW+ySocXKvwoRfa6GHyETSF+KC5zCctmIFkZcpOM
         0KeG8w3Xcf/dg0/H/2Th3JhvgIhy4omGRYcv7qmkspXahlQxjz8kb1Sm1V7thsiHcdeI
         ipf2FzG5AbPsRjhq4V4DauZfehZgzBZ2SXIxRWjOnPGBWNTLyqEdjioBmL8V82X2mD6a
         GfxnrySv2pnfl4lt1FVZw9AxSfcNKAzROyLy9jYM1Nu9xJ11038kNKjajhB0fS5P1j+p
         jrU5f3UHf3en0QdU53sOlcuvPe++vc2UwrdATM7+x9qUE5Zqy06DzgkzBY6xSFZyQ1Gf
         G8pA==
X-Gm-Message-State: AOAM530g7YH4PUOTrysyXBllvCM3QfL8KoxQzfSrXCDDdR0B98qeRK/W
	MZOowyX6jtCIu/U5xe3+kYwNOtwWoPIluA==
X-Google-Smtp-Source: ABdhPJxlG5dinARuNLdoagvBBqD4FuoV14IONWeNlB53HLUKptmc0J3INXm2z7jvE5fqQVEJSY+8hA==
X-Received: by 2002:a5d:4450:: with SMTP id x16mr7454704wrr.28.1599511857207;
        Mon, 07 Sep 2020 13:50:57 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:56 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][zeus 22/32] scripts/publish-artefacts: Convert md5sum to sha256sum
Date: Mon,  7 Sep 2020 21:50:24 +0100
Message-Id: <20200907205034.1941516-23-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 80c53d03ea32e3b4831e8945eaa2e1d643d0ce89)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/publish-artefacts | 88 +++++++++++++++++++--------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 75ed1b5..a2625d7 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -3,11 +3,11 @@ WORKDIR=$1
 DEST=$2
 target=$3
 
-md5sums(){
+sha256sums(){
     dest=$1
-    for x in `find $dest -maxdepth 5 -type f`; do 
-        if [ ${x##*.} != md5sum ]; then 
-            md5sum $x >> $x.md5sum
+    for x in `find $dest -maxdepth 5 -type f`; do
+        if [ ${x##*.} != sha256sum ]; then
+            sha256sum $x >> $x.sha256sum
         fi
     done
 }
@@ -18,7 +18,7 @@ case "$target" in
     "qemuarm"|"qemuarm64"|"qemumips64"|"qemumips"|"qemuppc"|"qemux86"|"qemux86-64"|"edgerouter"|"mpc8315e-rdb"|"genericx86"|"genericx86-64"|"beaglebone")
         mkdir -p $DEST/toolchain/i686
         mkdir -p $DEST/toolchain/x86_64
-        md5sums $TMPDIR/deploy/sdk
+        sha256sums $TMPDIR/deploy/sdk
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/poky-*i686-core-image* $DEST/toolchain/i686
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/poky-*x86_64-core-image* $DEST/toolchain/x86_64
         ;;
@@ -34,7 +34,7 @@ case "$target" in
         mkdir -p $DEST/toolchain/i686
         mkdir -p $DEST/toolchain/x86_64
         mkdir -p $DEST/toolchain/aarch64
-        md5sums $TMPDIR/deploy/sdk
+        sha256sums $TMPDIR/deploy/sdk
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/*buildtools* $DEST/buildtools
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/i686-nativesdk-libc* $DEST/toolchain/i686
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/x86_64-nativesdk-libc* $DEST/toolchain/x86_64
@@ -42,69 +42,69 @@ case "$target" in
         ;;
     "qemuarm64")
         mkdir -p $DEST/machines/qemu/qemuarm64
-        md5sums $TMPDIR/deploy/images/qemuarm64
+        sha256sums $TMPDIR/deploy/images/qemuarm64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm64/*qemuarm64* $DEST/machines/qemu/qemuarm64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm64/*Image* $DEST/machines/qemu/qemuarm64
         ;;
     "qemuarm64-ptest")
         mkdir -p $DEST/machines/qemu/qemuarm64
-        md5sums $TMPDIR/deploy/images/qemuarm64
+        sha256sums $TMPDIR/deploy/images/qemuarm64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm64/*qemuarm64* $DEST/machines/qemu/qemuarm64
         ;;
     "qemuarm")
         mkdir -p $DEST/machines/qemu/qemuarm
-        md5sums $TMPDIR/deploy/images/qemuarm
+        sha256sums $TMPDIR/deploy/images/qemuarm
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm/*qemuarm* $DEST/machines/qemu/qemuarm
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm/*Image* $DEST/machines/qemu/qemuarm
         ;;
     "beaglebone")
         mkdir -p $DEST/machines/beaglebone-yocto
-        md5sums $TMPDIR/deploy/images/beaglebone-yocto
+        sha256sums $TMPDIR/deploy/images/beaglebone-yocto
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*Image* $DEST/machines/beaglebone-yocto
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*u-boot* $DEST/machines/beaglebone-yocto
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*beaglebone-yocto* $DEST/machines/beaglebone-yocto
         ;;
     "qemuarm-alt")
         mkdir -p $DEST/machines/qemu/qemuarm-alt
-        md5sums $TMPDIR/deploy/images/qemuarm
+        sha256sums $TMPDIR/deploy/images/qemuarm
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm/*qemuarm* $DEST/machines/qemu/qemuarm-alt
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm/*Image* $DEST/machines/qemu/qemuarm-alt
         ;;
     "beaglebone-alt")
         mkdir -p $DEST/machines/beaglebone-yocto-alt
-        md5sums $TMPDIR/deploy/images/beaglebone-yocto
+        sha256sums $TMPDIR/deploy/images/beaglebone-yocto
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*Image* $DEST/machines/beaglebone-yocto-alt
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*u-boot* $DEST/machines/beaglebone-yocto-alt
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*beaglebone-yocto* $DEST/machines/beaglebone-yocto-alt
         ;;
     "qemumips64")
         mkdir -p $DEST/machines/qemu/qemumips64
-        md5sums $TMPDIR/deploy/images/qemumips64
+        sha256sums $TMPDIR/deploy/images/qemumips64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemumips64/*qemumips64* $DEST/machines/qemu/qemumips64
         ;;
     "qemumips")
         mkdir -p $DEST/machines/qemu/qemumips
-        md5sums $TMPDIR/deploy/images/qemumips
+        sha256sums $TMPDIR/deploy/images/qemumips
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemumips/*qemumips* $DEST/machines/qemu/qemumips
         ;;
     "edgerouter")
         mkdir -p $DEST/machines/edgerouter
-        md5sums $TMPDIR/deploy/images/edgerouter
+        sha256sums $TMPDIR/deploy/images/edgerouter
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/edgerouter/*edgerouter* $DEST/machines/edgerouter
         ;;
     "qemumips-alt")
         mkdir -p $DEST/machines/qemu/qemumips-alt
-        md5sums $TMPDIR/deploy/images/qemumips
+        sha256sums $TMPDIR/deploy/images/qemumips
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemumips/*qemumips* $DEST/machines/qemu/qemumips-alt
         ;;
     "edgerouter-alt")
         mkdir -p $DEST/machines/edgerouter-alt
-        md5sums $TMPDIR/deploy/images/edgerouter
+        sha256sums $TMPDIR/deploy/images/edgerouter
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/edgerouter/*edgerouter* $DEST/machines/edgerouter-alt
         ;;
     "qemuppc")
         mkdir -p $DEST/machines/qemu/qemuppc
-        md5sums $TMPDIR/deploy/images/qemuppc
+        sha256sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc
         ;;
     "mpc8315e-rdb")
@@ -114,7 +114,7 @@ case "$target" in
         ;;
     "qemuppc-alt")
         mkdir -p $DEST/machines/qemu/qemuppc-alt
-        md5sums $TMPDIR/deploy/images/qemuppc
+        sha256sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc-alt
         ;;
     "mpc8315e-rdb-alt")
@@ -124,93 +124,93 @@ case "$target" in
         ;;
     "wic")
         mkdir -p $DEST/machines/qemu/qemux86
-        md5sums $TMPDIR/deploy/wic_images/qemux86
+        sha256sums $TMPDIR/deploy/wic_images/qemux86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/qemux86/*/*/*.direct $DEST/machines/qemu/qemux86
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/qemux86/*/*/*.direct.md5sum $DEST/machines/qemu/qemux86
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/qemux86/*/*/*.direct.sha256sum $DEST/machines/qemu/qemux86
         mkdir -p $DEST/machines/genericx86
-        md5sums $TMPDIR/deploy/wic_images/genericx86
+        sha256sums $TMPDIR/deploy/wic_images/genericx86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/genericx86/*/*/*.direct $DEST/machines/genericx86
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/genericx86/*/*/*.direct.md5sum $DEST/machines/genericx86
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/genericx86/*/*/*.direct.sha256sum $DEST/machines/genericx86
         mkdir -p $DEST/machines/qemu/qemux86-64
-        md5sums $TMPDIR/deploy/wic_images/qemux86-64
+        sha256sums $TMPDIR/deploy/wic_images/qemux86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/qemux86-64/*/*/*.direct $DEST/machines/qemu/qemux86-64
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/qemux86-64/*/*/*.direct.md5sum $DEST/machines/qemu/qemux86-64
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/qemux86-64/*/*/*.direct.sha256sum $DEST/machines/qemu/qemux86-64
         mkdir -p $DEST/machines/genericx86-64
-        md5sums $TMPDIR/deploy/wic_images/genericx86-64
+        sha256sums $TMPDIR/deploy/wic_images/genericx86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/genericx86-64/*/*/*.direct $DEST/machines/genericx86-64
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/genericx86-64/*/*/*.direct.md5sum $DEST/machines/genericx86-64
+        cp -R --no-dereference --preserve=links $TMPDIR/deploy/wic_images/genericx86-64/*/*/*.direct.sha256sum $DEST/machines/genericx86-64
         ;;
     "qemux86-64")
         mkdir -p $DEST/machines/qemu/qemux86-64
-        md5sums $TMPDIR/deploy/images/qemux86-64
+        sha256sums $TMPDIR/deploy/images/qemux86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86-64/*qemux86-64* $DEST/machines/qemu/qemux86-64
         ;;
     "qemux86-64-ptest")
         mkdir -p $DEST/machines/qemu/qemux86-64
-        md5sums $TMPDIR/deploy/images/qemux86-64
+        sha256sums $TMPDIR/deploy/images/qemux86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86-64/*qemux86-64* $DEST/machines/qemu/qemux86-64
         ;;
     "genericx86-64")
         mkdir -p $DEST/machines/genericx86-64
-        md5sums $TMPDIR/deploy/images/genericx86-64
+        sha256sums $TMPDIR/deploy/images/genericx86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86-64/*genericx86-64* $DEST/machines/genericx86-64
         ;;
     "qemux86-64-alt")
         mkdir -p $DEST/machines/qemu/qemux86-64-alt
-        md5sums $TMPDIR/deploy/images/qemux86-64
+        sha256sums $TMPDIR/deploy/images/qemux86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86-64/*qemux86-64* $DEST/machines/qemu/qemux86-64-alt
         ;;
     "genericx86-64-alt")
         mkdir -p $DEST/machines/genericx86-64-alt
-        md5sums $TMPDIR/deploy/images/genericx86-64
+        sha256sums $TMPDIR/deploy/images/genericx86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86-64/*genericx86-64* $DEST/machines/genericx86-64-alt
         ;;
     "nightly-x86-64-bsp")
         rm -rf $DEST/$target/images/intel-corei7-64/*
         mkdir -p $DEST/$target/images/intel-corei7-64
-        md5sums $TMPDIR/deploy/images/intel-corei7-64
+        sha256sums $TMPDIR/deploy/images/intel-corei7-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/intel-corei7-64/bzImage* $DEST/$target/images/intel-corei7-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/intel-corei7-64/*core-image-sato-sdk-intel-corei7-64*tar* $DEST/$target/images/intel-corei7-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/intel-corei7-64/*modules-* $DEST/$target/images/intel-corei7-64
         ;;
     "qemux86")
         mkdir -p $DEST/machines/qemu/qemux86
-        md5sums $TMPDIR/deploy/images/qemux86
+        sha256sums $TMPDIR/deploy/images/qemux86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86
         ;;
     "genericx86")
         mkdir -p $DEST/machines/genericx86
-        md5sums $TMPDIR/deploy/images/genericx86
+        sha256sums $TMPDIR/deploy/images/genericx86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86/*genericx86* $DEST/machines/genericx86
         ;;
     "qemux86-alt")
         mkdir -p $DEST/machines/qemu/qemux86-alt
-        md5sums $TMPDIR/deploy/images/qemux86
+        sha256sums $TMPDIR/deploy/images/qemux86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86-alt
         ;;
     "genericx86-alt")
         mkdir -p $DEST/machines/genericx86-alt
-        md5sums $TMPDIR/deploy/images/genericx86
+        sha256sums $TMPDIR/deploy/images/genericx86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86/*genericx86* $DEST/machines/genericx86-alt
         ;;
     "poky-tiny")
         mkdir -p $DEST/machines/qemu/qemu-tiny
-        md5sums $TMPDIR/deploy/images/qemux86
+        sha256sums $TMPDIR/deploy/images/qemux86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemu-tiny
         ;;
     "eclipse-plugin-neon")
         DIR=$WORKDIR/../scripts
-        # create md5sums only for the zip files
-        for x in `ls $DIR/*.zip`; do md5sum $x >> $x.md5sum; done
+        # create sha256sums only for the zip files
+        for x in `ls $DIR/*.zip`; do sha256sum $x >> $x.sha256sum; done
         mkdir -p $DEST/eclipse-plugin/neon
-        cp --no-dereference --preserve=links $DIR/org.*.zip $DIR/org.*.md5sum $DEST/eclipse-plugin/neon
+        cp --no-dereference --preserve=links $DIR/org.*.zip $DIR/org.*.sha256sum $DEST/eclipse-plugin/neon
         ;;
     "eclipse-plugin-oxygen")
         DIR=$WORKDIR/../scripts
-        # create md5sums only for the zip files
-        for x in `ls $DIR/*.zip`; do md5sum $x >> $x.md5sum; done
+        # create sha256sums only for the zip files
+        for x in `ls $DIR/*.zip`; do sha256sum $x >> $x.sha256sum; done
         mkdir -p $DEST/eclipse-plugin/oxygen
-        cp --no-dereference --preserve=links $DIR/org.*.zip $DIR/org.*.md5sum $DEST/eclipse-plugin/oxygen
+        cp --no-dereference --preserve=links $DIR/org.*.zip $DIR/org.*.sha256sum $DEST/eclipse-plugin/oxygen
         ;;
 esac
 
-- 
2.25.1

