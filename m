Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CD08C87FCF
	for <webhook@archiver.kernel.org>; Thu,  7 Aug 2025 22:44:24 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.8953.1754606658266681120
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 15:44:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N72fE4hY;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-af9180a11bcso316010666b.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 15:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754606656; x=1755211456; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IdEygz3NdyfZHMeYbynvUis/7fBAxlQBfPkcZFtBPLI=;
        b=N72fE4hYidHIiJMjffcaB7nmJS4bvB025yKe9CLMMtYZ1m8nKAOz5nH1KV8NGtTdHC
         4uWx1QUKR/hz7WrThi8vyqChCpey476+h7NVBRPqbCY9D/DoAlttJZjTSknD1dwwrIfw
         AgfuJ1Anu9D9tywZsekaPQw5R3ltLnPMvqaw9aISLZSY8ZbGtXU3JlSUJokJKpNhrDVi
         KUjo8XhhastDihH3j+/9he4FG4cRvUX6B9m9hry03XC9/7j8dO3X2XxGp8nm5vZGmGow
         XSwPkNRqIC1IB8UBpxltgtqJxWtnpdvXmSrKYhApib8A4vQUg+2Jzg0dqZqOcOdaZIkW
         jxtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754606656; x=1755211456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IdEygz3NdyfZHMeYbynvUis/7fBAxlQBfPkcZFtBPLI=;
        b=VbLIQGlNam5nNa9tcBkPt6WUHJfjE/4DcEghzBJc1O21skDa+F1uWwVbHEmKJktKae
         GBpbi3im9skCvoF6ZYURTod4aniRlAOI721SDupDLg4sXssrWitYQsqnHKx1T+5YYFAV
         cuO+IUI+XQAaMHqdviONXSUV3AiziLI/65XoCuHsT2/DraY6JepEuZDmGpo+MAfSGaHD
         /aP3SFR+TbJJGVI+P/VFuX+aOJJ52qAAKooWz8sX8qlpGbgSHTbFXmfWh4D+H3qCHFZf
         6joKnZntM8IYOhQOqSDc2qX+77BDM6tUreU5CK76000JB6Ify0l6+tFDceLWFIZQLedR
         BAOw==
X-Gm-Message-State: AOJu0YwPKk2Vb2jMVPUs4w2m9B0vf+sPuswStdc6EOKF0jIVHQb0NbZX
	uRklCjvh7NCF+9y19HyoaaY3lSDvRo+ZBuPu2yMactLqX41UD80b0T1boD8T47WXB6o=
X-Gm-Gg: ASbGncs1imszxu7ZjXTMR0QK49k7bZqhMDJruFIpQq6eInH5Uy+M4Mn14RDF6iFzt5i
	iRBPF97TfuExuAr5uGOvelgniSoSbQIC6tazekaglE2BNLhcxcm070JeDXwhkQrWpmxQnyFM0k1
	616f5sPYJQwDltvg2snDXP6CdVLTvtYcYtGvXvmBkpJSSDKF296nfI3kqpk5DuAN4kQVbsr3gmt
	X5QhONGKBTY7z4Wd4kKOHT40oJRfUvR7E19Hbcf/eXVwcHVeMCs7yno2tRUfROD0iLBymnrhryp
	UYncirCPyZbwfIq+gXMZMnkk9WzLIHsVQvlYaB8X4A2dxxDXW4D5T/gp0MaLAEUATa8xVp1/o/o
	osHZEVF5rIZtCKnkyyM+RSOJuoXm+9Kshjg==
X-Google-Smtp-Source: AGHT+IEastU0fZ0zHms5QoE09C5k01ZaVy+XyEZzOwT53dXrUdn9tlIfgg1U3BuYPy8ryF5r3sLopQ==
X-Received: by 2002:a17:907:3e21:b0:ae6:c334:af3a with SMTP id a640c23a62f3a-af9a3c592b6mr524679066b.6.1754606656345;
        Thu, 07 Aug 2025 15:44:16 -0700 (PDT)
Received: from XPS.. ([2a02:908:1b0:afe0:80d3:7c34:5dca:a28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a07659dsm1371668766b.21.2025.08.07.15.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 15:44:15 -0700 (PDT)
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: raj.khem@gmail.com,
	Osama Abdelkader <osama.abdelkader@gmail.com>
Subject: [PATCH] go-cross-canadian: fix binaries install and GOARCH
Date: Fri,  8 Aug 2025 00:44:06 +0200
Message-ID: <20250807224406.2384082-1-osama.abdelkader@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 22:44:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65739

Canadian cross builds produce host-side binaries (x86_64), but
GOARCH=arm was leaking in from go-${PV}.inc/go-common.inc, causing
arch mismatch and package QA errors. Explicitly set GOARCH=amd64 to
ensure the correct host architecture is used.

Also fix do_install to correctly install all binaries from
${GO_BUILD_BINDIR} by using 'find -type f' to avoid issues when the
directory contains subdirectories (e.g. "linux_arm").

Signed-off-by: Osama Abdelkader <osama.abdelkader@gmail.com>
---
 meta/recipes-devtools/go/go-cross-canadian.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/go/go-cross-canadian.inc b/meta/recipes-devtools/go/go-cross-canadian.inc
index 39330fc98b..14f0100bdc 100644
--- a/meta/recipes-devtools/go/go-cross-canadian.inc
+++ b/meta/recipes-devtools/go/go-cross-canadian.inc
@@ -5,6 +5,8 @@ DEPENDS = "go-native virtual/${HOST_PREFIX}go virtual/nativesdk-${HOST_PREFIX}go
            virtual/nativesdk-compilerlibs"
 PN = "go-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 
+GOARCH = "amd64"
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


