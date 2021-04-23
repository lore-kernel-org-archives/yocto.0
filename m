Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.203.1619197133653618771
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=BCQm3el9;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B8CEA38C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:52 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id e7so40064165wrs.11
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CmiEVdkHmxhEW2jrXypMCCFdMR4CJrhT04eHLG654dg=;
        b=BCQm3el929n1OZNudPtVGjU344xhpAEYddqCVGSS9lm6fMXjM2ISBTD2eAHP8dlX/x
         V44tTrJ39XYMnPZtnaWwYjwOKyKBkHywd/kS6v+lRR6D61EqbuSCaUOCym7uQg0JeKUa
         FCardjdtqImA9QT5YEGJkirHGlcNIga5UHU1v0nDu0/UOr8m0UHdshy9jRitHuPPT1ra
         TVbE3FT3TkVhJ1xGCIgXGBDNrU3SKhX74u25AIhpynIjJjc7uLP3msEAWCliI9cpLIXr
         q5t4SuUbnbsa7N9x4ywTLoUN+gAadiXuaWHV9PWFI/fQlIQ74aPKxKN2rfs0+p1rpud7
         0L8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CmiEVdkHmxhEW2jrXypMCCFdMR4CJrhT04eHLG654dg=;
        b=j9azkFPqRj8e2NMK7ppWG5gcNSOm3j4UNK/yMEdWryfnEpQv5nVH37AGNCM4Tbf7AA
         x/7wptd5WgvhhjmWeUSpsiJeU0/rVnEb8241BowE1kO/JPRXatTKCCjVQjvxoFe+qby3
         Libk4HToB5QAR3gokR1k/Z/MBwjPqEEvj/BTR23XrCSaPT39kswuSdU+WDW51MXsGDqZ
         mW/dBVzayaxFy2SAHq2X2prFlcOTD+aGv6rgRYLk5IP3XtqlRESJXF6eJoF3eJpEr5dl
         zQs5LBjhUWjYX550MJ3NOa0yIkj0KJWMHhUVUUXWVXQTmXdVy4ms1LTvqldc5xijx0n0
         g1FA==
X-Gm-Message-State: AOAM532MPS9K1JT9OPV2EBAHH4kWOLvRLulbJmiNHfvKEtmyca5a++1J
	QQtAP2xFaDTG/pvcNBFywSmzLJJAoAu81Q==
X-Google-Smtp-Source: ABdhPJxg0Qj9v/4Xjsy+cbftzZ2080/+oRP3/kw64RHGBli7fiIl2y9d1RF8JkQoALfuoKc60vyvRQ==
X-Received: by 2002:a5d:4010:: with SMTP id n16mr5878646wrp.225.1619197131446;
        Fri, 23 Apr 2021 09:58:51 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:50 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 0/7] OP-TEE support for ARM and rk3399
Date: Fri, 23 Apr 2021 18:58:19 +0200
Message-Id: <20210423165826.2229787-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Changes from v2:
 - turn the DISTRO_FEATURE idea into separate RFC patches so as to allow
   merging of basic support
 - remove optee-os patch that proved unnecessary

Changes from v1:
 - fix last-minute typo in TFA_SPD setting, which led to optee not being =
started
 - use PACKAGECONFIG[optee] to simplify recipes as suggested on meta-arm =
ml

Yann Dirson (7):
  trusted-firmware-a: include optee support when requested by
    DISTRO_FEATURE
  u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
  optee-os: enable rk3399 support, including serial console support
  RFC optee: new "optee" DISTRO_FEATURE to enable optee-os integration
  RFC: optee: only enable the recipes when "optee" is included in
    DISTRO_FEATURES
  WIP nanopi-m4: declare OP-TEE presence in devicetree
  WIP kernel config feature for OP-TEE activation

 conf/machine/include/rk3399.inc               |  2 +
 .../trusted-firmware-a_%.bbappend             | 14 +++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  9 ++++
 .../0001-nanopi-declare-optee-presence.patch  | 30 +++++++++++
 recipes-kernel/linux/files/bsp/tee.cfg        |  2 +
 recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
 ...399-enable-serial-console-by-default.patch | 52 +++++++++++++++++++
 recipes-security/optee/optee%.bbappend        |  4 ++
 recipes-security/optee/optee-os_%.bbappend    |  8 +++
 9 files changed, 122 insertions(+)
 create mode 100644 recipes-kernel/linux/files/0001-nanopi-declare-optee-=
presence.patch
 create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg
 create mode 100644 recipes-security/optee/files/0001-rk3399-enable-seria=
l-console-by-default.patch
 create mode 100644 recipes-security/optee/optee%.bbappend
 create mode 100644 recipes-security/optee/optee-os_%.bbappend

--=20
2.30.2

