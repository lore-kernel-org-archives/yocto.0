Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0473C07545
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 14:58:18 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.45869.1698245892539559677
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 07:58:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=neBG4CYg;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-66d0ceba445so32435096d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 07:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698245891; x=1698850691; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=68Y45DD1cCqLtm3ZSvSZhK4d8eLWp10E6Dfl7n1w7XI=;
        b=neBG4CYgi3/e0JTWb+I3FhLS8xsmhSHySL4wXjPtKfmtkYCxDWhB4VNPQEBOkoYf4M
         U/1l80jCHIUBn3S0DsH65zZpm74BbV3Fl1X0Xecbjj+dkngNwyrgz1omaNst6xG2uKeN
         rQdLE8Y4lorOysRj/RmOhFIh3MGQSODexwLtQEmWXVQ+GpGc+gUtzNRIs/a2OA1u/ZeI
         jnnwBnd2UTmZWBAqzz74ZmfJl3uMEK+bi26HJ++Y4PeZw27uOXqkRgN5NXBNAy8wnD7L
         G8cBht3I64zMqGRCf+dghcSsiFt2evE7hjVb8wyPnmbH90nBxJCB8JSC3SbvNr4x3Tgr
         Uawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698245891; x=1698850691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=68Y45DD1cCqLtm3ZSvSZhK4d8eLWp10E6Dfl7n1w7XI=;
        b=UyNou9g/sLRTJ5R6BkBRn5AZvG+4F+KFkYLwhVLVMdd70KlnzHEMqvma22YoXaQrHD
         /st9BrW6optIFxsZ+LIvqsCHfl28k8+18hJlXlBKl+W8TBGLHMK8ESjNWy2e/8J7wjGW
         LgN2yskLitbLcs57ic2E0s3OKfcxrv7iLv7CLzdUy0F6Xj/XmC5Obk7skMXasa72gpY+
         o6R7Xn+ESEZy/6fvkda+U5xA2goLLYD/hz7NzIcXDMB3+0X5Myk1OmhtbINDwkoWqT9A
         zXGl1R8okJMu+msolZdynOlfPNngjOCFFxOQ2Xpwn3dnfzf0oZnoQDZ1cEFeqzVFp/Rm
         cMzA==
X-Gm-Message-State: AOJu0YxDxlUyLvs6411ryT0SCAgqEX5x0ZYPFgRMeHZiwhkGNXQTfXJQ
	j53iekIPmMaalgoOHLxfolY3gt4XzVE=
X-Google-Smtp-Source: AGHT+IEdI/dsbaO28Feay/30yDWrpn/XRhXAuFnqKJKwI9BOJUHAtcuCXPTJ0s4nKqo91O9CNg8bSQ==
X-Received: by 2002:ad4:5aab:0:b0:66d:ab4a:dc4e with SMTP id u11-20020ad45aab000000b0066dab4adc4emr12454733qvg.1.1698245890958;
        Wed, 25 Oct 2023 07:58:10 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p8-20020a05621415c800b00656329bb3b1sm4472738qvz.10.2023.10.25.07.58.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:58:10 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rockchip-rkbin: fail if lacking an override
Date: Wed, 25 Oct 2023 10:57:56 -0400
Message-ID: <20231025145756.17502-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 14:58:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61484

Looking forward, rkbin should only be used by specific Rockchip platforms
for which TF-A support is not (yet?) available. If rkbin gets added by
accident without an override, add a bbfatal to let the user know an
override is required.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/rkbin/rockchip-rkbin_git.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index f9e680d16cb9..a3ab34189041 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -25,7 +25,7 @@ do_install() {
 PACKAGES = "${PN}"
 ALLOW_EMPTY:${PN} = "1"
 
-do_deploy() {
+do_deploy:rk3588s() {
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
 	# Prebuilt OPTEE-OS
@@ -34,4 +34,8 @@ do_deploy() {
 	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
 }
 
+do_deploy() {
+	bbfatal "COMPATIBLE_MACHINE requires a corresponding do_deploy:<MACHINE>() override"
+}
+
 addtask deploy after do_install
-- 
2.41.0.327.gaa9166bcc0ba


