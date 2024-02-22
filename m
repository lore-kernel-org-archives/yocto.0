Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98341C48BF8
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 10:07:56 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.9667.1708596472600086440
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 02:07:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QHJHdGvu;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: haokexin@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1db6e0996ceso56258575ad.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 02:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708596471; x=1709201271; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QdWCXes00/YEsnINZT6fZbchDWA2r9fMDdiawsIgS3M=;
        b=QHJHdGvudX18RJVNybnuBHpwTTRU2Kzr7edWso0kCdse/TXVCsUOp11ijqu0v43Giu
         Vqi+8p4u7Rp57TUz8YYE4kqbKAlxyNl9AnGefVDgPSNzsdJ+bAe8rFhCx2GjrvuodLUq
         eGxWJXlXreptkAaFLMDOhepZ8ktickppr5MIhK2Z4Na8A0iopt/Ryo8MOSBIBTRoTeX2
         8m4tQVavTsxuv+BbHes5qX9nIsqsEJDBEPEDqBI4Ggc0lGXCulq4okIV3bsVATudCsIr
         LHnLXSxoCjo6xvWUgZa4kKskI9FeMmZJnOF9ijknbPR+1RbR3ywNBkyx85JHt26G6UZG
         y4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708596471; x=1709201271;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QdWCXes00/YEsnINZT6fZbchDWA2r9fMDdiawsIgS3M=;
        b=QpeV7R8VL4jdbAqgKxcPwROpsq7lcwdB5UyGGS51B7J5/PDIK5bv/XWU9YOL752IGF
         7QnEGQGLVeHH1G9FJ9Gg6bzDM6tGwwSyaqNihprkN1OFJu43TANoetTD1Btjy7DDuzw0
         iEQuLDTOJCK3Qbpms0HW7/RJOxiESs1uJu51FemKcL+0fpbasgX046qR+h3tax/RfC8R
         hhvlj2rX34ZtqsMvXkxQZXx4I+AcL3G0/jc3sjNS4t9oT8bTA6P4BCf75hTEasmfhmWS
         uLr/ZaLojchAXh+1WOG2xLsaxUGRaOuUC5tZpWmxwqz89Ta0ysXqr5lr+UgubIXpiUg/
         PBog==
X-Gm-Message-State: AOJu0YyDBEA+3WMVXbZs2QaK9FfYMcwhTr63NGXeOBS/d8gqiVQpEYr+
	39DNMWsRHPVxndPJJd1nGPS75K/fL9DiymKOxkAZ/838ASFhopk6sjVTOq5U
X-Google-Smtp-Source: AGHT+IF1YZaKe1Toz8rHXAbWhrszJo2kxM7NIdDOrFnpiWxwUusPWIQ6iMegk4FTA6fNHD9NZ5gnGg==
X-Received: by 2002:a17:902:eb8c:b0:1db:e245:8c35 with SMTP id q12-20020a170902eb8c00b001dbe2458c35mr11294136plg.30.1708596470970;
        Thu, 22 Feb 2024 02:07:50 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id mm12-20020a1709030a0c00b001db45855530sm9585449plb.290.2024.02.22.02.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 02:07:50 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][PATCH] dm-verity-image-initramfs: Zero out the IMAGE_ROOTFS_EXTRA_SPACE in initramfs image
Date: Thu, 22 Feb 2024 18:07:38 +0800
Message-Id: <20240222100738.919774-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 10:07:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62566

From: Kevin Hao <kexin.hao@windriver.com>

It may trigger the following error if we set a big value to IMAGE_ROOTFS_EXTRA_SPACE.
  ERROR: dm-verity-image-initramfs-1.0-r0 do_image_cpio: The initramfs size 5308416(K) exceeds INITRAMFS_MAXSIZE: 131072(K)

So zero out it for initramfs image to fix this issue. This is also what
the initramfs images do in oe-core.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 78f7b49b27d6..b6d3bdc424d2 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -17,6 +17,7 @@ PACKAGE_INSTALL = " \
 # We want a clean, minimal image.
 IMAGE_FEATURES = ""
 IMAGE_LINGUAS = ""
+IMAGE_ROOTFS_EXTRA_SPACE = "0"
 
 # Can we somehow inspect reverse dependencies to avoid these variables?
 python __anonymous() {
-- 
2.40.1


