Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.8227.1619449145971655981
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 07:59:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=iYdcQJqT;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5EEB938C0853
	for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 14:59:05 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id l189-20020a1cbbc60000b0290140319ad207so2923215wmf.2
        for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 07:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z+9tsluH06DoUU8FSh+GLgdeiS/qRMMdRDYQjO5+p1c=;
        b=iYdcQJqT7tPZgMxq8nvf4uED5nE4Y3YVbvhZEqm2bIcYRlJbgiDj9047fSwBfGMEXn
         yZ+UCMqmROpA0K7SvK1R/XJ5D2iRsOIW3KRsI6Fg7y5CyyfMcGnd1S1Faygv3OYreFNY
         qKu+OkTLJ2z8z3lScy+qA5dXg5Kn/NNNVqLTtFfPHTzgnB7sCeoHWSbNZd5VfUwvtwtl
         9PjGbMJYXOsWshz8mYovd3rxy8UPNHaG2eySSHu2zUWuL/6Fl4fUNQJc666I7vNjxzzP
         hpVMB0xsjW/ex5qEGuBduCArP9vogWUkJZPPfrZF03wsovD+uDeXpwQQKHgki0nAmqy5
         iCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z+9tsluH06DoUU8FSh+GLgdeiS/qRMMdRDYQjO5+p1c=;
        b=Uj6d3OhfUxZt8vJKOkSPcDggX6OU58kLo9aB1ohW2+8R6QI+bnMylN2mWOztMLtQuP
         GzRCXxDbennbofoYnVaqJIKD8uskiH7rY8bN03OdYtdiqKnsmZK/HJiom4vdjJ/FkRoz
         R/jH8yCqiMovwpj5sQXWOfCFnXk0SAH2hW92P0t9V/euUEv/pQ0mMuZQdhvsInGySBp/
         YiQqInwR8gqc2LsP/ObY0oSfnc8YfOVqqe/Bdxy2+hdB4glUnHrRckPSet62rNEYSR37
         KenqIOOSkXaHj49AQmUuhnCwEz2Umo+EAsEzuGzk8Tqyopc56N3V9l30OUnzQzMOTDx8
         B2ig==
X-Gm-Message-State: AOAM531heD0zHbrEItDy8fpGkIcPPuQa2PUa8mfdrblJdaf3X7fZjNYa
	Mk9ARPt5py8Cldw5fdb7bgPCaWKQPprfLg==
X-Google-Smtp-Source: ABdhPJwxyISEN80k3jfjyMDugRquZV1z3p+Te7nGwNlbglqj0xAFmJ1G0onXgEdoRWVXVcKw7tWBrA==
X-Received: by 2002:a7b:cc86:: with SMTP id p6mr20091231wma.164.1619449143559;
        Mon, 26 Apr 2021 07:59:03 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id a142sm21115484wmd.7.2021.04.26.07.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 07:59:02 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v4 0/3] kmeta BSP for nanopi-m4
Date: Mon, 26 Apr 2021 16:58:07 +0200
Message-Id: <20210426145810.718821-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Changes in v4:
- install our bsp files in bsp/rockchip/ rather than directly in bsp/
- also add "serial" to MACHINE_FEATURES

Changes in v3:
- relocate the bsp files into files/ so we don't have to add linux-yocto/
  to FILESEXTRAPATHS for all other kernels
- removed the "don't force KCONFIG_MODE to alldefconfig" (not needed fina=
lly,
  and causing interferences in default setup)
- add "usbhost" to MACHINE_FEATURES to enable lsusb and friends
- better hardware coverage (though still no wifi/bt/audio, and buggy hdmi=
)

The Wifi/BT support requires firmware, to be properly packaged; BT
support itself is still buggy in mainline; audio jack requires a
couple of patches; HDMI requires at the very least a DTS patch, and
LibreELEC maintains a "latest and greatest" DRM patchset, but it can
conflicts with some patches in default kmeta.

Yann Dirson (3):
  NanoPi-M4: let all variants use the same KMACHINE type
  NanoPi-M4: declare "usbhost" and "serial" in MACHINE_FEATURES
  linux-yocto: add an initial NanoPi-M4 BSP

 conf/machine/include/nanopi-m4.inc            |  3 +
 .../files/bsp/rockchip/nanopi-m4-standard.scc |  7 ++
 .../files/bsp/rockchip/nanopi-m4-tiny.scc     |  7 ++
 .../linux/files/bsp/rockchip/nanopi-m4.cfg    | 15 ++++
 .../linux/files/bsp/rockchip/nanopi-m4.scc    |  5 ++
 .../linux/files/bsp/rockchip/rk3399.cfg       | 71 +++++++++++++++++++
 .../linux/files/bsp/rockchip/rk3399.scc       |  5 ++
 .../linux/files/bsp/rockchip/rockchip.cfg     | 50 +++++++++++++
 .../linux/files/bsp/rockchip/rockchip.scc     |  6 ++
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++
 10 files changed, 175 insertions(+)
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-sta=
ndard.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tin=
y.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.scc

--=20
2.30.2

