Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4C7C433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 14:24:32 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.12978.1635258272400327786
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g26uHF7/;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id t184so14532220pfd.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pdYgbtSW1zY8/nCkJ9oQ+40HBoO51nqYB4kmffPtncY=;
        b=g26uHF7/T0TiCfmEeKYIVFP034NOoqUysAK9ZstnksOk7sscKCrWOfKHVOJBQR4eZu
         2GehGnJ1dxYIdVo8AugYNBHL6/c9Kbi+/YhF5slFXSvv70LuKlvJ/Tgz+vhx1ukakI9s
         AmmNQ457aBsJ/UkOhurmUJcQq+hJMdBm+uVvCCO6NikLGIJmWBtciu3kD6TmZ+DzG/ih
         g4NZGfRfzA9iOzlZHZIPqftlFUZJolA1BukOe8a2zSXZlMm85MerzOPmTEbZkkNWJj9z
         sdUt1ftqjgNsoN1G7m65jJv/uapNG7DAkj6skXqwgnDVZwGqiAzcjfr95StcflJuJ1sK
         ElkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pdYgbtSW1zY8/nCkJ9oQ+40HBoO51nqYB4kmffPtncY=;
        b=CTAariq6prpBv93YlGc32nBDZ77dyGFk2dj61Rr7o4xIZVphlja1/vhvdu/KUSMYd1
         V6UMhCWNOmHfuyMem1T68Y53jT8rolmZqYHhhHcV+twZ+rMTIa1E8xOOtkjt6Yaeg98a
         vah2KRp/C3pij2l2/pYTq4Llem57coAi/KEanL08VeV6a184lfRi8PUbWRync1xsG+mP
         QCohx30u9MUY5GIfsaGjUqGrNfgJLtIjNosKQ0D2ROOQcCgvwlQscydDJCzRcsm4EyVv
         Q0Mquld6gNUdle09tKADLjqPj0Z3thOVXk4KtyWhR+tpjjOcVb9D3D/nJ5Ugtky72sHF
         dlVg==
X-Gm-Message-State: AOAM5323VNnyIqNlkn0Ytxe75DPvWLOpCQUvEQlxZeThBMkltIWclnSL
	hYdfZhobVzxGUFxorWAa9yjRONxmdyM=
X-Google-Smtp-Source: 
 ABdhPJyu8sxM/Yv6oaHO9BfbQH1/j9Yfi65VF5Z5tz+kdZBGxxfzqLgW92LQQxvO9knUE39rz9uuxA==
X-Received: by 2002:a63:3f4f:: with SMTP id
 m76mr19377245pga.315.1635258270439;
        Tue, 26 Oct 2021 07:24:30 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:bc55:5a93:ebf6:406e])
        by smtp.gmail.com with ESMTPSA id
 p25sm25821553pfh.86.2021.10.26.07.24.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 07:24:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] openssl-tpm-engine: fix build issue with
 openssl 3
Date: Tue, 26 Oct 2021 07:24:26 -0700
Message-Id: <20211026142426.1476128-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026142426.1476128-1-akuster808@gmail.com>
References: <20211026142426.1476128-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 14:24:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55166

ERROR: openssl-tpm-engine-0.5.0-r0 do_package: QA Issue: openssl-tpm-engine: Files/directories were installed but not shipped in any package:
  /usr/lib/engines-3/tpm.so

fix engine locations

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
index 9ad8967..dab1589 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
@@ -46,17 +46,17 @@ do_configure:prepend() {
     touch NEWS AUTHORS ChangeLog README
 }
 
-FILES:${PN}-staticdev += "${libdir}/ssl/engines-1.1/tpm.la"
+FILES:${PN}-staticdev += "${libdir}/ssl/engines-3/tpm.la"
 FILES:${PN}-dbg += "\
-    ${libdir}/ssl/engines-1.1/.debug \
-    ${libdir}/engines-1.1/.debug \
-    ${prefix}/local/ssl/lib/engines-1.1/.debug \
+    ${libdir}/ssl/engines-3/.debug \
+    ${libdir}/engines-3/.debug \
+    ${prefix}/local/ssl/lib/engines-3/.debug \
 "
 FILES:${PN} += "\
-    ${libdir}/ssl/engines-1.1/tpm.so* \
-    ${libdir}/engines-1.1/tpm.so* \
+    ${libdir}/ssl/engines-3/tpm.so* \
+    ${libdir}/engines-3/tpm.so* \
     ${libdir}/libtpm.so* \
-    ${prefix}/local/ssl/lib/engines-1.1/tpm.so* \
+    ${prefix}/local/ssl/lib/engines-3/tpm.so* \
 "
 
 RDEPENDS:${PN} += "libcrypto libtspi"
-- 
2.25.1


