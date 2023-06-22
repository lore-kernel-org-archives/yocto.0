Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2960CEB64DC
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 15:13:28 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.14017.1687446802732522072
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 08:13:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Fclnetct;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-57028539aadso79452597b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 08:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687446802; x=1690038802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uy3S5/zM8fo8sVetBAvt9aN/HJJ0r8NSED0EGCh40GU=;
        b=FclnetctdQjTY98On/pP/6EVH4jhStRYaC48hJvkcjYhpzjmy9kYXkIPX4oT6iWpLG
         YAr51Vdz8MtTtAV4cctFPtZMqRa5a6garTRB/5p+EUSMTxi7xCIE/ec5ueNbEtr4iWQu
         vvFO2xfhY1WVUyRtrDg7CVNXJf8Kr+7m07X4/AN+suZKwFEK9P4KKFLwVY7/zADYzKcG
         mzPGnAQIRitNzlWME6pHAkb6Y8Mr3R7Qk8uOaiXc/rQjqyUUlGlae/pEyZGquhTeQ5Kg
         RhCIApVJSyW6xPPaRbkH9HwVJnNEc1dCqUmeiWyLiCwD2ukOUazi3hAKryzA29xN2ye8
         pBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687446802; x=1690038802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uy3S5/zM8fo8sVetBAvt9aN/HJJ0r8NSED0EGCh40GU=;
        b=ckAmw7IuWTg8rMWBrdufgTcXqceFEEHlT4Lcr/fskJLHM3HeUDs7GdQrkm/hOMtsvu
         2x4pftyQ7moUMEe0c5q1lvtQR2e0LdC6D4oc9VzdlWCk233T7RHQ1Njd/Ku7SbpJxE2/
         t80qqkSYiyNf8hGMo8of6jjdFgm98gl9l1lC9JWMkYLZiPZ+DKkGq9DcodFsCYqy3ByW
         SGITq3eZixc8932+0w3Lbz7Ofa4VspNhydvqSz418fDcAuUVssGNgEoE32owzEpDS8bH
         v58vSgzg1bNI/Mo/PdfrXpD2W07wv6VoVqriSjcuCpCidI+uynOpezSYQ4E8c4wp9L4N
         Kd6A==
X-Gm-Message-State: AC+VfDx7NFZjqXwUM8O546YPs6f88FvALDz8oOvDHCXdXulWHjJbl3Ot
	oEHCLpV3bolsl68tykOB0EZQvcFXRX0=
X-Google-Smtp-Source: ACHHUZ46xgHazccBXWP0/oCipNSkWk0caKin6ap9hnajbGzz9XiDSKbIbLWa2ipXELD6R09+LYty9Q==
X-Received: by 2002:a81:4e88:0:b0:565:ba4b:aa81 with SMTP id c130-20020a814e88000000b00565ba4baa81mr19736405ywb.45.1687446801680;
        Thu, 22 Jun 2023 08:13:21 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id b65-20020a816744000000b0056183cdb2d9sm1853228ywc.60.2023.06.22.08.13.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 08:13:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] scap-security-guide: add Upstream-Status
Date: Thu, 22 Jun 2023 11:13:20 -0400
Message-Id: <20230622151320.2921659-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230622151320.2921659-1-akuster808@gmail.com>
References: <20230622151320.2921659-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 15:13:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60405

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/0001-standard.profile-expand-checks.patch             | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
index 0621360..a272d04 100644
--- a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
+++ b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
@@ -4,6 +4,8 @@ Date: Wed, 21 Jun 2023 07:46:38 -0400
 Subject: [PATCH] standard.profile: expand checks
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Upstream-status: Pending
 ---
  .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++++
  1 file changed, 206 insertions(+)
-- 
2.34.1


