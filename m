Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.842.1614702800567903562
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 08:33:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=jZcWX8zg;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5FB0338C113C
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 16:33:20 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id o16so3399520wmh.0
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 08:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V2v9afwyWBBq05Ca/EMlr4AOF2I0kBUzxiKgeDk8Ayw=;
        b=jZcWX8zgg+L9wjKd0iKkv8ax9KfEo/bfa/vFnxXNe6qt7l/oujcblZFhegFEA4RfbB
         gah4KliLIIfqWvPk86H489fG6gc6up6FYqWBoRxhuaoD3f4i88yImYjlVHK8C3JOAHyk
         lFP2sOYPF5Kw3qMrcqrtJ4ICG+RjntxAsnrvFdvEguR2knmSYMchSm70vSVNKL8CTgo+
         u6L/lXoVaguWJQK4E4lQn/TMVOFQ6SpQjhR66toDtb/1QtBFHIitB1bPB8ZSSp5KkaY4
         eLovHhB67u2vxWHsEYzPc/no20GBNPP16t/oirhCU4blWbfJTnz2tNT1lNr358kIRR6B
         MUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V2v9afwyWBBq05Ca/EMlr4AOF2I0kBUzxiKgeDk8Ayw=;
        b=ES/Ke+SUywTAEvGpi7acvwAIASKT9DjV0xZDPbl6Kyj0IeBufOsp9kSHyklu11tW66
         51BPS7+z7+ZAFOA6k+Gh8RZ82XEafX1gJyNqLpG2QtZ92U4h9a/drYqk6t1ZwGZ1+6mI
         nxpW6Xp+ec07kZV6rG2ZxDgJ2ZnxA0RGv6e0D6SN603ZAjvO6DCs8b7LXXTkiRHPHj32
         gk5NgYDP05Pr4mRqlX7qmvGkBfPn9wJoGB7faCoFZDL3OnEtKNCaaLbou0H3emDviyvE
         LNWVFuRaElpiweFs94iKRmn61qLDRJ79NCWc2JvzBXkhaGdH1Lkq6SLoRcHnhYgpeNur
         f6DA==
X-Gm-Message-State: AOAM532zo73ne+pPxzj03CQfDCWMQmqvrpN8ZnxFrAGEVHVTgiTY85Eq
	ARm4YBU0e+FN8trEDesVgo/CjfzrQ/g=
X-Google-Smtp-Source: ABdhPJyEDpBJBGM1m4QV/U4rhrfsTiyRbwA0ZUnTfoEO3vpnlBCOszmuF1sVUq41b/ubgNFJ7EXWbQ==
X-Received: by 2002:a7b:c1c4:: with SMTP id a4mr4519883wmj.122.1614697081846;
        Tue, 02 Mar 2021 06:58:01 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:58:01 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 8/9] ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic
Date: Tue,  2 Mar 2021 15:57:44 +0100
Message-Id: <20210302145745.1891826-9-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Or else wic will fail without "--no-fstab-update" option.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
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

