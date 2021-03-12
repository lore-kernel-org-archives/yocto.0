Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6150.1615542809924457200
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:53:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=UCG2jGV3;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CC28F38C0654
	for <yocto@yoctoproject.org>; Fri, 12 Mar 2021 09:53:29 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id z25so5954255lja.3
        for <yocto@yoctoproject.org>; Fri, 12 Mar 2021 01:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NZVOIfRNVDEfmHcMBoJ+vW97nnIw5LCL0Wtp+5SXq1g=;
        b=UCG2jGV3ZhGUgKcgiGjMPPhGHR2Id8PDS8ZkFixbH5xTrCetgWh18sveDz4Y3lO9rT
         vQxXs8qVHTc+XYK1U0DsuodMHlUP80N1QulJANb1T7Vwg4S+kp0V20kuwdGe9wfHUKzU
         yYh9nCpfh4CXsOE6PufqcucGLNaYrGs8yEbFHj8EMCCn8RnJUSM6+UDaNp3wZYrQuK69
         JO9TlJGfWEZQaWrHiJEWtpaozK/TEwHu6TCKjl0/tGtazWyZoHWmO/zXe0o5P8CsRGJc
         UAeyqgkVnklaC2FJglLsji9byqyBxq0UvX1IkzZCj//zMcB+2vH216804uVA+J9Ctzpo
         USrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NZVOIfRNVDEfmHcMBoJ+vW97nnIw5LCL0Wtp+5SXq1g=;
        b=jF0IUcFnrsTXHStjsAaqlmT043tujcU+YT3d9IeLO4V46jL+5YSn1NT035PC3obWvf
         qlpl1qEFPFTLvKP+MK4JNWblUjKusgqyK2JufQEz/qvuJB3EOyp15lBsL3BdDM2Qbj28
         cPetOJVIIfScwd53vjeo/dYXfHshTtkcXxojB8PjxAhCqtUFNc7jVxsk++LGUx3DK88G
         YH27ZJ+QVKT05g026o1S5eFgqCUIvAEgGWi6Ui/J0Y3OClPNkUOvJGryTr/pSm5XuMo7
         jjPpZHJcuBMgoAESzevlGJtuYPIDs17rnr/TB1IhGFd4WnYzVy75VFBjMz8A0BQAS1Ej
         /i1g==
X-Gm-Message-State: AOAM532z/nOlMAE6XdM9l0C83/tiGYEtjoQMRotF0Y5dkeYnnf8Px427
	txpAJtj22ZHk4nSfS6bkUlPLOVTASMfJcw==
X-Google-Smtp-Source: ABdhPJx8w3c7CRqZilJwMZysknaEd02AE2razwFXKxjWGqioIWfsh89ceGBuCSC+lf+GNAP4pUiNUw==
X-Received: by 2002:a2e:b0e4:: with SMTP id h4mr1916060ljl.249.1615542808052;
        Fri, 12 Mar 2021 01:53:28 -0800 (PST)
Received: from localhost.localdomain ([2a00:801:3c2:e32a:6dd4:2389:9e6d:65b3])
        by smtp.gmail.com with ESMTPSA id o4sm1625592lfg.253.2021.03.12.01.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:53:27 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][PATCH] ima-evm-keys: add file-checksums to IMA_EVM_X509
Date: Fri, 12 Mar 2021 10:53:24 +0100
Message-Id: <20210312095324.31413-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

This ensures when a end user change the IMA_EVM_X509 key file,
ima-evm-keys recipe will be rebuilt.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.=
0.bb b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
index 62685bb..7708aef 100644
--- a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
+++ b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
@@ -14,3 +14,4 @@ do_install () {
         lnr ${D}${sysconfdir}/keys/x509_evm.der ${D}${sysconfdir}/keys/x=
509_ima.der
     fi
 }
+do_install[file-checksums] +=3D "${@'${IMA_EVM_X509}:%s' % os.path.exist=
s('${IMA_EVM_X509}')}"
--=20
2.29.0

