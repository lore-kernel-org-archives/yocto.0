Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CB4FC87FD2
	for <webhook@archiver.kernel.org>; Fri,  8 Aug 2025 10:02:48 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.18741.1754647367338528433
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Aug 2025 03:02:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L5wFv+EJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-617d24e7246so2353190a12.2
        for <yocto@lists.yoctoproject.org>; Fri, 08 Aug 2025 03:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754647365; x=1755252165; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ki0fi9S2rmaiJxm2jzAZM9244Gt6+WCag4yLReMnOyI=;
        b=L5wFv+EJaA4YMLBkMmxdP2mjrEAQh34clTvcx3FjoVHBcJkWrP1V+yesGBClY4ug6X
         KKv0FiN7nV9DVcVFWtYAuKyUdKx26nPIH+XaHkVXCa41W/SCufwkT75B4awTr0/RNMix
         /xEnseyCvbEjVyseZLBzt35ZGQ/ebq9N+lNs9Dt0oQZE5iE4OurHOcyvmc+9HZyfnYqI
         nkYbvQu3QISD1oeE49HZDkmjNvkXOIWXS7s0Df9ce7mT7sRn6M019ASYiAHyt9cJqR/p
         ouL2DqfIZVQhXNefc0QCeKBK450POwS/7liUX5NfL3Y+HXa3nJwUY5P/oFFA7wVCrpq2
         /B4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754647365; x=1755252165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ki0fi9S2rmaiJxm2jzAZM9244Gt6+WCag4yLReMnOyI=;
        b=W/AoMoIAce+zjVHm2aRGXwqi77bikTAJNqo0u1qPjER+zPNNdF7QSvNv2bzAK+r1NR
         aslKOgVKX2LmcbYb/MwSG3PPlRt+37dy4G9tpQ+k0/BjUrE3UtVRRWj3700H2pTBfRp8
         qf0EVhNkGIpC46Lu+fRkeC6ivUQzDwwKZy9MnkYqIOxUraHuqkcgGkFoQg2onBQEfbz6
         I0IvzL0xVDpiz8vIxm7gzZspkOe3CE9c4opalHXdcm8zobseU8Ppx/AcTl5fBaX1GBe2
         iXSOAwc7692/DqGUs9t8pdpocX7EG0CMP3Z/psGN6PbFM6cMO/Mg3oPQgNe20AXbs6WX
         Xabw==
X-Gm-Message-State: AOJu0YyBDpPQv59RAOuNsGUDN3Mri9ZQzORMpZK+PwQnLRMoAdzJda2a
	L0P3onzGxbgu6745bHHPj51hQV3gvfv5RCY6YOdn25CpFOM9J6pxCZpbBgI27JjfPbY=
X-Gm-Gg: ASbGncsdNPJTTkrKTTgGT7c4lnfW02sEDu1+X5oVgTNFkCeJMRgip7bWwCE/+pMITPW
	vvgkt6RzrELyv5quBQDCZTSuqxap9qlQlBm9kxe3ZXTx1S65e3gB47HsNhBBA+fYX455Y+Rzcw7
	crDkwFkuOvUr+fqp42O+cpHa062EI6l9EY0PD2BXxIcoD9sz3ADo2NIryd2aqlIYEXM/st44+ir
	Yx/PiGmTae7l3Yg5kUUj+68CYiPqpwL3QwKqSPZwEkSA2J9DYR4zUfO8unuUKN4CQ6qmtH/Bh+E
	fHIKEurkvK67hBSnQJMlanAek8FFNN/G5gGjVhlfe5M/ZGB2DQqkDuTEhHjQD9Exx0TRrSABtHe
	H0AHPjib86WVuH0jmdHdAfxek
X-Google-Smtp-Source: AGHT+IFZr3Jd2hl92zbSJ5EtmCkLqrZRbM8rYjTmkTJDAq/xdkFpP6kmzIpsUo1N79Tte17lKU/8KQ==
X-Received: by 2002:a17:907:7202:b0:ae3:f2a0:459f with SMTP id a640c23a62f3a-af9c64fcd3bmr217992066b.54.1754647365142;
        Fri, 08 Aug 2025 03:02:45 -0700 (PDT)
Received: from XPS.. ([2a02:908:1b0:afe0:b741:6075:b0bb:967e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a23bedcsm1467086966b.120.2025.08.08.03.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 03:02:44 -0700 (PDT)
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: raj.khem@gmail.com,
	Osama Abdelkader <osama.abdelkader@gmail.com>
Subject: [PATCH v2] go-cross-canadian: fix binaries install and GOARCH
Date: Fri,  8 Aug 2025 12:02:39 +0200
Message-ID: <20250808100240.82643-1-osama.abdelkader@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Aug 2025 10:02:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65741

Canadian cross builds produce host-side binaries (x86_64), but
GOARCH=arm was leaking in from go-${PV}.inc/go-common.inc, causing
arch mismatch and package QA errors. Explicitly set GOARCH = "${HOST_GOARCH}" to
ensure the correct host architecture is used.

Also fix do_install to correctly install all binaries from
${GO_BUILD_BINDIR} by using 'find -type f' to avoid issues when the
directory contains subdirectories (e.g. "linux_arm").

Signed-off-by: Osama Abdelkader <osama.abdelkader@gmail.com>
---
changes in v2:
- Use ${HOST_GOARCH} instead of hardcoded amd64 for GOARCH
---
 meta/recipes-devtools/go/go-cross-canadian.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/go/go-cross-canadian.inc b/meta/recipes-devtools/go/go-cross-canadian.inc
index 39330fc98b..4a6f2f4c36 100644
--- a/meta/recipes-devtools/go/go-cross-canadian.inc
+++ b/meta/recipes-devtools/go/go-cross-canadian.inc
@@ -5,6 +5,8 @@ DEPENDS = "go-native virtual/${HOST_PREFIX}go virtual/nativesdk-${HOST_PREFIX}go
            virtual/nativesdk-compilerlibs"
 PN = "go-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 
+GOARCH = "${HOST_GOARCH}"
+
 # it uses gcc on build machine during go-cross-canadian bootstrap, but
 # the gcc version may be old and not support option '-fmacro-prefix-map'
 # which is one of default values of DEBUG_PREFIX_MAP
@@ -51,7 +53,7 @@ do_install() {
 	install -d ${D}${libdir}/go/pkg/tool
 	cp --preserve=mode,timestamps -R ${B}/pkg/tool/${HOST_GOTUPLE} ${D}${libdir}/go/pkg/tool/
 	install -d ${D}${bindir} ${D}${libdir}/go/bin
-	for f in ${B}/${GO_BUILD_BINDIR}/*
+	for f in $(find ${B}/${GO_BUILD_BINDIR} -type f)
 	do
 		base=`basename $f`
 		install -m755 $f ${D}${libdir}/go/bin
-- 
2.43.0


