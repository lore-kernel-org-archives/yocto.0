Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B0CD1292
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 19:54:07 +0000 (UTC)
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web11.90483.1712519646849940783
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 12:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=bp9LfWaL;
 spf=pass (domain: konsulko.com, ip: 209.85.215.194, mailfrom: tim.orling@konsulko.com)
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-5dbd519bde6so2846510a12.1
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 12:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712519645; x=1713124445; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KYchwJJqW4uvZp02Gf8eNDLx1o9nLAw7MV6tXBGlnNY=;
        b=bp9LfWaLOLxycizV/CGAISE0CRZpf4i46kit5dn9ACRQE/uCFu9RZJ6JBVJZ8YE3ir
         PBXjMekLnk65szy13L/dbxbeBOHyjfannwcDpu0khazsEv4NlrhfVvQ1NYLY5ThNF1kS
         gV/X7XK0VDiydk/w5OskRQFg49PkOsUbyFc1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712519645; x=1713124445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KYchwJJqW4uvZp02Gf8eNDLx1o9nLAw7MV6tXBGlnNY=;
        b=ROPBZqLLgr0ZN2zyPw5umvPXQMiMQh6Vnw5QoAMsoY2KLC+w0cRGGwdhUWEtpR7bad
         CBCbrAqomCPE0yd5kBEzGxnyo/olBZr+QsXNYGJ/zH9jXASmlNWGjUtdon4Dwaho4IMZ
         n0uI0ftwj22a1PmBkHhtpFZc/oge4VOS+hFYJyVnnUIQJSaBPYeEW8LbsEKfWV4nW/V3
         owl/c/RjO7/V4JfZ4+5vALNKu32zOvep14oBx41S8qRJzb3d2TclJ7SPomv7o4Lqr5DD
         sduqEOYMxnG5FnGdosuiSwh4MYpYIC0kqN2oHMhLlNFpFzzfbV/Y8YuSle8zX/llZ7Lk
         mmdg==
X-Gm-Message-State: AOJu0Yx1kkWr6dk0R4ksQZKdjS9+N7sLQtdLmbLKsLhb3CXp5MVOLUUv
	sfKynQy6DETMdeYKDf764fZMKuwoM321a+F4mjpQ2cbPghwLyIYaJpcObsj6YJtkIKzhsaAHXsu
	bPzQQOtCl
X-Google-Smtp-Source: AGHT+IHcZ52MTdmbkxuDDZd2s6+ti5rqFzgBeprcfx9dCmGuCefi0Cjh3f6D7dWROgG2H2CRAktI0g==
X-Received: by 2002:a05:6a20:5521:b0:1a3:600b:444c with SMTP id ko33-20020a056a20552100b001a3600b444cmr6280072pzb.36.1712519645514;
        Sun, 07 Apr 2024 12:54:05 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:5996:ce4c:d10f:fa94])
        by smtp.gmail.com with ESMTPSA id kp15-20020a170903280f00b001e4028c9d60sm1483594plb.212.2024.04.07.12.54.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 12:54:05 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi][PATCH 0/3] Initial u-boot support for raspberrypi5
Date: Sun,  7 Apr 2024 12:53:58 -0700
Message-ID: <cover.1712518899.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 19:54:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62891

Enable u-boot for the raspberrypi5 via the meta-lts-mixins 'scarthgap/u-boot' branch.

This is initial support for raspberrypi5, not all features (usb, ethernet) are enabled
in u-boot yet.

You may need to have a UART dongle plugged into the 'UART' port between 'HDMI0' and
'HDMI1' to get the kernel to boot. Your mileage may vary.

The following changes since commit d072cc8a48571a4af40a937f98e173b5c9468c4f:

  rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:35:31 +0000)

are available in the Git repository at:

  https://github.com/moto-timo/meta-raspberrypi scarthgap/raspberrypi5_u-boot
  https://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberrypi5_u-boot

Tim Orling (3):
  layer.conf: rpi5 recommends lts-u-boot-mixin
  u-boot: re-enable rapsberrypi5
  raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT

 conf/layer.conf                      | 3 +++
 conf/machine/raspberrypi5.conf       | 6 ++++++
 recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---
 3 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.43.2


