Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3C0DC46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 16:55:38 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.33536.1704214532561408590
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 08:55:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=UPhJcQI/;
 spf=pass (domain: smile.fr, ip: 209.85.221.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3368b1e056eso8792981f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 08:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1704214530; x=1704819330; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uvzwJVbZLkXaR07rMAczlYilwm4BpK3oAgxcG3CCkuo=;
        b=UPhJcQI/AU/8B8CS/Ens53+TYl5TQ8eKjziBM6vLjpPwBMMxOfCPjxudMM6QTepQFM
         lRx/BmezsYCIJ9HEXOJwpLaJNTpU3TtGXAiHm5qnEMihpUbEJ7qeQJ2bV2AilCO/vWmd
         0CgNpLK3iZl++t6q2Vw9OENDVIHcuano4bzByYsoAv+p+ASVuJvo85jmk4V4xZswGiX9
         SEGj4uotw5hF8FdzhKqI2+gOwZKrKfmJDZYPGVgMbnPdReSQaqQka99jzZgL/6IERiaH
         BV9Yez9Gs8Lz2gcHwC96NM/u84fhAp+epLSiv0DJWNRRFdbUP5BMrqhqwZ+ievpn3NV0
         X1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704214530; x=1704819330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvzwJVbZLkXaR07rMAczlYilwm4BpK3oAgxcG3CCkuo=;
        b=B+3RIFsaeEEFabTO5u4jNaSXG598WY4mtXE30poG1E5S4pTO+ChKko2GeUHZBBfk8E
         m8Sw6yAHYueLDFAJ2RpVSGHM63vJyR9MxIHYl3BldpTxnA24N21L7F2eB/Mq4jDucoiV
         nbwTwNuUYXL87126JlpfHOcb34TH7wJNG1eHH6KOnRF0ksbshAwrK6MjMG9aJiz6PccB
         TI6s1FaxyuP6qG/9UGbe4yFkSlqTX77q/egLDYzK8pe7uAl3Q937fuubXgWpgPQRxn/L
         R51wZ3m54KVH7x4tjEhxbjxN+eCAbtMzq6wODoXHjkI36obdTXb8TZZpyGB5uwQ1dyFS
         2aCQ==
X-Gm-Message-State: AOJu0YzO2IJocAq3ZBXlrg2GPNMt6EHyNfMaPFq6LJtDJW87vrJ7OvB+
	96IHTBeed8Dx0nJDDnyTLQblhZO/HOJbjrWqiWErwdSkqsOaXg==
X-Google-Smtp-Source: AGHT+IGv4QCyYY/mGMsHExiGtOKePdSbKjel8MDhnvpif0Ku+Oa8nm9X+FTIqNu8LR5WasXyfsEn+g==
X-Received: by 2002:a05:600c:364f:b0:40d:70c3:5f3d with SMTP id y15-20020a05600c364f00b0040d70c35f3dmr4084175wmq.105.1704214530157;
        Tue, 02 Jan 2024 08:55:30 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id u16-20020a05600c19d000b0040d604dea3bsm22086931wmq.4.2024.01.02.08.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 08:55:29 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][kirkstone][PATCH] config.json: Make meta-oe source mirror config wider coverage
Date: Tue,  2 Jan 2024 17:54:39 +0100
Message-Id: <20240102165439.34706-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 16:55:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62065

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Some recipes depend on DISTRO_FEATURES, commercial licensing or compiler
config like fortran. Set these things so that we get wider soruce mirror
coverage and fewer warnings.

'commercial' license usage is ok here since we're not building and then
shipping any binaries or using it, only mirroring the source code.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 93d47af8abbc6558f9a098a0c7fa6c0e901424a9)
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
This will fix many AB warnings for meta-oe-mirror/kirkstone
configuration
---
 config.json | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/config.json b/config.json
index 7828462..7c53c46 100644
--- a/config.json
+++ b/config.json
@@ -1180,6 +1180,12 @@
                 "${BUILDDIR}/../meta-openembedded/meta-initramfs",
                 "${BUILDDIR}/../meta-openembedded/meta-webserver"
             ],
+            "extravars" : [
+                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
+                "DISTRO_FEATURES:append = ' pam systemd usrmerge'",
+                "FORTRAN:forcevariable = ',fortran'",
+                "RUNTIMETARGET:append:pn-gcc-runtime = ' libquadmath'"
+            ],
             "step1" : {
                 "shortname" : "Sources pre-fetching",
                 "BBTARGETS" : "universe -c fetch -k",
-- 
2.39.2


