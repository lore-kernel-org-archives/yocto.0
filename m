Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 024E0C433EF
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 14:55:01 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.37945.1653922498698973315
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UGlgd53J;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id
 m14-20020a17090a414e00b001df77d29587so14019269pjg.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=znYY7ivYJNQzMo/3k1QYNQwkqy5JszbdQXPaisYmGdU=;
        b=UGlgd53JbPQNZcA3mEauHZuG1SV73I87jCv8bN0l+6Wj2YcEzWgv2WlbPJXjXkfDt3
         0eeS6iPXseZ+PHpdsCmFpojLQE4iyqULoaZn+u3xV4cBsNZ75DD7cWHnKUTpXfE+mmPw
         h4madkZ5UsDEzQRNvYXEuyMczT0PUoZ6nrjwbwXQEGUrg1KDOqvIzEB7y1/ty9Ja3mcK
         tQiJ5qMprapEqmRi87cxg6AA6tX+6Okt2/cdX1TLCFBaGLZuL2fi3kFAbEYpYM5oD40n
         F5CTt/128vWrRRE0ZiISL2Rs3cBHqCnn+gazQ7PKb+yjzfc7td/gM2lFVe+XCkfLFyvp
         34Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=znYY7ivYJNQzMo/3k1QYNQwkqy5JszbdQXPaisYmGdU=;
        b=6T27om9ktonlPmTOGgBPeCMbthckpXENJYPuZSxW8siNSyri5fKQYgM5JXOjZ7W7WW
         zlXglwFc/OLGtuXOQpO96npUVXh7w0GDtWXsXFs5RMRp1RKzjud/WK2+Hz433QhDldSE
         kJgHE2hfhbRsQcSQhxKCNy3WOFOTVUea/m0tme2JVba2HOigumK6DRw8FhYtoHPMqI4p
         u+GsSdn8gDlQzPhyI7GBdljtyx8I0TtCGEF++4x+M6wsVnBHMIb2ygXdvICWpvUto+Qy
         s1uphDM6LB3hhvnNvg3ZGjZd1e9Kk449+YPblPOFmuiNOwoBCuHmnT1qOQZafDotoJKM
         LsaQ==
X-Gm-Message-State: AOAM532rvTNe+ElNgNAJWp334g9EvDUhpal/1blJ6VHujE0aZkzxUiE+
	wSu5epeyQb5+HQoGyGeLkHvOP0Ygzio=
X-Google-Smtp-Source: 
 ABdhPJx4iXCA7GDfAGsrx5Vw8OUX2ERPIiqRlQcB899qx2Op23k/bQj+qnSbADrJrDHOwDL7nE9zAg==
X-Received: by 2002:a17:903:3015:b0:163:c6a5:dcb with SMTP id
 o21-20020a170903301500b00163c6a50dcbmr9049273pla.38.1653922497883;
        Mon, 30 May 2022 07:54:57 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 q13-20020a170902b10d00b00163c9ad14efsm3480339plr.143.2022.05.30.07.54.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 07:54:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-tpm][PATCH 3/5] swtpm: enable gnutls
Date: Mon, 30 May 2022 07:52:50 -0700
Message-Id: <20220530145252.4059103-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220530145252.4059103-1-akuster808@gmail.com>
References: <20220530145252.4059103-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 14:55:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57221

needed for cert support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
index db6ceee..03899d8 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
@@ -20,7 +20,7 @@ inherit autotools pkgconfig perlnative
 TSS_USER="tss"
 TSS_GROUP="tss"
 
-PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG ?= "openssl gnutls"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'seccomp', 'seccomp', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('BBFILE_COLLECTIONS', 'filesystems-layer', 'cuse', '', d)}"
@@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
 # used by swtpm-create-tpmca (the last two is provided by gnutls)
 # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
-PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
+PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls-native gnutls, gnutls-bin expect bash tpm2-pkcs11-tools"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
 PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
 PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
-- 
2.25.1


