Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24256E7F154
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 02:42:44 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.9446.1695782555709047982
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 19:42:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nWe6NVSy;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7740cd2e393so636975885a.1
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 19:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695782553; x=1696387353; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SH0X/XqRY99CzPDpqdIuCGy8f7Tingfm/cEFAyS4ohI=;
        b=nWe6NVSyOrKae7fU8nKJgz11/tfxB+k+CowY5JUcagh5FgMXc0+wHVVn4aJgtMPBCW
         fM0HqwKUZ0uxzP+6VFE9L06mH0+tDF2DIqiQddEUM47opxHiNuOzOS42PowyGR8cNX2m
         eTeJgtKHyzSYMaPbNqe9w8yLHh/ImsXgJgJDtRPdcNqfSA5GSdq+F/sRy9GHbbcNINSZ
         V8WFDyTpTR7+HjAhd1hPY3xahlmzMBgfGNOevnk0aMmCyLtGDKTwOAsjpRojkvbaClbA
         H8/C8HeQLSF8SClAZTplG2QxmtsSXXDRrEkdqn1Rmx703SqFhAKoIB/Ves18nSgmPXDX
         Ne1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695782553; x=1696387353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SH0X/XqRY99CzPDpqdIuCGy8f7Tingfm/cEFAyS4ohI=;
        b=vLZVjoDLFw/GSTfLIUxuxRW+ETzvkZ6b4WiyFcvQbNg6LyImDfeEQnvALbcD0q+HAY
         9A1W6LDKm2hXoYFdr278Z8sNNFLdt3yN30ADK16MpSiQAvWVzyk95I50rfmAHZbY8hlP
         maRGqvkw01daJCKbuAVh/DGY6I3pAfqms/LLyZP5dYum7ogx+AXcKN6cH/Z/8aft8BDT
         T10gjYf0tlb39XcHoral0uq6STQo7lhRT1nFyylOornph4Iwm3wZeehy3anl7dFBoTJo
         erKSrsfvyKqZUw0tomGcw5ml2v3pN28M2PgPNNnC2vCLfE1QWEfUfKlAmBwOADVdMA9s
         0hwg==
X-Gm-Message-State: AOJu0YxOKiQZZyo7DRW8RqN6oPrEtWCIgWQPfjTFj9RsxJck2VrZ43vJ
	Lx9ZaJDzFwOV2iehR/JNB7DpXBJPwrXZag==
X-Google-Smtp-Source: AGHT+IEJ7gaJkvFF/oBFlU0Pkcon2vf3kkFJgd3iO8G42eJF5AUmzhRZCmoOO31O6S27akJCYO785g==
X-Received: by 2002:a05:620a:210c:b0:76f:26a7:1668 with SMTP id l12-20020a05620a210c00b0076f26a71668mr606372qkl.74.1695782553439;
        Tue, 26 Sep 2023 19:42:33 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p4-20020a05620a056400b0077412ca0ae1sm4715763qkp.65.2023.09.26.19.42.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 19:42:32 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v4 0/2] rock-5b: add
Date: Tue, 26 Sep 2023 22:42:18 -0400
Message-ID: <20230927024220.17766-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 02:42:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61133

Version 4 of the patch to add Radxa's Rock 5B.

v4:
- add a patch before the "rock 5b: add" patch to rename the U-Boot
  variables to not be TF-A specific
- clean up the U-Boot initial binary blob dependency variable name, the
  EXTRA_OEMAKE handling, and remove the rk3588's dependency on tf-a (which
  it does not have)

v3:
- change name from "rock5b" to "rock-5b", there seem to be more instances
  of the latter on the manufacturer's website than the former
- fix the MACHINEOVERRIDE in conf/machine/include/rk3588s.inc to be
  "rk3588s" and not "rk3588"

v2:
- fix the logic behind the MACHINEOVERRIDES to get the content, and
  ordering, correct
- improved the commit message around TF-A/rkbin
- correct Quentin's SoB line

Trevor Woerner (2):
  u-boot: rename firmware dependency
  rock-5b: add

 README                                        |  1 +
 conf/machine/include/rk3588.inc               |  6 ++
 conf/machine/include/rk3588s.inc              | 17 ++++
 conf/machine/rock-5b.conf                     | 12 +++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           | 17 ++--
 recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
 .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
 .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
 .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
 .../remove-non-rockchip-arch-arm64.scc        |  1 +
 11 files changed, 240 insertions(+), 6 deletions(-)
 create mode 100644 conf/machine/include/rk3588.inc
 create mode 100644 conf/machine/include/rk3588s.inc
 create mode 100644 conf/machine/rock-5b.conf
 create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
 create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc

-- 
2.41.0.327.gaa9166bcc0ba


