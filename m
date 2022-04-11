Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D31D8C38A04
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.4790.1649721236804987348
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 16:53:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=If1jF/F6;
 spf=pass (domain: mvista.com, ip: 209.85.214.179,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f179.google.com with SMTP id j8so15213126pll.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 16:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=21ne8/dRnrEH2C90hATuXA7N18mUcTiHE772d4lJLbg=;
        b=If1jF/F6dQcffYr6efQzG3Wipm+PrsBeV9c4SOAbKHWv6s1tR3LncI2tl/PjSBagF+
         qOIxyw4hU9AdLdylGyweMJQ6RkSU3OfpBDSXfLZknyee2VFFtRXfhsTeKTONjPqMqKMG
         q6HngKaj1SvkLRBKXJtMZ8+QaeNn0HwJJE50s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=21ne8/dRnrEH2C90hATuXA7N18mUcTiHE772d4lJLbg=;
        b=CDBAb7+yPZfvgPFUIG40PiQ8DWMo76Qf/qsL39xkwJZtutrTtcjPrCRxq8B5owM97W
         haUrSuCDQSehZd5QbZQnxRe51f15zsowdvtjSeT4ykKBWezWhGxSrKhZbup0/Q9yzkRI
         jGGKpOygvwjBlnrW+yxTWBGjZAdIJazLg1quxEimmyc22TTbS/1jCZPQPr2E1H332TcE
         Ip/8rxWAWcfrEuujEmP2y3N+2yMqJ06zO1mZ3QJj9TgNOWRlD4EVYU44B0Qq8+TipgLk
         fnkZAS7fSA71sGyWuts7pQDHjgRCZCK6oDc25wqhQD13lCoXP6DCZq7QZ3bx3lTAjRMm
         AmOA==
X-Gm-Message-State: AOAM5300zuYNwzKj0jRAXx86/OnTZ1c0+pfgCOWt/OoCvm1CtPTJhG8U
	9yaov3d/g7Xt/sSwSDgwD+AxZ7Yr9t3HuA==
X-Google-Smtp-Source: 
 ABdhPJxRDP+MK5miw7iHL6fW9WP2ACfnPz44j5DiqmV6sMohn4t76GIHd+1C+4MfrJ34O7u/P20JRQ==
X-Received: by 2002:a17:903:1212:b0:156:3ddc:84bd with SMTP id
 l18-20020a170903121200b001563ddc84bdmr34030097plh.70.1649721236039;
        Mon, 11 Apr 2022 16:53:56 -0700 (PDT)
Received: from red (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 k6-20020a056a00134600b004faba67f9d4sm37305853pfu.197.2022.04.11.16.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 16:53:55 -0700 (PDT)
Received: by red (sSMTP sendmail emulation); Mon, 11 Apr 2022 19:53:53 -0400
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>,
	Kai Kang <kai.kang@windriver.com>,
	Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][dunfell][PATCH 1/2] sssd: re-package to fix QA issues
Date: Mon, 11 Apr 2022 19:53:49 -0400
Message-Id: <20220411235350.3654780-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56734

Source: meta-security:honister
MR: 113808
Type: Defect Fix
Disposition: Merged from honister
ChangeID: be0e4f3c73eeb04d1c79d99d3377c89659abe420
Description:

It packages all file in ${libdir} to package sssd, including the .so
symlink files. Then it causes QA issues:

| ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
| ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]

So re-package sssd then the .so symlink files and .pc files are packaged
to sssd-dev which should be.

File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
sssd-dev too. Then causes another QA issue:

| ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
    -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]

So create a new sub-package libsss-sudo to package file libsss_sudo.so
and make sssd rdepends on it.

JP: Update for version differences.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit e81c15f851ca5396c78c8737967ee38db0ebe0cd)
Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 916f1ac..186c9e0 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -116,10 +116,17 @@ SYSTEMD_SERVICE_${PN} = " \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
 
-FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss.so"
-FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
-
-# The package contains symlinks that trip up insane
-INSANE_SKIP_${PN} = "dev-so"
-
-RDEPENDS_${PN} = "bind dbus libldb libpam"
+PACKAGES =+ "libsss-sudo libsss-autofs"
+ALLOW_EMPTY_libsss-sudo = "1"
+ALLOW_EMPTY_libsss-autofs = "1"
+
+FILES_${PN}-dev += "${libdir}/sssd/modules/lib*.so"
+FILES_${PN} += "${base_libdir}/security/pam_sss*.so  \
+                ${datadir}/dbus-1/system-services/*.service \
+                ${libdir}/krb5/* \
+                ${libdir}/ldb/* \
+                "
+FILES_libsss-autofs = "${libdir}/sssd/modules/libsss_autofs.so"
+FILES_libsss-sudo = "${libdir}/libsss_sudo.so"
+
+RDEPENDS_${PN} = "bind dbus libldb libpam libsss-sudo libsss-autofs"
-- 
2.31.1


