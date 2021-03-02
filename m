Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.731.1614702642885776185
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 08:30:42 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=NYh/bvnC;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BBC1638C113C
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 16:30:38 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id mm21so36095589ejb.12
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 08:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kLlj1KokszqgT8KF2g5NdEXjZPoLVd7/pgiqz9rtANg=;
        b=NYh/bvnC0LZ33fVSC9py8E8Aumioc8iHLlMz0FC0QWCBploWYZmk4gsIJYhAZ1KFFu
         yzbRthJa3dIpnGKMkD1PL9sZtL5Yc70AEeNSuzwoEa3062kPIgmtZBCEf8x6fYI0M35B
         r9fNLBssk5PsZ6we8ryNtw2yd58HJ1MePJi9lenMUUGv5FMs/QkEUXPbvTmWN3Ctn4Eu
         TBjT/EUpco9cfNjnweC+IPUhAn5MTZFdRrdvrwcbQEfADK5u8T8aod7oMYPoKxWlYCPo
         ctLZS7GK7mPWI2ipp9DcLijpM6pYbiEcUH9b4LGH30OwvdCWvijwTwzkr3mb+etZOGGw
         I3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kLlj1KokszqgT8KF2g5NdEXjZPoLVd7/pgiqz9rtANg=;
        b=sMP/1FiGv8GYJz9/cqkoyZhbCPgzHDe935zKGrtSF5Vfu8EeM9eSpdp9qkpnLnZ4Hn
         XQsllJBHbMIaSvNCHJYVxbXHwq5oot6wgkeMAaXeybFqdkU3ypLp3eu5V5I1d1qbU3O2
         942PyLH1pyVhN8RZUldo0lKvVdMWKKkEZ+W2nEIAMmO306bT8pojxe4aHRG3dKtRfEKS
         q3xMPyW3Q4ZkWM20J6izHuFXOLAtrw70lDBm+PJ0Kagx/HPYwQZJFaOacjo2y6XQ+tM8
         NKvnXqf26poQ9tG+TpkXf4jPrWkpKxWanDLsKLYAMWbiKRsfhvAi2LfF1FVWHTABN8s1
         K4WA==
X-Gm-Message-State: AOAM531JY23E8SOe1QLSICm4sIwvoebdNuG1hvK8LPY9LVco4PmU/ZPl
	cGRN2wjRY98xp8YAfg6mkw6YkC5EdpM=
X-Google-Smtp-Source: ABdhPJx6WwbfhqCgEzX1V5vPO9hubTOv44ceEnzLTsfKQykZidPBsVbWViZURcO11UKws3ye/ZHyPA==
X-Received: by 2002:adf:ec46:: with SMTP id w6mr17073253wrn.213.1614697070055;
        Tue, 02 Mar 2021 06:57:50 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:49 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 1/9] ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
Date: Tue,  2 Mar 2021 15:57:37 +0100
Message-Id: <20210302145745.1891826-2-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

'ima' does not have to be in native DISTRO_FEATURES, unset it to avoid
sanity check for ima-evm-utils-native.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_=
git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.=
bb
index 7f649c2..bd85583 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -26,6 +26,7 @@ S =3D "${WORKDIR}/git"
 inherit pkgconfig autotools features_check
=20
 REQUIRED_DISTRO_FEATURES =3D "ima"
+REQUIRED_DISTRO_FEATURES_class-native =3D ""
=20
 EXTRA_OECONF_append_class-target =3D " --with-kernel-headers=3D${STAGING=
_KERNEL_BUILDDIR}"
=20
--=20
2.29.0

