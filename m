Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618D7C25B06
	for <webhook@archiver.kernel.org>; Thu, 11 Aug 2022 16:47:00 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com
 [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web10.138.1660236418801136752
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 09:46:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aatfmjov;
 spf=pass (domain: gmail.com, ip: 209.85.160.47,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-10e6bdbe218so22108275fac.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 09:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=jeVWU3NTFc7SIWoC2qC1pSq6MrsCUBCYQiEMiOj52wg=;
        b=aatfmjovQp0gwGaqCcM3HDphLx5SxzkGsTaqn2DOjENOBblaBWErjuIW+uBSOib9GR
         fFY6VoypzuX5P5EB6IIYuQG29FFGrsYxir2nu9/OZW8D+F5Zf6FrpCmQSQPQUxLANHtw
         9sxVhfKOGwCyGB8v9K8ygOnb5EggXEFAZlcsSm0Ru8Je4LSPEh2EkFlSgNECoYFQLhWx
         pXa6xz8X8KC8gzmXbdFcBPo17hkFd3wuUqqqghtfkyJt/NMw7DuqpIhWAEtIRtWKU0hd
         c6y07OFmberKdd6WnAIONm/qwRo/D6V4R2BdEJ5ZnjNq/y/GcfiLwD1U3Pu7NJfi7z7g
         bVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=jeVWU3NTFc7SIWoC2qC1pSq6MrsCUBCYQiEMiOj52wg=;
        b=AWFbPcIWUMfQfoJ2Gt3gwg28NoXN2T2ipHke2b8a0F2auH0mMW0m/MDXSLALhgAQFv
         KogVPUWHbKHPOsg6yS29k48mqWZtmPGpitK6wpvg7jMOy8iie3YZ+PHr5JxvQP39nhfg
         5xnU4XLM8HeJoqTMXjQCalra6yUmxgLNY5IgjKmXOipMuF/OrhkjLpn90paVc4MKrw3/
         XrTFv1hC5DfW1mpu2bVg2MgQfElhrNz5uJsdD2MsZ6Nz8s7RSbUU3p4lB+SADiqujvVv
         ttRATmkkZC4KcTT+O3Qsw6h/S1bqyDJfdgp6Uestm9gcn8EPAz1axsGKQY07MKDC2iSP
         jdRw==
X-Gm-Message-State: ACgBeo0xnDZMRXaSIKQTOWRr0L7HHe0d3zt2i3nVEkmGT34Dr/Y2tYvV
	TmvijxiMWMSakhoE0KkjgP5rb9UxwIo=
X-Google-Smtp-Source: 
 AA6agR6eqip7U5lapyoAWLLyzVxH/9SQQLvFoiN0V5L+REr+j/xtWe2HpxYat2lV1UQNdCs08/T9qA==
X-Received: by 2002:a05:6870:1691:b0:113:547a:a93c with SMTP id
 j17-20020a056870169100b00113547aa93cmr4041825oae.221.1660236417506;
        Thu, 11 Aug 2022 09:46:57 -0700 (PDT)
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id
 b5-20020a9d4785000000b0063715f7eef8sm1212334otf.38.2022.08.11.09.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 09:46:56 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] Switch to HOSTTOOLS_NONFATAL
Date: Thu, 11 Aug 2022 11:46:51 -0500
Message-Id: <20220811164651.836700-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 16:47:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57828

The changes to split classes into global vs. image specific contexts
has broken the inclusion of `wine` and `wineserver` host tools for
testing MinGW SDKs. This is because testsdk is an image specific class
and therefore it's inclusion is not detected globally and the wine host
tools are not present so the SDK tests fail.

Resolve this by using HOSTTOOLS_NONFATAL which will include the tools if
they exist, but won't fail if they are not present. This does mean that
users will now not know they need wine "up front" when doing a build,
but it will instead fail later when they actually try to test the SDK,
but there isn't really a better way to fix this.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 966c63b..07b5b8f 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -50,5 +50,4 @@ DISABLE_STATIC:mingw32 = ""
 GCCPIE:mingw32 = ""
 
 # wine and wineserver are required to test MinGW SDKs
-HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
-
+HOSTTOOLS_NONFATAL += "wine wineserver"
-- 
2.33.0


