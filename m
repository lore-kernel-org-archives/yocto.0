Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13B16C54E67
	for <webhook@archiver.kernel.org>; Sat, 23 Mar 2024 21:04:01 +0000 (UTC)
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
 by mx.groups.io with SMTP id smtpd.web11.17690.1711227838151396635
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Mar 2024 14:03:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=d1v2zARZ;
 spf=pass (domain: konsulko.com, ip: 209.85.216.65, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-29c731ba369so2246725a91.3
        for <yocto@lists.yoctoproject.org>; Sat, 23 Mar 2024 14:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1711227837; x=1711832637; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H0NZH+qtT69EoMA0NDWawV4XkG+nJD6j7k0GpeJptaE=;
        b=d1v2zARZmd6e8OFYJfk5PDJ3yLW6KMKYHWVY9rWfrOfJPrvUl1aypyeIoe6Upiybs8
         ol8x2FfiTjnVxSbW7ZPEeYoeioPAt/fs7sCmPgRiN1r1vxhUhTNecRacAGB7g7I0+crO
         ZPGlAc28Vn/WzLWba8VKHY5wyDv4FKVCKGIKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711227837; x=1711832637;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0NZH+qtT69EoMA0NDWawV4XkG+nJD6j7k0GpeJptaE=;
        b=MkrveWzkyVo4TTj3qj5zNEWwsZ5vIM40yPOfhss48d9rzAaOIUkp/uXppSbJLqG9NE
         qsy8i2ePP/TldWrx7bsJDiRUzaeKLIHw6rl2zU6ed2wYsElc7EXGGKJOvd14X4zsFKX8
         VSZfjViwOgPNQVUVFnjSOaXRd9dNJHKZKYmwb9mOWfIqYpn2U4UxD468lIj6TgNPXFJU
         xVaFbLyWJooyq6vaqCy6PeLsj2T202jLUbjbQWdGmLvDGisBibjJYVZkd0WhVpSnR1Z6
         ySkw87Zbj0ABR6aIwu7UayodgU+jfwXdJtN9bnc6YbatJTFqWJs3g7+Qnxck9nQpl0CR
         RvqA==
X-Forwarded-Encrypted: i=1; AJvYcCW52Aezaaigxx+OQjnmO0o5f16/0izVQWvHFhKTZLz7nDz/7V0d+G4w48Yl0B7G3L0MRbtVABQuk/8IqNGy2XkbZ8RIOjiUZU4ezAYY
X-Gm-Message-State: AOJu0YyIKIf8qk4Trn6eOFMudiwzd9oKsaoDm1ic4e9lygWhvLHtOkoA
	xndSWgie+i6Ep/bTYktDwe6qniU+6J7vtJhmYdZmjCCLc80+A0+JElj2uEMa85E=
X-Google-Smtp-Source: AGHT+IHgK/2d/GsbsL7DUr6YSRtxcqwKDAxhKpBWSk7VbU+0XyO42OXDKJ8ClY7/LfQjNsuBMDiQ5A==
X-Received: by 2002:a17:90b:1282:b0:2a0:5181:682b with SMTP id fw2-20020a17090b128200b002a05181682bmr1403024pjb.33.1711227837550;
        Sat, 23 Mar 2024 14:03:57 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:7342:474:f6f9:78a6])
        by smtp.gmail.com with ESMTPSA id so10-20020a17090b1f8a00b0029c5ed2c9b3sm4039344pjb.21.2024.03.23.14.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 14:03:57 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: openembedded-devel@lists.openembedded.org,
	yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [meta-java][PATCH] ca-certificates-java: fix virtual/ warning; add branch
Date: Sat, 23 Mar 2024 14:03:47 -0700
Message-Id: <20240323210347.2967400-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Mar 2024 21:04:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62829

* add branch
* add https protocol

* Fix:
  QA Issue: RDEPENDS is set to virtual/java-native but the substring
  'virtual/' holds no meaning in this context. It only works for build
  time dependencies, not runtime ones. It is suggested to use
  'VIRTUAL-RUNTIME_' variables instead. [virtual-slash]

* Fix:
  WARNING: recipes-core/ca-certificates-java/ca-certificates-java_20180516.bb:
  URL: git://salsa.debian.org/java-team/ca-certificates-java.git does
  not set any branch parameter. The future default branch used by tools
  and repositories is uncertain and we will therefore soon require this is
  set in all git urls.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 .../ca-certificates-java/ca-certificates-java_20180516.bb      | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-core/ca-certificates-java/ca-certificates-java_20180516.bb b/recipes-core/ca-certificates-java/ca-certificates-java_20180516.bb
index 460d39a..2405b30 100644
--- a/recipes-core/ca-certificates-java/ca-certificates-java_20180516.bb
+++ b/recipes-core/ca-certificates-java/ca-certificates-java_20180516.bb
@@ -17,7 +17,7 @@ DEPENDS = "virtual/javac-native fastjar-native"
 PACKAGE_WRITE_DEPS += "openjdk-8-native"
 
 SRC_URI = "\
-	git://salsa.debian.org/java-team/ca-certificates-java.git \
+	git://salsa.debian.org/java-team/ca-certificates-java.git;branch=master;protocol=https \
 	file://0001-UpdateCertificates-handle-SYSROOT-environment-variab.patch \
 	file://${BPN}.hook.in \
 "
@@ -100,7 +100,6 @@ pkg_postinst:${PN} () {
 
 RDEPENDS:${PN} = "ca-certificates"
 RDEPENDS:${PN}:append:class-target = " java2-runtime"
-RDEPENDS:${PN}:append:class-native = " virtual/java-native"
 
 FILES:${PN} += "${datadir_java}"
 
-- 
2.34.1


