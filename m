Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.3044.1602957830564393807
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PhziBdGH;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id gv6so3238933pjb.4
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2nbKCGygUxshJcry0fC5lSdAnhynYmATFTKfKbgYueE=;
        b=PhziBdGHCWeXZuC+RGLW5azPKmPG8XOy6QFLZSzpX2d+ChKgiHvOMxygn3Koe4FiEr
         T2fUF3vhYwPbKTuCLyjEG+WhWCilAa7ybucdb8jVMFBVk8a1sQs3QQukBP6VfBnQtIH+
         cjDOBhVP+XaNuN2L8/W4nC80FlgA3gwAvlTY+RF9G87gSl7ayu43if6OYxgCKTo25VVI
         6cfkPKQ4naUVcd8mCDc0lBmTziZPyBwG+f0hF15acviM2pHLiZY7sWpjveP29i8+BDGn
         dYwYL2DZqffgK3Js0XzGwKoNOAhVbVfeRdJoksN60SuAF11yj0L4RxtkB5JwGCrTTVzM
         MiMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=2nbKCGygUxshJcry0fC5lSdAnhynYmATFTKfKbgYueE=;
        b=FlwNHj99vi5aCaaO0mQMcPxsEFkW4PZT5dFx+g1Aqq1j98SlT+NJc+culjSpNhQTMA
         ht/NxpQ4uC1yRrN4Eu/rbDqRqHf8zCxdCu6sFyXMoB2RdbstlZCUfGA4Pza/D9NxgGDY
         t0My71Gx/Fl6tvZwT85tVRPwwvLeTRaTKS5VFWJAjJvlSmw9ZTh6OAhejryPPySHRhz1
         /9Cg/zqETDbRMoRe92QMghIDQZoyLQqU4LOSsJ/C6oPQ/7XNLcPlhZmq6uqDCbhZe1or
         kotD2zNwg4K54PUWJIk8cVxeRoO4mXRS4pAvwcsLAyi87RvEUvdr78Eobdfw6KQ8CP1x
         XdHQ==
X-Gm-Message-State: AOAM531DNHU0o7EytaKWvDw0KUQZ3majhC8UglBt6IKeMi5RMhl1Gsjv
	BsOA9JpK0TT2iTxJJsi+D4nRDNxwJ/w=
X-Google-Smtp-Source: ABdhPJxv9PlEEW4SBsRwHz1uOn2jC9qeuc8g7IgtkePdlSA21in41bxRuapfXmlbRA6u4gdrkGtZ8Q==
X-Received: by 2002:a17:902:c184:b029:d5:d7c1:51f5 with SMTP id d4-20020a170902c184b02900d5d7c151f5mr2150622pld.67.1602957829913;
        Sat, 17 Oct 2020 11:03:49 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:49 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 14/32] initramfs-framework: Add dmverity module
Date: Sat, 17 Oct 2020 11:03:11 -0700
Message-Id: <e63669a81100f9179cda4a14ff58097eda761f8c.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Add 'initramfs-module-dmverity' as an extension to poky upstream
provided initramfs-framework suite via matchingly named bbappend file.

Together with pre-existing 'initramfs-module-udev' this module can be
used to facilitate dm-verity rootfs mounting from initramfs context
that is bundled with Linux kernel.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 489f7c900c365e4b3198cff2f2fd7c38623b77e8)
---
 .../initramfs-framework/dmverity              | 53 +++++++++++++++++++
 .../initramfs-framework_1.0.bbappend          | 16 ++++++
 2 files changed, 69 insertions(+)
 create mode 100644 recipes-core/initrdscripts/initramfs-framework/dmverity
 create mode 100644 recipes-core/initrdscripts/initramfs-framework_1.0.bbappend

diff --git a/recipes-core/initrdscripts/initramfs-framework/dmverity b/recipes-core/initrdscripts/initramfs-framework/dmverity
new file mode 100644
index 0000000..bb07aab
--- /dev/null
+++ b/recipes-core/initrdscripts/initramfs-framework/dmverity
@@ -0,0 +1,53 @@
+#!/bin/sh
+
+dmverity_enabled() {
+    return 0
+}
+
+dmverity_run() {
+    DATA_SIZE="__not_set__"
+    ROOT_HASH="__not_set__"
+
+    . /usr/share/misc/dm-verity.env
+
+    case "${bootparam_root}" in
+        ID=*)
+            RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
+            ;;
+        LABEL=*)
+            RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
+            ;;
+        PARTLABEL=*)
+            RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
+            ;;
+        PARTUUID=*)
+            RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+            ;;
+        PATH=*)
+            RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
+            ;;
+        UUID=*)
+            RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
+            ;;
+        *)
+            RDEV="${bootparam_root}"
+    esac
+
+    if ! [ -b "${RDEV}" ]; then
+        echo "Root device resolution failed"
+        exit 1
+    fi
+
+    veritysetup \
+        --data-block-size=1024 \
+        --hash-offset=${DATA_SIZE} \
+        create rootfs \
+        ${RDEV} \
+        ${RDEV} \
+        ${ROOT_HASH}
+
+    mount \
+        -o ro \
+        /dev/mapper/rootfs \
+        ${ROOTFS_DIR} || exit 2
+}
diff --git a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
new file mode 100644
index 0000000..dad9c96
--- /dev/null
+++ b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
@@ -0,0 +1,16 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append = "\
+    file://dmverity \
+"
+
+do_install_append() {
+    # dm-verity
+    install ${WORKDIR}/dmverity ${D}/init.d/80-dmverity
+}
+
+PACKAGES_append = " initramfs-module-dmverity"
+
+SUMMARY_initramfs-module-dmverity = "initramfs dm-verity rootfs support"
+RDEPENDS_initramfs-module-dmverity = "${PN}-base"
+FILES_initramfs-module-dmverity = "/init.d/80-dmverity"
-- 
2.17.1

