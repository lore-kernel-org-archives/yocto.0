Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1458CC433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 20:29:27 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.1769.1638995365741043656
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 12:29:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EpMPHdIM;
 spf=pass (domain: gmail.com, ip: 209.85.160.172,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id o17so3393079qtk.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 12:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=deVdYKNTdS8biK1U+I8/PDRaNKrX3wFdkC8ONC2wFW4=;
        b=EpMPHdIMPGwZdqqTdDhig+4eJxTll2wCZ1Oy08nxY4q3cicjLeOFdALn0kn4/ZLD52
         4H6gLVc/h6YKnOqczgNTolzUZcMDJ/aOl+AvRG9kcF8xTXXt+rUrucIjZKZbxiZ1X/k5
         ORArFfVQVNrNHEaFbP6tre3Pds1PMP/7Cjkl6Izka4GlyvY04LaDl9paa8nIBPhbkjMl
         pTYxRrGl4TR3f4d5iqArHP/6WGQKl/3u37vd55Hn3kEZpPNhEwzOUlMiQXzgB5iWsi9A
         pBBrsfybRc/Nkb31jknMOJfngemIrQcvd9+p0csAynCw0XnzIpY1JiabCQEuJQ9lXUYO
         Qyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=deVdYKNTdS8biK1U+I8/PDRaNKrX3wFdkC8ONC2wFW4=;
        b=odjO8Z+ZlB+6JNrCBx39gygo906MLuvWu/et644o4Fe/gFwXQk0En1xJtAAI7GR5yB
         Np8tqfEQaFmsnSwgZ4HDGFOKMmwit7+5cGGF410hME9OULDknBlzlfs+MbO1Ql1GV9zU
         z8Ns9O6Jvj5mm5QRmqgDHGymoh/dPR7V7nONpK8BfM/4cZThTXqX+S6jWMMyEaLUFt1p
         HUW00FPvxgYoGXF/px8GAa30SwKsOzgru46Ck1JWZHDixM2278f6ArnR6NIYfPBPClt7
         MxB4+ljCxaSnGLOH1Iq4fqSEk2QdQ5LYcK8oKQ3yAn8Mx6nqakMB7T9jbfIyG6LcWDGA
         8wpg==
X-Gm-Message-State: AOAM533ms8L/l/3qnsx3sGvh8sVWqonmIzEKAe9bG8mfbBEcrklHX4HB
	/zKKjVQRFbqxEM39otacXVvCmCYGIZo=
X-Google-Smtp-Source: 
 ABdhPJzbqaKQMY7Lk3IeB1NSg4MW2xymNUyJkQwWiBRJU2UveTQROI/U0qaKucWlH0ToWgxBr4mhRQ==
X-Received: by 2002:a05:622a:1010:: with SMTP id
 d16mr11040294qte.61.1638995364528;
        Wed, 08 Dec 2021 12:29:24 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 y73sm1814484qkb.113.2021.12.08.12.29.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 12:29:23 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] u-boot: remove "virtual" keyword in dependency
Date: Wed,  8 Dec 2021 15:29:14 -0500
Message-Id: <20211208202914.3860-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.34.0.rc1.14.g88d915a634
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 20:29:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55521

The latest trusted-firmware-a recipe in meta-arm no longer considers
trusted-firmware-a to have potentially multiple providers.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
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
2.34.0.rc1.14.g88d915a634


