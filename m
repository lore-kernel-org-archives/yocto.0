Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2324AC433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 11:19:41 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web12.7001.1646133580207781751
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 03:19:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CRosNvjT;
 spf=pass (domain: gmail.com, ip: 209.85.218.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id hw13so30732214ejc.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 03:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/m31nowxcxbz2IkVEcpY4xqUh8sBF4n9pWW9ioS4sqY=;
        b=CRosNvjTfnIwFM5icWc5rK7Ie2mCWDeDXFCMDzLv6aAOtU52zfzy/kICu0ZO78u10y
         7i3zvzXvqkutn/AkPZ/5VVkkqFvwYsH6asdBlIKqfHIMdDSP4dTr28vpTyGBCr0kKRDG
         coxoCf5cpgUMrI6he+kPtVsYp/RCucdJwr/8d5Vp6sGNnGemmQT9fgCMVqhfwdkuwSGz
         6Upu5PunB5yAifEL4j3BZfKgGTaMcNeKB34FsXM6czxbnhJaqSro+SRHGtlW9thfNbvE
         WaPIAro/g7W4+B3Mk72DJGuOyAmoN3EQQJeLTKQ/WcbT0D9Ckmxi6rur22+VVu7/hpyE
         k7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/m31nowxcxbz2IkVEcpY4xqUh8sBF4n9pWW9ioS4sqY=;
        b=3BAvIbvr1z7ZUPXHzPyUWRVx0/zGmFhQx4rlo0STvAEvmaOsQk8n9r53y36xnHLr2f
         et/l2EcJeeR8lATdG/u0yQH4vQRFG5FpOD0yssiaDGh5kUKx99YET1vo9e0XtW1XYzHT
         pzrWzZGaEXV0f8uFyDYuBRFIqD52vYRhfgPxvmFgA7eJkQXGA3VmM42hrN2+nbIsJbIG
         diBFBTqkmXN85ojE0eSjSEkip5r3JBTEQD4/6Ig/D2cEReF6237gx2IIAvRMjBo8UlXx
         dzY8THBA71hdlTjFNV1XGyBamMXL0FRSCyxedQRONorwaGjlJfcGgD2WV2U4l867k2Sv
         TpUA==
X-Gm-Message-State: AOAM530p7s6Bj41AB6jtUsVxC8GNPC6Jh7+ZYIsfapWR3BQXwgdJSFtf
	TWQ4mcVB48jOeFem2L4Fi3iuOC580Hk=
X-Google-Smtp-Source: 
 ABdhPJzU6L2Nj9Smb/1wd7J+JBeklTcwnwoY+pQJjLhwMfvWZ5RI6Jf9C1d8Wmq4v+PdUy8VQ0e18g==
X-Received: by 2002:a17:907:213b:b0:6cf:9c02:8964 with SMTP id
 qo27-20020a170907213b00b006cf9c028964mr18415807ejb.432.1646133578496;
        Tue, 01 Mar 2022 03:19:38 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 u4-20020aa7db84000000b004136c2c357csm6987601edt.70.2022.03.01.03.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 03:19:38 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh-config: correct LICENSE_FLAGS
 variable
Date: Tue,  1 Mar 2022 12:19:24 +0100
Message-Id: <20220301111924.254586-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 11:19:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56337

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
index 25c062b..52e507f 100644
--- a/scripts/auh-config/local.conf.append
+++ b/scripts/auh-config/local.conf.append
@@ -1,5 +1,5 @@
 
 INHERIT += "buildhistory"
-LICENSE_FLAGS_WHITELIST = "commercial"
+LICENSE_FLAGS_ACCEPTED = "commercial"
 DISTRO_FEATURES:append:libc-glibc = ' systemd'
 DISTRO_FEATURES:append = ' pam'
-- 
2.35.1


