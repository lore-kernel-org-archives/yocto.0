Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BE6FC19F2A
	for <webhook@archiver.kernel.org>; Thu,  4 Aug 2022 14:25:05 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web12.5444.1659623095515187326
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 07:24:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kl9uZ9aq;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id
 x2-20020a17090ab00200b001f4da5cdc9cso5495548pjq.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 07:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UZWYPt9+6IaAmvzf4hAlT2SgT0bvIdemGOU5la81p88=;
        b=kl9uZ9aqrr0beS0YSWYlM9WFSd/zIKO1l68H6AzMW9EFqzcnqoTwDG231NL18sZxP6
         qYfMd/LIKqso1D7MO0nS9J+zR16Ae8djXyApyu3FHya/mhQnFGZFDiCSLHxOwmWjZ/HH
         7Lpfpi1LQqu8i27I/4FhSV0stXByMgXCis9eWvvuaUsLw1PltNoHBJfjHPfrQvRddVkD
         iKXXPemyiVEeG0FOUI2RVRd83aAjv2rLukQj5Z+qrdD/GZwsvBJWfR+yvQ7PUquAls5j
         isYppQwmyw5Qs4FPighyX3GyZsoPazMZF/BEs1n3HRd3427BcrMN4qqLzKJtL+d128wC
         8ODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UZWYPt9+6IaAmvzf4hAlT2SgT0bvIdemGOU5la81p88=;
        b=tb4SLiqWrwe/dzASMqYbw/5LMnV515OAoCaImzT7IwwvIKQwtLVR2jIKHz78hzRRg9
         UrdA1tGzRsw1Yb0gk1fDRNYd+fIxVnLoO3A0qcK8WmuL8oL5Xj3uWoSBzAA7gmz3cr71
         uZmZOogwkxFe+44/tTucpZokbeSJOfdSxXLP0ng79ccT0nWqZDVPcbuY9RIXCEzIXGuf
         HUeUSd/zAZse1GSg4XpFm/R413QtZBUrP5d3k+56ZO8Gq/1gaPNuuaOSyXFZXqkDECOa
         uNJiLnVvXsx+VpSRam95LtSsSpgLTDYp7IjXYXegVBJzxfUDR6IKA6V6K1xJNlqVKXwM
         wqTw==
X-Gm-Message-State: ACgBeo29wwh+fZJCD2cFgPZeuyNhgboVvvrGWjxSxnlD2vhpZh6RxlJy
	lVZ/ZTHyLlFcKeEsyP4g383UqE80FME=
X-Google-Smtp-Source: 
 AA6agR75oqYsnuECvygfw59qmUDzLrIeNyOlwi2MaEAl7o7zh1DqWZSIEkk89zeReOX6xFVO4pdb3w==
X-Received: by 2002:a17:90a:b010:b0:1f3:161c:30a0 with SMTP id
 x16-20020a17090ab01000b001f3161c30a0mr2325455pjq.243.1659623094183;
        Thu, 04 Aug 2022 07:24:54 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 l9-20020a17090a070900b001f56405ab36sm1652865pjl.23.2022.08.04.07.24.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Aug 2022 07:24:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: add space for
 appends
Date: Thu,  4 Aug 2022 07:22:51 -0700
Message-Id: <20220804142251.25183-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Aug 2022 14:25:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57780

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index a12a4c2..85f6916 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -42,8 +42,8 @@ RDEPENDS:packagegroup-security-utils = "\
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
-RDEPENDS:packagegroup-security-utils:append:x86 = "chipsec"
-RDEPENDS:packagegroup-security-utils:append:x86-64 = "chipsec"
+RDEPENDS:packagegroup-security-utils:append:x86 = " chipsec"
+RDEPENDS:packagegroup-security-utils:append:x86-64 = " chipsec"
 RDEPENDS:packagegroup-security-utils:remove:mipsarch = "firejail krill"
 RDEPENDS:packagegroup-security-utils:remove:libc-musl = "krill"
 RDEPENDS:packagegroup-security-utils:remove:riscv64 = "krill"
-- 
2.25.1


