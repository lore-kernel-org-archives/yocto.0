Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.22160.1599744670055239177
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N10EJdqA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id k18so40144wmj.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LGI/UFtLNsNvU/1iXLAVjpDqT+lLhF5nOlnebCEw5gs=;
        b=N10EJdqAiIvvGvXKORh0RVEt2oc1Q3PNUPZhcETfhZ6f619lfuKktZIW8R6f8hEmcV
         /3BQV7eeFA1f1ucipBnmoY8idM28J4corNvtEMDPrX0GFpbz8MwlJFOeiqIgHwHayHtk
         P43+8pHCIasIgXupND5irlit4CSp6G1MPILrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LGI/UFtLNsNvU/1iXLAVjpDqT+lLhF5nOlnebCEw5gs=;
        b=QbCGAko1LJF+p0s/24x6hbYY2/2Jr5g+FeMQCXOfTquKY4WfOe+Edo1/N6rUjtd0oc
         PfkGKTnnXw+5icBSGovWjkHMIff27WZYj7jBcQjYfyZ6oY6Qlq5DyAHGJi6mNydc4+V1
         b9q8HvQHuOroEavJZu01Si8NESP/CcadzDU+iHs2tRwFXuYDEGVY2Ay7IKv+69Z4xLEv
         96dFMRWnZK8snXjuD7HRoIBHm2IFMSu6lQlB4IdQLdwNrEsBepj73tudWQUjjNNiTzPA
         /rOYJpJYgpn8Zjjml6yXwLpp0hTEFyjqgoNWg+a8YyFK9kyucjPPdHGLCBiQ1fWn36RJ
         V2Ow==
X-Gm-Message-State: AOAM531z6NCkzNLikETyznfBDDZXHifcJZSsSmV59GhLoqhRHcSe3EuF
	x8k+8WAjaaSEsln2M+F0NJAeBXZpaZ3DBQ==
X-Google-Smtp-Source: ABdhPJzTapYSS2HItW9EENavckKOl7Fs4KHvDHv5fmV4X53uO+J0TlHe8TNfQ3sVzx+S9zkycoC/lQ==
X-Received: by 2002:a1c:8195:: with SMTP id c143mr81181wmd.85.1599744667832;
        Thu, 10 Sep 2020 06:31:07 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:07 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][thud 30/40] scripts/publish-artefacts: Convert md5sum to sha256sum
Date: Thu, 10 Sep 2020 14:30:25 +0100
Message-Id: <20200910133035.2044355-30-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 80c53d03ea32e3b4831e8945eaa2e1d643d0ce89)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/publish-artefacts | 88 +++++++++++++++++++--------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index dca008f..542e3d8 100755
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
@@ -33,172 +33,172 @@ case "$target" in
         mkdir -p $DEST/buildtools
         mkdir -p $DEST/toolchain/i686
         mkdir -p $DEST/toolchain/x86_64
-        md5sums $TMPDIR/deploy/sdk
+        sha256sums $TMPDIR/deploy/sdk
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/*buildtools* $DEST/buildtools
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/i686-nativesdk-libc* $DEST/toolchain/i686
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/sdk/x86_64-nativesdk-libc* $DEST/toolchain/x86_64
         ;;
     "qemuarm64")
         mkdir -p $DEST/machines/qemu/qemuarm64
-        md5sums $TMPDIR/deploy/images/qemuarm64
+        sha256sums $TMPDIR/deploy/images/qemuarm64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm64/*qemuarm64* $DEST/machines/qemu/qemuarm64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm64/*Image* $DEST/machines/qemu/qemuarm64
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
         mkdir -p $DEST/machines/qemu/qemuarm-lsb
-        md5sums $TMPDIR/deploy/images/qemuarm
+        sha256sums $TMPDIR/deploy/images/qemuarm
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm/*qemuarm* $DEST/machines/qemu/qemuarm-lsb
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuarm/*Image* $DEST/machines/qemu/qemuarm-lsb
         ;;
     "beaglebone-alt")
         mkdir -p $DEST/machines/beaglebone-yocto-lsb
-        md5sums $TMPDIR/deploy/images/beaglebone-yocto
+        sha256sums $TMPDIR/deploy/images/beaglebone-yocto
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*Image* $DEST/machines/beaglebone-yocto-lsb
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*u-boot* $DEST/machines/beaglebone-yocto-lsb
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/beaglebone-yocto/*beaglebone-yocto* $DEST/machines/beaglebone-yocto-lsb
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
         mkdir -p $DEST/machines/qemu/qemumips-lsb
-        md5sums $TMPDIR/deploy/images/qemumips
+        sha256sums $TMPDIR/deploy/images/qemumips
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemumips/*qemumips* $DEST/machines/qemu/qemumips-lsb
         ;;
     "edgerouter-alt")
         mkdir -p $DEST/machines/edgerouter-lsb
-        md5sums $TMPDIR/deploy/images/edgerouter
+        sha256sums $TMPDIR/deploy/images/edgerouter
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/edgerouter/*edgerouter* $DEST/machines/edgerouter-lsb
         ;;
     "qemuppc")
         mkdir -p $DEST/machines/qemu/qemuppc
-        md5sums $TMPDIR/deploy/images/qemuppc
+        sha256sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc
         ;;
     "mpc8315e-rdb")
         mkdir -p $DEST/machines/mpc8315e-rdb
-        md5sums $TMPDIR/deploy/images/mpc8315e-rdb
+        sha256sums $TMPDIR/deploy/images/mpc8315e-rdb
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/mpc8315e-rdb/*mpc8315* $DEST/machines/mpc8315e-rdb
         ;;
     "qemuppc-alt")
         mkdir -p $DEST/machines/qemu/qemuppc-lsb
-        md5sums $TMPDIR/deploy/images/qemuppc
+        sha256sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc-lsb
         ;;
     "mpc8315e-rdb-alt")
         mkdir -p $DEST/machines/mpc8315e-rdb-lsb
-        md5sums $TMPDIR/deploy/images/mpc8315e-rdb
+        sha256sums $TMPDIR/deploy/images/mpc8315e-rdb
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/mpc8315e-rdb/*mpc8315* $DEST/machines/mpc8315e-rdb-lsb
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
     "genericx86-64")
         mkdir -p $DEST/machines/genericx86-64
-        md5sums $TMPDIR/deploy/images/genericx86-64
+        sha256sums $TMPDIR/deploy/images/genericx86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86-64/*genericx86-64* $DEST/machines/genericx86-64
         ;;
     "qemux86-64-alt")
         mkdir -p $DEST/machines/qemu/qemux86-64-lsb
-        md5sums $TMPDIR/deploy/images/qemux86-64
+        sha256sums $TMPDIR/deploy/images/qemux86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86-64/*qemux86-64* $DEST/machines/qemu/qemux86-64-lsb
         ;;
     "genericx86-64-alt")
         mkdir -p $DEST/machines/genericx86-64-lsb
-        md5sums $TMPDIR/deploy/images/genericx86-64
+        sha256sums $TMPDIR/deploy/images/genericx86-64
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86-64/*genericx86-64* $DEST/machines/genericx86-64-lsb
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
         mkdir -p $DEST/machines/qemu/qemux86-lsb
-        md5sums $TMPDIR/deploy/images/qemux86
+        sha256sums $TMPDIR/deploy/images/qemux86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86-lsb
         ;;
     "genericx86-alt")
         mkdir -p $DEST/machines/genericx86-lsb
-        md5sums $TMPDIR/deploy/images/genericx86
+        sha256sums $TMPDIR/deploy/images/genericx86
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/genericx86/*genericx86* $DEST/machines/genericx86-lsb
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

