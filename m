Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05BCEB64D7
	for <webhook@archiver.kernel.org>; Fri, 30 Jun 2023 11:17:07 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.9435.1688123824061060482
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jun 2023 04:17:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ezCc8C15;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-577637de4beso1043077b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 04:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688123823; x=1690715823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vXuExtSXE9i01p2ANw1MKAFjmMnhB+eXrcoJQ0O8tDE=;
        b=ezCc8C156fcneLOrR4wmCiJXEo7Q8lMFK4uo8Kon8N2UWAD/z/PfRzPAFUPokZSroN
         h11vLpdtKfh/H11+zzvrVxOzhy36i+wdpeLYcST+55YTLE0X6a7DRB62rDRPc4tReMKl
         4ZnV/wkU+5+3SVJk+Bs+j767b/I90tJhCL8pEAORm0ztU6+YK0ABeI7xxbol78R/ld/4
         wsqSK6UyXnDBkVr4S2UsDiRZHe+4uB03Tw/GSrAaPxKDXy2d8zBajr/YlIA/29YOaIs3
         mEXIXCq5pJbR8WmsTPVpa/zM7mOV8zx8YF6f6BU8MijVgMWlkkRq39f/lgLF8/0GQ1zf
         /Vgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688123823; x=1690715823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vXuExtSXE9i01p2ANw1MKAFjmMnhB+eXrcoJQ0O8tDE=;
        b=Jd9CDTEsYAe/sHPf9C+Ssgohe5yRAY0MqUBsF3Xqs5q23R8DSTlerAeRDpHYR1vF3R
         oXknHzpwnGgIUzNuAgEBPPJni4LTY6bHdHoySgcmCB1BZdVys7hgRSo6KLd/8bF1uAN8
         bpkbZd4ojGbchE+eRfrHJv8uvAxjnopY30SD/Y8n5d25xTLkWGkfUsbPB4PY8mvIkjA0
         QNOUZ08PckjnH/FkKV9Jpx9Fc4WAvFC/NNA/VVhUZH+Jk8zg0AcjLzJpFAlyoMjTYleh
         OcHbB3noYfBWdMLllXBvartm3ywvfAplnPyMNV3z3OdaycCqhCkuHbiF6wgeR3d1cbIz
         w5yQ==
X-Gm-Message-State: ABy/qLZWzadEEf19cSXcjkP9wzfxNPRsPfPPceVHT8nAPgrj8MWxtvrY
	4uiZv5iKL+47fDXwl/cSUYCMnJR+d3U=
X-Google-Smtp-Source: APBJJlFno4ICo/D2pCPNq1ECw+ds78x5Bes+dV/7pMAiD7osjA305eyP+v4LUE+8bCJ5ZhmC1duBYA==
X-Received: by 2002:a81:6754:0:b0:565:a3e6:1b7b with SMTP id b81-20020a816754000000b00565a3e61b7bmr1908154ywc.18.1688123822728;
        Fri, 30 Jun 2023 04:17:02 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:44a4:faf8:9b66:580c])
        by smtp.gmail.com with ESMTPSA id a63-20020a818a42000000b0056cd44f9f23sm3333121ywg.63.2023.06.30.04.17.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jun 2023 04:17:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] packagegroup-core-security: only include firejail x86-64 and arch64
Date: Fri, 30 Jun 2023 07:17:00 -0400
Message-Id: <20230630111701.3095931-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 11:17:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60484

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 494745b..3ef77e5 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -40,7 +40,6 @@ RDEPENDS:packagegroup-security-utils = "\
     pinentry \
     softhsm \
     sshguard \
-    firejail \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "google-authenticator-libpam", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
@@ -48,9 +47,8 @@ RDEPENDS:packagegroup-security-utils = "\
 
 have_krill =  "${@bb.utils.contains("DISTRO_FEATURES", "pam", "krill", "",d)}"
 RDEPENDS:packagegroup-security-utils:append:x86 = " chipsec ${have_krill}"
-RDEPENDS:packagegroup-security-utils:append:x86-64 = " chipsec ${have_krill}"
-RDEPENDS:packagegroup-security-utils:append:aarch64 = " ${have_krill}"
-RDEPENDS:packagegroup-security-utils:remove:mipsarch = "firejail"
+RDEPENDS:packagegroup-security-utils:append:x86-64 = " firejail chipsec ${have_krill}"
+RDEPENDS:packagegroup-security-utils:append:aarch64 = " firejail ${have_krill}"
 RDEPENDS:packagegroup-security-utils:remove:libc-musl = "krill"
 
 SUMMARY:packagegroup-security-scanners = "Security scanners"
-- 
2.34.1


