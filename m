Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9617CE79A4
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 20:49:12 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web11.3353.1695674947005464728
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 13:49:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wx2IFSKz;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3a86a0355dfso4373611b6e.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 13:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695674946; x=1696279746; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bN9F+GIttQdVYfnRv8kBpkXMhd30RBoAxxdWg0FqQdk=;
        b=Wx2IFSKzf43QJsOHsnbJO40bUDgMSBwGMdFmYxm6T4RTDojtWoaToXrcoke5wYjhvc
         39tNQ17SIRl6YFO2NFeyT8uBnAXnXK8ne/q9Aczy3k2QkjUw7m0CS4Mp9Gk8QqlZ1LO1
         mRdnYsZjqpbFDYAo5KGOk8YrxzPZCIQABvMH1Ls3+LG4kBVGEy3JWJV6xf94Fb8ABj6+
         JeaFB9BcyT4LgLsOv6m2eRyXX5jqrPTBugv4Bjsxchn1AF+ph2IZt/CHjk+gTzzhOcQp
         7q9mxWhs6d3OY6V7DM9cb18RcLnfY/T8zVTs7lTIbOlIQ+qMaj83IyggxJcBKG1HCmo0
         iXtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695674946; x=1696279746;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bN9F+GIttQdVYfnRv8kBpkXMhd30RBoAxxdWg0FqQdk=;
        b=VPnr4ne/U1a+pYEIsiODBiL0rbY9dtUXyfLLn8RGVCtQGh5CpBMqjfgK9FMBm0mzXx
         aCH2+6kvHCKTMVREu8chWmi9S9/Xxz4twB2u4fVI2WQPMkpye1Y3XaylrjB4bKQNZ26K
         TiSphGOk7vKMFYCktbsiVfilrOaBSF+L4tyE5SmGkt11oFAQazh735EMp+z9C0TcIUQV
         01VPGmvn1wZ1HRgVz0kxc8F3ZQBAEcm1beMFA953nJ6JKEfxMb3s+nnTUuG9zcqLiB/7
         /n1jM5/8HvjHzk0v6Ll4qD5RsbvJYWz3h/xNSoIu3ZB7wPQ2JfFwqVtmwYSiCxatp0Kn
         oiQA==
X-Gm-Message-State: AOJu0YxlpOmEgqNRCoGvczLh3SoDWi0koYA40z2DCuZIaBO9HsQJWR54
	kbAbYAQd1yAfliNhylDj2JD0Cx66Nuk=
X-Google-Smtp-Source: AGHT+IFXLelCWiomJMOxcb0WUH/EpT8beoISZ/FOHpQZkA0adMKicBqmgmbeapb6tNnfu5Ygp2foCQ==
X-Received: by 2002:aca:1008:0:b0:3a7:53f1:16ac with SMTP id 8-20020aca1008000000b003a753f116acmr7493347oiq.20.1695674945621;
        Mon, 25 Sep 2023 13:49:05 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::fc13])
        by smtp.gmail.com with ESMTPSA id i14-20020a54408e000000b003ae24b38f99sm1254492oii.2.2023.09.25.13.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 13:49:04 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-raspberrypi][PATCH] rpi-base: wic images depend on the kernel
Date: Mon, 25 Sep 2023 14:49:00 -0600
Message-Id: <20230925204900.1218494-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 20:49:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61106

wic images depend on the kernel device trees, and therefore should
depend on virtual/kernel:do_deploy to make sure these are present in the
deploy directory.

Most of the time, this dependency is satisfied indirectly since a rootfs
image will depend on the kernel, but add it explicitly for the cases
where it is not.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 895fcfe..64f60ab 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -149,6 +149,7 @@ IMAGE_BOOT_FILES ?= "${BOOTFILES_DIR_NAME}/* \
                  ${RPI_EXTRA_IMAGE_BOOT_FILES} \
                  "
 do_image_wic[depends] += " \
+    virtual/kernel:do_deploy \
     rpi-bootfiles:do_deploy \
     ${@bb.utils.contains('RPI_USE_U_BOOT', '1', 'u-boot:do_deploy', '',d)} \
     "
-- 
2.34.1


