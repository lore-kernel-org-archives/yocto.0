Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.925.1617907105342707780
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Apr 2021 11:38:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=O4oLif4x;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 50A8B38C087B
	for <yocto@yoctoproject.org>; Thu,  8 Apr 2021 18:38:24 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id w18so3672212edc.0
        for <yocto@yoctoproject.org>; Thu, 08 Apr 2021 11:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lYvlLuh9h8UVIpJldzccDR/Jf+CIq/0kj6RMQk7YbSs=;
        b=O4oLif4xNcWC84Y1VXeUPj8Cs896va01SKTZCpZfokJObSiOcAeY+mMAIzmaCoql+t
         jDRYgXCDplX2c9I6w4jyt1HyJBkYy+BtyfobRYQkFVxfvjiAi+6OImYyMK+s93JAtUpQ
         kfVB25GyALBdfe1DkNRwSIbUqPNh6wYuro9XOlpIXkuhqe6hpxlGnr0FSNbvIjIKXMEL
         vpmCqhCbeXiedUrr/Aae0rVUiXum3r0zAwbGhIeh1V1R+Ocs/klGa6yVh+PP36Be1kOy
         eBaaTf+CEch+5wZV4eSw2YFwJxRHzafUj5ak2WkKr0GkFV3Vk2ubSBP+TBkqC+nLgicO
         zgwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lYvlLuh9h8UVIpJldzccDR/Jf+CIq/0kj6RMQk7YbSs=;
        b=i2T7DcryH/uY6xnSuIwNEYRCTH5G+Za7hwHQVWd+0/JncbTVmwSOGZdg9dYNASdvnt
         0edLpe653szzCQTezUbHZJhfE6RfEn53hYjr++jnY8LBt+PtkHvmw0gIK1UhJpfpxC2w
         eHQntK0Sj4gSiDGe9NcaYKPdaFLINyhrLcGtYZUoG3bFvPBi11FkffkXwvyBPmh45dPF
         km/8eXRzDcJKYRr10TnY9jJg7WdKYGZ8lYUudcoRss2sDDt8/E0F7UgR5tLWF4p1ACKh
         xp+TEFSqtSgX9YJYadIUwFoGmHbGjllw8TaVsrmnLNkaQH83y+MvYbheuzyH0+G2Qx/y
         V+Nw==
X-Gm-Message-State: AOAM531nYh9lYe5oLykmaEjno/Ypw2c7fzFp/V5/i5VlEkAuKtWSkWkh
	FiSTRpVyYxLdOtJ4ohbdfeh/9p747Z7N4w==
X-Google-Smtp-Source: ABdhPJynrj0+aqW+oXEnWTIENfOsOhkN7sjL3j7PNmdveIizCjHyfME30gHdKJJ2Rrj1nwG0Yu40uQ==
X-Received: by 2002:aa7:dd4d:: with SMTP id o13mr13602969edw.53.1617907102717;
        Thu, 08 Apr 2021 11:38:22 -0700 (PDT)
Received: from localhost.localdomain (customer-212-100-112-191.stosn.net. [212.100.112.191])
        by smtp.gmail.com with ESMTPSA id k9sm92972edv.69.2021.04.08.11.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 11:38:22 -0700 (PDT)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: Ming Liu <liu.ming50@gmail.com>,
	Sergio Prado <sergio.prado@toradex.com>
Subject: [meta-security][PATCH] initramfs-framework-ima: introduce IMA_FORCE
Date: Thu,  8 Apr 2021 20:38:14 +0200
Message-Id: <20210408183814.387126-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Introduce IMA_FORCE to allow the IMA policy be applied forcely even
'no_ima' boot parameter is available.

This ensures the end users have a way to disable 'no_ima' support if
they want to, because it may expose a security risk if an attacker can
find a way to change kernel arguments, it will easily bypass rootfs
authenticity checks.

Signed-off-by: Sergio Prado <sergio.prado@toradex.com>
Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../initrdscripts/initramfs-framework-ima.bb             | 5 +++++
 .../initrdscripts/initramfs-framework-ima/ima            | 9 +++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-=
ima.bb
index 77f6f7c..6471c53 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.b=
b
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.b=
b
@@ -14,6 +14,9 @@ LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.M=
IT;md5=3D3da9cfbcb788c80a0384
 # to this recipe can just point towards one of its own files.
 IMA_POLICY ?=3D "ima-policy-hashed"
=20
+# Force proceed IMA procedure even 'no_ima' boot parameter is available.
+IMA_FORCE ?=3D "false"
+
 SRC_URI =3D " file://ima"
=20
 inherit features_check
@@ -23,6 +26,8 @@ do_install () {
     install -d ${D}/${sysconfdir}/ima
     install -d ${D}/init.d
     install ${WORKDIR}/ima  ${D}/init.d/20-ima
+
+    sed -i "s/@@FORCE_IMA@@/${IMA_FORCE}/g" ${D}/init.d/20-ima
 }
=20
 FILES_${PN} =3D "/init.d ${sysconfdir}"
diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework=
-ima/ima
index cff26a3..8971494 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
@@ -2,11 +2,16 @@
 #
 # Loads IMA policy into the kernel.
=20
+force_ima=3D@@FORCE_IMA@@
+
 ima_enabled() {
-    if [ "$bootparam_no_ima" =3D "true" ]; then
+    if [ "$force_ima" =3D "true" ]; then
+        return 0
+    elif [ "$bootparam_no_ima" =3D "true" ]; then
         return 1
+    else
+        return 0
     fi
-    return 0
 }
=20
 ima_run() {
--=20
2.29.0

