Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 722A5C48BF6
	for <webhook@archiver.kernel.org>; Sun,  3 Mar 2024 23:13:25 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.85618.1709507596526993333
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Mar 2024 15:13:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=StNgEAqh;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42ef3c813aeso1591141cf.0
        for <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 15:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709507594; x=1710112394; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLNg6Lr+rO9CvEPzUMFGAhSfFX2SJYlH0AeUIMrHCtU=;
        b=StNgEAqhSAMjpItcBUphx8NaKe0LT9rOH7OTngjAkTsuWwyfS14LCY7wCTbc6+YF+S
         EkAdfbiX6dxdginBT+wn1PbcjkYyzDpk7f8/HqCdW8vy6GNnNgj5cBdGEiy8mayA+Ai4
         xhHlivOPYlHoaT3gWeUA+R9EnC9vshuO57dQSzqBIB6zcjWXYT/AGQLBCXSXWA+tbrAy
         8reqaVuopsGske2TpaAwUJovVqBdQvFS7t9vjrj8aghY2Yi08ajhw52n2Ii1yZBfFgkb
         tlFRDJ+swFIeE8gJpHjBMnw/oGU1zhliVhp66PwECY3hkK+LpDA270wWgLaGFaFT0pYi
         L6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709507594; x=1710112394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLNg6Lr+rO9CvEPzUMFGAhSfFX2SJYlH0AeUIMrHCtU=;
        b=Vw2knjDMiY4/KpS1QP1vr0ZFW0XpIdGNpRjdWESVDX9CEIDhIYa2LynnL9jLbIuxsB
         fBjMrKA/RgR44f0oO3Q3pWPS0kNIpWfZEWKrLvmm3FZ503u43SpiV5TCyR5wYbz0hUH0
         +v8JE1rtHvjUQnI5B15uPjDWfaAb5inT0SCmMv2f5WFGkKiBLAWBe1vUM5xkHDQ7OF39
         tKXrG9a2MGIYhe/do0uusxwGJ/uFig5KtWi2o0+MswFAUI07YrDOT/X93rL1lA+EOnns
         VG3SxheKuAyZDD0zkNPS5o5oeuxqZPTnf8I+5MnEZY+MScMlHNiiOtRnEXc2aJr7w3Xs
         5hbg==
X-Gm-Message-State: AOJu0Yy0MFuJEc0XGoE+AG5OY4ICFRDdCo7cONwZ35xYVxeWnu8h8vIR
	X7dGd8mFP5MkZaCYN7wzLUDhjHwMjqbZQ0C61wXUpnQRJ8w8r4F7wt2ObkdN
X-Google-Smtp-Source: AGHT+IEW5LuekQX8cIZr9vrFlRxwiHk4Jt7WWJDrf8TmU22Xio0Js/9W4Qji36RRPWy/jdQcmJQADg==
X-Received: by 2002:ac8:580c:0:b0:42e:a626:19d9 with SMTP id g12-20020ac8580c000000b0042ea62619d9mr18263170qtg.17.1709507594357;
        Sun, 03 Mar 2024 15:13:14 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id i24-20020ac84898000000b0042edfc2c608sm1507088qtq.2.2024.03.03.15.13.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Mar 2024 15:13:13 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-5[ab]: use regular yocto kernel
Date: Sun,  3 Mar 2024 18:13:09 -0500
Message-ID: <20240303231309.33027-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 23:13:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62655

Upstream kernel support for both the rock-5a and rock-5b landed in version
6.5. Nanbield contained linux-yocto recipes for both 6.1 and 6.5 so it
was best to simply have these MACHINEs use linux-yocto-dev. Post-nanbield
oecore master only has a recipe for 6.6 (so far), therefore these two
MACHINEs can use linux-yocto by default, instead of linux-yocto-dev.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-5a.conf                     | 1 -
 conf/machine/rock-5b.conf                     | 1 -
 recipes-kernel/linux/linux-yocto-dev.bbappend | 4 ----
 recipes-kernel/linux/linux-yocto_%.bbappend   | 2 ++
 4 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
index 5ace4dac8fe4..1a6aa36fe649 100644
--- a/conf/machine/rock-5a.conf
+++ b/conf/machine/rock-5a.conf
@@ -5,7 +5,6 @@
 
 require conf/machine/include/rk3588s.inc
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3588s-rock-5a.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
index d1371084becc..c3a9b0afa57d 100644
--- a/conf/machine/rock-5b.conf
+++ b/conf/machine/rock-5b.conf
@@ -5,7 +5,6 @@
 
 require conf/machine/include/rk3588.inc
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 38fbb77a0f2b..b6a63d7b7b29 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,9 +1,5 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
-COMPATIBLE_MACHINE:rock-5a = "rock-5a"
-COMPATIBLE_MACHINE:rock-5b = "rock-5b"
 COMPATIBLE_MACHINE:orangepi-5-plus = "orangepi-5-plus"
 
-SRC_URI:append:rock-5a = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
-SRC_URI:append:rock-5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:orangepi-5-plus = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 41451dfeefb1..5528bab0d17c 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -20,6 +20,8 @@ COMPATIBLE_MACHINE:roc-rk3328-cc = "roc-rk3328-cc"
 COMPATIBLE_MACHINE:roc-rk3308-cc = "roc-rk3308-cc"
 COMPATIBLE_MACHINE:rock-3a = "rock-3a"
 COMPATIBLE_MACHINE:rock-4c-plus = "rock-4c-plus"
+COMPATIBLE_MACHINE:rock-5a = "rock-5a"
+COMPATIBLE_MACHINE:rock-5b = "rock-5b"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.43.0.76.g1a87c842ece3


