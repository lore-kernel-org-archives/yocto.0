Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.111.1614706736748614616
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 09:38:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=mUHjHpH3;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 92B0738C0173
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 17:38:56 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id o16so3606595wmh.0
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 09:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j1af6O95qfag02U/zbi3QHYWWhlkyrmGENJXpS36Ydg=;
        b=mUHjHpH36CySzSp52zeeFMBJB+gQAJBO8KO0bzsNpH8l95OyGMApKQf6ESwtC5FguR
         QwiMkgGrNFlB5HB0hSDRRAwKXxGToELty4gD7yDGERxuzeoLA433KKOweVoJGf4Tt8dI
         p0mnNz/BRNrBTi6SEc3RGNOrVSNGXhVqoCJXuUSjjq8XaS0l4CVUqhHAb6Xsij3RvFCh
         BnOjs7dV6Yc2VYIL/KaaduZMdLr4zcimFhdlNA6VDyq60jhqlDxc7a2f4t9i+Jic2MqP
         c7mZrQ5+cOruAv0/EEAKO8mXUaswhlspgN6IT8guuoIGKhWdzNXwXbljb7PNC47SNLKW
         FSog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j1af6O95qfag02U/zbi3QHYWWhlkyrmGENJXpS36Ydg=;
        b=AgwKbOBcojpzii0sqfSMYwtlExhEm6MaNkh1EVZ22kb8/roKU6NVchI147v3E18jXm
         6/LsDN0reEeueAYX/UdSNEKjucm9znzFaNBlQNKtvdW7EmZ2iZ3rOf3UwVHmD0O4rIVv
         ZfxgKuGc9uKf7OZs1OnMgKVFE8M3lV5rPSjqDFmCZUTxO2kOlj9mn6VMQ0GoqK741C4t
         VAcdqZjZryrPc2GvVzRdHAP7My5xsTIKKFuYuP3DlC4ooxt7dUpTQCIYGiVUh0cr6ccp
         6vw4bU/K0xYzvxSlfA0Rujw5zQnnrTmi0YkRPlLJ4vhYau5sOtWJeNQfPzTY0swT4g4C
         ktwg==
X-Gm-Message-State: AOAM532z3zfqKDJmGdUF+8S/VorP6HHWDhoEQQvJZG+n1DhBQPgEp1NP
	xhe/6jjJgkoEt1SjrHHg0Z1dm7jh7g0=
X-Google-Smtp-Source: ABdhPJxgAvmQIIZ3a98hp+0X6hNLTIF7fbpeJ6OCVwF2sZVrM5VywD/HPZ3dLU4bMMiLq8BN8vQH3g==
X-Received: by 2002:a1c:a504:: with SMTP id o4mr4390880wme.174.1614697075312;
        Tue, 02 Mar 2021 06:57:55 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:54 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 4/9] initramfs-framework-ima: RDEPENDS on ima-evm-keys
Date: Tue,  2 Mar 2021 15:57:40 +0100
Message-Id: <20210302145745.1891826-5-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-=
ima.bb
index dacdc8b..77f6f7c 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.b=
b
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.b=
b
@@ -27,5 +27,5 @@ do_install () {
=20
 FILES_${PN} =3D "/init.d ${sysconfdir}"
=20
-RDEPENDS_${PN} =3D "keyutils ${IMA_POLICY}"
+RDEPENDS_${PN} =3D "keyutils ima-evm-keys ${IMA_POLICY}"
 RDEPENDS_${PN} +=3D "initramfs-framework-base"
--=20
2.29.0

