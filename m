Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.13979.1618411040379174494
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=YsB088vH;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 72F9338C0530
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:19 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id p6so13408591wrn.9
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yZzZwD4+xlfDidRTYetpeXOh3AiwZ4GrfJr4pY+hwg8=;
        b=YsB088vHNLSRetb1Y2vns34IPfwjvlYIwYmvLP1sWjpkcCQcgPkHdZiXXSwA1si9mb
         18ZYyivi68eq19c2pwHhrozGKxPQQZM5P1CCgj2GSCMGKIyU1QqGa5F6tCpmAs/tlbHr
         JKBr2wAj//6aUhHTWzMjT/5zZ6wJq7marJK2dvvDnjAru/mwyvmISBId1OKZqshn8oAG
         y/jQYGpblGaIWQWrXbOeT537+eq8vpcu0kI0dAB3+AaNIXzj7YKw+mgt7KDwWw0YpO7S
         Bvdj0IjkcwDHWPEoAK+8yz6OoO+3RmYKrJ8QtTOLROK/AK9SFEtBEAt0FCm7owlWU25v
         p+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yZzZwD4+xlfDidRTYetpeXOh3AiwZ4GrfJr4pY+hwg8=;
        b=NKtbHOg28cCPNEeEZv1GCYdOXX7mlFpTFQd9BIJ3uP+awVTjC2C4PyCjbgUw2M7Jmn
         aVZ+TyICkQJE+9GdXwDKGQhRyQPJe7iU0FAvWiZx2aOUbGD+H5TX64+2sTsew9wI5DxH
         9Jz0r1OWlgvPNoJapf6ZfUIOMmWZLkQe9/rkekOCVxl0DL5LDaqHcRIqx5p+PifpSwBo
         1c059yoAOvmct2vkWxN+cnoBdlgg8g1AG0zX7WDtsLDxQ/YSBckcjc1s3ZCJEtLl2hN+
         uXJoBa1oPvs3Jf6IU+O26xKLkQZwCuWTwHOUpg+s2H1cW6ks2iF3hRZLcmCsYxlGf/Co
         LSdg==
X-Gm-Message-State: AOAM532iBQScDXxNOqfdkbvEHkjVoDHik8JOfOtTEqUhCJfx1DF8JmVg
	LosEjLeytrGPMQl+OLEABbN0LVz8lAIKQA==
X-Google-Smtp-Source: ABdhPJzl5MDUR3/NN057q3tWSBL1rufC+OzKEd63MERV8EY0x1gWjnX0tLSGCSYldtkBjYfZx12lWQ==
X-Received: by 2002:adf:f990:: with SMTP id f16mr14210673wrr.312.1618411037870;
        Wed, 14 Apr 2021 07:37:17 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:16 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 0/6] WIP/RFC OP-TEE support for ARM and rk3399
Date: Wed, 14 Apr 2021 16:36:32 +0200
Message-Id: <20210414143638.4139270-1-yann@blade-group.com>
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

Changes from v1:
 - fix last-minute typo in TFA_SPD setting, which led to optee not being =
started
 - use PACKAGECONFIG[optee] to simplify recipes as suggested on meta-arm =
ml

Yann Dirson (6):
  optee: condition for "optee" DISTRO_FEATURE
  truster-firmware-a: include optee support when requested by
    DISTRO_FEATURE
  u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
  WIP optee-os: rk3399 support
  WIP nanopi-m4: declare OP-TEE presence in devicetree
  WIP kernel config feature for OP-TEE activation

 conf/machine/include/rk3399.inc               |  2 +
 .../trusted-firmware-a_%.bbappend             | 14 ++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  9 ++++
 .../0001-nanopi-declare-optee-presence.patch  | 30 ++++++++++++
 recipes-kernel/linux/files/bsp/tee.cfg        |  2 +
 recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
 ...399-enable-serial-console-by-default.patch | 46 +++++++++++++++++++
 .../optee/files/rk3399-boot-fix.patch         | 13 ++++++
 recipes-security/optee/optee%.bbappend        |  4 ++
 recipes-security/optee/optee-os_%.bbappend    |  9 ++++
 10 files changed, 130 insertions(+)
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

