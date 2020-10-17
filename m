Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.3007.1602957832746435318
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MQGdhHvN;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id g16so3052770pjv.3
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7+wUSAllf+oA5/SdKn9AU+t9JK88thd5oSDzVXY9Vqo=;
        b=MQGdhHvNgsX0HmO6uAdv7jfREhJnxu9I9ThaZhhxdDAKXlys/COVe+jmKnb9RbpnX9
         s1up02Shuc45Yt/wcUIEPPz8BmwaIRxy8Z6z+g7vfEXJY53545uq59mq7pSQOAQGsbQl
         6Vj5u5GoeK8gVPj935TEaPRzH7o3OsCYOslOJQmXO8xSOgObv2EaoGQ4aAynMgiyUuOt
         TvRO4x/eJ//nOyMOaAiIhE1/jk5dCLFwEgIo8rfXrkRm6l8Nxg/PvDiO7IcL8d4z90dp
         d1izL83590cWNyMTpoD4OAgoeHfTENsji5Qv2O0ucmgAQPczMcZwCdGFFwxPYepD1ZqQ
         CONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=7+wUSAllf+oA5/SdKn9AU+t9JK88thd5oSDzVXY9Vqo=;
        b=bv1fkjyK/7XPP1uhdp58jS5TNRjStWztVJ1BFZkY7xruTfpUGCYS3yfDXlFq+xIBsc
         X6D+2kyeg7fO3tT/CGwuQGDUvjeOZbHhskxFsGQWtA8gWDcHm4FN+clpl49j2oR9Gbki
         5DweS4PYjlgKVBSRX/baxIPt58Xy6Ep/pmqzbC1cf5zVqzqhhOKkULjcdT0pc9IAOPcL
         8X7gUttOkey4bP0NJ+x6iWe8Jdbse4MvvVsSd6hBW2iE7SpoJ6ozGfwobDyuNB6Jk/r2
         WTf73pqwUXyhyE+IrsucRN4sj0ACdQmOCUCbDq3vux1ekywcYUT4bBOga0wttA1jvBHP
         5h2Q==
X-Gm-Message-State: AOAM532lbAgo09G9QaDd81FamUvrVlVruA+cvVVt8/G25U7ezDT5kqLs
	0aXpH32airEstQT7Qh0WKqqrmjtPLzI=
X-Google-Smtp-Source: ABdhPJxkPQDYvgGMVx6achRdbSFIMFflbs5v4BQGqRqBSM2Mt4IQbG4HO3fIXgYIlRXJ3ecASTwieg==
X-Received: by 2002:a17:902:aa8a:b029:d3:c9dd:77d1 with SMTP id d10-20020a170902aa8ab02900d3c9dd77d1mr9954493plr.0.1602957832120;
        Sat, 17 Oct 2020 11:03:52 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:51 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 16/32] dm-verity-initramfs-image: Cosmetic improvements
Date: Sat, 17 Oct 2020 11:03:13 -0700
Message-Id: <5f2c8e8e25744236e20fa3bd504cd9f07add4d28.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

- revise declaration ordering as suggested by oe-stylize.py
 - sort PACKAGE_INSTALL entries in alphabetic order
 - split long command line in deploy_verity_hash()

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 1d21cec5fda489f9ed7c1132b0abc18db3af6d41)
---
 .../images/dm-verity-image-initramfs.bb       | 20 ++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 6a1058d..0fdb46c 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -1,19 +1,21 @@
 DESCRIPTION = "Simple initramfs image for mounting the rootfs over the verity device mapper."
 
-# We want a clean, minimal image.
-IMAGE_FEATURES = ""
+inherit core-image
 
 PACKAGE_INSTALL = " \
-    initramfs-module-dmverity \
-    initramfs-module-udev \
     base-files \
     busybox \
-    util-linux-mount \
-    udev \
     cryptsetup \
+    initramfs-module-dmverity \
+    initramfs-module-udev \
     lvm2-udevrules \
+    udev \
+    util-linux-mount \
 "
 
+# We want a clean, minimal image.
+IMAGE_FEATURES = ""
+
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_image[depends] += "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"
 
@@ -22,9 +24,9 @@ do_image[nostamp] = "1"
 
 IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
 
-inherit core-image
-
 deploy_verity_hash() {
-    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/misc/dm-verity.env
+    install -D -m 0644 \
+        ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERITY_IMAGE_TYPE}.verity.env \
+        ${IMAGE_ROOTFS}${datadir}/misc/dm-verity.env
 }
 IMAGE_PREPROCESS_COMMAND += "deploy_verity_hash;"
-- 
2.17.1

