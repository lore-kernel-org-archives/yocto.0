Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.10098.1614698840986721109
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 07:27:21 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=FeSwOBwx;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C412038C113C
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 15:27:20 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id d3so31860879lfg.10
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 07:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kk+X3moLM6ZxLd5zbxhr7fhKFbeqd/m65inlErgqnuI=;
        b=FeSwOBwxvc4HY+VscmxliHgJg41pbc6MKbO/+kg63UQjk3zZix2TTpsY5BeXMLYiEh
         oFl0G5a3OFfEh2ggrt4E0c7Y+qj3jFcqTG93TfULZivdL906ud07S2tudCtvcdxOnnEW
         jT0xqMAPrRJPvbGL5SRtrvPX/+o2W11pS5G5ZBbkLb4wCE1kA/lKFKnX4E7xbkVYvylQ
         AZwQXti5E+ezi5GqML79QqIebKf1B8cKrAtPZ/nTofMB+Ky2PtcyRs7k0vMWasKodaKx
         hLhyuYRo+Gs/o0QjBCYcb5RCPHl6Oo0jd93t6vgXENt3G1A3XXVzj5wyUXcWzrdcbpLt
         vnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kk+X3moLM6ZxLd5zbxhr7fhKFbeqd/m65inlErgqnuI=;
        b=iF7+EPNjYXRtOyK+o520lk0tYsqDfhHLXvSBcZwyRnQo37ZABAB8RYSD0B07aEfW4M
         aAlVL/+H+zQBbAARvuhNbCnWHh6aAeRdT0Lg2qcUwlDjGwfFKf4i0QLJJoMaNcoNFspZ
         02b4BWR4YCv9c7i3UVSL7VBmlZGUNDxee1AJ7lNXVS11f6Cw2f285f8k7ff+hqeRJ2Bx
         GlNrAYWnJA6OAbvzzSdgFLw8zXey+mvbuTbRrRcRp5uWTqaTdDI0jwb38UT4/u5V3jEe
         /3Y2ztPXrF2hlwo3JmRAzf4VxTvmsJ2YEn5amgng+qdn8bIqdB/KEhEZKdOuPSm/pdNW
         w6qw==
X-Gm-Message-State: AOAM5304RDEKmco467VmGDgAFSvXumS/FkO4OdHcAj0kHLNXn6DMMVxa
	LAcM4Mwh7kcer6qBSACs1tmZ8uUzL/M=
X-Google-Smtp-Source: ABdhPJx1oGDA0JURVZ1PTpubafSFPSlE2SDBYG82pnf7Xbk6j5q8Jv5OPwCMlsSY58G9SIMpVk1fOg==
X-Received: by 2002:adf:8b0d:: with SMTP id n13mr22918186wra.94.1614697078521;
        Tue, 02 Mar 2021 06:57:58 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:58 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 6/9] README.md: update according to the refactoring in ima-evm-rootfs.bbclass
Date: Tue,  2 Mar 2021 15:57:42 +0100
Message-Id: <20210302145745.1891826-7-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/README.md | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index f08a164..8f525a6 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -69,8 +69,10 @@ Adding the layer only enables IMA (see below regarding=
 EVM) during
 compilation of the Linux kernel. To also activate it when building
 the image, enable image signing in the local.conf like this:
=20
-    INHERIT +=3D "ima-evm-rootfs"
+    IMAGE_CLASSES +=3D "ima-evm-rootfs"
     IMA_EVM_KEY_DIR =3D "${INTEGRITY_BASE}/data/debug-keys"
+    IMA_EVM_PRIVKEY =3D "${IMA_EVM_KEY_DIR}/privkey_ima.pem"
+    IMA_EVM_X509 =3D "${IMA_EVM_KEY_DIR}/x509_ima.der"
=20
 This uses the default keys provided in the "data" directory of the layer=
.
 Because everyone has access to these private keys, such an image
--=20
2.29.0

