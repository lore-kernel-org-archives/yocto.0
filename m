Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web12.2935.1602957836327403289
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bPYkz1+k;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id j7so3403719pgk.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Ozet/Tr45xy96v4DW/eQMHhI6XgiGOWyY6+EfXwxC2w=;
        b=bPYkz1+kZ9JgPtvPWBffVH8kDMs4fU0sB6kWggUdAK2FJ3cA5imqbPHGTDKkN+dFUR
         GKYlYHi8af5elTYKaNaquReNusBX4gUOi+vAwCJCr6OOO+fr6bc3HoagsxkA9rYAeh4q
         I/+ji60ZJXJO3OmDfErlvu1AShM2y3gMTlermHqmmd6yf+kxYuwN+++VXlPNbyClxx+J
         +FoiyuaTg3OtmskPqN0mcbh/pfIUlHv+FzBbgEdBWy0vPaBwITknczd21mQV3/XGPaBC
         b21ARAcy1WSd4It6xxPLLfh/LK1k7zCdyFLwdTfGfGGkn1kwhHQ9dqIWxn5TMuw1Msrd
         gVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=Ozet/Tr45xy96v4DW/eQMHhI6XgiGOWyY6+EfXwxC2w=;
        b=MpkUWW5QcT21J0v9I4E007tcq6a8sSsj2Cy7JH0NNKPcahza1VRoIW2ukyKlv7BIGT
         H5CqZPGne8KTf4z9BSpnALmHXulSVYYsxl7WbSehs6wWqx9Mu4RCSFOxhNlLdfbGBurz
         5qz03JXvLeeeYj3qMkzwrI7WQCAfvN6DntYlXxFMVo4h9g65fPshJFdmd0rt0ESJ4y98
         QeOzXm1wW0YW7XwxEyUVdNxoAXwWrHt+GtPXciEt4GQQCEXXq0nsYLvi4lv61kvE+s6p
         FkRzgLVKwhg9njllAJZ/z7zndAk5mFAioVfz3MPmpsI1S3BnSmw/dx4RfLc/nT4c7rB8
         MMZw==
X-Gm-Message-State: AOAM5332x6XsDlrXm5AF2XIlrM+XvcvxVLrAclAfUFB22+LCCuSguZ6U
	NqmSKOLwciYUkDtm/Tn7oFK/lVql71U=
X-Google-Smtp-Source: ABdhPJyomBryWvf9wegxilou8K0Gfxk1Fqsm3I2VNzuTZpxc9kvuzyIkvWsaVRn1xYUi37xS1AUgGQ==
X-Received: by 2002:a63:2406:: with SMTP id k6mr7812693pgk.366.1602957835711;
        Sat, 17 Oct 2020 11:03:55 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:55 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 19/32] beaglebone-yocto-verity.wks.in: Refer IMGDEPLOYDIR
Date: Sat, 17 Oct 2020 11:03:16 -0700
Message-Id: <6cd5fc4921bb37881d94e399ccf8a1842189304f.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Since dm-verity-image.bbclass effectively injects

  <DM_VERITY_IMAGE>:do_image_<DM_VERITY_IMAGE_TYPE>

dependency for do_image_wic task, we can change verity rootfs artifact
reference here from DEPLOY_DIR_IMAGE to IMGDEPLOYDIR in order to
mitigate following breakage which was observed when bitbaking
<DM_VERITY_IMAGE> target from scratch (using sstate-cache provided
artifacts):

  | wic.filemap.Error: cannot open image file '.../build/tmp/deploy/images/beaglebone-yocto/core-image-minimal-beaglebone-yocto.ext4.verity': [Errno 2] No such file or directory: '.../build/tmp/deploy/images/beaglebone-yocto/core-image-minimal-beaglebone-yocto.ext4.verity'
  | WARNING: exit code 1 from a shell command.
  |
  ERROR: Task (.../meta/recipes-core/images/core-image-minimal.bb:do_image_wic) failed with exit code '1'

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 4602d6420835a603fde6f3f25a87b19cbf721ed6)
---
 wic/beaglebone-yocto-verity.wks.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/wic/beaglebone-yocto-verity.wks.in b/wic/beaglebone-yocto-verity.wks.in
index cd1702e..658018b 100644
--- a/wic/beaglebone-yocto-verity.wks.in
+++ b/wic/beaglebone-yocto-verity.wks.in
@@ -11,5 +11,5 @@
 # This .wks only works with the dm-verity-img class.
 
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot" --use-uuid
-part / --source rawcopy --ondisk mmcblk0 --sourceparams="file=${DEPLOY_DIR_IMAGE}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
+part / --source rawcopy --ondisk mmcblk0 --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
 bootloader --append="console=ttyS0,115200"
-- 
2.17.1

