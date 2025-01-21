Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C0ADC02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 16:51:34 +0000 (UTC)
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com [52.95.49.90])
 by mx.groups.io with SMTP id smtpd.web11.20395.1737478291732562030
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 08:51:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=aRB1uZHT;
 spf=pass (domain: amazon.de, ip: 52.95.49.90, mailfrom: prvs=109346909=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1737478292; x=1769014292;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Pf7f3CVUkRcsyL7pVDI/Yw7XK6swSWXNgSGUJliERzQ=;
  b=aRB1uZHTugeqQyONI/Lw6VYxDehZFK3xRdopekk+KQlLNk0crntfDZdv
   OFucTAT2eNjvyRPZeXDo3vYwKNmITqA8Awlynrqgbrh1e5L9ZCrYv02ou
   5Sn736jvJ6quX1fKegU1qVm5jeYSmuaXKfNU4CzS4TRzYI2Rru/8yZsS1
   c=;
X-IronPort-AV: E=Sophos;i="6.13,222,1732579200"; 
   d="scan'208";a="465727674"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-east-1.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-6002.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2025 16:51:29 +0000
Received: from EX19MTAEUC002.ant.amazon.com [10.0.43.254:47911]
 by smtpin.naws.eu-west-1.prod.farcaster.email.amazon.dev [10.0.37.156:2525] with esmtp (Farcaster)
 id 0b4447a7-2965-4df8-aaac-b40394a785a2; Tue, 21 Jan 2025 16:51:28 +0000 (UTC)
X-Farcaster-Flow-ID: 0b4447a7-2965-4df8-aaac-b40394a785a2
Received: from EX19D016EUC001.ant.amazon.com (10.252.51.169) by
 EX19MTAEUC002.ant.amazon.com (10.252.51.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Tue, 21 Jan 2025 16:51:28 +0000
Received: from u182adcbddbfb55.ant.amazon.com (10.1.213.26) by
 EX19D016EUC001.ant.amazon.com (10.252.51.169) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Tue, 21 Jan 2025 16:51:26 +0000
From: <throos@amazon.de>
To: <yocto@lists.yoctoproject.org>
CC: Thomas Roos <throos@amazon.de>
Subject: [poky] [master] [PATCH] gcc-sanitizers.inc: fix for aarch64
Date: Tue, 21 Jan 2025 17:51:15 +0100
Message-ID: <20250121165115.362609-1-throos@amazon.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.1.213.26]
X-ClientProxiedBy: EX19D031UWC003.ant.amazon.com (10.13.139.252) To
 EX19D016EUC001.ant.amazon.com (10.252.51.169)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 16:51:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64603

From: Thomas Roos <throos@amazon.de>

This is the issue fixed:
https://github.com/llvm/llvm-project/issues/65144

Signed-off-by: Thomas Roos <throos@amazon.de>
---
 meta/recipes-devtools/gcc/gcc-sanitizers.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/recipes-devtools/gcc/gcc-sanitizers.inc b/meta/recipes-devtools/gcc/gcc-sanitizers.inc
index 8c98e9cf8a..ae05ae6dfd 100644
--- a/meta/recipes-devtools/gcc/gcc-sanitizers.inc
+++ b/meta/recipes-devtools/gcc/gcc-sanitizers.inc
@@ -11,6 +11,8 @@ EXTRA_OECONF_PATHS = "\
     --with-build-sysroot=${STAGING_DIR_TARGET} \
 "
 
+CXXFLAGS:append:aarch64 = " -DSANITIZER_CAN_USE_ALLOCATOR64=0"
+
 do_configure () {
     rm -rf ${B}/${TARGET_SYS}/libsanitizer/
     mkdir -p ${B}/${TARGET_SYS}/libsanitizer/
-- 
2.34.1


