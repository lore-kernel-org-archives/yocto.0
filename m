Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D24C47093
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:42 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web12.24075.1649000752591357367
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 08:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AyYYQVDK;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id x14so3300715pjf.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 08:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/+TVv5xzNCOU3f0SFJLEJmfY+x0iypx4L6gFfNWXp7o=;
        b=AyYYQVDKP8Geh1os40bUX0AVbhn+LUb5RqXCD4kqZcpekywVsDvC/Na8y2Y7ssH+ja
         D8mRnH+d2uCjvVrefPeSKHL54aszbZwgl6+E0CCIkyJtntKVuBghhT/AA+w/6JZntOE8
         OXMBTKZei3a5TheJ/Bwo9pRRDYN712GYxgAwpWzvkujbEaP4eTbW6RURDMZ3mXhEPaU5
         RmWQ5YBxMJXcebpiXTx/FhgskvPJVOozKPEbetQnYQXXLMtmk71HNvQp61RxVaDFYeNS
         mAsaRLigJ05SeABSU3fO9td2ssiCNEn37JM3yzI2ntotCkJGhG/TVfpMYpJAvsHIXTa/
         YxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/+TVv5xzNCOU3f0SFJLEJmfY+x0iypx4L6gFfNWXp7o=;
        b=GS8QQRWlz9N8ROuX3uxUa20v51A7mzooTAgWe76xHyl/nPbIP+ZLTAoNoOXEKn6ugK
         ehEjDO5ZMUPoKRRD4s0pB7k3rmd4z41p56FGyvkFLY/0h4E1wDLwEhVLky4cxDkDH/Hz
         1+GFwEZffeWF6pvQKAwDileoxwAjsEFOcUnEl431GBSQL5j9+M0PMCOGhNevwCCMmVbK
         NLAybX7qshhYwZbKAS0Ymoej5YvssxstVWR1o1Rpivpd6sYDP3NlMvoBxgv0sG4cy3E2
         h0uJUhoRhc/mJb81kpA5Uc5HNhoWCqhzdLfeq/dOinIO1IF8A3x9PEJLCnSb8Qx9askr
         +ySw==
X-Gm-Message-State: AOAM532SQghUCT0SXGCGwA1CrHahj70Aaq+Da1JYUi0q0l91esbXpFxg
	UFyceyjus90+SrTmeAkdAjM8UXvAFYs=
X-Google-Smtp-Source: 
 ABdhPJzArAo3XJvc/cKmbMnlsQnv5M4SmqojYF+/kJJoJaszJhPLdqX1x0L6H/qhdGNs18GYKW+j8Q==
X-Received: by 2002:a17:902:dcd4:b0:156:a95c:ccd6 with SMTP id
 t20-20020a170902dcd400b00156a95cccd6mr864673pll.146.1649000751437;
        Sun, 03 Apr 2022 08:45:51 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:d902:56b7:61b9:ac4])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a625a04000000b004fdf5419e41sm2240527pfb.36.2022.04.03.08.45.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 08:45:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] lkrg-module: covert to git fetcher
Date: Sun,  3 Apr 2022 08:45:47 -0700
Message-Id: <20220403154548.46873-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56650

This allows to track tip easier.
refresh patch
Fix LICENSE to match SPDX format

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/lkrg/files/makefile_cleanup.patch |  6 +++---
 recipes-kernel/lkrg/lkrg-module_0.9.2.bb         | 10 +++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-kernel/lkrg/files/makefile_cleanup.patch b/recipes-kernel/lkrg/files/makefile_cleanup.patch
index a4db2d9..799b1a6 100644
--- a/recipes-kernel/lkrg/files/makefile_cleanup.patch
+++ b/recipes-kernel/lkrg/files/makefile_cleanup.patch
@@ -4,10 +4,10 @@ This needs more work. Its my starting point.
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-Index: lkrg-0.9.2/Makefile
+Index: git/Makefile
 ===================================================================
---- lkrg-0.9.2.orig/Makefile
-+++ lkrg-0.9.2/Makefile
+--- git.orig/Makefile
++++ git/Makefile
 @@ -4,28 +4,10 @@
  # Author:
  #  - Adam 'pi3' Zabrocki (http://pi3.com.pl)
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.2.bb b/recipes-kernel/lkrg/lkrg-module_0.9.2.bb
index e055fbe..85f7d44 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.2.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.2.bb
@@ -3,18 +3,18 @@ DESCRIPTION="LKRG performs runtime integrity checking of the Linux \
 kernel and detection of security vulnerability exploits against the kernel."
 SECTION = "security"
 HOMEPAGE = "https://www.openwall.com/lkrg/"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=5105ead24b08a32954f34cbaa7112432"
 
 DEPENDS = "virtual/kernel elfutils"
 
-SRC_URI = "https://download.openwall.net/pub/projects/lkrg/lkrg-${PV}.tar.gz \
-           file://makefile_cleanup.patch "
+SRCREV = "43db5f19fca259feb1962f6db33382348cbc8320"
 
-SRC_URI[sha256sum] = "c2b501c47089cce3ec3114cef6520b73aa3a098836183186b9bb5e097c99ac27"
+SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main \
+           file://makefile_cleanup.patch "
 
-S = "${WORKDIR}/lkrg-${PV}"
+S = "${WORKDIR}/git"
 
 inherit module kernel-module-split
 
-- 
2.25.1


