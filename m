Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web10.3593.1593716090070489985
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=l/fzbYpz;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.196, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f196.google.com with SMTP id s14so11649577plq.6
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=MbwRk4C5E082kuzKVVISc023IMVL7qiWdkOpUk8tCSg=;
        b=l/fzbYpzce/lyDxtJYyiK4eRIsasDhYu3EW/WskqRlIIWPE9btQo/ESA+u1nSHm9YR
         EAFEc8EEGp7qyNwqhqcLUnCrcskSbrgHk+yB1LHIUr97UHKdG0hifQldGUS+gOpwXFBx
         HlBMVXfRJ4GWwVHp+mV8g2vzFlNSt2UdoKIIt250qFiUTEkYS46W1s9qYzoyOQfPGsrz
         i3RG2Ashuy5iRWUpItUBjtSic3qRUDK1Lq11a65/kNwi+ryNUk8KJo4GjC1AS0D/UEmX
         v2bHe71DXAObSnKvFJP8jaryEm04gcPEksRaziHB9w5lSzsoaIwj8m0FaNOVOG0rL3Xp
         3Aiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=MbwRk4C5E082kuzKVVISc023IMVL7qiWdkOpUk8tCSg=;
        b=n/dbpxmMnY4IWZsRMpqbqoPTAculevl+vmOS1eUHQjrEmOZntw22bcjcQ7E3s+hCBt
         QfTpS7ur8Ha+kVWzE6RlHA9fewXVFgNIJwF0n21YA7CCs55W41+nPMlIOdQXmZyXfASp
         6yOAGDp9P/BAoBd1V/ff8RxnDzdF6vWi7MZUP3NufCJ+yOHTe8J0rQstDvpOxnDZyA/Z
         fM21gC/OYMAYV+u1EwakCUHoNurbbL9qY359cyhYKZJk+JG7sqz17ny95Px9m21vndaZ
         uyPex6N5VLfEfAwsAG6h15Iaa3XtKo8t5J8S2D5Z5PWPKbngU+8l/3Q4dCPZ4Uwfkrm5
         SlfA==
X-Gm-Message-State: AOAM533T6CJQzwXyEabPCt2tpYXzHZLtF1+FXWohgEAtRvhyMCSBNdb6
	a9+F9V2uPR4y978OQ6bgS0Vafwe+P/+ZHw==
X-Google-Smtp-Source: ABdhPJyA6IJ80A3fZ4WFeXU3mSRiTWE4vEqqdfijLcSWweaAbAFlQs08wmyZoTjSTeS9AzYFKFTrGw==
X-Received: by 2002:a17:90a:1a19:: with SMTP id 25mr3846304pjk.233.1593716088916;
        Thu, 02 Jul 2020 11:54:48 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:48 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 4/6] scripts/publish-artefacts: Convert md5sum to sha256sum
Date: Thu,  2 Jul 2020 08:54:00 -1000
Message-Id: <32f8a69dc01c402d58c2033925cd4642b5cd9234.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593715874.git.steve@sakoman.com>
References: <cover.1593715874.git.steve@sakoman.com>

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 80c53d03ea32e3b4831e8945eaa2e1d643d0ce89)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/publish-artefacts | 88 +++++++++++++++++++--------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index f642fac..e773350 100755
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
     "qemuarm"|"qemuarm64"|"qemumips64"|"qemumips"|"qemuppc"|"qemux86"|"qemux86-64"|"edgerouter"|"genericx86"|"genericx86-64"|"beaglebone")
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
@@ -42,165 +42,165 @@ case "$target" in
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
     "qemuppc-alt")
         mkdir -p $DEST/machines/qemu/qemuppc-alt
-        md5sums $TMPDIR/deploy/images/qemuppc
+        sha256sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc-alt
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
2.17.1

