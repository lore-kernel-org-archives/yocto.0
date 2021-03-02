Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.715.1614702329173099358
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 08:25:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=nHH4BB1d;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 64B6138C113C
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 16:25:28 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id g3so25907241edb.11
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 08:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DHf1vSxYAcEtBcnRxKoGTfQ7Uh2KueaRv+3xdlMBayc=;
        b=nHH4BB1d/eKH6D+/rpvc+k8B7CpCZzi5xuVe38DivM2NFeDC4qD0IS6nLGo1qt3dcC
         HJD12u4vqnHFB/2e844WPaQIrA6wVQ2seYX2SAzT+ByQa4+ee99ZUeSyymX9GqZUYgVj
         3Gg5H+ZhG1IvavVKJDkcdoKMCCHgPc/3SCGQsDAsKhD+A7SjgStYgdxj3UtcpMlTTAn2
         mBPEJiiUGHOUhY+mW/brzQPGouEkUt4pjuqlLtkeCvrfMQzGXxtHahn3TmIVPp0A/7qp
         f65kUmloZgbxqLkA5nWD+dSPruv3MC+IoCLScMvb+w06HjvGKkGBuPyzpcFm0J5FPj6L
         XsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DHf1vSxYAcEtBcnRxKoGTfQ7Uh2KueaRv+3xdlMBayc=;
        b=ffKxTdVLxBtDND5Yg7ToPU+Tlz3HYnhZcLxjv+UoGyY/lO8j3NOZ4/DdacAKRh9emw
         zdACgP1BYbn8faS5+v0XTVND07NQCs2Z2K8OfJ1WVnNgoAerT/A52lypeT+zY32/exWZ
         jGuGgx+eEhLgf2KS2lRBQOfQ37Sn/nUw+Y1txQM54zJRbPBTvgCoWotL6WjTXyrojlaj
         OU9BfqyKBvDWyFKz4vxBOXh+EN3TGuDaF4pmi+5mWI6h0Vt6oNuSfRVvsdTGTK62N9yt
         5FZBQzC2rYdCCIzMDJ7nBbvuTmHnu1JTlicvHEu4b4Eb2dJ1yNRjvAe8B+8nLPNlhOvl
         PVzA==
X-Gm-Message-State: AOAM531B7h1rf4fdb4ypwnR67ZYviKetjXlA3zf6flSr54jBhylsQdpd
	ENUuYiLFjxlSjHXxs8hkhHrtlrVuzFI=
X-Google-Smtp-Source: ABdhPJyG1F5HzsMAxlCLW8FTBDvOgAHZcvq14lHQmbxo5xxshNShqcAwJd3omnE2lAe/rSH6KhCt3A==
X-Received: by 2002:a05:6000:18ac:: with SMTP id b12mr22812383wri.77.1614697076963;
        Tue, 02 Mar 2021 06:57:56 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:56 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 5/9] meta: refactor IMA/EVM sign rootfs
Date: Tue,  2 Mar 2021 15:57:41 +0100
Message-Id: <20210302145745.1891826-6-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
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
Signed-off-by: Armin Kuster <akuster808@gmail.com>
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

