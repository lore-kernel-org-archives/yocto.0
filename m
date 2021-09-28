Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62F5C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 23:39:13 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.2111.1632872352763236787
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:39:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bGkuRVws;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 nn5-20020a17090b38c500b0019af1c4b31fso390759pjb.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ZHUNFWT81QRBhjqcf/rn6v0laJ4x7XDpREc7qCsOM/0=;
        b=bGkuRVwsYjxBzHDrk5AO1Q1mEjxRvUYPLHkCWLFTy0Cj7Ri3IYFozYd7uJikLScrJd
         o0OBQh0S8rKay3rb7g2Jf/y9Fxsrckcviqv5OA7deJL6hybJBKJrLSKx5n5JxA7tc3kR
         VezlFX+9celtJJBPkdfoAaEHAay8Fch/rHZllcA/Bt/PxOsI9Uw91RKlvYbd+MZkqNJp
         kQHHbVKE17y1hteMtSrZTVj8YP/l+HJiSixZcLXPilJMhNT9mQOKHK4QRvY0fWF6RuDa
         N8kAO0vaCiUO6jye7OKRrL6wGvz6pZ8C3aKkjS6/CgfQ4hF6/C74AydONTCoz2vidyWs
         Gg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZHUNFWT81QRBhjqcf/rn6v0laJ4x7XDpREc7qCsOM/0=;
        b=dVSljtdb7+nX8U7pfqn7Fus88PzIWwqhgqDwpOQVYhShDht3AnBkoNhbaINoaEt0bF
         uBsY5wI4+PW487HgePl1vDSNvWxz6rFnm3/Pu1unRvpkzTuF6GETaWDySFchbGnRGmBA
         Jwtqtv71iNfghSBSu6zIkpc4GFKyLbJOIqrf1jAHBPSsoaDKnzShwceW8O2PKbmVx+tu
         RNufFr0k0ZcDyMGyDXfrSCgjs2ceUa3FDf5MCfLl9hhFJNhCmYNfQMRIcBkdR2zwXBfQ
         ih6K6YX7Lm4de/E6ESEP6Fvt4CtHoNXFWA6ZAM5E7NB0matncxTVR+gPwS0l4cNEiuhR
         r3mw==
X-Gm-Message-State: AOAM5327nvH8keXvwQiOLSm+zjLkSxfMZWoLrcMdithR1mRkzGbyhAPl
	wxbJwb4+UIUd++af6laau/1O2xBetz0=
X-Google-Smtp-Source: 
 ABdhPJxq1kZg3n3cwNfb1VA7DUjC5g/i9QUpZ8CbrHGPBt5eGPx9fGXA73zd5Kqv6bnqfvyAAgLhfQ==
X-Received: by 2002:a17:90a:5889:: with SMTP id
 j9mr2888658pji.91.1632872352140;
        Tue, 28 Sep 2021 16:39:12 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b669:1b22:84ea:4511])
        by smtp.gmail.com with ESMTPSA id
 fh3sm3595052pjb.8.2021.09.28.16.39.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 16:39:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] swtpm: fix build issues of missing expect
Date: Tue, 28 Sep 2021 16:39:09 -0700
Message-Id: <20210928233909.3574965-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210928233909.3574965-1-akuster808@gmail.com>
References: <20210928233909.3574965-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 23:39:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54899

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
index 807c02b..d602ee0 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
 SECTION = "apps"
 
 # coreutils-native and net-tools-native are reportedly only required for the tests
-DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
+DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib expect expect-native"
 
 SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
@@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
 # used by swtpm-create-tpmca (the last two is provided by gnutls)
 # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
-PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
+PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, bash tpm2-pkcs11-tools"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
 PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
 PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
-- 
2.25.1


