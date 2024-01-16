Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1428C47077
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 22:43:07 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web10.32911.1705444986608336690
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 14:43:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UY3BNrq4;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-429915eefa5so73592241cf.1
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 14:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705444984; x=1706049784; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=gdYS4UvyC0SIRcvl3jIZ0IUAqR88fBOMvTXwJbECXHg=;
        b=UY3BNrq4QRP+6QaXauhUA88XvFllhw2VW7kFDqDInK87eocxIeQzqFbMD5ETrZaHd5
         TpQt+XjSpJDtqLBa3LL7vi1VxcYXccEUS2jMHhveAFbc7VEPe6mUSZYvscLoT9z8tS6S
         RNLOruwHohoOH/kgAodztX4GRX/2vdzCD0TSLBAogaJJKl0c6Kp6jTJKJEmmIqq86/B4
         ajV6FLv7Hwaw6tjah4G+VHx7tynKMHvw7o1u0KOc6muj9kOTTHvQ5KHHz1GxHghFW767
         6ikJkoeo+GlvlIh0c5qRojxSz9c1vz9c5lddH9JpqmjA7WEHrvH2wGvQXutoNcU+A/wG
         cr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705444984; x=1706049784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gdYS4UvyC0SIRcvl3jIZ0IUAqR88fBOMvTXwJbECXHg=;
        b=teqEHR9JlX3eMv+3+3aOGm3A8kRwcbjIkzW1wfmWMEGKkDnUOSksyk3HIXxxWlAwQf
         LsSWDTs62c9sUAitJmWRP6pJ/pqMpckg7mF7V+t851KQ1+VnBnjuUqnVGuRuxJgu2H7Q
         UAa1xC0UqfqOg9U0vFDvIN1OyC1tGaaeP8OaFUXdW1gtS4RxCp4H+W1TMzrFh1tSFaQz
         dslND4dg9nCTdWYxHl6qudZv6tDY0Vx0wjczGCxuOdNLxuhwjutmDZ+ezQ4y/hcoNJji
         nLqLjpucpkALeCosSORClGalndkjgwm9uGCQ45f/i7HMDCk77DMFMz17izRFFjNjHmVb
         9reA==
X-Gm-Message-State: AOJu0Yzspi48N1XMNG3fYFvOMGUaZYQekZmfwvBMjjQ98UrzDGTrydjg
	xaBagaHKhNvnlY1xgcCRHc/jo8y7Qp0=
X-Google-Smtp-Source: AGHT+IHCh8jma0n3UFjvRPgbmYCZIyiRco7c29z9Gozw3qNsZ9I2HRVkXotN36zrUEIm6VxOU5LLoA==
X-Received: by 2002:ac8:7e96:0:b0:42a:9c9:47f3 with SMTP id w22-20020ac87e96000000b0042a09c947f3mr1830609qtj.24.1705444984566;
        Tue, 16 Jan 2024 14:43:04 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d9-20020ac86689000000b00427ee66bec1sm5229090qtp.48.2024.01.16.14.43.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 14:43:03 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] roc-rk3328-cc: add
Date: Tue, 16 Jan 2024 17:42:54 -0500
Message-ID: <20240116224254.27274-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 22:43:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62174

AKA the "renegade"

The ROC-RK3328-CC platform is built on the Rockchip RK3328 system-on-chip
optimized for low cost, low power, and high performance IO. It features a
high performance native USB 3.0 interface and Gigabit MAC.

Specs:
- RaspberryPi 2/3 form factor
- quad-core ARM Cortex-A53 @ 1.5GHz
- ARM Mali-450 MP2
- DDR4 RAM
- USB 3.0
- GbE MAC

https://libre.computer/products/roc-rk3328-cc/
https://wiki.t-firefly.com/ROC-RK3328-CC/intro.html

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                      |  1 +
 conf/machine/roc-rk3328-cc.conf             | 11 +++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 3 files changed, 13 insertions(+)
 create mode 100644 conf/machine/roc-rk3328-cc.conf

diff --git a/README b/README
index 12060cf3c0d5..48cb952a3b09 100644
--- a/README
+++ b/README
@@ -35,6 +35,7 @@ Status of supported boards:
 		nanopi-m4b
 		rock-pi-s
 		rock-5a
+		roc-rk3328-cc
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/roc-rk3328-cc.conf b/conf/machine/roc-rk3328-cc.conf
new file mode 100644
index 000000000000..05216ec4d15e
--- /dev/null
+++ b/conf/machine/roc-rk3328-cc.conf
@@ -0,0 +1,11 @@
+# Copyright (C) 2021  Trevor Woerner
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: roc-rk3328-cc (aka "renegade")
+#@DESCRIPTION: Libre Computer Board ROC-RK3328-CC (Renegade) Mini Computer with Gigabit Ethernet and USB 3.0
+
+require include/rk3328.inc
+
+UBOOT_MACHINE = "roc-cc-rk3328_defconfig"
+KERNEL_DEVICETREE = "rockchip/rk3328-roc-cc.dtb"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 7d8fb8b3d58e..b0efa0d0c130 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -16,6 +16,7 @@ COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
 COMPATIBLE_MACHINE:nanopi-r2s = "nanopi-r2s"
 COMPATIBLE_MACHINE:nanopi-m4b = "nanopi-m4b"
 COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
+COMPATIBLE_MACHINE:roc-rk3328-cc = "roc-rk3328-cc"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.43.0.76.g1a87c842ece3


