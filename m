Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6805BC48BC3
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 20:23:51 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.17133.1707769426828027484
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 12:23:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cnZkccDC;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-68ce2fe86e3so1081246d6.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 12:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707769425; x=1708374225; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xf+k/hp8bQdYqfH28ShXCKQOe6CzUtC96RrgMMnp4hw=;
        b=cnZkccDCOEtzP/gL/HLpSNO+hcYLUikjNnM9S1xuVSKItsqN7UVsbVuSJNLc30qSZ6
         6ECVRn0Ren6KuCnOAquA7ITBK22nSjQeHuJsg/lc2lCjINeHiQbfJo0R+ZEDX8CCBkj3
         JVCoBbk7gAV1sD82cAICxLYm/1X00xYmBCMYgV0w97X1dVMOjnCq4O4GfAlcc5OR+4vn
         XGKCjAV/wrAg8Hthv1mkD7tpHvh0/Ky+HvcgR8FHgqJciohr7opc4wlYiMlPL2w+Kne1
         FSg7OgBvdKnLoDENGc/XT5vJLzzdlRFR+Rq4tLgyxmHYhvoTrzmochbq0qmGwXRi7zQc
         OsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707769425; x=1708374225;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xf+k/hp8bQdYqfH28ShXCKQOe6CzUtC96RrgMMnp4hw=;
        b=v9VAuuSApMtoxE5lBTetbYFX9ZmrkbaFfmcL9d9s1lAKUQgQQUCBuCx6AA0f044n6l
         8juqXzzuQbhxASBQWgFiOio4qMyh8pKfN3UPDfzWpx2IteakujjtD5R/bEZKZ7JIWwhe
         9bjAZqDXek/OW3/oT/1dM17nktLG4rjWVobZI8IO0hRAY2mTKcJZgAFo34MHX86PgrA7
         BFYvpQgH+706u7qldzoms0AjPVXM8mbrplacsm7JW0ZYTVNs3uSKp97sEQ7W1m3JFClm
         LurKmas3x2wbqOkFtT+sr0LlRXNAF0KXKZKStrFszjXsBsfjN7qAa9dwz0wAEx0UMcOn
         mssQ==
X-Gm-Message-State: AOJu0YzO53tyZBtrVyIQnBvwmygcS3BB42yNOBKEf7+4130Uw6U6wW3z
	JC78iR+8zwovzAqPwW9J5DuDVYJ77Gevm1kuVXe/AszGVsoyRLPb9ISRKs2p
X-Google-Smtp-Source: AGHT+IFHaQ6zmL82st+6WRQoWbzVz6M0ygkpthsr7DGTWqLFmYUpyw33Nk1f4o83GnerpYMYJvzhcQ==
X-Received: by 2002:ad4:5caf:0:b0:68c:c43f:f988 with SMTP id q15-20020ad45caf000000b0068cc43ff988mr11705050qvh.8.1707769424791;
        Mon, 12 Feb 2024 12:23:44 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id oj9-20020a056214440900b0068d1c9801aesm477233qvb.66.2024.02.12.12.23.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 12:23:44 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 1/4] rockchip.wks: specify fstype
Date: Mon, 12 Feb 2024 15:23:39 -0500
Message-ID: <20240212202342.37778-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:23:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62464

If the wks file doesn't specify, the fstype is assumed to be vfat. Most of
the partitions in the Rockchip layout don't have filesystems. Implicitly
setting the fstype to vfat causes wic to format the partitions. Also,
it doesn't make sense to format the rawcopy partitions as vfat, just to
immediately overwrite them with binaries.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 wic/rockchip.wks | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index fac0b8f70112..b14ec0d1690a 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -17,12 +17,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K
-part reserved2  --offset 4096   --fixed-size 4096K
-part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K
-part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
+part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
+part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
+part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf        --offset 12288  --fixed-size 4096K    --fstype=none
+part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
+part /                                                --fstype=ext4            --source rootfs            --label root --use-uuid
 
 bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
-- 
2.43.0.76.g1a87c842ece3


