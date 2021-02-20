Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5903.1613823528411832490
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:48 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=ZdenHDkF;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5342738C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:48 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id g1so34242631ljj.13
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VWTSHX9nGqywKVLtSPNBGptRz/5YEYfDqysZFGzNMXk=;
        b=ZdenHDkF2oIcMGQ0wx7q7yuX2pVsrOhQkE5maK0fQyQeVH8xOr6vZp+qj22DFtKElN
         SNr4ytBflpU2VdubDqKG2r67peCJneB0nzOHNSonjp28LUcrw8TqXQJ+Tt25alRj6/d3
         eEykagq8bc52DTPEKZHATjayHhRGhaiGnkLPWDuFZ0dc/LJIwKs3oCqqpZuznbVFiJ0u
         4vxhi5R9VyyoTCY8fmWIsoZp9RYY6q0LgrYoxznARZkwlG4YoL+F7/ZoeXldKDd7Qe2Y
         8dtLB5Ja1PKBZriiLjNgEhdfoiFmAnqjqMVnOF2YvAEzyVGxLICjIRY6MJVE0t3W4VjH
         Zjhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VWTSHX9nGqywKVLtSPNBGptRz/5YEYfDqysZFGzNMXk=;
        b=Z4qtB/0+aA1PYp94RY5HSXwMqXzD8LJoKL90Y3qOPXz3ZIk+M64KfwWQAcPzWE2N16
         GQJNTzNihqEPnX+oNxxadfxIMvzGXmQzg/q2aTu3MQqdTCBGtZ1A2pIqIYgZQ3vJ+qog
         n/G4xkXkC6cy0XccFQWs2x5doRT27R2F3dKFuZyc79ZhpU7K8H8aPpsR65K2Rr7xJvCx
         iadPVzmIqyEtUAy/0BjauDcW/8VyAb5cvRFrTCDRpX2V11yCduXUYHWyH8JmmlDazbOS
         02t8DdaSp18TE9U0ZjXKhXMKdYpFY8Aod6bR+ErzGpwE7wsf/JDH3+EpOe1isP63TcEu
         2gew==
X-Gm-Message-State: AOAM532GT3yhz3SNfzLuMMdue8n+DAjwRBZlowf7u40OEhHj4tyv2YL/
	d+JIxLyFQz7AxE8xcYcAHNaUWkFwe+gnRA==
X-Google-Smtp-Source: ABdhPJwwB9iYqjFsRNkk3+qCOeYnYMMoQS6wHMVZ8xDs6BeUYaFewGWkv5B6gl2KspT5eEfBUaGGzg==
X-Received: by 2002:a19:4013:: with SMTP id n19mr8427722lfa.543.1613823526688;
        Sat, 20 Feb 2021 04:18:46 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:46 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 3/8] ima-evm-keys: add recipe
Date: Sat, 20 Feb 2021 13:18:17 +0100
Message-Id: <20210220121822.1873572-4-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Create a recipe to package IMA/EMV public keys.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
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

