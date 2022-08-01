Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82F65C00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 17:31:05 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web08.263.1659375063472379396
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 10:31:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=e1EszSG7;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id t2so11106117ply.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 10:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7kfLk65A8Zx5qr09welt93m6R0+slmWkzdC0Tqrr1p0=;
        b=e1EszSG7yOe52c1EdayQR9vPafO0V+4evGrEDMA9OJMXs5hQINFKBUAaM5ztX8XCcr
         01sgjpzPioQdK41c+HLy/PXC99W1OuPEFRP2VIyUUcQzMS7dQC+Gx6M58rWjSsJ+Dmgm
         jKJrLKGPkQw/aZF4yWMZfJSF/pK03n7XhlzxEPOLwIeH9Aqj9L7jHrIM3/mK5YdcWBRI
         0jtnrw56xzcp+BGIxBuQgoRXioAwPw8B9z27ShKGaC1dVZhFT1jzJ5okru/Io6exihi5
         gr1Gi/R8Smynr101qM2Gzxk8cMR+d0B6z0nMVEpqB3z9KTgB1pW482Q2ekQdWGRQjCEz
         rtZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7kfLk65A8Zx5qr09welt93m6R0+slmWkzdC0Tqrr1p0=;
        b=AyNtNpDoXx8ShUT4kuX7fUQe7CdLJAg/QBcjrAsluQaMTQe9+SjlSOH650TaASTbvk
         cPplLbltOktT1qeZ1DtzESB7dNEsPqAloX6CmhspnBTXg4O3+venItfRILakkevTjGMz
         HXk/FY/KgVZ1FpbpHOd/RTFZntRefeYciWpPrEpFu4Av0w7Vp2Xc2oymIGSo7UFLDR4j
         CkX2qiXKhFv1rBBVihH+y09j/BCQt+HkIc4kzq9pe+Wtgma2rhA62MmZIl5GA0q46TvZ
         kyR3Uc+0IQLZdRnD2T9K/n5LrO7mgXTHTOwLLobPTHceh5Y3qeB3FeIf12LRKqI4JbJ6
         /oEw==
X-Gm-Message-State: ACgBeo2PlcBg2V4VBhTCctaCPniALLcqEUNdDDs6DtEz6uE1KQSM/q7r
	aWjKSihHiVmz7zslNSvuivInJ0JWbUY=
X-Google-Smtp-Source: 
 AA6agR7Kam1vrrWXIwJULWb5lXy5VPVJcbD/ZGLHRF+u6ino7oKAV8VnXqGE5XvDEHq+ItQWjSQaGQ==
X-Received: by 2002:a17:902:c94a:b0:16d:8fc0:f52b with SMTP id
 i10-20020a170902c94a00b0016d8fc0f52bmr17487897pla.80.1659375062136;
        Mon, 01 Aug 2022 10:31:02 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 h13-20020a170902680d00b0016f035dcd75sm49365plk.193.2022.08.01.10.31.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 10:31:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] krill: only builds on x86/x86-64 and arm64
Date: Mon,  1 Aug 2022 10:28:58 -0700
Message-Id: <20220801172859.937841-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 17:31:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57718

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/krill/krill_0.9.6.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/krill/krill_0.9.6.bb b/recipes-security/krill/krill_0.9.6.bb
index c8b5b0c..fd86c4b 100644
--- a/recipes-security/krill/krill_0.9.6.bb
+++ b/recipes-security/krill/krill_0.9.6.bb
@@ -20,7 +20,6 @@ CARGO_SRC_DIR = ""
 
 inherit pkgconfig useradd systemd cargo
 
-
 do_install:append () {
     install -d ${D}${sysconfdir}
     install -d ${D}${datadir}/krill
@@ -39,3 +38,5 @@ USERADD_PARAM:${PN} = "--system -g ${KRILL_GID} --home-dir  \
                        --shell /sbin/nologin ${BPN}"
 
 FILES:${PN} += "{sysconfdir}/defaults ${datadir}"
+
+COMPATIBLE_HOST = "(i.86|x86_64|aarch64).*-linux"
-- 
2.25.1


