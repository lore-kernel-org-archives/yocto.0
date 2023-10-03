Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CD52E776E5
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:48:01 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.98908.1696294071195721664
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:47:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B+mCtial;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-41995d42c3bso2792421cf.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696294069; x=1696898869; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oJJ6M2HoHr0+OqDqEHFqGmWWofxgVGEZp/ltIU0MK3g=;
        b=B+mCtial8ktflzY0Z12YySQ2g4lVZLrPZQ4W7dp2qay1TCDkSOrtRMlp4m3UeLhKp0
         DKMwyUUGU3ChUSwVdu+isrIyQIws1hRGULzDnot2xT+Eiy0uT1OM+2gIkNjrpo9RYp8l
         QIMzujnKwbKGJGAL6D0lrg7Hx9q+vBfU8/kNFm1oIAZdlqLwxCdrtdhoL2u7bAEu2d6m
         c50RAg8UR+5ceMDezF88k7o5kFVl+da7ZGcwHnGGSNlNA7XpqH0UqqV3GqMo5g2JstMt
         axzjFAhuhkbRxXjI0rNelbgikCN2jeLL5Smh5etG42mq2MMhSZMrQL/D4VkU/JuNXoFq
         LcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696294069; x=1696898869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJJ6M2HoHr0+OqDqEHFqGmWWofxgVGEZp/ltIU0MK3g=;
        b=mRHO0yx7VY9iYP5hhs1c+ZSG2nS08NVsKLnl0c5PbTWfS6pslYGA7FRORSdEtfk0UA
         6g5R/VXVuXxILJ5AVSRkO5IUDC/Cwbjki1c1MNGIigGQrWNhjjalKYkjjv49tiSHdU0Y
         KvU9TNE26fdBbN1evKGzZvgyRHTWlN+RjeOQM7WJop/d9S+SyJTdbAGJSAb8dI7XPe1t
         KRVKIb6K0bvJ8Y3JsxzZgPa2SWrrdySljoxsN0Ke46x4A+lgpNeriT8s08EK761aOAYc
         EpaeD7aQ4s7RMVgEgyXLVHCBiM1o59mCimRrVGjHib1U2/3rQ5m5jrkmYDdw6r9Y+eCs
         +U6A==
X-Gm-Message-State: AOJu0YwGPJ5gC8LMUoRepEowexkIQqByGHUmI3i4+LzcctUt54Fa1Yjj
	zlYCX1VSQR0Vcg2dPqiL+5kDmA8V6T2mWg==
X-Google-Smtp-Source: AGHT+IGP5uM/SV79wikh5fQ1ZbJgmjvCg1GG0l/y+o0lvkZQY7nuMNv1JSjGuSWQSzYzuU+ADH3Hug==
X-Received: by 2002:a05:622a:11cc:b0:419:5795:8e12 with SMTP id n12-20020a05622a11cc00b0041957958e12mr14752925qtk.40.1696294069497;
        Mon, 02 Oct 2023 17:47:49 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o1-20020ac86d01000000b004199c98f87dsm48877qtt.74.2023.10.02.17.47.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:47:48 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 3/4] u-boot cleanup: group EXTRA_OEMAKE
Date: Mon,  2 Oct 2023 20:47:40 -0400
Message-ID: <20231003004741.6021-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231003004741.6021-1-twoerner@gmail.com>
References: <20231003004741.6021-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:48:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61206

Group the EXTRA_OEMAKE items together and sort.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 8c6ac8627efa..951e82af7743 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -2,15 +2,14 @@ DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
 
+EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
+EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 EXTRA_OEMAKE:append:rk3588s = " \
 	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
 	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
 	"
 
-EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
-
 INIT_FIRMWARE_DEPENDS ??= ""
 INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
-- 
2.41.0.327.gaa9166bcc0ba


