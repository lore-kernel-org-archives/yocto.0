Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46273CD13CF
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:38 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.41249.1694994937922057023
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JpEndTHL;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-59c0d002081so23544677b3.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994937; x=1695599737; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5K9L4nUMq3RQn+4tJj1q+X6qvyQAHgJF66TNl+voLN4=;
        b=JpEndTHLrR/Soq92PNslUH7DenFM0iG6uXJv3knYyNaFOya6x7AHG66RgO3+pZB6OD
         hObl87VfTEHAO2dH6bnMF4wCS5yv6Sl4aL4yhRASyhB1hbg3+i18ARqMQ8fqpchtcoS3
         EVA3yA80Gtqw1JDUY44MdB9iHBD8nB2zkS/gxzFrn0BJj55b6SCGMgHh8zyqVifDwlvB
         Z5Rdpi4DgIVO56rYzzEHTg44bMv9o3D96IJgNEL9t2mYGtBRQSeCx2j9f3NOuYxb6Ekk
         JU6IUDJ52d3W4ccWNyIsdzqL33iOhIocoLZWPWPD0ALmVQAI4sv+y4HLWUcAMT6mUJNc
         2KtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994937; x=1695599737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5K9L4nUMq3RQn+4tJj1q+X6qvyQAHgJF66TNl+voLN4=;
        b=RCbZ3G1bA5iHXQszpLVHmTNdhu8t1Qq7t52mwFIIRod+ryUt3aetmMxBMZUy8jJjiJ
         54moiNMX02h4Usm6CzAy9RRvlkOS9ffTK9dy/3kwLcL6wrO+IAdvZC/5UYkY7lNqh+uA
         lul/4XrDetJnNrAHGzrK39BuTUvngeBaKWKn8rnt0V29I7G6oCPuY08sYIC8xJ04iGuU
         1jTX7CBSO/1g98A45yAjl5N1l4gLmux4pIusoFcwTLgeXI62bDKcx/63wa/eEq0MJwxk
         rlnz8U1ljaK25tYSn0OIaslCiEKhxf1c9+bgLFRZmQcmKdMpwPjUZ3SQ3G2+TX+aezl3
         Mulg==
X-Gm-Message-State: AOJu0YypJTie39t+di4mjqFyG5Uq41SJ4ewSqmV8JOdJzKCOLlyRAhV6
	4juNfd3Q+hlPJx32+k54yIBrFcxLkWQ=
X-Google-Smtp-Source: AGHT+IEnhimA2mSRijCfa+F8cSdSk8xPmwSk0lqYVmKkG+fG6hedw3UoH5GQOgOcBvy5kLuCAUFz2g==
X-Received: by 2002:a81:4e0b:0:b0:59b:f152:8998 with SMTP id c11-20020a814e0b000000b0059bf1528998mr8183860ywb.19.1694994936900;
        Sun, 17 Sep 2023 16:55:36 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/7] lkrg-module: update to 0.9.7
Date: Sun, 17 Sep 2023 19:55:30 -0400
Message-Id: <20230917235534.2871544-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230917235534.2871544-1-akuster808@gmail.com>
References: <20230917235534.2871544-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61026

LIC_FILES_CHKSUM changed due to year update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/{lkrg-module_0.9.6.bb => lkrg-module_0.9.7.bb}       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-kernel/lkrg/{lkrg-module_0.9.6.bb => lkrg-module_0.9.7.bb} (89%)

diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.6.bb b/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
similarity index 89%
rename from recipes-kernel/lkrg/lkrg-module_0.9.6.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.7.bb
index 421d924..020c3a1 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.6.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.7.bb
@@ -5,13 +5,13 @@ SECTION = "security"
 HOMEPAGE = "https://www.openwall.com/lkrg/"
 LICENSE = "GPL-2.0-only"
 
-LIC_FILES_CHKSUM = "file://LICENSE;md5=3f3e5dd56319d33a1944d635c1c86c6f"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=57534ed9f03a5810945cd9be4a81db41"
 
 DEPENDS = "virtual/kernel elfutils"
 
 SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main"
 
-SRCREV = "2481b3e2dd04eac945c31f99058b0aeee73c3a71"
+SRCREV = "5dc5cfea1f4dc8febdd5274d99e277c17df06acc"
 
 S = "${WORKDIR}/git"
 
-- 
2.34.1


