Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.425.1618328627195179216
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:43:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=FS3OeMId;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 062F138C06B9
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 15:43:46 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id g9so898787wrx.0
        for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 08:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LJbkICmkEIdyTWcAyUI3iFVHtqfW0tMNWrrgx3RhzIc=;
        b=FS3OeMIdjyF5EvaKu/Cza84KJPAqxzjkMwkM7zd2zeBLkI4+BxiFgDCyD7DPlBumPm
         hUVHu+yzJfZ0Z+cf672t+oHAJ3rJqYF3b9wMSZu+N1M5lBuSp79PndBv7jTh2IxYuA6N
         7f1BSGwM7y0N9mQy4Sf8V/AySOFUK6BbgCpzZB8dBRddCDUC39CS1napBEOkl/KPUnCL
         cQ2SiJLOl+OEM2ZJZcv9MJZqZ4JhesHpvlAIQ/cZlKGOvjlXHQBHmI8KA2M2viswxyUt
         Diko/Si1AbFmZ9ZA/2/dTPBYNEoWzk7qOOIzDNTo+t9EyN/SrqFz6I4lJlTYSlBjD/dx
         x62w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LJbkICmkEIdyTWcAyUI3iFVHtqfW0tMNWrrgx3RhzIc=;
        b=uJsqXOY9b0OxdzMF3NAlj4t8appr/YTK/jaaPCMTmQFaIbwPOlKluLpDPPhK3PPCV8
         kXrpHR8dN+S8yBLEKsrX8OAzyPjdSzYUex0nqDgqdQsWK/k+FG8kfKeSXKkgvBxwh3wF
         djYTgOLhAliLXQrzHPvVG0+Y/bJr5P/7YlvBJBg5hTK9i2sIL0a0b5nSIzYbDBchW0JI
         nE9gBrjQbN5k41/jZT/ZiBLAQg7hWKE2wQO9JVaNoz8G6jU4tjWwhxBykiYrbCGbvf3F
         NHTxdu8pzXkqJNCEmPMTCoDSoywnElf5JoDSSTsAIEaT0oE33CupcZHZ3pBGOGbTSubk
         cUdg==
X-Gm-Message-State: AOAM531WTZn9fgqvraKG+l3J3y7MGIlIYOenWnF/ZSKzLdX8Mi0j9NX2
	4mct/GZWLeZvuhh7Fimxdo6mebFtQckb1g==
X-Google-Smtp-Source: ABdhPJwVf5yYpBHbDCkJdJN7eAJBbokaUL8xo+K9pJqysmy8iPyXpwzTcDxkELdkbG28W29nGzWhvg==
X-Received: by 2002:a05:6000:1acd:: with SMTP id i13mr37058118wry.48.1618328623759;
        Tue, 13 Apr 2021 08:43:43 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id f25sm4495361wrd.43.2021.04.13.08.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:43 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 0/6] WIP/RFC OP-TEE support for ARM and rk3399
Date: Tue, 13 Apr 2021 17:43:10 +0200
Message-Id: <20210413154316.3666881-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This tries to provide a generic framework for easier OP-TEE support in
BSP layers.  It would probably make sense to have the generic parts in
meta-arm when they are finalized.  Today the kernel/dts handling is
still not properly done, and patches to fix rk3399 support in OP-TEE
have not yet been merged upstream, and I'm mostly posting this to
gather comments on the whole idea.

Yann Dirson (6):
  optee: condition for "optee" DISTRO_FEATURE
  truster-firmware-a: include optee support when requested by
    DISTRO_FEATURE
  u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
  WIP optee-os: rk3399 support
  WIP nanopi-m4: declare OP-TEE presence in devicetree
  WIP kernel config feature for OP-TEE activation

 conf/machine/include/rk3399.inc               |  2 +
 .../trusted-firmware-a_%.bbappend             | 19 ++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           | 14 ++++++
 .../0001-nanopi-declare-optee-presence.patch  | 30 ++++++++++++
 recipes-kernel/linux/files/bsp/tee.cfg        |  2 +
 recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
 ...399-enable-serial-console-by-default.patch | 46 +++++++++++++++++++
 .../optee/files/rk3399-boot-fix.patch         | 13 ++++++
 recipes-security/optee/optee%.bbappend        |  4 ++
 recipes-security/optee/optee-os_%.bbappend    |  9 ++++
 10 files changed, 140 insertions(+)
 create mode 100644 recipes-kernel/linux/files/0001-nanopi-declare-optee-=
presence.patch
 create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg
 create mode 100644 recipes-security/optee/files/0001-rk3399-enable-seria=
l-console-by-default.patch
 create mode 100644 recipes-security/optee/files/rk3399-boot-fix.patch
 create mode 100644 recipes-security/optee/optee%.bbappend
 create mode 100644 recipes-security/optee/optee-os_%.bbappend

--=20
2.30.2

