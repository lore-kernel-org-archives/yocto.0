Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 029CEC433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 00:08:21 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.14784.1646006900087153027
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 16:08:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PafKfSGE;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id
 gl14-20020a17090b120e00b001bc2182c3d5so10881369pjb.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 16:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7UKF1Iy8f9HKy5eLKAABELIcclTJXYX5mBCoikFju/c=;
        b=PafKfSGEnUBOI1m5XoZTkO1Dsu+1gTqooIr9wj2IxdCrnOCodycgcCGfmklFMOKYZl
         VEqCJRf2qhUGMxcVnwT704AcBkkQLDHuhPzzghTF5J++rnrj36Z7G94M/iYmulFtW8gZ
         SuAHuhB3HxbZiALcqCeXl2IoAIUG1lpN9HaVA5zU5/QFdRpVEW8cXdBPXPWdN05zbk3l
         RnCkJlPtj+I6eBQ4NKrSKnbTRD3ih2hv+any+64sMItEHZCw2jK6lkYne31Odz10YUfw
         xaTsl61iFuxtnGIpx1KIXP7N7yrKGg+aS3VYhaPyg/vTcIHK627Lts/oBszBNtG+c6S5
         qImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7UKF1Iy8f9HKy5eLKAABELIcclTJXYX5mBCoikFju/c=;
        b=PvBlZI7l/f6WUFiuNFZ2o3asLzmWXsfPNal2rasK7mUTd5UYJwjA6yDG0IU4DXckf9
         /0omQC2jF49Ixni20kYgNYNRjX3NamjkAuvqcG7iPeeEXJ5jV8HojzLKkrzi3KreSq3v
         M+BwLiZnnAZTrI5ELwxx/aP6IFTM6fZJWe9HBaOuDSQnlczcgSobzQo/2A2gh/tZolC1
         IO/Ot82fNLVrYTUYFP/BW+/1oT4Cl5aKJjn1FEQUJN2hbd5NNb7tTe/1B6uFProSmO41
         c6zTzexAQT/abSRpR1tsDeVPfdRbAsoXrtaOOgWe0uHOpXrBwLnQz8bmUQHy4UkFrFR6
         jIsA==
X-Gm-Message-State: AOAM530MVOdzQIo/Me05BAb4M82MmdV+mXIaDhdgYnefpbu7ELyfuzKO
	xfNMUn2Un7erzvJ40p7yoqD2Kw2jMrQ=
X-Google-Smtp-Source: 
 ABdhPJzFh1CyG8vMj9Rb1jZ2uFn/dtvFOgPXP2YM9QunOuP5CpGqlok4Mxl1cczd6aJHkwjGTafk4A==
X-Received: by 2002:a17:90a:8a81:b0:1bc:b707:ce08 with SMTP id
 x1-20020a17090a8a8100b001bcb707ce08mr13851900pjn.21.1646006898724;
        Sun, 27 Feb 2022 16:08:18 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:c5c4:1c30:ffdf:c956])
        by smtp.gmail.com with ESMTPSA id
 g12-20020a056a001a0c00b004e1307b249csm10858028pfv.69.2022.02.27.16.08.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Feb 2022 16:08:18 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-fail2ban: Migrate to use wheels.
Date: Sun, 27 Feb 2022 16:08:16 -0800
Message-Id: <20220228000816.12012-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 00:08:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56302

This package uses 2to3 so need to call build-it ourselves.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index f6394cc..93bc3a7 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -15,13 +15,17 @@ SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
         file://run-ptest \
 "
 
-inherit update-rc.d ptest setuptools3
+inherit update-rc.d ptest setuptools_build_meta
+
+PIP_INSTALL_PACKAGE = "fail2ban"
+PYPA_WHEEL = "${PIP_INSTALL_DIST_PATH}/${PIP_INSTALL_PACKAGE}-${PV}-*.whl"
 
 S = "${WORKDIR}/git"
 
 do_compile () {
     cd ${S}
     ./fail2ban-2to3
+    nativepython3 ${S}/build-it.py
 }
 
 do_install:append () {
-- 
2.25.1


