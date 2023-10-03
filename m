Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F7C3E776DA
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:10:51 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.97891.1696291843772396324
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:10:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jeKh/iUr;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-77574c076e4so29536185a.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696291842; x=1696896642; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=klo+0FirU7p2JEcR326emW6SkaIcs8OzVhAfqbikRI8=;
        b=jeKh/iUrVWrgqMVR1gE7fbVtdKarn7G5GGw6TuN0PpRnlyDfd+dtmpDoSpH4AI/0U2
         vvYvA225RSmwZyXWv7dcuAoQ93ho/45Qf3tQ1sO/B1icxrb1dv9kOLhCfQAOLuaqsYpN
         pj49TX3sOmNSZHhJoXE2r02rnXnHIEZunY5N6U0z6DWFMWmv7yMpyTiHS1KxhLyo5SQe
         HT7CY/m+yPji5T2i2SDgnUKJOxxhKM5QMMY8X/R1xefwNAQt/2zxffrt8k+aB6BtlkgF
         IZ8GcfV5fbTNvb8hcggv0tsx353L91EBNaX6G+cr21vHvr4kHkeUEPPYqRmCeI8kPJPk
         DPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696291842; x=1696896642;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=klo+0FirU7p2JEcR326emW6SkaIcs8OzVhAfqbikRI8=;
        b=d8TFUbFEMErMomAw5pmRJFzh5zIoU6mU9+2Jj86QQLIJIHy5WmXieox4BvX3QW+FXW
         J83IkpwdtBLflMWqKGt5hctq0N34KuVZHvxhTQ9yOhBDAO9tRr55n19moAKhKqMmrQma
         1umdwBtHLZAtoK22TEQr53G0NPOClcwvEZeqLTZ/1Zv1XafNLomKd/N7/1Mywm063XVT
         0+LamD365jXPSe76sD3Tpwcszd6nvyUIVtOLJLW1hTiaTjfemksjSuvKl+PnDNkB8tH1
         baNL9cw1dJw2Lx435SwFidV7nJyYC7Iu+uYGts1m0LoLoTpFZZust0OjoMTAU85+BYSL
         bz9w==
X-Gm-Message-State: AOJu0Yy/YkBNT+AAHwHFYJAcMGDiBNUMLEN+3wPw7raDTrzvWgiTXKQv
	KrRRMHqCFdRKhMtJMdEJKqU+BokkgrLq1g==
X-Google-Smtp-Source: AGHT+IFQJv7kkLUvaC3wB1rUeaA710s3QFiMK99gzVAOeJZ+fOEiIW99Jb4Zo6RtCewfrY00KYLabg==
X-Received: by 2002:a05:620a:a52:b0:76c:9ac2:3f22 with SMTP id j18-20020a05620a0a5200b0076c9ac23f22mr12975321qka.68.1696291842119;
        Mon, 02 Oct 2023 17:10:42 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id t7-20020a05620a034700b007758d87524esm13465qkm.3.2023.10.02.17.10.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:10:41 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] nanopi-m4b: add
Date: Mon,  2 Oct 2023 20:10:38 -0400
Message-ID: <20231003001038.33709-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:10:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61201

NanoPi M4B is a RK3399-based (dual-core A72, quad-core A53 with NEON) board
in the same form factor as the RPi B3+ (including compatible connectors) with
onboard 2.4/5.0 dual-band WiFi + Bluetooth 5.0 with USB type-C power from
FriendlyElec.

https://www.friendlyelec.com/index.php?route=product/product&product_id=275

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                      |  1 +
 conf/machine/nanopi-m4b.conf                | 11 +++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 3 files changed, 13 insertions(+)
 create mode 100644 conf/machine/nanopi-m4b.conf

diff --git a/README b/README
index 81044748880a..bcf1e0bba361 100644
--- a/README
+++ b/README
@@ -32,6 +32,7 @@ Status of supported boards:
 		nanopi-r4s
 		rock-5b
 		nanopi-r2s
+		nanopi-m4b
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
new file mode 100644
index 000000000000..35cd8f68e82e
--- /dev/null
+++ b/conf/machine/nanopi-m4b.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: NanoPi M4B
+#@DESCRIPTION: NanoPi M4B RK3399-based board which has the same form factor as the RPi B3+.
+#https://www.friendlyelec.com/index.php?route=product/product&product_id=275
+
+require conf/machine/include/rk3399.inc
+
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4b.dtb"
+UBOOT_MACHINE = "nanopi-m4b-rk3399_defconfig"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index d627a063a2d0..7da92dbab508 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -14,6 +14,7 @@ COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
 COMPATIBLE_MACHINE:nanopi-r2s = "nanopi-r2s"
+COMPATIBLE_MACHINE:nanopi-m4b = "nanopi-m4b"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.41.0.327.gaa9166bcc0ba


