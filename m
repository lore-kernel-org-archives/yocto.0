Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.12046.1629040577275982581
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 08:16:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AE2CvKCi;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id e15so12390040qtx.1
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 08:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yMYCSiUVnBxZC707sbx8IV4k0dn3SicXb8MNQ7KWVQc=;
        b=AE2CvKCiEi9bzJ631+AjsYANDLoXjH6OAqa5zZW5d+fGbVCTa/DDL+Rxv0TcCfgcYk
         12o1GEYFW4Bv5VSubsfiBTX+BaAtQT0Q+pK6PtZwzdOI3KLsXJ373uK9yvi+2y6eGJpB
         yU3yrEPnyMTwFHn9NN3S8hWFubI3CW2pgCtJ1H0YtLUvdEFOo8asVPSBcw6Ju4hYjwX8
         p1LPZhkpsRmoJRs/TIutyt7ZBHUDvB8g0ryCoOvqBwWdxCffEbgOOIzZPkwdoUS7vsX3
         kAVKbE4yhF5826vCTBSMJalRXYkm6LhKqDO00lhaUW7BzowHHsBWKxrTw2UpXmL0Ymnc
         8tGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yMYCSiUVnBxZC707sbx8IV4k0dn3SicXb8MNQ7KWVQc=;
        b=TiLuAiIr4pAREoIQhCQ6fRiJg++rur1XRuL30RsjAfAN0hqjiwUl2gC0d+ATmKLz1b
         4fFup36OzraLiNQiagWrlteEiSOe6y+sk4jfdWsg4AvCxNmvs7WIOR2/sY7ns5PoHiMq
         7v418/1BR5+CcE8l0g/WoE43rNKfzXzxrNn8R+0Zh4wzFZ0h2rpdacnx2KKUgVotoYFR
         O1s6jSFwLlpjLYXBRQImjOGGZhlLmOa7iVbnvOsRwsdYgTEZSec5LyPac+rb4HHlJDxs
         uaeQZ0y/C9VQdOfFinvVz/fVwHI/aDMXH0e9PFke9tbCLI3qgvInFPshtD2IJxd5dPXB
         mdlg==
X-Gm-Message-State: AOAM531I97cnlPzHJr+nGS6j0a8amBpDTX6tZgwX6MUmle0ei6+Kklqh
	uqVt2Iz4+7HBtlfzE0wo+TQ=
X-Google-Smtp-Source: ABdhPJxKXyLUk4VSPIJE+SmRujh7F5d0v20ToDQu4uXFEy2go+Qrdi9aFkpSeBtiSqqafKfBSqwbSA==
X-Received: by 2002:a05:622a:198d:: with SMTP id u13mr10527217qtc.8.1629040576376;
        Sun, 15 Aug 2021 08:16:16 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id w1sm3507987qtc.7.2021.08.15.08.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Aug 2021 08:16:16 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 0/4] poky: kernel: change defaults to 5.10/5.13
Date: Sun, 15 Aug 2021 11:16:10 -0400
Message-Id: <cover.1629040284.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Richard,

This is a follow on to my oe-core series that drops the 5.4 recipes.

I haven't had any issues with 5.10/5.13 in my local testing, but I do
expect we'll find something during integration.

Cheers,

Bruce

The following changes since commit ababb195496f1d16d8b082e1bc6d87a177d2b2a6:

  conf/machine: bump qemu preferred versions to 5.13 (2021-08-15 10:44:27 -0400)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (4):
  poky/poky-tiny: set default kernel to 5.13
  poky: set default kernel to 5.13
  yocto-bsp: drop 5.4 bbappend
  poky-alt: switch default kernel to 5.10

 .../include/poky-distro-alt-test-config.inc   |  2 +-
 meta-poky/conf/distro/poky-tiny.conf          |  2 +-
 meta-poky/conf/distro/poky.conf               |  4 ++--
 .../linux/linux-yocto_5.4.bbappend            | 23 -------------------
 4 files changed, 4 insertions(+), 27 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend

-- 
2.19.1

