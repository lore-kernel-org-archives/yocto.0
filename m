Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1119.1614703802233707930
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 08:50:02 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=fCkRdyVN;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2460A38C0731
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 16:50:00 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id e23so2779237wmh.3
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 08:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IaICp+y+ArMsYJ55+bwe6I4+4RyxQsi2D88JS4nOoAs=;
        b=fCkRdyVNWCNyqcGpxTRmQbBRK3H/Mr/9Yf3lidlqzOh87KZMzmxqXZQqjMH3Ducd7w
         SrWsRE7fKX9jPaiNc3hUKk+jE5e2rPWlR94ChjRGhdb+rzv1OvIkgZnzTSd4VYLXVrjW
         S1Ivh+wSLXKclj9JTRJdC94hAz5UEZQ1phvsRoSbJAQDI/8oFfGGuG2PfIRZuVOC7Cei
         cPCzIEpBu25AzLJ0tn4JsoVqjSYh1Ts0F9TgoWBPraFXEdx1Qu/TgIVzsAggyhh2oaR7
         g4ydROBDlOnr+QXHXojMFFNl1qvTClZem/+ClspUPNVILtwgyOmda5m6xx3vqgvLbhIv
         kq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IaICp+y+ArMsYJ55+bwe6I4+4RyxQsi2D88JS4nOoAs=;
        b=J35adrZzO7416MeKSZYgwmyMb4PfUpvXS+6/a9kD3HS3wQQdj/evvwkeuyZEBW/1gA
         4i0XHsd/VUpRwO/iu1YeDvj8oUCKwCfZSFsGoqqkt9v0Xhz9WaPSh/FaObcXOKRDwz64
         Ikfihm2955o+PvJ//yxdQCZioi3uYdtPyxeq7L5SN8b1Hrgrfk6N+obWEvNCpuW9EIzU
         0VRdxZHmywWMd0CDtyHLrrwzNt1XgrWwdbyQggq20dsrpqb/sFx1gOhin2ohxozgPmN2
         lcAjlje3+fMm5dxVHMGOfBLR66zZtc4iHETDCahuBcQPhcbJJX7Y6dSnOyVG7NxIKUdm
         wUXA==
X-Gm-Message-State: AOAM533d+YNwV3Mf2Px1dTWn1i+ry6qs75UjDSTUsm+1RGJbt9O8QRxu
	IxDtvstdJqNDEqoF2mDO4ZPB0p5wtBA=
X-Google-Smtp-Source: ABdhPJw4AAiqvssyJywgCGLODeZEM7knyaY2wN815DYH4KdV6FPY5jFAH3wq4CgYOUuinIAZ7Ot3IQ==
X-Received: by 2002:a05:600c:4fc6:: with SMTP id o6mr4408897wmq.157.1614697073587;
        Tue, 02 Mar 2021 06:57:53 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:53 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 3/9] ima-evm-keys: add recipe
Date: Tue,  2 Mar 2021 15:57:39 +0100
Message-Id: <20210302145745.1891826-4-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Create a recipe to package IMA/EMV public keys.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ima-evm-keys/ima-evm-keys_1.0.bb             | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 meta-integrity/recipes-security/ima-evm-keys/ima-evm-=
keys_1.0.bb

diff --git a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.=
0.bb b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
new file mode 100644
index 0000000..62685bb
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
@@ -0,0 +1,16 @@
+SUMMARY =3D "IMA/EMV public keys"
+LICENSE =3D "MIT"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
+
+inherit features_check
+REQUIRED_DISTRO_FEATURES =3D "ima"
+
+ALLOW_EMPTY_${PN} =3D "1"
+
+do_install () {
+    if [ -e "${IMA_EVM_X509}" ]; then
+        install -d ${D}/${sysconfdir}/keys
+        install "${IMA_EVM_X509}" ${D}${sysconfdir}/keys/x509_evm.der
+        lnr ${D}${sysconfdir}/keys/x509_evm.der ${D}${sysconfdir}/keys/x=
509_ima.der
+    fi
+}
--=20
2.29.0

