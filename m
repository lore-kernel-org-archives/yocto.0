Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5848.1613823533915919984
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=nAuVc3jS;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CD39338C11E3
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:53 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id q14so40198788ljp.4
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8R7WHZLxumRt9uPNXnZSTikFeG5Mpu6GFV/J+jJ4zXI=;
        b=nAuVc3jS/7/bJErbgAb6qEGBGgOnuaGsRC2DeuH0X8VV02Ti6Wa4PdjY4MKbzh4B/9
         VD1Tt3osp/vYuqaRZRze2W4AKl/+KMOSA24jwz239QAJTSgzarv2uVl83Ku1j8U6vXIs
         cbWGMXyBjjAW8xSaY45auo0Qosy//M076q36KuzIg0VJHlpVAyWDM8Se1t6sF9+sJGxH
         joGDhWrSA7AouR0uPZuE7s2klHclesKfR/eSMzahehi87c0GyDZsY45NP6QD86Kf+r9N
         nSPoHAd8HKw8Fuj2BauywnmIF67VLkcjM/Aiamuc7DQx/8vcs3rvAh/R5tA3H7VYNc1N
         AOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8R7WHZLxumRt9uPNXnZSTikFeG5Mpu6GFV/J+jJ4zXI=;
        b=Tb6YiZNHkB1K2a1h9di9psDcUiYVAjh6EsHzOYuQF4qhWvKv8n7ya5Tl3oBvUAQ4O1
         j0AfT8UDZTjCj+bgEmf+FQF2PHmqQwzNSMQzNlheBDqaRYm4K2vGtzD/rTAIgjaQwMDT
         VPQ5hgZDQwaHi7oERVr7fB7/z/AOnzc2DzcNTyYXj+4KseO5JsSxVqHVxozsvzxw6bJi
         a1Qjkh+9seTEOr7nwtujkrrPJHC/t0ka4b8QpMb8CadRzQ9Za07RFCZpl0VPYTNPIGcS
         c9B/lWFKu9hpH9jRBbiOzyHMtrXHnVumlqmhLEx5D1trChg/gBizgXHCEppBLicHnx6Q
         V4Dw==
X-Gm-Message-State: AOAM532j7/T5UNW47UVMh6JGiSi2OMwr2WGOX4LSbszwJYxDR7FpIpE1
	QPduO7/dJSYQySnPUp6cbSnuwh65ZWKKuQ==
X-Google-Smtp-Source: ABdhPJxMnCNOek+RIbZgARJJ60C4PpKgxKWszUNjiFCVkgtP0I55kx55gocV2AOxrHyZARY0PelfvQ==
X-Received: by 2002:a05:6512:33a8:: with SMTP id i8mr8314871lfg.366.1613823532226;
        Sat, 20 Feb 2021 04:18:52 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:52 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 8/8] ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic
Date: Sat, 20 Feb 2021 13:18:22 +0100
Message-Id: <20210220121822.1873572-9-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Or else wic will fail without "--no-fstab-update" option.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 meta-integrity/classes/ima-evm-rootfs.bbclass | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integri=
ty/classes/ima-evm-rootfs.bbclass
index 4359af0..0acd6e7 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -28,6 +28,9 @@ IMA_EVM_ROOTFS_HASHED ?=3D ". -depth 0 -false"
 # the iversion flags (needed by IMA when allowing writing).
 IMA_EVM_ROOTFS_IVERSION ?=3D ""
=20
+# Avoid re-generating fstab when ima is enabled.
+WIC_CREATE_EXTRA_ARGS_append =3D "${@bb.utils.contains('DISTRO_FEATURES'=
, 'ima', ' --no-fstab-update', '', d)}"
+
 ima_evm_sign_rootfs () {
     cd ${IMAGE_ROOTFS}
=20
--=20
2.29.0

