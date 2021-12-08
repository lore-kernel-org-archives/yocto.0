Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42750C433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 21:15:34 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web12.2444.1638998132926827783
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 13:15:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VPi7gLrl;
 spf=pass (domain: gmail.com, ip: 209.85.215.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id r5so3151523pgi.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 13:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cK9fol/nucjOHtuI0wSoSznfL+izYkZVw/KqUrogruo=;
        b=VPi7gLrlOp2OIp/0VhzEfZUors6AecLg9rLrbO1lFJWw7BtgDgpO7U55EVT/lUPCkY
         hH41aWcqlnjl+Jqi5ZtVAb7/oOwo2mh7CQHWmLd2eodPxnGPaHgdrLDvyLKvyAsyZRha
         GfuytXqXfL6LPE0bv5rYnfKOJRINsZhvKPiYmorNHn+LBxLRPEScWgxpke1eJbjvV6xb
         PKH5ZfDxtF3e3ibeCyz0e+pYQXStFeM0WxmrQFs4MR0nQbtN3uWN2noady6WFCZZjFP5
         6q0ZZbMRPIS2DXwf5urXqY7QaUzGlMrDOG7dizh/eAP7UPWG6W7tL5NnKD78i47QtLTS
         4lfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cK9fol/nucjOHtuI0wSoSznfL+izYkZVw/KqUrogruo=;
        b=v9xhHpS7O6B7lPNgxRB0AE25RQ97Kp6UEhiBCgOBcTlZXlhrWwTvYxGhAILHuQLvkp
         3nsm10bHyr7YZqTLLJ+XAKGYi1b70A8TFT+Ry3TA+qJS9eB3Pv+jpWnpZSvqkRbAoWlE
         va0M5Q7ArfMKUw6I/0pCL8l0CKzdkPTjOvgk3MYO3DBT6wDCEskLm0iXoeA0mKvCydyE
         OfsNoU63X6uM+De3NEJGWcw/7shrIOO+mepTS3/oaIHoljla8NqWbEPa3CTgO0oY4RJz
         JLGy3P4ly34k/O1I5+miJy5NhLsfHY3+V5FsoluT3VtDUlSSqAjRlY0y7RDMfMhOjgpq
         dX4Q==
X-Gm-Message-State: AOAM532G5n5g9J4aNkUaJ091f+rth0pQUJOILzfEpo6BzKYjffRnqifd
	9dm5YyiVSX1KjV8GG4gEOTKgedXEY4Bl8g==
X-Google-Smtp-Source: 
 ABdhPJzHP7lwB6JOQ/s3SIBhvpJ2yLKhlaLsPSbPIrqJXHvBSIw12ZxbRAFpeEHrU4v79edTDyPJHw==
X-Received: by 2002:a05:6a00:1821:b0:4a4:ab04:39a with SMTP id
 y33-20020a056a00182100b004a4ab04039amr7893001pfa.76.1638998132251;
        Wed, 08 Dec 2021 13:15:32 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::ce68])
        by smtp.gmail.com with ESMTPSA id
 b9sm4879896pfm.127.2021.12.08.13.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 13:15:31 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] u-boot: Replace virtual/trusted-firmware-a
 with trusted-firmware-a
Date: Wed,  8 Dec 2021 13:15:26 -0800
Message-Id: <20211208211526.3287971-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 21:15:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55523

meta-arm has dropped exporting virtual/trusted-firmware-a and expects
direct use of trusted-firmware-a on depends sections

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 7916e45..9108a36 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -8,9 +8,9 @@ do_compile:append:rock2-square () {
 ATF_DEPENDS ??= ""
 
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-ATF_DEPENDS:rk3399 = " virtual/trusted-firmware-a:do_deploy"
+ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-ATF_DEPENDS:rk3328 = " virtual/trusted-firmware-a:do_deploy"
+ATF_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 
 do_compile[depends] .= "${ATF_DEPENDS}"
 
-- 
2.34.1


