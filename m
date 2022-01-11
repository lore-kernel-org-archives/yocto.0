Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD581C433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 18:06:27 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web09.11396.1641924386978121522
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 10:06:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j4bALe2u;
 spf=pass (domain: gmail.com, ip: 209.85.160.173,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id s19so135570qtc.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 10:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rrwokb6dbCARWdOpg7fq01+0Ft0FmyWcVlhv4jVzsFY=;
        b=j4bALe2uCCahX8yDPh9mbAunEj9tQBzkC1QfXrWOSwClunI9W0v3mOFsYZBsjVfSUj
         pT7rnJKqXRNABAp3VCNgIn7KpHQFTgvZbizLRYF77bQB4T+hkTCrlo011TIgV+bszK2i
         1+yMTxxVNnt077A1YkGCIhlwCY6rPvhTWVoU8q2fM5abcpwbU1j8Ztiai6Z4uKMi6yxJ
         kxdJkTz1745F+eIEEL3XRoEFIdhEZ7rFwrJSNyUnUPKpXZKX+Iop94H+SDiniQVN5G7N
         YQIVl/8qVjG3EjYV1q+nvVhrlGGgq/fZB7v/LTBpAj5Cpt7Xw/6+y2HTeF0lq5wI4z++
         dVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rrwokb6dbCARWdOpg7fq01+0Ft0FmyWcVlhv4jVzsFY=;
        b=KSkf0sYga1DzuJgHM67Z0CeCfuXru18UMiofGakjPPmqtufWbcgPFWHswWqcnKDtZi
         CXmgtApN/aFfwZ2QV4NvUq/2fa98OQCN7TL6OXzKek2V6wV3M5viDU94JniIUnBmRIj6
         z1dS0Nw9L44kSSwN2yesYRSVJVQ2Fs1MngXgTk1/JxvnP553hjlnZtI7CuA4rkAFXHUe
         f59Esa0z49F/LT6W5mj4ZERSund8xBq5KbWA2DaWChdzOVvDgrQVBSqh2s+Eh3vwcdom
         0tPus9DKiLyvayTm0OwAfpOv7N/L5PxuOQutzZSDKBrgw0T2Rvywzokfl5wyyu5g15OX
         Rruw==
X-Gm-Message-State: AOAM532KIGnXx+RbSYyYLIe/QEiXWpp9528fLEAKgPS/GblEIDJWGAfQ
	8V6QaF8ffYLH6N5ZDY1Ovs8=
X-Google-Smtp-Source: 
 ABdhPJwQNe49+8TgHt6Ws4c8EuhYaYzdN192GlLT/ju0iQLMiHp1cJXRcC3MLAqiXYH03J/w7gDjYg==
X-Received: by 2002:ac8:5ac8:: with SMTP id d8mr4716890qtd.606.1641924385985;
        Tue, 11 Jan 2022 10:06:25 -0800 (PST)
Received: from build.lan
 (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id
 k8sm7543018qtx.35.2022.01.11.10.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 10:06:25 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/3] yocto-bsp: change default to 5.15
Date: Tue, 11 Jan 2022 13:06:22 -0500
Message-Id: <20220111180624.45586-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 18:06:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55804

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.14 has been removed from core, so we change our default version
to the 5.15 LTS kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf         | 2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf               | 2 +-
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index b3d960a8cd..a5cb16cd93 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.14%"
+PREFERRED_VERSION_linux-yocto ?= "5.15%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 32be4b9c39..249864e9ce 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.14%"
+PREFERRED_VERSION_linux-yocto ?= "5.15%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 4651b37e5d..8c5e5522bc 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "5.14%"
+PREFERRED_VERSION_linux-yocto ?= "5.15%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
-- 
2.19.1


