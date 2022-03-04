Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76F2C433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 20:37:16 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web08.1543.1646426236088661601
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 12:37:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j+kvIkfu;
 spf=pass (domain: gmail.com, ip: 209.85.216.46,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id
 15-20020a17090a098f00b001bef0376d5cso8964860pjo.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 12:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6kMGHNE09W2CTRAPCvkiMK7COUuEv2DWnBybPlqB730=;
        b=j+kvIkfuAwncXmCRnZEUaVwFOLdI2j+O0dCitdsmF2pZHV6UK3dsNqNBClLLTznsZv
         GVRHOjh5wqHV6a+jJtTqWBCFXtYyzfWLDyHD8z+g/FT1HA5NAqTjRgmXBz4VSJFqT939
         2jWfLupkY1q/8jhAEsH/wGSWAojjwh1FbNFIhfAtq9FGZr55XRIScyho7lfGbw8jYf9O
         B1a2Sm7srEXVJLxKJshbvUXIUuLaEsoWJAJDJ010LJNsW+IP3+fFMkzkwPIYMxiFEffa
         qZJ00EfbsKFYBUJpSm49v6nBJfPzZip5RvUTdOknbBRVyBAX8aA9SqkqjZrygjbt5laE
         rYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6kMGHNE09W2CTRAPCvkiMK7COUuEv2DWnBybPlqB730=;
        b=3aqjYDNWxDM1G4tIrIy9c0mbJhA4bRO+ZmDzv4ZVesuAAwV6QrgunhUsP5uNUnRINk
         g2zhW8jye2u+Tq/Xlee9jEMnu16JoZDeP19f+ZKfuoY1mSJ5nBxZ0W4Rfy9z3Zae6pK0
         nbeF1epeqEejxXL9DfxJtCPF5pj1Za2pyISmcPv/UfTwXTjRAWsx3rb8yMUxdMvfAUS+
         j9RYxqWpRSvdzE/0eHUywBHCYvguqUDxWhyIGSaDJae1IUpChtEjK8aUrI8jkC7L0cqy
         uunLL7+3TaW7nXydu/nwtvQZTfCOWGfSzGRTupVDGYpv5dcBM0D8/yCBeUMnhToErfS3
         vK4g==
X-Gm-Message-State: AOAM530tmBUxLvSE/pNHMc4cWTQCWwmTkZkgWiahEw6+c1Qh2deic+BF
	3IOq1TWvAJkNldSeimv0QgsqJpiE9ls=
X-Google-Smtp-Source: 
 ABdhPJyn4RA5HeCNqE5f1/7c98+mc1keA9OJ1aGHpcbM4yCd69CW6z2oU4hmYCvGS5gBkYs8sgm2fQ==
X-Received: by 2002:a17:903:41d1:b0:151:c3d1:d233 with SMTP id
 u17-20020a17090341d100b00151c3d1d233mr331927ple.113.1646426235163;
        Fri, 04 Mar 2022 12:37:15 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:4a57:ddb1:e4ac:8918])
        by smtp.gmail.com with ESMTPSA id
 v10-20020a056a00148a00b004e0f420dd90sm7294145pfu.40.2022.03.04.12.37.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 12:37:14 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] openscap-daemon: fix wheels and License
 issues.
Date: Fri,  4 Mar 2022 12:37:13 -0800
Message-Id: <20220304203713.3797750-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 20:37:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56370

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap-daemon/openscap-daemon_0.1.10.bb                 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index 549a888..cf6d531 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -4,7 +4,7 @@
 SUMARRY = "The OpenSCAP Daemon is a service that runs in the background."
 HOME_URL = "https://www.open-scap.org/tools/openscap-daemon/"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=40d2542b8c43a3ec2b7f5da31a697b88"
-LICENSE = "LGPL-2.1"
+LICENSE = "LGPL-2.1-only"
 
 DEPENDS = "python3-dbus"
 
@@ -13,7 +13,7 @@ SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git;branch=master;protocol=
            file://0001-Renamed-module-and-variables-to-get-rid-of-async.patch \
           "
 
-inherit setuptools3
+inherit setuptools_build_meta
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


