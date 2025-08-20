Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AADCA0EED
	for <webhook@archiver.kernel.org>; Wed, 20 Aug 2025 06:46:08 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.13966.1755672356369912551
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 23:45:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W5CmExBR;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: samuli.piippo@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3352212fefdso20322251fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 23:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755672354; x=1756277154; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yhzMLyNd/KJVt6Ueoamok4pj7WO5skNJSQUtNvYaqHg=;
        b=W5CmExBRUwjDErYyXziic7JOMXp405wRwkwVMoyYH3f6aPkgMjGDeZmd+3h7zrLbyZ
         /FAZKY3ljP0hvMe861m6CdVQi4NA1wm4wnkAhuY6IuFL13S5L+U+9oP3bGbgKBe0y34i
         MkS+98VdT1jMUJfxfNPPDsmWfuBqZP8jtOIloZ0DPFzKkX+MHuV6fo21IaPj21sdPoc1
         EcJwAm8qNIeVMsy3RL3qS+vra/lWozb686EUFIvLeKr2tKw1bYDy7+Wxe79ZZMuL2dM+
         5DTM34Xf0de2u/lRh03z3kEUH0UQ1nnon7E42Q5g7fXo8wIuBn3Fd/vPHfrL4AptPhqB
         ZNjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755672354; x=1756277154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yhzMLyNd/KJVt6Ueoamok4pj7WO5skNJSQUtNvYaqHg=;
        b=irABVU/3RMsUsAqKAf3YRu8bOhZHJ/TPNNDwTXObvicQETcxpfVeBt99XuNSDslVAn
         zvtO2SMnFlZKzcjJjJNSyj0ZJVjacn834U2QRlB9BQRY7gbow3xCkRJwQwRxRLt2M9Si
         4S3NGEtwGMbelDl6jD2/bIPLX9u8dvpcdBHWIKR9wStkD3aQShO6O/iPodE8GFi/jf6b
         Os0J+8IarGoAR4DRGbZCsp7MAiCFluzwaeWIjmBsFWD5CAUfhIjr9m5rC2CTmGXmxRSN
         1AR+mJ3wzHiJ9vtd/n2ieovrHuHOorf9IpaIjLER0Z44BLxlZU65aCJ1GF48bDXE+gO8
         7Hvg==
X-Gm-Message-State: AOJu0YzbGOv5ldmVijfhN+MCnu8jU8rZYORadTnT9oRtPyQCsopJkGMu
	pwpz60DFXlAnnxO6qzfQc6hq4hH1KubIk3CDLkJ+7alpeo0NxpRxj6UhS7zp/g==
X-Gm-Gg: ASbGnct/AKYrcHoOD8LdP3pXvMtmeW1DMDkvrEJzUlX0Wzk0rLEBLOqS8lRkkNU6gdj
	zHtXb8+O5Kqj/Ls8HNgXaEc6FbG0h18q8wUNInokeBSfbA7e9Ksuk68Uk0yiaQiZV4fjqM7hnGx
	5kScWEobxU1RExDK1qZYUxG89WMoEXE3bH7851usY3JPFizluGeCFlEuB0LT2+0SubYc5iwUu7K
	hYlbA6nmxKLxmdycklRGmY+BcrnspkdybwH2AaNPOcCQKGLN/OKEpUwbXd9w1nbFmJgncLxkS9U
	jukJ1ymmRSMB6au4rkos9LanozrmWPcj0kulz+U7YmTsz+JzzBes8rtlW1qtlk+LNgwm2dzwmsA
	AFtgaFSxSaOTAkPlXt/gBobdnNX8duyw=
X-Google-Smtp-Source: AGHT+IGFjq5de1Fthl3Lh/YYitS5Ge2eCmocpKYVMTjFbBpgbKleEiA/clLkaC/+t/4gCEsJn4ZLQQ==
X-Received: by 2002:a05:651c:3254:20b0:32b:7faa:1327 with SMTP id 38308e7fff4ca-3353bd18a81mr3026241fa.15.1755672353895;
        Tue, 19 Aug 2025 23:45:53 -0700 (PDT)
Received: from dcbuildsrv.ci.qt.io ([192.89.120.62])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41e242sm26462471fa.8.2025.08.19.23.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 23:45:53 -0700 (PDT)
From: Samuli Piippo <samuli.piippo@gmail.com>
X-Google-Original-From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] mingw-w64: use correct path to license file
Date: Wed, 20 Aug 2025 06:45:09 +0000
Message-ID: <20250820064509.855778-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Aug 2025 06:46:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65773

Amend b7ac9777ad0c4512f1a63aa6bec4ecedd91783e1 and use UNPACKDIR
also for the license file.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/mingw-w64/mingw-w64.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index 97315f4..a24e96c 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -1,5 +1,5 @@
 LICENSE = "ZPL-2.1"
-LIC_FILES_CHKSUM = "file://${WORKDIR}/mingw-w64-v${PV}/COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
+LIC_FILES_CHKSUM = "file://${UNPACKDIR}/mingw-w64-v${PV}/COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 
 COMPATIBLE_HOST = ".*-mingw.*"
 
-- 
2.43.0


