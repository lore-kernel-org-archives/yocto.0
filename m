Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web12.2926.1602957827024411823
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QM6a7qg/;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id r10so3394543pgb.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=77EG1VI/jdOfWy79DA9CpNyiaT75l8K9qun2PHrBAdU=;
        b=QM6a7qg/UwpBZVE+Vr+2Qy3d7f8dqyb4FrhwhGGP5dbasBN9f/cx60rLTgUqp6OmlV
         rRwMiahuKO4uOH48NC/8mItSlMy5ZuxlwIywozGm8BsuX9JKASqMTtTrvactYTLYb0Yt
         M7IpTTk7QYQ5C80fOAYg5ebkgTiZfWBJ9C9Wp/1b64UKxj7esRKLglKUzeiOZ+G6N+VH
         Ou4cexZG5i6EfitOsr674QRVpCOhT79IPG19MCmVcirTVsp2yaCya2jmmWEcm2nQCeGl
         Ih9vueDvEmY1e1VPwrcPiJYd6TjKMAq4U4MtmGdWda1g9lqaOEV8zlujwm1KBuUzm04X
         eVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=77EG1VI/jdOfWy79DA9CpNyiaT75l8K9qun2PHrBAdU=;
        b=aHazMNxLOVXYxkNKZd7ZPZS335AYcwzbwFIxQZVUa3mA/EANEvYFQVktB6H72q4CM4
         gBzfWHRGtUb3giK/kHHN7LT4RjgMwwFZBGN9T+vgONebP0eOHoVgHBU6PU+76MI4Af3j
         Ou6Dd2+BnE/PWKFJOMJda+bkit5FMJAVXcdPp+t4LqXQdlozp8TAHyg2E9C9HzxJ2pC1
         eb8HaDs6TbcNvuOqbIXkGkBYnVjzDmzu2qHBLlkF0KDRDEqq93+jG52YGPg+LZbWy9aC
         cENotSbtxbBrflOBJY59jZqa4Q8izpisyQng4gj1wL1P1pNcaJUDpKI3+VOEhBwKrtA7
         W1cw==
X-Gm-Message-State: AOAM530NHaRyczaoktpsG3Iiycjg/UCAXCoY5stP8RZgURUXJM22TJBx
	p+DLPuQemmIKq6Xe4qQWfp2cV8Lt08w=
X-Google-Smtp-Source: ABdhPJy3/GMCEWMfGrm0XIPkO+cbp06eCShbnVwbDhDKG48ztxZGSTc+XjhVzr0oOE9VtHsYe0FwQg==
X-Received: by 2002:a62:1bce:0:b029:152:9d3b:c85f with SMTP id b197-20020a621bce0000b02901529d3bc85fmr9310867pfb.5.1602957826418;
        Sat, 17 Oct 2020 11:03:46 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:46 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 11/32] dm-verity-image-initramfs: Bind at do_image instead
Date: Sat, 17 Oct 2020 11:03:08 -0700
Message-Id: <9e8522aeb5aaa5a2f57d4c291ab8e301be440fc4.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Bind custom actions in this image recipe in do_image() rather than
do_rootfs(), which can help shaving even dozens of seconds from duration
of 'bitbake <DM_VERITY_IMAGE>' command re-execution.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 03fdaf2f0464b28ab69114330a543b3c64c19a5d)
---
 recipes-core/images/dm-verity-image-initramfs.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 60e9892..8dd8543 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -14,10 +14,10 @@ PACKAGE_INSTALL = " \
 "
 
 # Can we somehow inspect reverse dependencies to avoid these variables?
-do_rootfs[depends] += "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"
+do_image[depends] += "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"
 
 # Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
-do_rootfs[nostamp] = "1"
+do_image[nostamp] = "1"
 
 IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
 
@@ -26,4 +26,4 @@ inherit core-image
 deploy_verity_hash() {
     install -D -m 0644 ${DEPLOY_DIR_IMAGE}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}/${datadir}/dm-verity.env
 }
-ROOTFS_POSTPROCESS_COMMAND += "deploy_verity_hash;"
+IMAGE_PREPROCESS_COMMAND += "deploy_verity_hash;"
-- 
2.17.1

