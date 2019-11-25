Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1519.1574712206605832826
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 12:03:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jG17zowL;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: liu.ming50@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04A5BE00F78; Mon, 25 Nov 2019 12:03:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (liu.ming50[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0DDDE00DAE
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 12:03:24 -0800 (PST)
Received: by mail-lj1-f179.google.com with SMTP id j6so8374174lja.2
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 12:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K/RsnFuYdULNFNExVmigM4cqKH27jmfKPv1VrVdyZf0=;
        b=jG17zowLJYPpZIfu3glWYVxCKvbGzH1fC7U2XE8UVV49Yhgrv1sHUxhSfTnXCBhjhx
         xrjsu9XMiADusYZXeJjFL73nvUd6TEriXKz0iY4h2wMfEB0Mw2tsBEaT/THML/LQsMAA
         M2Qda1ToJVQtmSkB1V9zYP8XiCCIzcNyMiE/ykDYPLc16aZzr4MX1P1z7sAAgAM7uxC8
         KBXUwyuss4+SmtqlW9lCUog6bkFzYRu+duBdS26RD9va13SETtA4/aBVZH6QY04TJn6P
         jYTCwjG/FiYfV3ArFxEYTV5xU+04fLH724/6osg/ESXa4TrA/FdmBkSPrxf1EWRLTx9f
         4a0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K/RsnFuYdULNFNExVmigM4cqKH27jmfKPv1VrVdyZf0=;
        b=jVN4iSLB79K7i8/Nc4oimvBMRD8YmTEAkvS/GXy1ZXym3jaPbwSr0fEHhsT4yF5XDt
         m2WMCbf1zbZuJ8NjCgap9B9z4lW8/FauYgZIAcoUOHxS7VnFV+7HRZun4SUr9K5HlsGY
         uIzppYoBrrttOXXOW0vb6/nIz42zMnbyq+qY+UZNlNuqwRh2/RaA/MF8FUPJOCl2P18e
         9HBMU72OQa1HPvwhqjDVerU3bzJCbUTklxlzGYtmj1V8csI6rXTABiNhQrElNxzmTq5y
         5WzG1pWRmjKJ36L8zKYCi06sg5e/uPvj8v7oF4amlabEYL9yzrKk60gfd8CcDHL5pa4D
         MfxQ==
X-Gm-Message-State: APjAAAUaKerito1RWDmjZ4ZMzZw+6gpCEr8ll/cKg9+yVLYmi1sS/MLJ
	s6lvyONLFF/86OEGYOMU8JRhWmeimH4=
X-Google-Smtp-Source: APXvYqx9XZmB2v6gSCzkuyDa8uhtnjwikg2+ztNhCFbaGhNZxCwMXS6NMrjgH9W5aHPDP6qwjdR0vg==
X-Received: by 2002:a2e:9842:: with SMTP id e2mr23542434ljj.93.1574712203580;
        Mon, 25 Nov 2019 12:03:23 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-75fd72d5.022-417-73746f13.bbcust.telenor.se. [213.114.253.117])
        by smtp.gmail.com with ESMTPSA id a18sm4148001lfg.2.2019.11.25.12.03.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 12:03:23 -0800 (PST)
From: liu.ming50@gmail.com
To: yocto@yoctoproject.org
Cc: stefan.agner@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][PATCH] meta: inherit features_check instead of distro_features_check
Date: Mon, 25 Nov 2019 21:03:20 +0100
Message-Id: <1574712200-6547-1-git-send-email-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.7.4

From: Ming Liu <liu.ming50@gmail.com>

distro_features_check has been deprecated in OE.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 recipes-mac/ccs-tools/ccs-tools_1.8.4.bb                                | 2 +-
 .../google-authenticator-libpam/google-authenticator-libpam_1.05.bb     | 2 +-
 recipes-security/packagegroup/packagegroup-core-security-ptest.bb       | 2 +-
 recipes-security/sssd/sssd_1.16.4.bb                                    | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
index 189504a..2e37c0b 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
@@ -15,7 +15,7 @@ SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f1674
 
 S = "${WORKDIR}/${PN}"
 
-inherit distro_features_check
+inherit features_check
 
 do_make(){
     oe_runmake USRLIBDIR=${libdir} all
diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
index 73b802f..2181629 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
@@ -10,7 +10,7 @@ DEPENDS = "libpam"
 
 S = "${WORKDIR}/git"
 
-inherit autotools distro_features_check
+inherit autotools features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
diff --git a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
index 39873b8..83a9ed8 100644
--- a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
@@ -3,7 +3,7 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-inherit distro_features_check
+inherit features_check
 
 REQUIRED_DISTRO_FEATURES = "ptest"
 
diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 34bc8c8..089a99e 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -14,7 +14,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
 SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
 SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
 
-inherit autotools pkgconfig gettext python-dir distro_features_check
+inherit autotools pkgconfig gettext python-dir features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
-- 
2.7.4

