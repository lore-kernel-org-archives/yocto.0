Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F7B4C47258
	for <webhook@archiver.kernel.org>; Sun, 28 Jan 2024 17:13:11 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.41520.1706461990502226515
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 09:13:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cp9aNSUT;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dc227feab99so1786439276.2
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 09:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706461989; x=1707066789; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=BHjXnuz6bt4bHyHYjZK4p/3YXfyWvQPEKhWdxuzUeko=;
        b=cp9aNSUTQfRNUm0vutP6ZNBvc2wWFXPIOmXjuUBKgljCBtLdNt4syh5K161R+dVGjU
         GVvcbKUYDaZ2GsCZ7mCejvPekJYYhhDfevZDvaAJN24y3QyucrgajPaC+wJ54ooY22I0
         J0swYFwUmwPrYwEyFA+ydaAMix46BcInYg1NHPbszoe7Bdip9TqffjbFECfAINor/Qlm
         aZ8lE4ZCrMDOxx60PjkxxIqr5oI8xxicpBwAUxEgnbx4aFitIrzX1EgE+129aT5NoqjS
         wBSjomXm8ZXR9mQGWrEEOexDS/hO8u2w8F20u0SCvSohKsMrJRN3iezvLkxjx+SdLQy3
         nwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706461989; x=1707066789;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BHjXnuz6bt4bHyHYjZK4p/3YXfyWvQPEKhWdxuzUeko=;
        b=ky+TrJc4gXrgyqI3g2/64ZPuWetbq27z8uy88TcVcjQ2/est3CRmEB8BOmcEd85sn0
         ZXRAc+H+uneam8M8nSCl5DdUOw9cO4fqdOgC/mRfgkAEgnOa/IFlnj/vRp03hKqRXnIz
         n7dF866YSl57ilKElp5p60g3Exa5SXtvMjQm/GgEYzVaf6pMlC728FQ9znCaoj/YEIWl
         grDHXPWddq1oZgeXvY7i/oYCVt3GVakuYetIXZkW9nEmeFGwSSmuUKo5GR7vZrlRC9Xe
         5tmlgtk1Dk7R69u0zTEnyytYpVQkC3vrgHt8RkXrhvvWGNkAadgc4gFyWzvwzF58ze2I
         m0cQ==
X-Gm-Message-State: AOJu0YwI4WYeThYAukGCykvcfYd9YRoD9a6RsCW54hR2KIerBmnoZCeH
	pRfPxGRPr9D5sWcOPQFWEJcpZmLv9Sxdl7WhPofs76Sk9YBbnIwams3ZnoKi
X-Google-Smtp-Source: AGHT+IFwbhl5PSDp5Hf7GKfCSTMMDGbGv+Yg7HsC1QsCc0GUUjzMFg+6tjGj4DzNEzvphj1ChUw+3g==
X-Received: by 2002:a25:ae28:0:b0:dc6:4d5c:b243 with SMTP id a40-20020a25ae28000000b00dc64d5cb243mr1695863ybj.96.1706461989235;
        Sun, 28 Jan 2024 09:13:09 -0800 (PST)
Received: from keaua.attlocal.net (108-243-27-252.lightspeed.tukrga.sbcglobal.net. [108.243.27.252])
        by smtp.gmail.com with ESMTPSA id 63-20020a250a42000000b00dc2324b3cddsm1738919ybk.37.2024.01.28.09.13.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 09:13:08 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: update to 0.1.71
Date: Sun, 28 Jan 2024 12:13:08 -0500
Message-Id: <20240128171308.2075394-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 17:13:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62315

change branch name to stable.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...curity-guide_0.1.69.bb => scap-security-guide_0.1.71.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-compliance/scap-security-guide/{scap-security-guide_0.1.69.bb => scap-security-guide_0.1.71.bb} (95%)

diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.69.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
similarity index 95%
rename from recipes-compliance/scap-security-guide/scap-security-guide_0.1.69.bb
rename to recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
index 23637a5..5e45332 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.69.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.71.bb
@@ -1,4 +1,4 @@
-# Copyright (C) 2017 - 2023 Armin Kuster  <akuster808@gmail.com>
+# Copyright (C) 2017 - 2024 Armin Kuster  <akuster808@gmail.com>
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 SUMARRY = "SCAP content for various platforms, upstream version"
@@ -6,8 +6,8 @@ HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=9bfa86579213cb4c6adaffface6b2820"
 LICENSE = "BSD-3-Clause"
 
-SRCREV = "da283b9a360f2f42ad642c0c9b08b061501bc667"
-SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
+SRCREV = "459f0abf2ac08d36e5fc4a2619bc75cff7000da9"
+SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=stable;protocol=https \
            file://run_eval.sh \
            file://run-ptest \
            "
-- 
2.34.1


