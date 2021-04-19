Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5276.1618814535684335878
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 23:42:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=LVDDanJ4;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 935C638C084F
	for <yocto@yoctoproject.org>; Mon, 19 Apr 2021 06:42:15 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id j18so54258500lfg.5
        for <yocto@yoctoproject.org>; Sun, 18 Apr 2021 23:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UohWlS2ztbbrOqPVq/PzMCQcuQWCls1v79i7XdHZUUk=;
        b=LVDDanJ4JImJU0phLivmwKDBmk/iJ2AXLtZuWIexj1K0js/qAJkapq4l06JAVuh8Uk
         /pNmB1r/IqXpKkE11J4VLbxLEwxjgspM/bq7x+qrl57EZpBrx/vqHV5w1MAn7CNVIIVX
         zWCJlzLCvMjR9BXUHjEsmh9iix369Hf0rkV0ksp6mQ5UnlLycerlmW/ODhEHWxjmqXeP
         S86A37gBBEZZ4NPK+c+jURTuizHu5Viv5hawf/YE3z86MykPTc0DXUMYfbgEjJI7JKTQ
         PCa0qTulsUHmrpy7F/CzpStL0C7+stI40a9oXG3FivIAmT7hG9iY2xgccIJSLP4Fjc1W
         5dbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UohWlS2ztbbrOqPVq/PzMCQcuQWCls1v79i7XdHZUUk=;
        b=uLSqn9FUHhVkpIGuyGB34R02ILh5gI/woLicGPwTwyuYmOJ6Tt1iLp3xx+hjZ++mQG
         1u4vwP9vBiTsTwT2ygAE8LJirjWXrMGEm5D2CtmtZBjc6Dsi5hjabFQ81PbCh9aFflh3
         F9TNeyUqUWslmAHWuZXC4sa/w52khTAcs7MeQCGYYffzF5Pdg+3TFuKxbt9akrlI3fhf
         tH2JmHJQENwqCm96YUiRhHHMOsf3XwFZ+tBy2U5sWtKm+191vAzyUVZVvCz8Yrr2/tEZ
         y1MF+lkIUThxfwi6L1qCNxbFDbfLs9rhIeWE1zLyBC/paioEoxEhF2Zd4keYizSWd8uW
         SZFw==
X-Gm-Message-State: AOAM53318PiT/mCxvOH89Pn6LRsEvYflN6vw9s0q9w/Yozf0Lk8np14X
	2e6CvsxAZzJAoRlypvHgHc8KT+wXkpvSZg==
X-Google-Smtp-Source: ABdhPJx98JRcQbp7UPRHLpbUvGYAB2vs+Upjqyz5hVjrHB9R15htSA0E8jsl8G5fp0/WkM7/bPIVsg==
X-Received: by 2002:a19:23c2:: with SMTP id j185mr5330350lfj.134.1618814533910;
        Sun, 18 Apr 2021 23:42:13 -0700 (PDT)
Received: from localhost.localdomain ([2a00:801:234:864a:9887:2624:8ad3:e96d])
        by smtp.gmail.com with ESMTPSA id q29sm602509lfd.264.2021.04.18.23.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 23:42:13 -0700 (PDT)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [dunfell] [PATCH 3/3] initramfs-framework-ima: introduce IMA_FORCE
Date: Mon, 19 Apr 2021 08:41:59 +0200
Message-Id: <20210419064159.12487-4-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210419064159.12487-1-liu.ming50@gmail.com>
References: <20210419064159.12487-1-liu.ming50@gmail.com>
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
Signed-off-by: Armin Kuster <akuster808@gmail.com>
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

