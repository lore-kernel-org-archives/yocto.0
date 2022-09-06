Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E5F7C38145
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 23:39:11 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.1616.1662507545400516031
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 16:39:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a3NjFtOV;
 spf=pass (domain: gmail.com, ip: 209.85.219.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id d1so9540209qvs.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 16:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=3v/lFlaTasq2TTOIgUESHLawfkzol5bAxxJOeatxx1Q=;
        b=a3NjFtOV47leroZvxHR+uS8h1Eq/d8v7BE8UCZV0MepFMu/bGmJyvD6O9tgofMqXqT
         QnAbd6NRxXs3d9nBW59DVWwbS8Q3Y7nvHc5QRjuHjEtXH9ZjT6RRQYpT4+Ev22GO8+Wc
         eG3olFsX3bzn1fsquqhmkQD6rKGW7tu7fZ/MNkCFhBeXRwwR83aNWnrYfolF7iX0zCiG
         Hd9LGg25nvt5GRQX1brUkJlBLnwH521N8ebv7rof2dT5g6KHLg7g2Va1WMqN6aps4SLg
         cKCCh49S6fitHDuyLiJdch95no8t0V/OkXYECuut9quNCn+nFMz+MWGeAbjnpnoThCMy
         xgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3v/lFlaTasq2TTOIgUESHLawfkzol5bAxxJOeatxx1Q=;
        b=ksEs6EBk0hVPp/5KH6O4uZi98h+phzSUfyXXU3NVvtPFC7dXoOh9HoYSZBBXsZflsn
         dcLMxmqI3lXs7ELH1nv1metwXqT0YSWBwyhz7JF4OYNjD8QFaCMPAuX394EP9f7i1h9d
         8H/fNT33d4oqHnxWo++dTeb7Z50eGfy4lx1tz3jJZqR8qUayys1S80A8fniZLkmEJujC
         v7O4HWervXZ0aXuyEERaQRoj84sUrvyKGq+iB805spNo4PU3KsoRhbrCHYIXUtEaK946
         sHglU86hSMFdwWBqEJCM5BgQfiKbf83jO2De7CHT1AIUh/45vxNp9M2j8t7i2ZZ2h080
         y9cw==
X-Gm-Message-State: ACgBeo2YIR8bgMrgNgEpCvbOCZ1mn43oYfMOZGUnXYMN3hM62/tpgnTX
	UjmxJeb8FPdamARGnwn0U516gg66GQM=
X-Google-Smtp-Source: 
 AA6agR4/V5fRJrOFF6wbwWeB+6Ij1j4MSwxR5RjFabOe76CIc7juXJcNEBmJhuiPJsFkHkI8+5lNTg==
X-Received: by 2002:a05:6214:508f:b0:4aa:a63d:ad12 with SMTP id
 kk15-20020a056214508f00b004aaa63dad12mr932990qvb.123.1662507544031;
        Tue, 06 Sep 2022 16:39:04 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:aad6:b34a:6444:81ac])
        by smtp.gmail.com with ESMTPSA id
 u16-20020a05622a199000b0031f0485aee0sm11366755qtc.88.2022.09.06.16.39.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 16:39:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] update chipsec to 1.8.8
Date: Tue,  6 Sep 2022 19:39:01 -0400
Message-Id: <20220906233901.2981422-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906233901.2981422-1-akuster808@gmail.com>
References: <20220906233901.2981422-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 23:39:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57999

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/chipsec/{chipsec_1.8.7.bb => chipsec_1.8.8.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/chipsec/{chipsec_1.8.7.bb => chipsec_1.8.8.bb} (94%)

diff --git a/recipes-security/chipsec/chipsec_1.8.7.bb b/recipes-security/chipsec/chipsec_1.8.8.bb
similarity index 94%
rename from recipes-security/chipsec/chipsec_1.8.7.bb
rename to recipes-security/chipsec/chipsec_1.8.8.bb
index 60272be..858ece5 100644
--- a/recipes-security/chipsec/chipsec_1.8.7.bb
+++ b/recipes-security/chipsec/chipsec_1.8.8.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
 DEPENDS = "virtual/kernel nasm-native"
 
 SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
-SRCREV = "7b9cc5cd449f2e1e4b5dad46c0eb14348e54e3f0"
+SRCREV = "fd1a98688978fd4b8ca77b512a72eae49c3beffa"
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


