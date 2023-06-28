Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECFFDEB64D7
	for <webhook@archiver.kernel.org>; Wed, 28 Jun 2023 19:28:01 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.3170.1687980475416276392
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jun 2023 12:27:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=TkMKk1Rq;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-57083a06b71so1843027b3.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 12:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687980474; x=1690572474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wnGVTPha2e5RP55EwpppclYSjyuON6sAYcyttQghyQA=;
        b=TkMKk1RqQU33ZVfklsygGuuh0b21J4nxLTxC1iI0HExpGQLruzarZlYJFjfamvtalH
         gpwGOnvvobubZJRwE+PUYCxdMk59tsB97oi6iKANYb7bc73T6F6nUWVqRPr8wdk5iOWc
         sSyucM52tOImNMp60TeGY8RDUQpzuoWEpqu2imNA0Bbgk+74mVyJ5CLlLrX+ZllTxfOc
         AnAhWkuTSyEVgddEXxGHDdvAeptIz6mS5lAduPnYqsj/+6KxXS8AxHHuuX2CjMYCr+y9
         jDVPZOfWo7xHwwuFVnIX11pdvNXRFENu9tBCLws9bYDiW8lmIRdv4ICVrPhl+QJrYcZr
         xMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687980474; x=1690572474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wnGVTPha2e5RP55EwpppclYSjyuON6sAYcyttQghyQA=;
        b=GeTrbiFkrYifKe/zVsEp48A6B3En84gXDXaxvQfjO9tfSt/bRIXM65mvZPCbFNeQzF
         Rk6aFbI+u9GvxtVjCA9bvZBgeVDCUAsMUHsn6iWuqGnQm3FgCM4Gp3M/cmAl+4NTm5iq
         +n2w25XqYdl6LIU08HYYXWefpF876P7Zc7sCwfOG9ZsbY8Yq3yb0qdXTuhYjB6jfxwyu
         o/bDHigfoBNEThjPNm9l4ju+Wn3v+YyBq7noMFolLDig26PGbhTb0ZhyTGJa3/Q5DdK4
         eHAW8JUw2wRhZASuyag2GDgeweNMU9cAebnLtF7bJ/vmbzv1MEo4t591z4qU5fD44WXH
         3V6w==
X-Gm-Message-State: AC+VfDwm7zlwXbZuyEK7hsr1/oqf6aycwGX+fpjJfbr347zXdNdEyO+c
	cYzroTZAcPoBLsR0qfOsMh7kFmQ76ME=
X-Google-Smtp-Source: ACHHUZ7bh/W7tN9bQ5JT5AKVQcsr7hrIxcMpPzyTvoMWIjbvzTcKb4CYJxvqWqcudYXAlW21QcGbwA==
X-Received: by 2002:a81:5285:0:b0:561:e8d7:ac6b with SMTP id g127-20020a815285000000b00561e8d7ac6bmr36834276ywb.49.1687980473243;
        Wed, 28 Jun 2023 12:27:53 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:1313:e2a5:a596:c99])
        by smtp.gmail.com with ESMTPSA id l67-20020a819446000000b0057031fa8c08sm2529463ywg.14.2023.06.28.12.27.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 12:27:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] qemu: move qemu setting to image and out of layer.conf
Date: Wed, 28 Jun 2023 15:27:52 -0400
Message-Id: <20230628192752.3209428-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 19:28:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60469

I suspect its better form to have these in the image definition.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                             | 2 --
 recipes-core/images/security-build-image.bb | 5 +++++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 334a945..05f678a 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -26,6 +26,4 @@ BBFILES_DYNAMIC += " \
 # Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
 INHERIT += "sanity-meta-security"
 
-QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
-
 addpylib ${LAYERDIR}/lib oeqa
diff --git a/recipes-core/images/security-build-image.bb b/recipes-core/images/security-build-image.bb
index 411cd20..9c82049 100644
--- a/recipes-core/images/security-build-image.bb
+++ b/recipes-core/images/security-build-image.bb
@@ -18,3 +18,8 @@ inherit core-image
 export IMAGE_BASENAME = "security-build-image"
 
 IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
+
+QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
+
+# We need more mem to run many apps in this layer
+QB_MEM = "-m 2048"
-- 
2.34.1


