Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.216.1619197133772856632
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=YCODu8bl;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 953D738C089F
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:53 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id y204so24988905wmg.2
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xf3ahpUMriP3TFMYoxSj3hktkAB+3N3zI93hsfcMbZk=;
        b=YCODu8blh0OsqXI2vgIA5GPYFcCRJ33ikWOOd0zamLWi4yEK/F5uv4/35HS+Md84WK
         q8VajTeH55qei74sPwji3QwanJVS+lxo3UFnxVYbAVXsA9p2F+6qYCRCalulRYsclInY
         OE14XTF+zCCYPIetMkNwYuj4GazeFtRMoelDyRWx1dUJD0ZWr6yKRIDChpnfGdbeG66p
         LVLw5kY7mUDzlMpH1ege5HmGGItGXvGasGQCQXI4mZ7iu6MOCEdh0J2Ow+IyV4LPlOJp
         P+5tljEgRAW/Xm6hbFqqeEWk7WAJcL+xEvxaxO1nnB1WPjqrzjgVzDTy+JoSfyruhoF6
         eoMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xf3ahpUMriP3TFMYoxSj3hktkAB+3N3zI93hsfcMbZk=;
        b=SShhx6BJYJb+e9MHWR+B4m+XT/YyH8hh9ptBnvf9Rwgzc4g0pbVsqB4YHPPKaf9cY1
         9TAPrD9I22epMDhb55Jqqb5vWEWMDlR6N+k9fkU0lPGFrwPCzQer4TWcHs62I0Xya9mj
         Q2WuZKriruItaX6d5f2b21d+9YquXDldM2Ow5ero2OrgIkgCA9D5K7lA+zeMSnZiaQbR
         lSZMOPFNLD0x9RrrTsw/i3g+YYqNnIfJ0fWJKFODLcLfKiBUX4sdkUKx+GnvzetnVV33
         LlDv+FJ/b9ZB2tUKpia9c2yb5urkkIHAz/i/kaXCQA1FRBfTCR4PRWCj5I98WpusfJ+u
         Exxw==
X-Gm-Message-State: AOAM533Q4Dg/t3T4iyvM1SUIW515KqzXg1RqOeHXcEXlqdlunB3L0/Ap
	Q3CtL4n1m9B+0oTCvqU1hcbawm7AYVnVHA==
X-Google-Smtp-Source: ABdhPJxejxGU2q7mZG+VMfR1r/JId4cqMv09EuwnqKcfOtjPKx+eCn8GSx1aW8uykp592fYBQwStAw==
X-Received: by 2002:a1c:64c4:: with SMTP id y187mr6574081wmb.162.1619197132119;
        Fri, 23 Apr 2021 09:58:52 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:51 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 1/7] trusted-firmware-a: include optee support when requested by DISTRO_FEATURE
Date: Fri, 23 Apr 2021 18:58:20 +0200
Message-Id: <20210423165826.2229787-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This instructs TF-A to:

 - load OP-TEE OS as BL32, but still relies on the actual image to be
   provided through other means, eg. in u-boot.itb
 - run opteed as Secure Payload Dispatcher

This has to be enabled through PACKAGECONFIG +=3D "optee".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 .../trusted-firmware-a_%.bbappend                   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend=
 b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 1942c17..638d53f 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -9,3 +9,16 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
 SRC_URI +=3D "\
     file://serial-console-baudrate.patch \
 "
+
+# OP-TEE, dependent on "optee" DISTRO_FEATURES
+
+OPTEE_OEMAKE ?=3D " \
+    BL32=3D${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware/tee-head=
er_v2.bin \
+    BL32_EXTRA1=3D${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware/t=
ee-pager_v2.bin \
+    BL32_EXTRA2=3D${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware/t=
ee-pageable_v2.bin \
+    "
+
+EXTRA_OEMAKE_append =3D " ${PACKAGECONFIG_CONFARGS}"
+PACKAGECONFIG[optee] =3D "${OPTEE_OEMAKE},,optee-os"
+
+TFA_SPD =3D "${@bb.utils.contains('PACKAGECONFIG', 'optee', 'opteed', ''=
, d)}"
--=20
2.30.2

