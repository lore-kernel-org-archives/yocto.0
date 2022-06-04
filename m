Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44DDAC43334
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 19:04:52 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.13294.1654369482789323788
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ED/P07eH;
 spf=pass (domain: gmail.com, ip: 209.85.210.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id w21so9666708pfc.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=qirIJTzVUo5HavJC5hrIaXBMOA94L9/k6p4Eq4xhfio=;
        b=ED/P07eHofCPtKpSVzjQzXx9qUx1ScCJEUX4RFC+kLfgoABVvqRGuG6uxW3YyDkxM0
         pkgGRaxyBSQfDF+tm8hPDKP00RhPVtzqDIhSvNfT06GxmSbZ0XZw4mox5L3R2o0lYSXz
         iljuNrx98Fmg1QOh5+L9whocWcYBHIyLKqCammAPEAZXWIAN3RjcOpQIXTkF5qaXOT2E
         JzuptEDTG26R0RPqNyE0DlDwt0CYN1D2HoVdGUzl+8SYFraWn7hfs0d8Q2K4/apjPngW
         9YmqnkNvZrK5bSa1k1qNYJYG/M5erewSq/brlK2ksmZKRyA/mLEuYUB7fsIuJOENu/jX
         gNeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qirIJTzVUo5HavJC5hrIaXBMOA94L9/k6p4Eq4xhfio=;
        b=D+UbqZqJ1ce1BT+y6bKQ9OPrwTTQkf+ZPMtmG8EtLlt6BZC3K0HcJwGEW/vQNoS7Hl
         TzCUD/vDCmZjyvk1OPvPwFrT224aUdIO/7XaDIVc29gF66qE5cEwML0Y7QL53aTOwUWC
         6Prf6sqK7Eq31UHLwSoqS3AvkomK0Pib0s11R5/q3++npeSHOhli+ncoIKUECtLCE1Z+
         iP1qhs1vtp6jPIchJ94hmyg0xnUdHNIGp5i3DcT36fVWEB7Zzla5a/rCKiOxLM79fGOn
         F5Y8mYCpX2p6rjnBlzUDCpkyB7rSnpZ3LY7je1v3TtO2lKdYlnL33LJa5l9qe9rhSov8
         n7NA==
X-Gm-Message-State: AOAM530x3UI97qaNll0l21yXdXF7N7H5KlsNrOmXub1talLDEoZxM5Vj
	WxdnKP7gb3nD+DGGiKy1yHDiTuhqbyc=
X-Google-Smtp-Source: 
 ABdhPJx4UihJG1wvCrwErSM+iiVXAfmfp+SNTI59l3+lMbLqkxR1d+ct1/hPkQyA3PZ65dmACT/EyA==
X-Received: by 2002:a05:6a00:114b:b0:4f7:915:3ec3 with SMTP id
 b11-20020a056a00114b00b004f709153ec3mr16213378pfm.8.1654369482007;
        Sat, 04 Jun 2022 12:04:42 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 u1-20020a1709026e0100b0015e8d4eb231sm7633298plk.123.2022.06.04.12.04.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jun 2022 12:04:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] packagegroup-core-security: don't include
 aprwatch for musl
Date: Sat,  4 Jun 2022 12:02:30 -0700
Message-Id: <20220604190230.3700475-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220604190230.3700475-1-akuster808@gmail.com>
References: <20220604190230.3700475-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 19:04:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57263

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 40ff06b..f381d91 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -48,6 +48,7 @@ RDEPENDS:packagegroup-security-scanners = "\
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-daemon clamav-freshclam",d)} \
     "
 RDEPENDS:packagegroup-security-scanners:remove:libc-musl = "clamav clamav-daemon clamav-freshclam"
+RDEPENDS:packagegroup-security-scanners:remove:libc-musl = "arpwatch"
 
 SUMMARY:packagegroup-security-audit = "Security Audit tools "
 RDEPENDS:packagegroup-security-audit = " \
-- 
2.25.1


