Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A22C433F5
	for <webhook@archiver.kernel.org>; Sat, 29 Jan 2022 23:49:05 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web09.13121.1643500139858878469
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jan 2022 15:48:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HjCcd+2f;
 spf=pass (domain: gmail.com, ip: 209.85.210.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id a8so9500399pfa.6
        for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jan 2022 15:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DLvA2jmsTNbo46GmPht7D09eCqDbulwLellwitTQa7Q=;
        b=HjCcd+2fxzNtxa2Bq3RGYNcexvF1kdxYCTHjB1rQf2zhfhOgKNshZ6iDfVYk0v5ixR
         k4FZ0uHnMLos6IkRd1L2Wnpoc9n9uv1gvQ+HMBx++HtmzJYUcptRoDPiSp6Icag8pNuf
         YXAN9bAvBvVh+YxVrOk4ueH01Fru8N03UIzaHYlkfwP2dW4ZDMAtL6Obeul2N04/sEXp
         lqJZG/cqUBbZ6X6Hu1NTG3dYeWpoyyvXbfiFGZ0yhrYxFPmvSOpL+YYRx3Fu20HDnV0l
         WJ992x4qJdSny0EkXOFGHuMvxBvBv3TtniEz0XifB1J1KtWNwQTZf8VJqtYmmkqf71r3
         a2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DLvA2jmsTNbo46GmPht7D09eCqDbulwLellwitTQa7Q=;
        b=CFl2FVFluPvk8uBvr1FIgHj9+mzF/a5ZT0rhdAZ50fzSWoW+2I8r++34cikrjEiyoy
         FdG/MrFP0dgb3eKFxCIXfUzjpMWoWOAvn+9/PAln/3siOp4pzdHTJLoGelIrACnC3wCz
         q4NJmcNUrp+cy4Vd8weWnmEkeg5Xff3LqwAW437k+o5x9NnZ81NRB/cTSewXg/oIoMj+
         egQbbjjQ3l1Sz3zR2WFDcMnU2usEspstSbltfyTuxEtFH71PLzgry1fdMSrxGvhVn3uS
         kI+EYAvCeZwtt36CTHdX8+2OfcZWREIpqdKMVjMJyZOpS1cLJAm8Tii4dtjcW+su1KRG
         eAZA==
X-Gm-Message-State: AOAM5310qURcyHw37xYZ8LUk8RPHIX4Q+FhIDP7a4T9bi+ZDTHRPmgsW
	jrxMhPTlYPj7lnTheIAZe0bk6zuEQIdPxQ==
X-Google-Smtp-Source: 
 ABdhPJzqLViDJVihyRVFT9PcsHH1zdGEluZW7IPyIKGxMYIRIeM5dneaCOREONBSGwihcFeW2bVM8g==
X-Received: by 2002:a05:6a00:130a:: with SMTP id
 j10mr13328388pfu.32.1643500139086;
        Sat, 29 Jan 2022 15:48:59 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:918e:fe6b:17f2:f636])
        by smtp.gmail.com with ESMTPSA id
 ml14sm6211375pjb.10.2022.01.29.15.48.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 15:48:58 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] packagegroup-security-tpm2.bb: remove
 dynamic pkgs
Date: Sat, 29 Jan 2022 15:48:56 -0800
Message-Id: <20220129234857.4176367-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Jan 2022 23:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56019

fixes:
packagegroup-security-tpm2-1.0-r0 do_package_write_rpm: An allarch packagegroup shouldn't depend on packages which are dynamically renamed (libtss2-tcti-device to libtss2-tcti-device0)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb    | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index b8324e5..fb36fab 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -13,9 +13,6 @@ RDEPENDS:packagegroup-security-tpm2 = " \
     trousers \
     tpm2-tss \
     libtss2 \
-    libtss2-mu \
-    libtss2-tcti-device \
-    libtss2-tcti-mssim \
     tpm2-abrmd \
     tpm2-pkcs11 \
     "
-- 
2.25.1


