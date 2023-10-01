Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32E8EE748E9
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 13:08:14 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.59347.1696165691320181230
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Oct 2023 06:08:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bnmW/msc;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-77421a47db6so806015085a.0
        for <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 06:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696165689; x=1696770489; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iqMWSKq827/ncXmV172J5oTI1ZybPvBMSrs7bLq4rN8=;
        b=bnmW/mscaOW1RGOgPMOaCpoyxrWxU8aFzZHQuSgVcftOjHpplIcNwZcK4aP+Ronuem
         cLkU6ZUZgi45XE3Rvf2m+ImvSVtuiEOOi1aSHUcY4IFibFSACgQ7ji44z2De19YmMg9p
         KLR3Zm2qshofqBb4IXX5aKHDjeOenKXqMdGrglinsQ3UrshSlk9KvactDUnr9aX9LsmM
         6ijlbL6UR9huqsFAfaVZBuLzWNPN3rzsG/DWNEt70YLvVQlLKC3uB+/zJJSKw++kkSDd
         DD8naypsgjHEbaK3i9U6gW7Vi65CeCX1cH1/9HiwTNHPtEFycZCTI5d9t5MD8bHWnlVA
         /t2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696165689; x=1696770489;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iqMWSKq827/ncXmV172J5oTI1ZybPvBMSrs7bLq4rN8=;
        b=hzlh4qPepMPWndzwQ/zYek4Ndknkzwj9WzNSyZ/gP5hZ0MD++THp+QaA1PNq8yO3h4
         KBtt0qJuzqLeuQaAdS5siSDOs6Hg/s5XAcAtAIsv9nxm5s0IguyFcWyoAtIqhbbNBS7C
         HCI/o40447+ZsCqJhtlLFgRmb6Kx468/TbECeHdofjgc59yOjVCJQfVro9Ij+In4ivaT
         d+TLNjSKO1T1vYmxqnBAOMG6U7tv2CPk0JvXp9gavZsMzl1NEAxAEbcsCDk220YkZdGj
         DVKVmpOqSVto4oFStIK+8pqQT7yV14yHydSYMJFyHX3mUc6xrSM1IJ5D70Lej1G2T47X
         hjZA==
X-Gm-Message-State: AOJu0Yzu96FrH25YqUZvIhGXMs64RRPS5iALAGRNMHdGACY6SB0w9yER
	K9a5ESsXn8WY8e3lqSKK9bPzL81zoVs=
X-Google-Smtp-Source: AGHT+IG91CguCfZpBw+2QS4/7W/S5gxEfKIRpDam8ndF+VAuLxacTWW87pWCKVetuSyMXyyzHfLrdQ==
X-Received: by 2002:a05:620a:47a7:b0:774:1f74:fe2c with SMTP id dt39-20020a05620a47a700b007741f74fe2cmr8785960qkb.21.1696165689524;
        Sun, 01 Oct 2023 06:08:09 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y12-20020a37e30c000000b00775afce4235sm115553qki.131.2023.10.01.06.08.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 06:08:08 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 0/3] rock-pi-s
Date: Sun,  1 Oct 2023 09:08:00 -0400
Message-ID: <20231001130803.18662-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 13:08:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61178

Perform a couple recipe cleanups then add a new MACHINE: rock-pi-s.

Trevor Woerner (3):
  u-boot: cleanup
  rock-pi-e.conf: remove redundant MACHINEOVERRIDES
  rock-pi-s: add

 README                                      |  1 +
 conf/machine/include/rk3308.inc             | 18 +++++++++
 conf/machine/rock-pi-e.conf                 |  2 -
 conf/machine/rock-pi-s.conf                 | 11 ++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 17 +++++++++
 recipes-bsp/u-boot/u-boot%.bbappend         | 41 +++++++++++++--------
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 7 files changed, 73 insertions(+), 18 deletions(-)
 create mode 100644 conf/machine/include/rk3308.inc
 create mode 100644 conf/machine/rock-pi-s.conf

-- 
2.41.0.327.gaa9166bcc0ba


