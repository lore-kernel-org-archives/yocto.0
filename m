Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03BC4C433EF
	for <webhook@archiver.kernel.org>; Sat,  1 Jan 2022 00:06:50 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web12.19491.1640995608742444409
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Dec 2021 16:06:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ooaiQfVP;
 spf=pass (domain: gmail.com, ip: 209.85.210.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id b22so24630102pfb.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 31 Dec 2021 16:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rojFHFrFvtirgfw0Ri0ccEcnIhFix4F1OgqJRozmdho=;
        b=ooaiQfVPBuoz3OoIT+SGXz5sRnPgu+uui4C13A+v4v55jgHImmjOImTf509LzG3vDM
         kdtjAneIJjOYJ9AWwlMB0jt4UnUNsTr7olNd9zke07imtTNqOYEeXhvaXCensI2H+yjD
         mVfnShCqPHM9Z0S2UPcCgvvysr6sQLLau3CK2MPeYpE2KGBV/NkBboVXPrlOogquRni0
         SIOMFiDJSRuaMTj/owzgf65e2P/S2VeLfN7LInAdlD0GwHJ1BCyz6p8pkzSuYQ6ErG2R
         X+Nepvhd3je67bXrmw28l3a9HrtpbmuwIGOjrTaYrOzAP5n+jugceXvvL1UpbxQm9kcU
         kOLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rojFHFrFvtirgfw0Ri0ccEcnIhFix4F1OgqJRozmdho=;
        b=buh7NoAfkB5HC0vwmfWZccs//27hfCc9RubdqR8LfZXeN283extbjvuf8b/tFhRpC5
         muQJVo3qxej5wMbEw5lWYtS5ND22N6OEor6qGBVSFP8SiiAf5v3DV1JSJImRGtyFlTC0
         uK/D+G3wsbiTvw9Nojefvf/sf7P/8mEhJiFN7TuIMPU27tTp+GmzyLNRr9SIODl5USab
         6EjH8ou5bzbjTlpOFSLSpxLHldhEDQd8cTWiaXY8Kdi2fLMVGTLp4Bx3KlACyShqZoKr
         vzm7T1osfQ6oeZgHiiDIYHCUZ9y1RlmCPfVX0gX7VakmZD5k8Vr7nnIlgAyuFhMqOFqe
         oCNQ==
X-Gm-Message-State: AOAM532xcMxWhm/oILTx5MTF9UA77O8BxIbHda4YL/Sx/+qz0TruWs0N
	7Tn5Nae1dDxlfhpm0cl55b3kaxDnbBI=
X-Google-Smtp-Source: 
 ABdhPJw9RZQPIbgUEodBsJIF4xM1H7z8bacQN14z3m4WuRjIS90Y1Wl4Hs/qpJQ/IsPCjkaOVDMBBg==
X-Received: by 2002:a05:6a00:13a1:b0:4ba:d131:ea5b with SMTP id
 t33-20020a056a0013a100b004bad131ea5bmr37513863pfg.5.1640995607901;
        Fri, 31 Dec 2021 16:06:47 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:8e80:4791:6853:2656])
        by smtp.gmail.com with ESMTPSA id
 a21sm30870425pfg.204.2021.12.31.16.06.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Dec 2021 16:06:47 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] google-authenticator-libpam: update to 1.09
Date: Fri, 31 Dec 2021 16:06:45 -0800
Message-Id: <20220101000645.2790341-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Jan 2022 00:06:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55696

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...cator-libpam_1.08.bb => google-authenticator-libpam_1.09.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/google-authenticator-libpam/{google-authenticator-libpam_1.08.bb => google-authenticator-libpam_1.09.bb} (92%)

diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
similarity index 92%
rename from recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
rename to recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
index e8ddf29..8a0b1ee 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.09.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 LICENSE = "Apache-2.0"
 
 SRC_URI = "git://github.com/google/google-authenticator-libpam.git;branch=master;protocol=https"
-SRCREV = "2c7415d950fb0b4a7f779f045910666447b100ef"
+SRCREV = "962f353aac6cfc7b804547319db40f8b804f0b6c"
 
 DEPENDS = "libpam"
 
-- 
2.25.1


