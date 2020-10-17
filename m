Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.3041.1602957829614458658
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALmN8M2f;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id k8so3432902pfk.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ayvavBGe3EoDG2l2k4YsABEgzhjCLVhNGFVC/jW+Re8=;
        b=ALmN8M2fAEdrXKlpuTqUehhT4IyWrEl9HRvCX0dqmx6dGu1cI/+jKx8ROkcZ7iCGsx
         pvTP1+uSl8pjp4BzmFky1z1HIBdCQqOcMCziN1WdR6HB4x3XYMWcuIjal9e70GeXp0HZ
         +qgCOvlLpbUlpYRGVhXQg9uuUt2i7wQbKURcPYd7Bg6IFyT3ABRCHg8SNzDdIZM0F73g
         eZvul/WVf8e5RMskata6pfs17JPVAqvmmyhlIrJKo1nDtyFKDEkaMHnbE+3NEfLDbcbK
         ezL/mSFodDmJZZUnF9JgU/JkztWVrFYcOxY4XDh/vwQcrxxHuHV7HecDqnod+IzIoV3x
         WLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=ayvavBGe3EoDG2l2k4YsABEgzhjCLVhNGFVC/jW+Re8=;
        b=QYLrr7Tfg7YamP7Q28BXC/VSmwRBbvnIsTV6vLy3F3MDnGo5DpThzPbU/fo1NvWs3b
         AWI74q9r4alvvS5g6x/cDvFRV8bC4+wJ/JFujxmi60MzgtOULVmG5K6qYtVZxF7S3R5z
         XI6vI9dxu52oNv5yk1M0EEOaTcDb03DKKxyxvGUvNXi/6RO8/AzHela9SMxs4ONMwQgV
         OtrPovKRc3NC/9QsGn1FsJkvppBNGhNOwEElDK6A9/dvFbNzhv5hHTX4DPpayAjA6ZEj
         uZvT7+5HbDytY3iedVObJdFWIJqv0NAu0+FHlKNddCiESWcDzQwvDryBApWoQZzviSkM
         HCtA==
X-Gm-Message-State: AOAM5319bgkDOXM306XDh+FxuCDtznUNqC7eFsCJkgFqlyxDRit1tmhe
	QgmoDtPu4WhHQQUiFvHiZ4GQlRR3KoM=
X-Google-Smtp-Source: ABdhPJxRbqX21kZVj6esytAEcrrmW8Dtk58/vb0aNBt9dQO4hLPxTgfVKO0n5TzkeeUPlCauiPM1Rg==
X-Received: by 2002:a63:c70c:: with SMTP id n12mr7786752pgg.102.1602957828701;
        Sat, 17 Oct 2020 11:03:48 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:48 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 13/32] dm-verity-img.bbclass: Stage verity.env file
Date: Sat, 17 Oct 2020 11:03:10 -0700
Message-Id: <fa8c5e1d1a0f249d3183eefcaad59ac4797f3595.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Introduce new STAGING_VERITY_DIR variable specific to this bbclass which
defines the directory where the verity.env file is stored during
<DM_VERITY_IMAGE>:do_image_<DM_VERITY_IMAGE_TYPE> task and can
consequtively be picked up into associated initramfs rootfs (which
facilitates executing 'veritysetup' and related actions).

By doing this we mitigate failures that were thus far associated to this
facility, such as

  install: cannot stat '.../build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.ext4.verity.env': No such file or directory

and

  install: cannot stat '.../build/tmp/deploy/images/beaglebone-yocto/core-image-minimal-beaglebone-yocto.ext4.verity.env': No such file or directory

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 170945ff9f8835ab7b0045b722c2a480b450ef90)
---
 classes/dm-verity-img.bbclass                    | 10 +++++++---
 recipes-core/images/dm-verity-image-initramfs.bb |  2 +-
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 6ad0f75..16d395b 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -18,12 +18,18 @@
 # The resulting image can then be used to implement the device mapper block
 # integrity checking on the target device.
 
+# Define the location where the DM_VERITY_IMAGE specific dm-verity root hash
+# is stored where it can be installed into associated initramfs rootfs.
+STAGING_VERITY_DIR ?= "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we need to
 # convert it to some better format. Let's drop the first line (doesn't contain
 # any useful info) and feed the rest to a script.
 process_verity() {
-    local ENV="$OUTPUT.env"
+    local ENV="${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.$TYPE.verity.env"
+    install -d ${STAGING_VERITY_DIR}
+    rm -f $ENV
 
     # Each line contains a key and a value string delimited by ':'. Read the
     # two parts into separate variables and process them separately. For the
@@ -39,8 +45,6 @@ process_verity() {
 
     # Add partition size
     echo "DATA_SIZE=$SIZE" >> $ENV
-
-    ln -sf $ENV ${IMAGE_BASENAME}-${MACHINE}.$TYPE.verity.env
 }
 
 verity_setup() {
diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 8dd8543..e791c19 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -24,6 +24,6 @@ IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
 inherit core-image
 
 deploy_verity_hash() {
-    install -D -m 0644 ${DEPLOY_DIR_IMAGE}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}/${datadir}/dm-verity.env
+    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/dm-verity.env
 }
 IMAGE_PREPROCESS_COMMAND += "deploy_verity_hash;"
-- 
2.17.1

