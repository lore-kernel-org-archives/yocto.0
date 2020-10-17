Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
 by mx.groups.io with SMTP id smtpd.web11.3036.1602957826136920814
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IsIe+deA;
 spf=pass (domain: gmail.com, ip: 209.85.216.66, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f66.google.com with SMTP id gv6so3238889pjb.4
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=zjXwEF9ZvQblqtD9TppUbSK7VF7e5CA9jcwWsgoyMwY=;
        b=IsIe+deAnkx/SAy1DWzjF6ght0eKhovPuo6w1e6HyaNAIvYrfWGZj5osAC9mB1KQfN
         FP2VYP9mJIICb8EQ2Csxd4GXFKuY4nOGqVPqDtin+kwjHPzDvYScn4BXm0TCTbqh4A1Z
         GO6BrK6eJYv1i7EqKU+WAnAIesqYc1rH8uznDoZKRY/vE+87I/PrCBpWZnJ2SzEr9AJs
         KcuFSVb2TNJLEBdwYUU/cie/WyYmUsD/9eX+VT47Fm64PqPhTsUvE/2FPYMkvtvSI5JH
         BD0bzDBnhklpGhxsTeaCZUqHLTHrDg8+SuM1jf1Aec1mR/UP27hlEJA00NqF+KaUOlIq
         VLSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=zjXwEF9ZvQblqtD9TppUbSK7VF7e5CA9jcwWsgoyMwY=;
        b=Wc9Zth+fFdeJXd/ITyTVCkomxAOv4Tjgwy5BlvHFEPEhUginIIqt1HNBBQX6cxZt/W
         Q4fElNS3v1m/TUN60TSXqpBJ5XYjpayqTQxZA30B/9QE8aHZx7wRMxDHdMTYT6oRyU06
         8cUEbzEV76Pz03OMtxXSZr+hY08Yobk6ldKRzxxGlsHTr7Uq6l2a/9dLF6QVfv/iUWPV
         PX458bXRuoVYgidwugtv3DdYds+OM8y8gDU4m9xRcPzABkC02mYQ3aEzjYO6C23JKn44
         MrVQw28FciioCXFdshBUKCvNU7IexHIr7Eqz2Cldr8EFMVWIjMyywn04j/SMGq6kANL/
         vIvQ==
X-Gm-Message-State: AOAM533MJb8qCocBgvn2BS/fGu4CxNj8iFSlEeDJTG0q56fFSpZZq7cG
	KtAVQ/jesx4bSSyLycG+vtRxjQA1wgo=
X-Google-Smtp-Source: ABdhPJyemtxocQMKkab7c+/caW44zzGB6TWynUznmGcrGt0b1/lDnefyS7AhldI0tnJYC9DYPzb67w==
X-Received: by 2002:a17:90a:f184:: with SMTP id bv4mr9469201pjb.1.1602957825488;
        Sat, 17 Oct 2020 11:03:45 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:45 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 10/32] dm-verity-image-initramfs: Ensure verity hash sync
Date: Sat, 17 Oct 2020 11:03:07 -0700
Message-Id: <6b600629c6031f53a5d07e0decf1a9c7fdfd6616.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

In order to ensure that the bundled initramfs always contains the most
recently generated DM_VERITY_IMAGE specific root filesystems' root hash,
we disable the timestamp for do_rootfs() task here, meaning that the
task will be re-executed whenever some task that depends on it executes.

Without this change, executing e.g. the following sequence

  $ bitbake <DM_VERITY_IMAGE>
  $ bitbake -c clean <DM_VERITY_IMAGE>
  $ bitbake <DM_VERITY_IMAGE>

results in an unbootable <DM_VERITY_IMAGE> rootfs, which fails like

  Mounting /dev/vda over dm-verity as the root filesystem
  [    8.729974] device-mapper: verity: sha256 using implementation sha256-generic
  [    8.810784] device-mapper: verity: 253:0: metadata block 3017 is corrupted
  [    8.813018] device-mapper: verity: 253:0: metadata block 3017 is corrupted
  [    8.813912] Buffer I/O error on dev dm-0, logical block 2992, async page read
  Verity device detected corruption after activation.
  [    8.889548] device-mapper: verity: 253:0: metadata block 3017 is corrupted
  [    8.891060] device-mapper: verity: 253:0: metadata block 3017 is corrupted
  [    8.891456] Buffer I/O error on dev dm-0, logical block 2992, async page read
  ...
  [    9.135707] EXT4-fs (dm-0): unable to read superblock
  [    9.142897] EXT4-fs (dm-0): unable to read superblock
  [    9.145393] EXT4-fs (dm-0): unable to read superblock
  [    9.147905] FAT-fs (dm-0): unable to read boot sector
  mount: /new_root: can't read superblock on /dev/mapper/rootfs.
  BusyBox v1.32.0 () multi-call binary.

  Usage: switch_root [-c CONSOLE_DEV] NEW_ROOT NEW_INIT [ARGS]
  [    9.243274] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000100
  [    9.243701] CPU: 0 PID: 1 Comm: switch_root Not tainted 5.8.3-yocto-standard #1
  [    9.243853] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.13.0-48-gd9c812dda519-prebuilt.qemu.org 04/01/2014
  ...
  [    9.248548] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000100 ]---

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 4cf81a584773c9e946595ded9193723ebd6425e0)
---
 recipes-core/images/dm-verity-image-initramfs.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index f9ea376..60e9892 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -16,6 +16,9 @@ PACKAGE_INSTALL = " \
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_rootfs[depends] += "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"
 
+# Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
+do_rootfs[nostamp] = "1"
+
 IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
 
 inherit core-image
-- 
2.17.1

