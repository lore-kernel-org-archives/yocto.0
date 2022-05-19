Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 433B1C433EF
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 22:35:38 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web08.2067.1652999736436507788
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 15:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XimTR/8p;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 t11-20020a17090a6a0b00b001df6f318a8bso9929135pjj.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 15:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SUAkJnAW6W5cD8KqAQUSv1YddJPVowkOHS01Z2+lO84=;
        b=XimTR/8puwWNLNviJ4MeMtGa0yMU5sLtBJZ21c0T5Aj20O1Sg1Apfh+DRZCPSYkTGE
         CCn2N8uLOS2BpjvS9Nlp28CwYP9G1DKE/jQ2/IAEQHp2B77mZoGN5iZEqmvRUDYhYmbO
         jOSAbV69QWKroPq+lnLpLZThArr7xlIraCsdzFd2lVQLAh9ceK3zPAOuyo8jVsAAK35r
         Br+zWaijwPiT7KVlkX8E3Gk0RDyWXd3Hn+zM70GXCSTPM+tQelu4HyXZxDaBrpOGn223
         Eb04PYp31KPLS1zGF69Fn4dhBzBgA+/FSQ1AQiH5Kb3bIXllQv4pKpTUKM1x4f5NorxU
         pTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SUAkJnAW6W5cD8KqAQUSv1YddJPVowkOHS01Z2+lO84=;
        b=ltOhoWr/n1aGOprrUiMEHNXbspdR1BNQe+WNmXnemdeTujltP1WsYd6fd1qxM8nvHM
         tDmYcdfBgWln5f5ut1VCb5C/mCC1vkYhf37MZcNvggEZOXwLLgBKInRX+5n4ko+sLjcR
         qV9CfUKU/gCPGF55GrnrnI9rzIPcclA3XP7vkeus/2TdQ+O1AYSRf8EScJpuxTDkFRh8
         AD16KOj1nklBC2x2WfWJE/Zo1c12Ko5dpRbdgmQN7GrS4lMJhhQ9zvMbb8z1W+eaaWHP
         EFrd0r60L8erK7a454Ib1RUfVcHudH2293c/PAGEe44hazgAXM0/Ajh395J1wU/hB3cs
         +vRg==
X-Gm-Message-State: AOAM532bfKzVjZsVGtG6d6YexGLH2GEpOPnfZpish4idDroPPINwnCww
	MnhMsvf0BY1kxCgHt9xDYs3u4k3Ls9d7Sg==
X-Google-Smtp-Source: 
 ABdhPJw7lbABxFyPkDaAlOnbxWhNsuMUkYkCQRUXjKUuBflwY61s+590dm71PJI3HWdnWSuaYJwmBA==
X-Received: by 2002:a17:903:2281:b0:15e:95f7:37d1 with SMTP id
 b1-20020a170903228100b0015e95f737d1mr6691139plh.18.1652999735547;
        Thu, 19 May 2022 15:35:35 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:eff7:a795:a3a0:cee8])
        by smtp.gmail.com with ESMTPSA id
 y17-20020aa78f31000000b005107a4d5096sm203277pfr.30.2022.05.19.15.35.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 15:35:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] tpm2-tools: Add missing rdepends
Date: Thu, 19 May 2022 15:35:30 -0700
Message-Id: <20220519223531.3851892-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519223531.3851892-1-akuster808@gmail.com>
References: <20220519223531.3851892-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 22:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57142

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
index f924038..c20af7e 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
@@ -16,3 +16,6 @@ do_configure:prepend() {
     # do not extract the version number from git
     sed -i -e 's/m4_esyscmd_s(\[git describe --tags --always --dirty\])/${PV}/' ${S}/configure.ac
 }
+
+# need tss-esys
+RDEPENDS:${PN} = "libtss2 tpm2-abrmd"
-- 
2.25.1


