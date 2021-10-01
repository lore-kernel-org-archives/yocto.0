Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E884C433F5
	for <webhook@archiver.kernel.org>; Fri,  1 Oct 2021 22:25:21 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web08.4202.1633127120073101991
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 15:25:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nSQST6Jy;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id y1so7166802plk.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 15:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sXHbUmE3X5jfrkZC2NhVNP7H6dIBCtWepUYruzWMq68=;
        b=nSQST6JyrK2cVWpXW6fWZjMJva3EJpgY64hPloYZyVdeIu4js/ua9TcPPppcfyO+IY
         eW0OhIv3QAPpvKqnmBT5LOEzgqrBsyKqhk1UL/TmSi0EduR01jQMpoU0caXwfsOAJQu6
         4zdJvG7RN6YhDT0PQ/yfobLqPPwsgrysISTPWf9fCLvvr4zpECK0NCB3WqhIlyd9PxIY
         FPSUY98Rov6c1hs+nFu6AH/Lkq50EVeaERqGbZaebaB8TO/7N0wzFowxDwraJ2T7+vnz
         niJsJMP7iitVd25+xBOkNc2UInp/pxZ9UnSoyQtiMiBI+5+2T5gPS9o55MjbYY3Ze1E4
         6Htw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sXHbUmE3X5jfrkZC2NhVNP7H6dIBCtWepUYruzWMq68=;
        b=tyLQLaWz/7NfoR1l174BKY5e4nsE1pBP/I+ERzXiHvy+Hfr3C04nEftQi9w7SmszNM
         7ohp4TnIP/QWw8bMkDlw0i2PUdolvIl6ErAUAvlmTjYL5s6k//cpRSTXA16ZE1SgCUt6
         MiooOrXtrlDeGseZVaKp10eirhARkCIyq3QKRAQAu8iHstF0AmQFWqUPdvVN7wFfL30F
         WuSRxgjgmP5THHdXCo7B3csYm9GcUd6gZ05uFRtdYiPcdnXrzIFVl6ajTzCm6OeJN2oG
         u5ljeavp7d2aRnz9xGXUMVBkI9WQYH3vzvYp74rGg0eRKzzTpTBIUoWsuRJjfZous8Bo
         BFjg==
X-Gm-Message-State: AOAM5302ujq3Mnd2+ky9q3ixY3Wh1WHnG26ZsEopXSNlTAC1V/vpeblM
	q2ZDrjpifTUXq3N8LsBfZbHKzTfNNbA=
X-Google-Smtp-Source: 
 ABdhPJyKH1f3bHgOT77ra+bQ8HF+8TryVLB1XcD007j7CB7DaDae1rNrFVW45LrQGVtbJbSrXfGDcg==
X-Received: by 2002:a17:90a:7301:: with SMTP id
 m1mr15976573pjk.34.1633127118962;
        Fri, 01 Oct 2021 15:25:18 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:c996:f22:7659:cf41])
        by smtp.gmail.com with ESMTPSA id w8sm1898924pfd.4.2021.10.01.15.25.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 15:25:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-tpm][v2][PATCH] swtpm: fix build issues of missing expect
Date: Fri,  1 Oct 2021 15:25:17 -0700
Message-Id: <20211001222517.2359884-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Oct 2021 22:25:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54928

Signed-off-by: Armin Kuster <akuster808@gmail.com>

--
V2]
Only need expect-native
Clean up PACKAGECONFGI[gnutils] to conform to spec
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
index 807c02b..0087367 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
 SECTION = "apps"
 
 # coreutils-native and net-tools-native are reportedly only required for the tests
-DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
+DEPENDS = "libtasn1 coreutils-native expect-native socat glib-2.0 net-tools-native libtpm json-glib"
 
 SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
@@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
 # used by swtpm-create-tpmca (the last two is provided by gnutls)
 # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
-PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
+PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls expect bash tpm2-pkcs11-tools"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
 PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
 PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
-- 
2.25.1


