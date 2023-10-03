Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D2CDE776FD
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 04:19:54 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.101834.1696306786351874542
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 21:19:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eXqpDrX8;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-77409065623so38166085a.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 21:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696306784; x=1696911584; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=jNTtD1P0INkUELl/qtlIaYkt6Qx9HbXH/fHfQndap/k=;
        b=eXqpDrX8C+K2gl/8KrYOmXl+s2b5uimku68fXobSMzAEb16LZ7gywGDk2pg/QQCAi8
         BLM8ixwA52qBAfdv/T3vj26EpxC4rMqr2qyuR363cW2U39/v3PDuHpudF6GbfS4L75W5
         TfbW6tR0m2hnqPrURC2JwafZvjxXhLsM2eD0GkTvKZW/Comz28PctdwyekvEpxUgUIiY
         0oJQMY1Rsj4LN5MmOQROi10LjN0QxqpuXPxoQWnDSnIN1z7zUjgB72MOYl9YiqC7nd+b
         nOodFQwnPd27d+oS9mm783B7D2pLTlrgc5kPh7f+jGbVVuFgzNOOt+P8M02l8uMnAhd0
         pduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696306784; x=1696911584;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jNTtD1P0INkUELl/qtlIaYkt6Qx9HbXH/fHfQndap/k=;
        b=K+ttfnLgCB7apuvnKIz8S9guxV7dZq6NdpwK8FeUWW3qnXDGXZfiAotQqZzLlXdTxp
         qzkfVlIZGq4tTDVoOXLWU6oY2G2Im4g0En0HngKMlRxvh7oTA+I6NZSJ/2G3rDZmwWns
         Y0mZKpLYs2Oelfo6k2Lw4oTocLLLdbQAqRkqlX9KYerG7KmYrnzZuUGFDrkIPCg0GbQS
         ZhJMAP96OC3afPkxOJu3EcrLiwNHGS9oeZKqgiyWNde7l192y6ZQ0jI6BFohP0bsPAvY
         RWZ1OKjvhKhOoGslf/NpJn26Ast8pr1xwZ22qOpztQyYOkyBdhaQxeHTFKIYJKWlJbyH
         VwEw==
X-Gm-Message-State: AOJu0Yycw3SvFPS50a4HrzlqUooKTFSYKf5MLpxUMxkLr5LqxKqiqKy9
	+mVN/zCGotWkFxWH1Et2CLytKu5P/4+k7Q==
X-Google-Smtp-Source: AGHT+IFsTjZpN2LPXJcRfdtAlGlYLzgmQyrIEwDyOQAnQxdikFLh1912bceaYsiJagw15iS260r4zg==
X-Received: by 2002:ae9:f401:0:b0:76f:89f:a69c with SMTP id y1-20020ae9f401000000b0076f089fa69cmr11608268qkl.41.1696306784490;
        Mon, 02 Oct 2023 21:19:44 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x7-20020ae9f807000000b0077589913a8bsm140263qkh.132.2023.10.02.21.19.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:19:43 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
Date: Tue,  3 Oct 2023 00:19:41 -0400
Message-ID: <20231003041941.4760-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 04:19:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61210

The upstream kernel reorganized the 32-bit arch/arm device-tree directory structure
to separate out the device-trees by manufacturer (similar to the organization
of the arch/arm64 device-trees). Update the references to 32-bit arm
device-trees to match.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/firefly-rk3288.conf   | 2 +-
 conf/machine/marsboard-rk3066.conf | 2 +-
 conf/machine/radxarock.conf        | 2 +-
 conf/machine/rock2-square.conf     | 2 +-
 conf/machine/tinker-board-s.conf   | 2 +-
 conf/machine/tinker-board.conf     | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 3270bb9f1657..6ff1be822008 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -9,5 +9,5 @@
 require conf/machine/include/rk3288.inc
 require conf/machine/include/rockchip-wic.inc
 
-KERNEL_DEVICETREE = "rk3288-firefly.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
index 52fd256a3445..36945e8e407b 100644
--- a/conf/machine/marsboard-rk3066.conf
+++ b/conf/machine/marsboard-rk3066.conf
@@ -8,4 +8,4 @@
 
 require conf/machine/include/rk3066.inc
 
-KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
index 42d8848e1d09..6ad8474669d0 100644
--- a/conf/machine/radxarock.conf
+++ b/conf/machine/radxarock.conf
@@ -9,4 +9,4 @@
 
 require conf/machine/include/rk3188.inc
 
-KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3188-radxarock.dtb"
diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
index 46064eebcc67..9468b9a6b559 100644
--- a/conf/machine/rock2-square.conf
+++ b/conf/machine/rock2-square.conf
@@ -9,7 +9,7 @@
 require conf/machine/include/rk3288.inc
 
 SPL_BINARY = "u-boot-spl-dtb.bin"
-KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-rock2-square.dtb"
 UBOOT_MACHINE = "rock2_defconfig"
 
 # This board doesn't support the combined idbloader, so resort to the older
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
index 870b9bcdf8c7..3a656136c554 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -7,5 +7,5 @@
 
 require conf/machine/include/tinker.inc
 
-KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-tinker-s.dtb"
 UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
index 8fe5f6305d70..ef1a1c1ac098 100644
--- a/conf/machine/tinker-board.conf
+++ b/conf/machine/tinker-board.conf
@@ -7,5 +7,5 @@
 
 require conf/machine/include/tinker.inc
 
-KERNEL_DEVICETREE = "rk3288-tinker.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
-- 
2.41.0.327.gaa9166bcc0ba


