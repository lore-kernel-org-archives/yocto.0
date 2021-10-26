Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11560C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 14:24:29 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.12841.1635258268473347528
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WrWn6Wmb;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id fv3so5066693pjb.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=76UJ2x2DybhICGXqa385uCxmqeym/o66NH85bkUqQqI=;
        b=WrWn6Wmb5cxGU6wERPePWX+INj+0y5RMOaqzSjPCjEyf34u2eJ1RfNsmVewY8FeEGL
         OClTapTK1ckXEBDz17P4WL04HXSHgmNOtCN54mGGxSWdzsvyTW4U2cMWAwuKATqtCI+9
         SqWSocpnnpFYRHwzuAhasexk6qUyo51N/9Vr23JCdAbZ57y0xLNxE9UA1rZqpdBh79lk
         RozocqZ8mdh2xkhgQhENpNVUsUWNv9Atr1sccgVMdFAelWKW9Ex29gQIKwwPNLrHgjA0
         5fhsHm007qMiFQAfsJnx/AYZd28ZENEI1u4CQHPp/cY75Z2bMciOMdB7J9mNUnR0mI5D
         qzyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=76UJ2x2DybhICGXqa385uCxmqeym/o66NH85bkUqQqI=;
        b=c0h9m5fNHH/y5ih9fRYYL4A4mepyftOoRfcP+jYU3wqtLu+ZzeK1RWiByO24rmzr68
         QB7Cf7tIAh3fqQUzXOZqz4urmq6+1YD/h1IaD9uHj/Je1ss5PCqKc42eqWUmXWkO4B1B
         HjlmM9m6Qbejj0BYI8epoh/3n8/5gdVGrvQb00dO1r444eFan/0/4JJpdReTb+KAJt5G
         trV+IM8nJaGy/eZUiDVHFQfvO+x/43JzR41OFtIbrNTMweGMP1DrLt+8i+/YfYISbC/x
         +mQ7jIxLhRPePuVct+ZzW7khxaUvntgkvtwFLiGCEVHOZjff9zDcYehhXxOcDzQuCIgJ
         O8Mg==
X-Gm-Message-State: AOAM532M+wVfyG+Fg4ig9PAxCgpJabA14tc5eGhrTR21W94KnrgDnjPp
	D02sKOq9R/J1LzG2h6YNLOtX2aNMB2k=
X-Google-Smtp-Source: 
 ABdhPJzZnwD12ZKZoJmvGybF711dP2uxf/0gxtyLpNK7JbpGyQZ5ffNQb3ENuOwFyrSUVkAHwrx1RA==
X-Received: by 2002:a17:903:244d:b0:141:47f5:6ed6 with SMTP id
 l13-20020a170903244d00b0014147f56ed6mr6534394pls.16.1635258267437;
        Tue, 26 Oct 2021 07:24:27 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:bc55:5a93:ebf6:406e])
        by smtp.gmail.com with ESMTPSA id
 p25sm25821553pfh.86.2021.10.26.07.24.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 07:24:27 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] opendnssec: blacklist do to ldns being
 blacklisted
Date: Tue, 26 Oct 2021 07:24:23 -0700
Message-Id: <20211026142426.1476128-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 14:24:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55163

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb       | 1 -
 .../opendnssec/{opendnssec_2.1.9.bb => opendnssec_2.1.10.bb}  | 4 +++-
 2 files changed, 3 insertions(+), 2 deletions(-)
 rename recipes-security/opendnssec/{opendnssec_2.1.9.bb => opendnssec_2.1.10.bb} (88%)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 6375e24..e9dad5b 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -39,7 +39,6 @@ RDEPENDS:packagegroup-security-utils = "\
     python3-fail2ban \
     softhsm \
     libest \
-    opendnssec \
     sshguard \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
diff --git a/recipes-security/opendnssec/opendnssec_2.1.9.bb b/recipes-security/opendnssec/opendnssec_2.1.10.bb
similarity index 88%
rename from recipes-security/opendnssec/opendnssec_2.1.9.bb
rename to recipes-security/opendnssec/opendnssec_2.1.10.bb
index 6c1bd46..6b53711 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.9.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.10.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://dist.opendnssec.org/source/opendnssec-${PV}.tar.gz \
            file://libdns_conf_fix.patch \
            "
 
-SRC_URI[sha256sum] = "6d1d466c8d7f507f3e665f4bfe4d16a68d6bff9d7c2ab65f852e2b2a821c28b5"
+SRC_URI[sha256sum] = "c0a8427de241118dccbf7abc508e4dd53fb75b45e9f386addbadae7ecc092756"
 
 inherit autotools pkgconfig perlnative
 
@@ -32,3 +32,5 @@ do_install:append () {
 }
 
 RDEPENDS:${PN} = "softhsm"
+
+PNBLACKLIST[opendnssec] ?= "Needs porting to openssl 3.x"
-- 
2.25.1


