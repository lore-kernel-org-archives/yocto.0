Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE01C636D6
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 20:10:08 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web10.3692.1677096598640913874
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 12:09:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pLJkTFqR;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id o8so1324891ilt.13
        for <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 12:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=xOuKNNQnXZvzlg7la4gsMuId1QSSKEJyrZhUKgHsRG0=;
        b=pLJkTFqRcSHddw9n+n/4vOhZk/dlHJzmYh0fUW1kFjjXUko7FDNA4l4bGuO2qlxAlo
         KwqrrpaDEu6Un6eT8e9Ik6J7JnU59tJXFmwyq+KEQWVFqQKQeC3xatGYUU1Cn1HzBiGo
         Fy7inLIfCLbkDvyYPLF3ucfamHZxhu07f+sDFNltbmL+GbCzsTK8hxnHYyFHFhkepibS
         pIBYfjA+yL0e37UQtMF6DnD04FuNST4nwgG5YomF5LCrol9pntAq3MbLOiC4snFZeHRe
         IOjClwBg/9N+INa/MA22yH33UF5XEkpruGTETFqXlHopd5d9QjfIwAqMSV7hKB1mO5dV
         gPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xOuKNNQnXZvzlg7la4gsMuId1QSSKEJyrZhUKgHsRG0=;
        b=wMHcp/ztdlFmbbU9yvCAVLivdpWnyk5ZKIw6eCdQc25cK3xpFiIugZNXgmdcr3eAVo
         1w1o7n7Eq807EN0lEXr8YUSvqwaMmFMx73TyggJnXTC3dtA5USEzDdsn3vg8dy9LSD4V
         px0/Mb6UgVPwK5Kts7rUE8+b78YxYMOOVNbg7IACmWo7aqY1yI6YlDggcsUdB/JMRBxB
         1vpnPORuOZo0hYPxKxCKcSxUf9TM+TMykpx81GoeuasnKkgb8OO/AU5ds3g35HbIDEd/
         qyEaQgdyuiXDumd3UbuN1eWoqxdv85Kx6+rZQV3gVCDdZn+5m6IVqk8pt1igRp93w5Za
         iZKg==
X-Gm-Message-State: AO0yUKX/3jzJEom+yvh2BUGXRdtRET/TK18ujQMb7PWM8rNZF0FNLsXj
	wEhH7WMkWvHouCUXE8rRXUUmRIAkSeM=
X-Google-Smtp-Source: AK7set+qzv5tc5xlHTBCXR51UVuhWU6ltLIPjzZOH9/TsMbSJKq2aOg/UhlMZeq+HWiShud5hlMiNw==
X-Received: by 2002:a05:6e02:1e0b:b0:315:365d:5358 with SMTP id g11-20020a056e021e0b00b00315365d5358mr7651396ila.10.1677096597419;
        Wed, 22 Feb 2023 12:09:57 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id k9-20020a02c769000000b003c4f6b20620sm1250561jao.106.2023.02.22.12.09.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 12:09:56 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] nanopi-r4s: add
Date: Wed, 22 Feb 2023 15:09:54 -0500
Message-Id: <20230222200954.14031-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.36.0.rc2.17.g4027e30c53
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 20:10:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59280

Add a MACHINE definition for the FriendlyElec NanoPi R2S
https://www.friendlyelec.com/index.php?route=product/product&product_id=284

My testing shows that there still seems to be some issues with the SDcard
voltage regulator. The kernel has a number of fix attempts for this issue, but
I've seen it a couple times. Ejecting and re-inserting the SDcard gets past
the issue. Some SDcards show the issue, others don't.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                     |  1 +
 conf/machine/nanopi-r4s.conf               | 12 ++++++++++++
 recipes-kernel/linux/linux-yocto%.bbappend |  1 +
 3 files changed, 14 insertions(+)
 create mode 100644 conf/machine/nanopi-r4s.conf

diff --git a/README b/README
index d66ed7e79bd2..286dafbe1020 100644
--- a/README
+++ b/README
@@ -29,6 +29,7 @@ Status of supported boards:
 		tinker-board-s
 		vyasa-rk3288
 		firefly-rk3288
+		nanopi-r4s
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
new file mode 100644
index 000000000000..e3323e03b61a
--- /dev/null
+++ b/conf/machine/nanopi-r4s.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: NanoPi R4S
+#@DESCRIPTION: NanoPi R2S is a high-end FriendlyElec mini-router based on the RK3399 SoC
+
+MACHINEOVERRIDES =. "nanopi-r4s:"
+
+require conf/machine/include/rk3399.inc
+
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-r4s.dtb"
+UBOOT_MACHINE = "nanopi-r4s-rk3399_defconfig"
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
index 470dc0911ca0..7680d0372e36 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -10,5 +10,6 @@ COMPATIBLE_MACHINE:nanopi-m4 = "nanopi-m4"
 COMPATIBLE_MACHINE:nanopi-m4-2gb = "nanopi-m4-2gb"
 COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
+COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-- 
2.36.0.rc2.17.g4027e30c53


