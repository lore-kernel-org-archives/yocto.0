Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B614C433F5
	for <webhook@archiver.kernel.org>; Fri, 10 Dec 2021 17:53:00 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web09.10558.1639158778949345200
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 09:52:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Tq5au5Tz;
 spf=pass (domain: gmail.com, ip: 209.85.222.177,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id b67so8452740qkg.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 09:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xjQXZgwgqeadIJBbJ8eP7UZCansBJ+e+Ap+8tBprfP8=;
        b=Tq5au5TzEGbLc7Aa5iwaPv5fc4GtEPq2nH1JYj+k13Mz3ObzNfn00xZTvmnyJIdhja
         bAWc3pnenWE3g7WmIYOMkFb4dfUmqQwxaalu+IaQQpDwLMQLDweEZZONV2qAht9Jv4/g
         /eB//407xsvKlJQpRsl+877W6XVAXu61yveffBsMdof4533HfParuOJ8XpH0iJ8HMq95
         b2hldDo1zgjPi3tJ2B5vCUSMRUlDPSJfndfe5tetCFxfrr675EiiG4x8lvVl6poG2YCP
         IXbgaO1xGliqhzO4JuXNFJs9kLYv+lpZZ1Pzgm1m7d63CEytowEb78oo898/XphO+q6L
         vnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xjQXZgwgqeadIJBbJ8eP7UZCansBJ+e+Ap+8tBprfP8=;
        b=YB/0Zr2qOLKkZva/nZhYhzCCGYoaxsHcBlMn0fd9Ldp0nVdloX+DfvILS5kTpZo1Ak
         kU94g8s3RKt6DGPP3bmc+qOfATsvGBw2dR7ecwzhpEKkxZqtla/eebkz1PnFTLmVtQfv
         /Hl6YFrlCj6dsPRk94vtibws5eZjv9iDvwnQBDxy5wQZ600HQPJxXD9BJrXyIaWTOes7
         TNiNNFPJHZUX/fciVW23ThnPeMNKJp9wgOfwXnlP4PQr9Q/6r3wz47mCJC8mCFpE8VRq
         JBfiS6NUKs9ZyORQomdT7GXHOCxZcnIHT7gxvFa211bCdmVvG5+9SPVTRCn9VPGcLGjd
         mLtA==
X-Gm-Message-State: AOAM5336GWNtnK1ORZpuassItkWstYPjsDLqgLDZUFB0x06JfblMKEce
	HJ+x9/3kLArGzU+rIj/PItPGRFbI1n4=
X-Google-Smtp-Source: 
 ABdhPJxgwJQgusSi4zhK6T3Ip/3a+QsPQnLj6+wAF3rRG8OhV2vlU8T9CBeFmMH3CgCqJlk3fskX4A==
X-Received: by 2002:a05:620a:bd6:: with SMTP id
 s22mr21833259qki.348.1639158777707;
        Fri, 10 Dec 2021 09:52:57 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 g19sm2216167qtg.82.2021.12.10.09.52.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 09:52:57 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-e: override syntax fixup
Date: Fri, 10 Dec 2021 12:52:46 -0500
Message-Id: <20211210175246.8101-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.34.1.75.gabe6bb3905
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Dec 2021 17:53:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55549

The _virtual notation is not an override. These syntax "fixes" need to be
reverted.

In the case of the kernel override, when it was added, the rock-pi-e needed
the latest kernel (linux-yocto-dev) but now the default linux-yocto kernel
will suffice. So this mistake actually switched the rock-pi-e from
linux-yocto-dev back to linux-yocto inadvertently but at a time when
linux-yocto-dev was no longer required.

In the case of the bootloader override, u-boot was always the default, so this
override was always redundant.

Therefore, in the end, simply removing both these overrides is the best way
forward.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-pi-e.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 7f49c9f..0e2856f 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -7,9 +7,7 @@ require conf/machine/include/rk3328.inc
 
 MACHINEOVERRIDES =. "rock-pi-e:"
 
-PREFERRED_PROVIDER:virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
-PREFERRED_PROVIDER:virtual/bootloader = "u-boot"
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
-- 
2.34.1.75.gabe6bb3905


