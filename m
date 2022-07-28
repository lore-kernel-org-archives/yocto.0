Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8682FC04A68
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:18:09 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.1556.1659046684129568600
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o8kx9ePy;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id b10so3038795pjq.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=0+FPL8F4FA8MBnLlABeuiiS9zBj9otVUQKcaZkvr/2o=;
        b=o8kx9ePy0fDbuy3K5Rntt52m4rZNVz+nRA0Ueag9kQQg78ky0jlkj0p3KweG8N0Vgh
         ZqwfKcxKWgtk+kNWxSTMEYQmtLkw7FmRGbQWfmwG15HuQSRHMR+iGpx+W+47kpv6CTDA
         DRDMaUIxIozuRJd7duWCdcx0F8TuKCmW+Y2qblQQOFoZVVdeA7WLWSvlLXYWoDa1/SgH
         aGr315quYjGDTowztS3EqaSf6cL4WE1srbJ8N85QYuDvh/ndUTLUEauHgYeMbL9M/5Ol
         jSiJ3CbxG/jCZMo+Xizl86WYmou/GarNnjUM99bYCEFD3xlOVp2pxxPAZuyxdRcr5KCE
         fTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0+FPL8F4FA8MBnLlABeuiiS9zBj9otVUQKcaZkvr/2o=;
        b=oGwnoK3nxFcK16YR186pZgDP0D48lMGTdf68MnLt8PUOKDJfYonD1bAaovt6aWw9QO
         XL31ECtiJ6BibnTT0SlwmHRFLLRUP8ypLes39II/ebaLC5gVJWy/WotGMyoXl7kD5rtA
         iwLm/Po7XJoxaHAPvFRKTjruqGkuy94G2/FgfIQLni1hXW6r10BYKTfx1MvtcFCK/Vlx
         SczNB0b0LOIiKlpcncwXSvSGvphHYxhmg2Sraq66Lxw8diMc9Wwo32M5sFpJgbjty9Hx
         OzR9GS+7bKhik/TF+VggtbAmXv+WSBYH8AxMI06Lo1+6m3U2iGHAFC46m4vufWQEQiEV
         /t5A==
X-Gm-Message-State: ACgBeo0MGQdULWgSIAMNG2POC/zD+s1cbfpBDABkY43jmRhgC8YpD9Gd
	IkaUjEQAx/o4S0Q0cjy1Q0zqoLd8ees=
X-Google-Smtp-Source: 
 AA6agR40FU95bj+X8qSgFZFUam/G6K/7sZA+wxvoXlD6gp8ew5dZ2Jo4Xu+5oIhZZj8Kg0XgYSu1GA==
X-Received: by 2002:a17:90b:17cf:b0:1f2:e376:9ed2 with SMTP id
 me15-20020a17090b17cf00b001f2e3769ed2mr1528386pjb.82.1659046683222;
        Thu, 28 Jul 2022 15:18:03 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.18.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:18:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 8/9] tpm2-abrmd: add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:50 -0700
Message-Id: <20220728221751.48428-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57676

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb
index daafae3..75e9588 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb
@@ -20,6 +20,8 @@ SRC_URI = "\
 
 SRC_URI[sha256sum] = "a7844a257eaf5176f612fe9620018edc0880cca7036465ad2593f83ae0ad6673"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 inherit autotools pkgconfig systemd update-rc.d useradd
 
 SYSTEMD_PACKAGES += "${PN}"
-- 
2.25.1


