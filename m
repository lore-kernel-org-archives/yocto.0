Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.37536.1598814157958299079
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Aug 2020 12:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uvg7niF5;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63B6AE020DD; Sun, 30 Aug 2020 12:02:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A4E4E020DA
	for <yocto@yoctoproject.org>; Sun, 30 Aug 2020 12:02:34 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id d22so3340554pfn.5
        for <yocto@yoctoproject.org>; Sun, 30 Aug 2020 12:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=uXY0yowqBC2SJpJIYgoME5pWW6NAD29XcictrLpnqdc=;
        b=Uvg7niF5oLhZy3hn9t3IcqNHqHUiFXMBBxyvasyIBy7zRwiJ9+w0kbGW1+3fRR2opu
         IAN6nHsZKnQoMxScXTQWTQsrGHMgF02UVCvGybPEyXVjtXEbIQByYJbC3r5JVW7FyD62
         tfTKOZLIifF54hVyT1UACObVsUQQeB+fnIrAgH6XE2Ibm+hDc/1cuXn2G7/TQ3noUVjF
         q/9xjv0CRzRQ+H7O9pRWtbtYM7K5hdIBvuY3DowE+2jxvZXYkOWkfj7DTAQNzxnbbZ3f
         ZitfUstKIjEdEwuiJrwH/0ZpmtglPFkn8/bjzPWsR0CNwUbOcNBJGbAqqW7n2kx4NIl8
         gVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=uXY0yowqBC2SJpJIYgoME5pWW6NAD29XcictrLpnqdc=;
        b=CvtN0uI3JjyjDKCUmQUq20qxxcE0xH/6crT7o1VpbDtAf27G62MmwnqqgIMkdxPzHk
         tzRMMxlt5Y/aEVxaKgsuvRA9MqWCTFiTzRhSg5tFKk8157eXwwGRvts0bISlR+tuXFhF
         p6zENbYInZdTbZLoDxWn6NBnL/BGGleMJ7k5tk9qMixjdKc53Z8JPecrFlp5urB6wxJ2
         TRJejRAQ61aQiilIZ0VyVI76+v4WttDY7zOiObjkACf3S7DgbR8XDwSnlNFDmWmAwdBE
         VebPQ7TjFdCwSRY7C1KMzZXy1sVdGXbs4aaXtwbGCsajtzSzWSC2+cDx0/Za+FnYCSIb
         BbCQ==
X-Gm-Message-State: AOAM532i39h7wQNLkppgyE29rTE31Gz35jivY86+Zkz+JLPqAv6RJGTi
	t9FngPQ+U29x4D7MyDK4GRAjpkP8sGA=
X-Google-Smtp-Source: ABdhPJyzBsSRg++wRPgCPXXOx+fCKkk/t5NIiewWlsVzf+0fWvMo3qaPOqLoMTdxm9eCr461yodojQ==
X-Received: by 2002:a63:342:: with SMTP id 63mr6016409pgd.134.1598814153894;
        Sun, 30 Aug 2020 12:02:33 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:6d6c:bf93:376b:c693])
        by smtp.gmail.com with ESMTPSA id h10sm5010799pgn.32.2020.08.30.12.02.33
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2020 12:02:33 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH] cryptsetup-tpm-incubator: remove reference from other files
Date: Sun, 30 Aug 2020 12:02:32 -0700
Message-Id: <20200830190232.7899-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/conf/distro/include/maintainers.inc                    | 1 -
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb     | 2 --
 2 files changed, 3 deletions(-)

diff --git a/meta-tpm/conf/distro/include/maintainers.inc b/meta-tpm/conf/distro/include/maintainers.inc
index 74c1a18..dcf53d0 100644
--- a/meta-tpm/conf/distro/include/maintainers.inc
+++ b/meta-tpm/conf/distro/include/maintainers.inc
@@ -33,7 +33,6 @@ RECIPE_MAINTAINER_pn-tpm2-tcti-uefi = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-tpm2-tss-engine = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-tpm2-pkcs11 = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-tpm2-tss = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-cryptsetup-tpm-incubator = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-tpm2-tools = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-ibmswtpm2 = "Armin Kuster <akuster808@gmail.com>"
 
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index a553a63..8b6f030 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -7,7 +7,6 @@ inherit packagegroup
 
 PACKAGES = "${PN}"
 
-PREFERRED_PROVIDER_cryptsetup ?= "cryptsetup-tpm-incubator"
 SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
 RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2-tools \
@@ -20,5 +19,4 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2-abrmd \
     tpm2-pkcs11 \
     ibmswtpm2 \
-    ${PREFERRED_PROVIDER_cryptsetup} \
     "
-- 
2.17.1

