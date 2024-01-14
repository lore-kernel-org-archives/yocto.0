Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA854C47077
	for <webhook@archiver.kernel.org>; Sun, 14 Jan 2024 14:46:28 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.39403.1705243588397996002
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Jan 2024 06:46:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PeKvjm/c;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-42989a64713so52830381cf.2
        for <yocto@lists.yoctoproject.org>; Sun, 14 Jan 2024 06:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705243586; x=1705848386; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=+VwXgfFD5SnYYA2Ah21prfpxxhCRS0EjWU/XKNZX7bs=;
        b=PeKvjm/cY6Sw7Ue/Cp0YvWKkFhS73EprOE+XfF1iz+MjlOE4qBZtwPEIq215OL7gm1
         LfRvdgEToNu8TsNUk2ZMy117jhvyN16R0oBparnPX9KtYH/WsbGyg+pkJBGU6YDFOpD1
         MGdT/3KAhSw88/hoLqQx8v+1Q8W5W0ZQk+F2bGglnYn+UdYYl/3YJNaxbhDrw7zEz9mu
         NryWb3h1H7yN4xaziuOVufL411W7Bio5Y7BAZ2YPkyyu8dHhBi1olhQA+ZlleGna7cFf
         53v6YXVERrl3VW+xkVMQeHP/0I8NeHfNhww0D/lIji3BO3fbYM+MT3CQIR1kV/H1C0Nk
         +QuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705243586; x=1705848386;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+VwXgfFD5SnYYA2Ah21prfpxxhCRS0EjWU/XKNZX7bs=;
        b=ZqceKmkmo6pbw0AGUItBsEGIHEkF2/4P4cHEWVa79ayScsiqv2zuVRYFkj4a+sk0ez
         PInKcvOZLd8HSAkJn8lYQF5USUiyclgLJOszKkNJrqhmZfmvHDiwZXRGF8914r1Qq9PN
         8/M3DF2Zf1c34tP+3qPKs+HdvyPM57FTnqTXzUYrnNu2ishoa6hINtduu3ryTwxN7rpm
         qOz6X8FVF5nBouPJbV742hNz6kr1JpME0lGQj1aqacU57epoca3xfE+YwJUPBPzsQVrJ
         fhR5Jl5Cbkk4S8uCrzNV4jl15yZhwiKsw9nva7csO8LTbj7FI3kwFs0ATjSfvjfDpXQN
         Nkig==
X-Gm-Message-State: AOJu0Yxfs7cvBhys88k2Sc03PUK/ISTA9UORK0B/X+28klhcaoHc93II
	jLBUh/QfUfUYFE7i8sraQHArksXXKhA=
X-Google-Smtp-Source: AGHT+IHMJNYl2pMeupemsLaYIK99ju6Tl6i/SXG76Kfzzd4Occ2HCUcWLaAIBvm/2vQG8PF0YRhntw==
X-Received: by 2002:a05:620a:856:b0:77e:fba3:9d0e with SMTP id u22-20020a05620a085600b0077efba39d0emr4550687qku.114.1705243586056;
        Sun, 14 Jan 2024 06:46:26 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id m7-20020a05620a24c700b007816cf21f7asm2308647qkn.76.2024.01.14.06.46.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jan 2024 06:46:25 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] remove adding all kernel modules by default
Date: Sun, 14 Jan 2024 09:46:18 -0500
Message-ID: <20240114144618.30935-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jan 2024 14:46:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62140

A BSP layer shouldn't be deciding to include all kernel modules. That's more
of a distro decision, or for local.conf at a minimum. Modules that are
required for the basic functioning of a board are fine, but doing a blanket
"install all" is overreach and inflates images unnecessarily (~45MB, by one
measurement).

I expect patches will probably roll in after this one to add back necessary
modules, but it will be easier to figure out which ones when starting with
having none of them included by default.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rock-pi-4.inc | 2 --
 conf/machine/nanopi-m4b.conf       | 2 --
 conf/machine/nanopi-r2s.conf       | 1 -
 conf/machine/nanopi-r4s.conf       | 2 --
 conf/machine/rock-5a.conf          | 1 -
 conf/machine/rock-5b.conf          | 1 -
 conf/machine/rock-pi-e.conf        | 1 -
 conf/machine/rock-pi-s.conf        | 1 -
 8 files changed, 11 deletions(-)

diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index 0a868463bc64..02dfb18fc775 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -2,5 +2,3 @@
 MACHINEOVERRIDES =. "rock-pi-4:"
 
 require conf/machine/include/rk3399.inc
-
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
index 35cd8f68e82e..b924b0018867 100644
--- a/conf/machine/nanopi-m4b.conf
+++ b/conf/machine/nanopi-m4b.conf
@@ -5,7 +5,5 @@
 
 require conf/machine/include/rk3399.inc
 
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
-
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4b.dtb"
 UBOOT_MACHINE = "nanopi-m4b-rk3399_defconfig"
diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
index 4472c21f0217..0451002ecff5 100644
--- a/conf/machine/nanopi-r2s.conf
+++ b/conf/machine/nanopi-r2s.conf
@@ -6,6 +6,5 @@
 require conf/machine/include/rk3328.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3328-nanopi-r2s.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "nanopi-r2s-rk3328_defconfig"
diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
index 21be4400c89d..161f4b4e4609 100644
--- a/conf/machine/nanopi-r4s.conf
+++ b/conf/machine/nanopi-r4s.conf
@@ -5,7 +5,5 @@
 
 require conf/machine/include/rk3399.inc
 
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
-
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-r4s.dtb"
 UBOOT_MACHINE = "nanopi-r4s-rk3399_defconfig"
diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
index 5ace4dac8fe4..28e06486eda3 100644
--- a/conf/machine/rock-5a.conf
+++ b/conf/machine/rock-5a.conf
@@ -7,6 +7,5 @@ require conf/machine/include/rk3588s.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3588s-rock-5a.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock5a-rk3588s_defconfig"
diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
index d1371084becc..ea2cf219e153 100644
--- a/conf/machine/rock-5b.conf
+++ b/conf/machine/rock-5b.conf
@@ -7,6 +7,5 @@ require conf/machine/include/rk3588.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock5b-rk3588_defconfig"
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 517956c4b9db..1e2169b01993 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -6,6 +6,5 @@
 require conf/machine/include/rk3328.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
index 79ea73c6b47e..3aa868b7ec7c 100644
--- a/conf/machine/rock-pi-s.conf
+++ b/conf/machine/rock-pi-s.conf
@@ -6,6 +6,5 @@
 require conf/machine/include/rk3308.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
-- 
2.43.0.76.g1a87c842ece3


