Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE781C761AF
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.59632.1680279679850150270
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=ZZr0odwW;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id p34so13225230wms.3
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279678; x=1682871678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+V7Wo336FlPCBWWDgYMF/Jme9fkpJrsuCyvZD6CrY8=;
        b=ZZr0odwWAFwKrTE2GZVGazHAexi1wtTkwR3DnsNDlfQtXc1zW6zuQAjTMHNJzzn5C1
         OD+C0blEiHSqfw0BXO4cVqs+Ue9aOwDC76rpSL3YSL7xt4NA+Tu/q3OQp5kruRYUkx2e
         cbYWPAGuDbFUITWdvgZYSlzSg990uETU4JjM+h5aAvpYtD05QbcATXX895I0c72AuJ0H
         2zwP5tUJfAHYEcP3889PgNq7gLCaELdm948uIGgJwePQ6XupiPoEjsPPTpeuDW8ZWvMV
         LfmknzEvgGI1sQ6cs6LTPrAowdOLB6WyiVBXaewCP1V0MA9VLSNxyULSWaD1zBdw/Ae/
         rhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279678; x=1682871678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q+V7Wo336FlPCBWWDgYMF/Jme9fkpJrsuCyvZD6CrY8=;
        b=wC0Ech5VdoLM3mwhrXBRK8t2LC+JHeKHuKOAwwAeCsNeAZiNXbKuZ21o5haG9xCsr5
         k9kJRf8qSg/oAhpA9A8Sdpxlbbnzdu0xJdeOM1AIpe8IwfVJw+serBXd836QhY+Ug/sE
         /gLZQUB30nOvXdkdCR0YWZ5v0gvm1Qq7Le6cbcvaCNHgdDk/fDgh9RAxlKNO2bURd/W9
         imzXk/mgDH4q4UuLzYb+01qqTBn56I5cv16DScXl8cMI1ECncbcWUVqRKCXRidrl9WGv
         begS7IDtPXFnrFPQPceL/K8RtVDA3TPqccr+nff4P6yBHYmsFVo9x1bbs2AYzERcItgd
         X+4w==
X-Gm-Message-State: AO0yUKUECDeu50+opf8+I9sUAfhfQC1Fc52DdwQX02bPfg5bjdWIHCVN
	FsYWTOTnY0Oo4cLECWDh1I5yz8D6p0UMHOlx
X-Google-Smtp-Source: AK7set8R6bU/K62o1E2EMxMZ3TvQoZLEesKPeT9nPmJ0hFmlYFmpO/3yZGHVYLZt7jDA1J0zd7b8IQ==
X-Received: by 2002:a1c:7309:0:b0:3dc:d5c:76d9 with SMTP id d9-20020a1c7309000000b003dc0d5c76d9mr21727881wmb.0.1680279678015;
        Fri, 31 Mar 2023 09:21:18 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:17 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Alexander Kanavin <alex@linutronix.de>,
	Martin Kaistra <martin.kaistra@linutronix.de>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 03/16] go-helloworld: add from openembedded-core master
Date: Fri, 31 Mar 2023 16:20:29 +0000
Message-Id: <20230331162042.1801766-3-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59572

From: Alexander Kanavin <alex@linutronix.de>

This allows a quick smoke test for whether go toolchain produces
working executables.

Link: https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-examples?id=278cb0fc0725fbfdcafd3b3afcfb7c7c6a4eee14

(copy from external source:
 git: https://git.yoctoproject.org/poky/
 archive: 278cb0fc0725fbfdcafd3b3afcfb7c7c6a4eee14
 copy: meta/recipes-extended/go-examples --> recipes-devtools/go-examples/)

Acked-by: Martin Kaistra <martin.kaistra@linutronix.de>
Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
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
2.34.1


