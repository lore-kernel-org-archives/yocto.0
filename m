Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CD79C48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:14:10 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.101204.1709565248855424611
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:14:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IbPJmPlG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-412e795f458so4180475e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1709565247; x=1710170047; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=b1ph0KtXQYwayuM3oEe3tU1rmzwUZeEqaDeQ1N+u6VE=;
        b=IbPJmPlGv63p4Iyr2fxwJ3iURH4rcEuZd4ZLvlnYb8c0xp9/EDbSVrbdaOUS/PBH03
         lRhrci388LV3AjxXO54znwz9jyED/p2TZxNFns+WXyRvWieaUrZaSh57ZoSJhyRkr20j
         LOOcBMrgJGGlvp5LekyONalVVJd2RTpMZC5tY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709565247; x=1710170047;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b1ph0KtXQYwayuM3oEe3tU1rmzwUZeEqaDeQ1N+u6VE=;
        b=bu8UHEMRR24o+Ism5NFSSNDorSIMvfVgL3JH1YjW/m6y7v/lN11hlbAWKuG8JqzAVf
         qRuj1eAd4rksYIjrQZA5NQKmR66A0Mu0RK1mVm720OTPvbijXt6wyIL5hyYHDdODQWJ2
         G3yQjd6IialTi9yGuQW1OhJg1MXd3uGy2oHUtlaX54SFcx95l+4kgOyp+vcT1SBg6K1y
         N9oI0GUoMM5xIbL9H11ZGXwSC3FUK4kIhh67GLeK1THxeL4OERZnQKY3DCodqupbr0D/
         MPNc8SAwsGTV3WLwFa6LOIemoMj+RkbB/HUTDSD47u6p8+v0mTtZupj8ty48gHRIsI8k
         lLOg==
X-Gm-Message-State: AOJu0YwvqY/zgS6Ywlf/yv3aV7nXywDCJ8czqWdupl8PyCkbGjGW465f
	0cbHpD2udVLiVxq5yQHZnTbYYfzz946tNuwURSeV4oWfrAc1YNkgerZMYR1A0JAXCkAPKhvbILd
	o
X-Google-Smtp-Source: AGHT+IEM/aaUIu23nrqAw8UrdMMKtK+uE7mNL35AHDWjaX6NN/mv68dOeBsO7t1VKARkjnNZchUzYw==
X-Received: by 2002:a05:600c:1d87:b0:412:e823:7db3 with SMTP id p7-20020a05600c1d8700b00412e8237db3mr894010wms.16.1709565246914;
        Mon, 04 Mar 2024 07:14:06 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:1372:82d7:9b60:58ea])
        by smtp.gmail.com with ESMTPSA id o1-20020a05600c4fc100b00412e97127c0sm337752wmq.24.2024.03.04.07.14.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 07:14:06 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Switch poky-altcfg to use ipk as the package backend
Date: Mon,  4 Mar 2024 15:14:05 +0000
Message-Id: <20240304151405.2093292-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:14:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62665

Since we plan to have better "binary distro" testing on the autobuilder
and we plan to primarily use ipk for this, having ipk based images available
as part of our builds is desireable.

Since we want systemd based images with ipk, it makes sense to leave standard
poky using rpm images but switch poky-altcfg to use ipk.

Whilst late in the release cycle, doing this now for scarthgap gives us a good
platform to build off in the long term too.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index fd8335f..4d0f258 100644
--- a/config.json
+++ b/config.json
@@ -127,6 +127,7 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "extravars" : [
+                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'",
                 "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "extratools" : "${EXTRATOOLS_URL}",
@@ -140,6 +141,7 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "extravars" : [
+                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'",
                 "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "extratools" : "${EXTRATOOLS_URL}",
@@ -198,6 +200,9 @@
         "altcfg-hw" : {
             "DISTRO" : "poky-altcfg",
             "BUILDINFO" : true,
+            "extravars" : [
+                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'"
+            ],
             "step1" : {
                 "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
             }
-- 
2.40.1


