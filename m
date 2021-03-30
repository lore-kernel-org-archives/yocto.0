Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2089.1617125667315605108
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 10:34:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=Fbyq7k/S;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AAC2338C06CD
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 17:34:24 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id o16so17084538wrn.0
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 10:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yE6PDKuw0w4UTiXB/EIxT86oxi5N0in1cEdg6yWfs4o=;
        b=Fbyq7k/SDnNdIm5ZLpZIR/XL09gZUEdoS0lU17Ouykaqoe0MBx0vfswniX8Yyy2T1d
         0eLTIDLOZr1W+y+k0dqRVWmXjIWfFaYwv6xb4JBWZVEwPiSkt8Da7iGReoWgaBBSIQ6R
         6r/Dt2eSZHBxAbW+g3y5HQ9IAkPW6RXDMOfwPt4ss42hdWRHZQIY8CU/FK5mANndDMKQ
         KWJB3JhVtH/r7VedHdS2ECpXb3J4nwxgz8VxwciApU7hJGHtIJGtP0hM1vTe5Nq4BZXM
         977lePMlYwd2BZ0BTWrQpCRc5FiQQ5uggGK+ScktlzGeRWrsmtEb6nE4txQJRvV7HNsH
         23/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yE6PDKuw0w4UTiXB/EIxT86oxi5N0in1cEdg6yWfs4o=;
        b=EQHUbaJqn1dLzR/FLsEnN8P31iWXDO0t+gLx1a1Pf+OaYIgXAPDPBE4NapkA+0wVTU
         FbxNm/vM9lCLE8B6xQgNM5gaAzyr4qQkTQK3gnsCeaA4yrpKp7gCATypWHroYATWnnq8
         R9zmIeO5L4F7vDoiKKlT42P7+rTWQqgcgQLoIWKoAzAIVm/9b29HmJb1FQnctAVPtWRD
         eKO77ipOwGUNatS9cUWHx1STihlsXfYfXaVTjV1uFHM6X62tkukDG3HzIoqQ4gpCJaEM
         O9A4NSRvg8bOviw0HV9Ua8ZTYmY3euLd8gBwKvzGYspFIvxzXBLDg/HfoGoWuv8xcXGy
         WXlw==
X-Gm-Message-State: AOAM533gim0aBsYayrgbesHlA2fnjMiBFClHGY86Znw9+6Rh+LAO39lw
	6wt8QXvf8aBLxd2S7TsAKL6dMiB7zWluFQ==
X-Google-Smtp-Source: ABdhPJyynjEA2QuCznkV9pybdNM+YCJPCu61lmgHqsNbXSGx7G2pe/kHrY6solvUUx+nYkbZZiGibA==
X-Received: by 2002:adf:c641:: with SMTP id u1mr34923314wrg.332.1617125663127;
        Tue, 30 Mar 2021 10:34:23 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id d18sm39179049wra.8.2021.03.30.10.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 10:34:22 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 0/3] kmeta BSP for nanopi-m4
Date: Tue, 30 Mar 2021 19:33:58 +0200
Message-Id: <20210330173401.753589-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This is a first draft of a kmeta BSP for nanopi-m4, with rough
granularity for now.  For testing and comments.  See patch 3 to
play with "linux-yocto-tiny" config.

Yann Dirson (3):
  linux-yocto: reduce bbappend duplication
  NanoPi-M4: let all variants use the same KMACHINE type
  WIP linux-yocto: add a NanoPi-M4 BSP

 conf/machine/include/nanopi-m4.inc            |  1 +
 ...yocto_%.bbappend =3D> linux-yocto%.bbappend} |  6 +++
 recipes-kernel/linux/linux-yocto-dev.bbappend | 10 ----
 .../linux/linux-yocto-rt_%.bbappend           | 10 ----
 .../linux/linux-yocto-tiny_%.bbappend         | 10 ----
 .../linux-yocto/bsp/nanopi-m4-standard.scc    |  7 +++
 .../linux/linux-yocto/bsp/nanopi-m4-tiny.scc  |  7 +++
 .../linux/linux-yocto/bsp/nanopi-m4.cfg       | 40 +++++++++++++++
 .../linux/linux-yocto/bsp/nanopi-m4.scc       |  5 ++
 .../linux/linux-yocto/bsp/rk3399.cfg          | 48 ++++++++++++++++++
 .../linux/linux-yocto/bsp/rk3399.scc          |  5 ++
 .../linux/linux-yocto/bsp/rockchip.cfg        | 50 +++++++++++++++++++
 .../linux/linux-yocto/bsp/rockchip.scc        |  6 +++
 13 files changed, 175 insertions(+), 30 deletions(-)
 rename recipes-kernel/linux/{linux-yocto_%.bbappend =3D> linux-yocto%.bb=
append} (80%)
 delete mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto-rt_%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto-tiny_%.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-standa=
rd.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-tiny.s=
cc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rk3399.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rk3399.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rockchip.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rockchip.scc

--=20
2.30.2

