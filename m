Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3B7C433EF
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 14:43:30 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web09.29011.1643294609329371562
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:43:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GDy0S8RS;
 spf=pass (domain: gmail.com, ip: 209.85.128.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id
 i187-20020a1c3bc4000000b0034d2ed1be2aso6097455wma.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Su2B+qvJx2aATVqjnKjUpMvn3nEDuALB7Oe+J3m//FE=;
        b=GDy0S8RSqr7aVtbABkrN6GcAnEcpI0OGS7IPZPXBOybW7RWzOr2ozpj0obl1mSkCro
         N+yyAYC/vvrL0Ea67+G3EF0tJ5ap145MOJ3SxEnigShm62AY6F/q/NvkK2GimT2unpQX
         8IOy1+uYvCVcbdtZZV9qYzlb93G5a/i9n37A3TFxMcx6xsnQs+9MATxvgNbfKymXZMKY
         NYZN9BtdMG7tJiD5N9bh3uR/xMe/tXmkSnjKamRhcdIqa4LpuIZr3pBzgwMDgBmgFo5I
         qdqiD1wxEu84XM5fGDNe/VVBF9T/8rgbN5au9YQLZtF9iepDykX8dabi3zkR3kFjs0Pb
         Adnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Su2B+qvJx2aATVqjnKjUpMvn3nEDuALB7Oe+J3m//FE=;
        b=vlBBdPc3zoEubx0jLFaYyS2W02mflVYCa5XKC0eicaHZ0Tgbx67LC2FFWf7gSTdxDL
         T+pmJXhhREO15A8hWqNNuAzEOKQkwlkc/t8Yay+yw33AWTxIQOWv2+8E8Jz7ipN7KpKG
         Z2F4R+ySVdaokhlKYS1jymgVtBCZLrzYRPIoc+rGB6uiFR1S+Q6R35ewMFEKVtc/yCmn
         zyD3bQ+e1PJS+n1KUiOoJimm/PhalkGXPms2OSp+PSbbS8Fppuy4DuEs7MxwG4J6iHzh
         Sp68j1DAty8TEJAv3LZhA0vPrXGrc3S80SuewYjEiAQYIT53muq/DR+G/neziAncR5Uf
         6HRQ==
X-Gm-Message-State: AOAM531uvo1an43ynDMiJP8cxyvDmPzUYH/e4spz6yCrlRCq3PQRVfzz
	PlIh+P14HG/lnoqkjk0AtxEe+C3gDjC40g==
X-Google-Smtp-Source: 
 ABdhPJw/kXsFjkXwdfKClzfZ8mUnh7/b6woyu70gLZe/R62mx+Fv7a7AdW+c4uK7F2MbeMsRxqcgJg==
X-Received: by 2002:a05:600c:2251:: with SMTP id
 a17mr12092160wmm.102.1643294607727;
        Thu, 27 Jan 2022 06:43:27 -0800 (PST)
Received: from nereus.lab.linutronix.de. (b2b-109-90-143-203.unitymedia.biz.
 [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 l13sm6417669wmq.22.2022.01.27.06.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 06:43:27 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	denis@denix.org,
	adrian.freihofer@gmail.com
Subject: [meta-lts-mixins][dunfell/go PATCH 4/4] go-helloworld: add from
 openembedded-core master
Date: Thu, 27 Jan 2022 15:43:23 +0100
Message-Id: <20220127144323.3121475-4-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220127144323.3121475-1-alex@linutronix.de>
References: <20220127144323.3121475-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 14:43:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55993

This allows a quick smoke test for whether go toolchain produces
working executables.

Link: https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-examples?id=278cb0fc0725fbfdcafd3b3afcfb7c7c6a4eee14

(copy from external source:
 git: https://git.yoctoproject.org/poky/
 archive: 278cb0fc0725fbfdcafd3b3afcfb7c7c6a4eee14
 copy: meta/recipes-extended/go-examples --> recipes-devtools/go-examples/)

Acked-by: Martin Kaistra <martin.kaistra@linutronix.de>
Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .../go-examples/go-helloworld_0.1.bb          | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 recipes-devtools/go-examples/go-helloworld_0.1.bb

diff --git a/recipes-devtools/go-examples/go-helloworld_0.1.bb b/recipes-devtools/go-examples/go-helloworld_0.1.bb
new file mode 100644
index 0000000..b3a8631
--- /dev/null
+++ b/recipes-devtools/go-examples/go-helloworld_0.1.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "This is a simple example recipe that cross-compiles a Go program."
+SECTION = "examples"
+HOMEPAGE = "https://golang.org/"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+
+SRC_URI = "git://go.googlesource.com/example;branch=master;protocol=https"
+SRCREV = "787a929d5a0dfb8bbfcdd2c4a62e0fd89466113f"
+UPSTREAM_CHECK_COMMITS = "1"
+
+GO_IMPORT = "golang.org/x/example"
+GO_INSTALL = "${GO_IMPORT}/hello"
+GO_WORKDIR = "${GO_INSTALL}"
+export GO111MODULE="off"
+
+inherit go
+
+# This is just to make clear where this example is
+do_install:append() {
+    mv ${D}${bindir}/hello ${D}${bindir}/${BPN}
+}
-- 
2.20.1


