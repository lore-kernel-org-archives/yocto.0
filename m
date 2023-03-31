Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E408BC76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:39 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.59680.1680279689910662146
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=V4R51aNU;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id j36-20020a05600c1c2400b003f04057c152so2121212wms.5
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279688; x=1682871688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRBT5qs+TYyOf3Ci+3sm7CCHT4+c7t9Z8Tsdi+XwKSk=;
        b=V4R51aNUEAFHRHnb0mLLHeL7hktiD7ZjnAwsTxt/ctNUvnrKeB/14VIxMytnPmn+Ml
         kIOMDwZJ8C/Nwo87pB5Y9RO9T/6shO23CEVWQWut/tN1LGq+NIa8n0NUlW95Uk/lNvFy
         8/93tmGQGpEv1sKiEc4E9QOC6ldVBWtyCsinFM8LNdTwrwM4Ae7V3xK7jj7G1MbBkiFo
         Tyq2gR3Z2bLw9UoOTDuYpwyVuAptvNMLefrR2kx2lo1Y5Qn2JImOINlRVbxT070jXvr9
         zLY+cjiHbNceIefzRymEJX2pnm7kBUz+bW19uaRiO+1MLz4mloOpmVxT05fI+pgU/wuy
         buuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279688; x=1682871688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRBT5qs+TYyOf3Ci+3sm7CCHT4+c7t9Z8Tsdi+XwKSk=;
        b=Gz49VksSEJ8PPlgcgQW9M2bAVoAbUdBAHysyfoMim3L0vRL8cRCEUmW13optBQI7Oz
         5eBbd4lhWcuMaiHot/EysS/3qQ2S7bwqdS5aX12AkILkx/nPt9MWOC7gJDJ6xNUy27ZO
         IVInkb9ri5PRSiDbRj+tLrEfhdHXIOOYzuKDjGwmX5+aUKHiDanPNxrLYpkMdl00/CbK
         VNYNNZ6fpzl03+FMoWFyTPH67oZ6Wk2UOyEHa4nzK8RQmc9VPjXl+pEGtM6lHOuQ8hvU
         c2/FB93A/bwWPiSIDHo2n2i1y57NFkLXIRXOMSUzGmnTCd60prFVuwTgJbolWjm2NLoZ
         Vo5g==
X-Gm-Message-State: AO0yUKWOYDFzd88TrE2ja+lCwvTh7SgODBjRe7uLbby2/m0cFH8QcZi9
	m73URPPGWl1FmR/WPma/Rn5vAt6M6WdZZyQL
X-Google-Smtp-Source: AK7set9rDXWT46WFiBJnwh3EwKOgRmekrDfGSXv4oLSh1L5SjBs835a6l+OFJRN8U10N1R0BYaVRlA==
X-Received: by 2002:a7b:ce08:0:b0:3eb:4150:a476 with SMTP id m8-20020a7bce08000000b003eb4150a476mr19914922wmc.0.1680279688103;
        Fri, 31 Mar 2023 09:21:28 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:27 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Alexander Kanavin <alex.kanavin@gmail.com>,
	Alexander Kanavin <alex@linutronix.de>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 12/16] go: update 1.20 -> 1.20.1
Date: Fri, 31 Mar 2023 16:20:38 +0000
Message-Id: <20230331162042.1801766-12-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59581

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/go-1.20/{go-1.20.inc => go-1.20.1.inc}     | 2 +-
 ...{go-binary-native_1.20.bb => go-binary-native_1.20.1.bb} | 6 +++---
 ...o-cross-canadian_1.20.bb => go-cross-canadian_1.20.1.bb} | 0
 .../go-1.20/{go-cross_1.20.bb => go-cross_1.20.1.bb}        | 0
 .../go-1.20/{go-crosssdk_1.20.bb => go-crosssdk_1.20.1.bb}  | 0
 .../go-1.20/{go-native_1.20.bb => go-native_1.20.1.bb}      | 0
 .../go-1.20/{go-runtime_1.20.bb => go-runtime_1.20.1.bb}    | 0
 recipes-devtools/go-1.20/{go_1.20.bb => go_1.20.1.bb}       | 0
 8 files changed, 4 insertions(+), 4 deletions(-)
 rename recipes-devtools/go-1.20/{go-1.20.inc => go-1.20.1.inc} (89%)
 rename recipes-devtools/go-1.20/{go-binary-native_1.20.bb => go-binary-native_1.20.1.bb} (78%)
 rename recipes-devtools/go-1.20/{go-cross-canadian_1.20.bb => go-cross-canadian_1.20.1.bb} (100%)
 rename recipes-devtools/go-1.20/{go-cross_1.20.bb => go-cross_1.20.1.bb} (100%)
 rename recipes-devtools/go-1.20/{go-crosssdk_1.20.bb => go-crosssdk_1.20.1.bb} (100%)
 rename recipes-devtools/go-1.20/{go-native_1.20.bb => go-native_1.20.1.bb} (100%)
 rename recipes-devtools/go-1.20/{go-runtime_1.20.bb => go-runtime_1.20.1.bb} (100%)
 rename recipes-devtools/go-1.20/{go_1.20.bb => go_1.20.1.bb} (100%)

diff --git a/recipes-devtools/go-1.20/go-1.20.inc b/recipes-devtools/go-1.20/go-1.20.1.inc
similarity index 89%
rename from recipes-devtools/go-1.20/go-1.20.inc
rename to recipes-devtools/go-1.20/go-1.20.1.inc
index 139f8d1..aa3e2da 100644
--- a/recipes-devtools/go-1.20/go-1.20.inc
+++ b/recipes-devtools/go-1.20/go-1.20.1.inc
@@ -15,4 +15,4 @@ SRC_URI += "\
     file://0008-src-cmd-dist-buildgo.go-do-not-hardcode-host-compile.patch \
     file://0009-go-Filter-build-paths-on-staticly-linked-arches.patch \
 "
-SRC_URI[main.sha256sum] = "3a29ff0421beaf6329292b8a46311c9fbf06c800077ceddef5fb7f8d5b1ace33"
+SRC_URI[main.sha256sum] = "b5c1a3af52c385a6d1c76aed5361cf26459023980d0320de7658bae3915831a2"
diff --git a/recipes-devtools/go-1.20/go-binary-native_1.20.bb b/recipes-devtools/go-1.20/go-binary-native_1.20.1.bb
similarity index 78%
rename from recipes-devtools/go-1.20/go-binary-native_1.20.bb
rename to recipes-devtools/go-1.20/go-binary-native_1.20.1.bb
index ee6b84c..3eb80fd 100644
--- a/recipes-devtools/go-1.20/go-binary-native_1.20.bb
+++ b/recipes-devtools/go-1.20/go-binary-native_1.20.1.bb
@@ -9,9 +9,9 @@ PROVIDES = "go-native"
 
 # Checksums available at https://go.dev/dl/
 SRC_URI = "https://dl.google.com/go/go${PV}.${BUILD_GOOS}-${BUILD_GOARCH}.tar.gz;name=go_${BUILD_GOTUPLE}"
-SRC_URI[go_linux_amd64.sha256sum] = "5a9ebcc65c1cce56e0d2dc616aff4c4cedcfbda8cc6f0288cc08cda3b18dcbf1"
-SRC_URI[go_linux_arm64.sha256sum] = "17700b6e5108e2a2c3b1a43cd865d3f9c66b7f1c5f0cec26d3672cc131cc0994"
-SRC_URI[go_linux_ppc64le.sha256sum] = "bccbf89c83e0aab2911e57217159bf0fc49bb07c6eebd2c23ae30af18fc5368b"
+SRC_URI[go_linux_amd64.sha256sum] = "000a5b1fca4f75895f78befeb2eecf10bfff3c428597f3f1e69133b63b911b02"
+SRC_URI[go_linux_arm64.sha256sum] = "5e5e2926733595e6f3c5b5ad1089afac11c1490351855e87849d0e7702b1ec2e"
+SRC_URI[go_linux_ppc64le.sha256sum] = "85cfd4b89b48c94030783b6e9e619e35557862358b846064636361421d0b0c52"
 
 UPSTREAM_CHECK_URI = "https://golang.org/dl/"
 UPSTREAM_CHECK_REGEX = "go(?P<pver>\d+(\.\d+)+)\.linux"
diff --git a/recipes-devtools/go-1.20/go-cross-canadian_1.20.bb b/recipes-devtools/go-1.20/go-cross-canadian_1.20.1.bb
similarity index 100%
rename from recipes-devtools/go-1.20/go-cross-canadian_1.20.bb
rename to recipes-devtools/go-1.20/go-cross-canadian_1.20.1.bb
diff --git a/recipes-devtools/go-1.20/go-cross_1.20.bb b/recipes-devtools/go-1.20/go-cross_1.20.1.bb
similarity index 100%
rename from recipes-devtools/go-1.20/go-cross_1.20.bb
rename to recipes-devtools/go-1.20/go-cross_1.20.1.bb
diff --git a/recipes-devtools/go-1.20/go-crosssdk_1.20.bb b/recipes-devtools/go-1.20/go-crosssdk_1.20.1.bb
similarity index 100%
rename from recipes-devtools/go-1.20/go-crosssdk_1.20.bb
rename to recipes-devtools/go-1.20/go-crosssdk_1.20.1.bb
diff --git a/recipes-devtools/go-1.20/go-native_1.20.bb b/recipes-devtools/go-1.20/go-native_1.20.1.bb
similarity index 100%
rename from recipes-devtools/go-1.20/go-native_1.20.bb
rename to recipes-devtools/go-1.20/go-native_1.20.1.bb
diff --git a/recipes-devtools/go-1.20/go-runtime_1.20.bb b/recipes-devtools/go-1.20/go-runtime_1.20.1.bb
similarity index 100%
rename from recipes-devtools/go-1.20/go-runtime_1.20.bb
rename to recipes-devtools/go-1.20/go-runtime_1.20.1.bb
diff --git a/recipes-devtools/go-1.20/go_1.20.bb b/recipes-devtools/go-1.20/go_1.20.1.bb
similarity index 100%
rename from recipes-devtools/go-1.20/go_1.20.bb
rename to recipes-devtools/go-1.20/go_1.20.1.bb
-- 
2.34.1


