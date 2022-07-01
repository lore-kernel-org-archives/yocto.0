Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0E4FC433EF
	for <webhook@archiver.kernel.org>; Fri,  1 Jul 2022 17:23:30 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.41345.1656696198453707945
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Jul 2022 10:23:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=M9s0zsIX;
 spf=pass (domain: mvista.com, ip: 209.85.216.42,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pj1-f42.google.com with SMTP id go6so3246551pjb.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 01 Jul 2022 10:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jLac6eNlEZvMd5MRNHdnrtkFCvxG5apYxs8e+mXQp5o=;
        b=M9s0zsIX8msIeKKlQ5VrMlQ+ddwe6+qCAItyKkKRGlX26AfmU/4Bbi2eFbKltFtNU6
         xEUKB5LNxSDX4cEvqZ3gxXwppRBEd2yzMNJo/RyinZwWxBGFn0n0W974CfiV0CUyYMqG
         uAaoQpOGobElzUkNDGd6skAv1oq/z3CKazHdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jLac6eNlEZvMd5MRNHdnrtkFCvxG5apYxs8e+mXQp5o=;
        b=g76fppKEJPWbdrXuuWFTP0xWUbepTY4/80Sr2VzWMbsOCnl6YM/3MjBzkWHdoiUTSQ
         JPqX0TqIR4Uf22gYYny3o9LQXGF9b/Bf1QrlyW0HNJiiuinYcuCmxdPYut+5iH3rRDvh
         nvliUQAvtibdUU4uL0D0vcLa1NpVSMVHuVBAYM5n5XSz3m8iw1p3Tc6cOFe0n3niRWFC
         FAyZ/DEkJ8NSHXYaAlbttX/c5aFWuiXzd5CPzLC5Hi0UxtsNQRo2QOGF5YO6Xn6IrF28
         2jlgOlEa7e7qHg2eDFgkA0jcnRdKgbK/zBUtrUJrsz75YmrmgUnojGYKuRt49Dkw0x6P
         StVw==
X-Gm-Message-State: AJIora906MK6M+gD2RyvSTNKQYhAsp53Zgp05VseAcQEyKxh7q0ZPTQ4
	siEQJPXk9lg/2u59/ZWMhavLpYVzGawycw==
X-Google-Smtp-Source: 
 AGRyM1sBnac3F+4UdUL1Ugkov+NknrCEB5LhrPpRe3i5gu80L17rUiGp3nIvqETZ/xRNS+KuNQt4FA==
X-Received: by 2002:a17:902:7204:b0:16a:22f1:f87 with SMTP id
 ba4-20020a170902720400b0016a22f10f87mr21843361plb.3.1656696197676;
        Fri, 01 Jul 2022 10:23:17 -0700 (PDT)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 n6-20020a63ee46000000b00411e700f615sm1398004pgk.36.2022.07.01.10.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 10:23:17 -0700 (PDT)
Received: by brown (sSMTP sendmail emulation); Fri, 01 Jul 2022 10:23:15 -0700
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][master|kirkstone][PATCH] libmhash: add multilib
 header
Date: Fri,  1 Jul 2022 10:23:09 -0700
Message-Id: <20220701172309.105912-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Jul 2022 17:23:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57436

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-security/libmhash/libmhash_0.9.9.9.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 4d1f584..113acfc 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -23,7 +23,11 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/mhash/mhash-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "f91c74f9ccab2b574a98be5bc31eb280"
 SRC_URI[sha256sum] = "56521c52a9033779154432d0ae47ad7198914785265e1f570cee21ab248dfef0"
 
-inherit autotools-brokensep ptest
+inherit autotools-brokensep ptest multilib_header
+
+do_install:append () {
+   oe_multilib_header mutils/mhash_config.h
+}
 
 do_compile_ptest() {
     if [ ! -d ${S}/demo ]; then mkdir ${S}/demo; fi
-- 
2.35.3


