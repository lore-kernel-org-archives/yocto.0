Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20147C433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 10:39:39 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.7620.1643971178459793939
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 02:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KqPonUtg;
 spf=pass (domain: gmail.com, ip: 209.85.221.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id r17so1393409wrr.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 02:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=qbuRjzIIQU2cVFWTqDHLXchx5l3M7x/wYk7tYFZmaAg=;
        b=KqPonUtg4jo9DEmB8/qYVvdQorzOPpXRmQfPCpMvxL1r9IBbn9/TKWwp38hCvwk6+Q
         7KmmKMJpP+uzdwaZNWtDsYCd6scOtH50JvVD2EzrUsdQ1yjoEu4McVVBJNXgeIaJ1mKl
         89exvnxSi3h/V8R5fB3BFB5TDvvQ+jE6hEb+j0IZMhs1pALdHWo4wFFDfQum7Md6/E+Q
         WR9EUJB7qDHpb3hIrY8PuoP7sesIW3IxYdO+8xOBOY+xJNVp+tKuFLLzWbgorfmWl5e1
         J4l9gElJSjvAzHEXigPAUxJwwLPHPPUeI7lPQe6wL5bj0HDM09We+Ic7dY+A+ON9/6zY
         iGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qbuRjzIIQU2cVFWTqDHLXchx5l3M7x/wYk7tYFZmaAg=;
        b=HvZq4MO3yMsVVZWE3+cGbwrp1oVd56wqxDuY1HZpqnWJK760S211OLKdTNcMQCuHTs
         Vrs+tu3vvDdchFHk3MulEtXORAB6v8D3GVd0iHRQKN5UAvxMYnjpPuDQbcp94KCaFUrN
         lImXKIV+/clqBiqTCx+sX4l2QvnYdybAK4/mt6wvwcpscB0dO4NHgYLd+6frwaZisHa/
         q8aGHKRJxLfiS3aM5eeyCr/HK5fmpCVMSKgVMKuckU2gszV0OY594eBYtwLy5sGXSUwS
         njQNxbjV7DKC/GF3IIrbHkoajc87CQxhtnUKmMNke5DcM3npizkQc+qHadYP++ZHiLqA
         zLqw==
X-Gm-Message-State: AOAM532kUCNdqaTnp0qk+nvFfjbkdvCEk0VhbqQHdMPktTCvxeB+SRbw
	XrL7i0zVzK2jpAys9eBHgsMo/jQ/Kyg=
X-Google-Smtp-Source: 
 ABdhPJw9WW1rjAutnwlEdG0hl6UiC5ptt6UAu1WQImvPF9PnfWcjQu0bTXNkxgWSO1c18cQAhBpEbg==
X-Received: by 2002:a05:6000:10c:: with SMTP id
 o12mr1903127wrx.299.1643971177008;
        Fri, 04 Feb 2022 02:39:37 -0800 (PST)
Received: from nereus.lab.linutronix.de.
 (ip-109-090-143-203.um36.pools.vodafone-ip.de. [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 o10sm1765863wri.19.2022.02.04.02.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 02:39:36 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	adrian.freihofer@gmail.com
Subject: [meta-lts-mixins][dunfell/go PATCH 2/2] go-1.16: update 1.16.10 ->
 1.16.13
Date: Fri,  4 Feb 2022 11:39:34 +0100
Message-Id: <20220204103934.25380-2-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220204103934.25380-1-alex@linutronix.de>
References: <20220204103934.25380-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 10:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56067

Remove unneeded go-binary-native recipe, as the 1.17 version of it
is used to bootstrap go instead.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .../{go-1.16.10.inc => go-1.16.13.inc}        |  6 +--
 .../go-1.16/go-binary-native_1.16.10.bb       | 46 -------------------
 ....16.10.bb => go-cross-canadian_1.16.13.bb} |  0
 ...o-cross_1.16.10.bb => go-cross_1.16.13.bb} |  0
 ...ssdk_1.16.10.bb => go-crosssdk_1.16.13.bb} |  0
 ...native_1.16.10.bb => go-native_1.16.13.bb} |  0
 ...ntime_1.16.10.bb => go-runtime_1.16.13.bb} |  0
 .../go-1.16/{go_1.16.10.bb => go_1.16.13.bb}  |  0
 8 files changed, 2 insertions(+), 50 deletions(-)
 rename recipes-devtools/go-1.16/{go-1.16.10.inc => go-1.16.13.inc} (82%)
 delete mode 100644 recipes-devtools/go-1.16/go-binary-native_1.16.10.bb
 rename recipes-devtools/go-1.16/{go-cross-canadian_1.16.10.bb => go-cross-canadian_1.16.13.bb} (100%)
 rename recipes-devtools/go-1.16/{go-cross_1.16.10.bb => go-cross_1.16.13.bb} (100%)
 rename recipes-devtools/go-1.16/{go-crosssdk_1.16.10.bb => go-crosssdk_1.16.13.bb} (100%)
 rename recipes-devtools/go-1.16/{go-native_1.16.10.bb => go-native_1.16.13.bb} (100%)
 rename recipes-devtools/go-1.16/{go-runtime_1.16.10.bb => go-runtime_1.16.13.bb} (100%)
 rename recipes-devtools/go-1.16/{go_1.16.10.bb => go_1.16.13.bb} (100%)

diff --git a/recipes-devtools/go-1.16/go-1.16.10.inc b/recipes-devtools/go-1.16/go-1.16.13.inc
similarity index 82%
rename from recipes-devtools/go-1.16/go-1.16.10.inc
rename to recipes-devtools/go-1.16/go-1.16.13.inc
index 7549ffc..6d148f7 100644
--- a/recipes-devtools/go-1.16/go-1.16.10.inc
+++ b/recipes-devtools/go-1.16/go-1.16.13.inc
@@ -1,8 +1,6 @@
 require go-common.inc
 
-GO_BASEVERSION = "1.16"
-PV = "1.16.10"
-FILESEXTRAPATHS:prepend := "${FILE_DIRNAME}/go-${GO_BASEVERSION}:"
+FILESEXTRAPATHS:prepend := "${FILE_DIRNAME}/go-1.16:"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
 
@@ -17,7 +15,7 @@ SRC_URI += "\
     file://0008-use-GOBUILDMODE-to-set-buildmode.patch \
     file://0009-Revert-cmd-go-make-sure-CC-and-CXX-are-absolute.patch \
 "
-SRC_URI[main.sha256sum] = "a905472011585e403d00d2a41de7ced29b8884309d73482a307f689fd0f320b5"
+SRC_URI[main.sha256sum] = "b0926654eaeb01ef43816638f42d7b1681f2d3f41b9559f07735522b7afad41a"
 
 # Upstream don't believe it is a signifiant real world issue and will only
 # fix in 1.17 onwards where we can drop this.
diff --git a/recipes-devtools/go-1.16/go-binary-native_1.16.10.bb b/recipes-devtools/go-1.16/go-binary-native_1.16.10.bb
deleted file mode 100644
index 4866c9f..0000000
--- a/recipes-devtools/go-1.16/go-binary-native_1.16.10.bb
+++ /dev/null
@@ -1,46 +0,0 @@
-# This recipe is for bootstrapping our go-cross from a prebuilt binary of Go from golang.org.
-
-SUMMARY = "Go programming language compiler (upstream binary for bootstrap)"
-HOMEPAGE = " http://golang.org/"
-LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"
-
-PROVIDES = "go-native"
-
-SRC_URI = "https://dl.google.com/go/go${PV}.${BUILD_GOOS}-${BUILD_GOARCH}.tar.gz;name=go_${BUILD_GOTUPLE}"
-SRC_URI[go_linux_amd64.sha256sum] = "414cd18ce1d193769b9e97d2401ad718755ab47816e13b2a1cde203d263b55cf"
-SRC_URI[go_linux_arm64.sha256sum] = "bfe1d4b82626c742b4690a832ca59a21e3d702161556f3c0ed26dffb368927e9"
-
-UPSTREAM_CHECK_URI = "https://golang.org/dl/"
-UPSTREAM_CHECK_REGEX = "go(?P<pver>\d+(\.\d+)+)\.linux"
-
-S = "${WORKDIR}/go"
-
-inherit goarch native
-
-do_compile() {
-    :
-}
-
-make_wrapper() {
-	rm -f ${D}${bindir}/$1
-	cat <<END >${D}${bindir}/$1
-#!/bin/bash
-here=\`dirname \$0\`
-export GOROOT="${GOROOT:-\`readlink -f \$here/../lib/go\`}"
-\$here/../lib/go/bin/$1 "\$@"
-END
-	chmod +x ${D}${bindir}/$1
-}
-
-do_install() {
-    find ${S} -depth -type d -name testdata -exec rm -rf {} +
-
-	install -d ${D}${bindir} ${D}${libdir}/go
-	cp --preserve=mode,timestamps -R ${S}/ ${D}${libdir}/
-
-	for f in ${S}/bin/*
-	do
-	  	make_wrapper `basename $f`
-	done
-}
diff --git a/recipes-devtools/go-1.16/go-cross-canadian_1.16.10.bb b/recipes-devtools/go-1.16/go-cross-canadian_1.16.13.bb
similarity index 100%
rename from recipes-devtools/go-1.16/go-cross-canadian_1.16.10.bb
rename to recipes-devtools/go-1.16/go-cross-canadian_1.16.13.bb
diff --git a/recipes-devtools/go-1.16/go-cross_1.16.10.bb b/recipes-devtools/go-1.16/go-cross_1.16.13.bb
similarity index 100%
rename from recipes-devtools/go-1.16/go-cross_1.16.10.bb
rename to recipes-devtools/go-1.16/go-cross_1.16.13.bb
diff --git a/recipes-devtools/go-1.16/go-crosssdk_1.16.10.bb b/recipes-devtools/go-1.16/go-crosssdk_1.16.13.bb
similarity index 100%
rename from recipes-devtools/go-1.16/go-crosssdk_1.16.10.bb
rename to recipes-devtools/go-1.16/go-crosssdk_1.16.13.bb
diff --git a/recipes-devtools/go-1.16/go-native_1.16.10.bb b/recipes-devtools/go-1.16/go-native_1.16.13.bb
similarity index 100%
rename from recipes-devtools/go-1.16/go-native_1.16.10.bb
rename to recipes-devtools/go-1.16/go-native_1.16.13.bb
diff --git a/recipes-devtools/go-1.16/go-runtime_1.16.10.bb b/recipes-devtools/go-1.16/go-runtime_1.16.13.bb
similarity index 100%
rename from recipes-devtools/go-1.16/go-runtime_1.16.10.bb
rename to recipes-devtools/go-1.16/go-runtime_1.16.13.bb
diff --git a/recipes-devtools/go-1.16/go_1.16.10.bb b/recipes-devtools/go-1.16/go_1.16.13.bb
similarity index 100%
rename from recipes-devtools/go-1.16/go_1.16.10.bb
rename to recipes-devtools/go-1.16/go_1.16.13.bb
-- 
2.20.1


