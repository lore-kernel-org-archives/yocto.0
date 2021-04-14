Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.14039.1618411041021937228
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=ZPcJMWHV;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D7BC038C1170
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:20 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id i21-20020a05600c3555b029012eae2af5d4so826713wmq.4
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A84QRkhEou0fwrRPdU5kMKTGINlUEDqJx46gRwgcXqs=;
        b=ZPcJMWHVeRz0Os0JaS6AI/495jox8LpixfrBqLtIhYJJA5d6tTWtTnnspgWpYafUoZ
         z7BqU6tiLPqMj4y7mDQYZJUdw1BCCe+3V615nnJ7/77L/9n1SrvPjK2VIWgrrpowQYcL
         VNjidM07AHKIW1IhGvXTjwaKxFj1pbSvdl57VulIlhsf6cIzo3F+cyAcZYdYUIpVpl7y
         ZrhrEj6GU0FdU6rceCGtDf+yh926Du+xvBLhfzPkbf+9kxCk8jPsbiwlfdkP3xkosNzk
         dXP0pUjG4d8CFz/3M2u7HNhTBkcsgrNNxug3Fi+fvQ3BFBCQCGEW3GUYMUjJbbfTwAai
         awzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A84QRkhEou0fwrRPdU5kMKTGINlUEDqJx46gRwgcXqs=;
        b=OjBW9a7nR+FXB9RrA8mc7qViDbHU9nywzWxIBbiPbkZMSAlfuahp3Z57NguwRg9rs9
         2eWyJ26ui5wOJgdTiIouZV+PT9SPGVYJnvh+256Kjl86egAqcwjnnICXjlXK2J3mfM+k
         3TAoFOezYsAJcAv5FXsnWawfJhzgiuMKrt0mQShzoeD9/3VCLB21G4VQ4D5608qfIifV
         gvy7Blx4ZtHI1wWltfXQ32j/3k3bvc4unLYNgIEOHuI3vpQ+my9VYq0rmpfGRHN5BAwG
         Ap9XhIahR7g0HaXBDa0HRIuRjO4xfAP004C71REbIYNzgct2jCGENsBQm5lb0KybstEB
         R73w==
X-Gm-Message-State: AOAM530vTKQtCoZ2E3rBkUDuLU4Zp7EoSB8hhGz124n2rxT72FUp/CiT
	1h9vCa4XJxR6MPXTCjMh317iw9tSWOhzHw==
X-Google-Smtp-Source: ABdhPJxvr9IA5Kb8gu/0KCW/ydY5j7l4Fs9DlX1glwYmd6PW02aZ9R9Yo3N9AJUaONmlOEnMGZy/sw==
X-Received: by 2002:a05:600c:acc:: with SMTP id c12mr2867692wmr.145.1618411039596;
        Wed, 14 Apr 2021 07:37:19 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:18 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 2/6] truster-firmware-a: include optee support when requested by DISTRO_FEATURE
Date: Wed, 14 Apr 2021 16:36:34 +0200
Message-Id: <20210414143638.4139270-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210414143638.4139270-1-yann@blade-group.com>
References: <20210414143638.4139270-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This instructs TF-A to:

 - load OP-TEE OS as BL32, but still relies on the actual image to be
   provided through other means, eg. in u-boot.itb
 - run opteed as Secure Payload Dispatcher

This is configured automatically when DISTRO_FEATURE includes "optee".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 .../trusted-firmware-a_%.bbappend                  | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend=
 b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 1942c17..9887b6e 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -9,3 +9,17 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
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
+PACKAGECONFIG_append =3D " ${@bb.utils.filter('DISTRO_FEATURES', 'optee'=
, d)}"
+
+TFA_SPD =3D "${@bb.utils.contains('PACKAGECONFIG', 'optee', 'opteed', ''=
, d)}"
--=20
2.30.2

