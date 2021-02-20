Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5806.1613823530924842169
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=k33BKh5U;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C70A638C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:50 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id k22so40230329ljg.3
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ond1SFUyr7bMiv2tco4QD7LJkEo7heDu/sTr/O7xkxE=;
        b=k33BKh5UDYgv2VBMJZ20wHSjYVIkjyGgG0PImhJ78hJQLe+yDdL83eRqjlnisvOyZJ
         UZhxPxMaCYSZrOAb+C748eIc46q8JKR3/hBCKmr7nLULf5CCQX0T5Y9XowEFlH8IZKoY
         mtNhF8xQ4oHymgI7/sOiRKNVg/KHHZ6tDGarp4r7BBE7nx5VqAGLuOIWd+nTOCSDMWpN
         yVOKSek0Dj9CHng8pPFe06o776TLw9wmpQlgpSrW3XSWOA+a40qH0m2dsU1SIKK+upSI
         TUp+iz00AVA2n/yJnO7OKW6UXAkeMszfo3cXRow9pygARIrIIsKGHvFnoPZBV4/pb02b
         2PcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ond1SFUyr7bMiv2tco4QD7LJkEo7heDu/sTr/O7xkxE=;
        b=kuHs7vjbgB/AA8YTBlsbIXWPx8itXrykvwAhtJqYW1Lvaoe7pCOuNVgA+bjVawZziM
         Ah4hzIP4fWntFibuRnBQx2DCmlbvFyBn36FuckElWVVgIqoeH+e/o6eIO+slo5rRHD83
         yVgnVI9fuO4fXALyAUnQfLqggRXzukF7QBY3fsmemqIcGOUOjriD52mOiEKSYmKR9sMH
         lgYAWKHdzoyiGkaxlOw9vItPUrb68gWi3Lil3cOSdJvvVoNtbXHMoZQBjUOpfudgrnSD
         jLd4wsBYKOXrsfuks6ROlEvanDcEEVmXtHKvqzvbvL0gO5CP2154vAnKEkN5wxDbwDQH
         wRhA==
X-Gm-Message-State: AOAM533Z0WEiNqPRXD2Sgv6IUvGLLP8oKOQ5u73HqHY3OEHu2z2G+mHS
	chnyDtErmi0xjxVnO9lFJIerOiZSMmvvQA==
X-Google-Smtp-Source: ABdhPJyREm+MELaLlr7warTAaPpvMiN8tg43EwlEgw7y8eN0LlQpAys62O4WlB5hWey7Tjc/11IOeg==
X-Received: by 2002:ac2:42c6:: with SMTP id n6mr8919267lfl.168.1613823529099;
        Sat, 20 Feb 2021 04:18:49 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:48 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 5/8] meta: refactor IMA/EVM sign rootfs
Date: Sat, 20 Feb 2021 13:18:19 +0100
Message-Id: <20210220121822.1873572-6-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

The current logic in ima-evm-rootfs.bbclass does not guarantee
ima_evm_sign_rootfs is the last function in IMAGE_PREPROCESS_COMMAND
by appending to it, for instance, if there are other "_append" being
used as it's the case in openembedded-core/meta/classes/image.bbclass:

| IMAGE_PREPROCESS_COMMAND_append =3D " ${@ 'systemd_preset_all;' \
| if bb.utils.contains('DISTRO_FEATURES', 'systemd', True, False, d) \
| and not bb.utils.contains('IMAGE_FEATURES', 'stateless-rootfs', True,
| False, d) else ''} reproducible_final_image_task; "

and ima-evm-rootfs should be in IMAGE_CLASSES instead of in INHERIT
since that would impact all recipes but not only image recipes.

To fix the above issues, we introduce a ima_evm_sign_handler setting
IMA/EVM rootfs signing requirements/dependencies in event
bb.event.RecipePreFinalise, it checks 'ima' distro feature to decide if
IMA/EVM rootfs signing logic should be applied or not.

Also add ima-evm-keys to IMAGE_INSTALL.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 meta-integrity/classes/ima-evm-rootfs.bbclass | 30 ++++++++-----------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integri=
ty/classes/ima-evm-rootfs.bbclass
index d6ade3b..4359af0 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -37,15 +37,6 @@ ima_evm_sign_rootfs () {
     # reasons (including a change of the signing keys) without also
     # re-running do_rootfs.
=20
-    # Copy file(s) which must be on the device. Note that
-    # evmctl uses x509_evm.der also for "ima_verify", which is probably
-    # a bug (should default to x509_ima.der). Does not matter for us
-    # because we use the same key for both.
-    install -d ./${sysconfdir}/keys
-    rm -f ./${sysconfdir}/keys/x509_evm.der
-    install "${IMA_EVM_X509}" ./${sysconfdir}/keys/x509_evm.der
-    ln -sf x509_evm.der ./${sysconfdir}/keys/x509_ima.der
-
     # Fix /etc/fstab: it must include the "i_version" mount option for
     # those file systems where writing files is allowed, otherwise
     # these changes will not get detected at runtime.
@@ -80,13 +71,16 @@ ima_evm_sign_rootfs () {
 }
=20
 # Signing must run as late as possible in the do_rootfs task.
-# IMAGE_PREPROCESS_COMMAND runs after ROOTFS_POSTPROCESS_COMMAND, so
-# append (not prepend!) to IMAGE_PREPROCESS_COMMAND, and do it with
-# _append instead of +=3D because _append gets evaluated later. In
-# particular, we must run after prelink_image in
-# IMAGE_PREPROCESS_COMMAND, because prelinking changes executables.
-
-IMAGE_PREPROCESS_COMMAND_append =3D " ima_evm_sign_rootfs ; "
+# To guarantee that, we append it to IMAGE_PREPROCESS_COMMAND in
+# RecipePreFinalise event handler, this ensures it's the last
+# function in IMAGE_PREPROCESS_COMMAND.
+python ima_evm_sign_handler () {
+    if not e.data or 'ima' not in e.data.getVar('DISTRO_FEATURES').split=
():
+        return
=20
-# evmctl must have been installed first.
-do_rootfs[depends] +=3D "ima-evm-utils-native:do_populate_sysroot"
+    e.data.appendVar('IMAGE_PREPROCESS_COMMAND', ' ima_evm_sign_rootfs; =
')
+    e.data.appendVar('IMAGE_INSTALL', ' ima-evm-keys')
+    e.data.appendVarFlag('do_rootfs', 'depends', ' ima-evm-utils-native:=
do_populate_sysroot')
+}
+addhandler ima_evm_sign_handler
+ima_evm_sign_handler[eventmask] =3D "bb.event.RecipePreFinalise"
--=20
2.29.0

