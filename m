Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5403.1618814528861600017
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 23:42:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=es+rtE2J;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BF96C38C05BA
	for <yocto@yoctoproject.org>; Mon, 19 Apr 2021 06:42:08 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id l22so30695149ljc.9
        for <yocto@yoctoproject.org>; Sun, 18 Apr 2021 23:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V71hNWZzqV5b+7HI/ns8Toxumo+rSo1TaPDhuf8siCo=;
        b=es+rtE2JMmImcZwWbAHzJA5U7Hp15GpB5JEDyYzHKxYI2NeE95rpnor3CKwDZ1GTCK
         437mfI5DLvSUcoZOX7gqyw92NbqbAVgMwQx6apG3xD/CyGp7YcL84VfMTYYpyf0pjDur
         zDk5QSM4SVENqbRdoVBGfn49oQ6oUUPV7ajEsd0uKB0IQmsoKP/QZZ4+B/Mf110DxKyb
         ETtOdssHPuQWe/YHP2yRZwK0SCwVR9EHL0alD1GwuVr5TjmvQCWu+D6ArJA6tWAfCqdZ
         /7ngGGopAQmcKZ97GkYms3aITt5iJGvCDLuJgPy7QL0cfrxck+mrHE31QYmXpX7nQecc
         fE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V71hNWZzqV5b+7HI/ns8Toxumo+rSo1TaPDhuf8siCo=;
        b=EjTNjfixl2Q7QMm7tpxdYrV2S5AsNU1xfvwQQcmd/JDEeyRXikIFtQ5ROpGSYX+LYn
         d/rLnpM6GM4WvK3W4SfyoA8uWmBBU78ZsJqkvUKUi6S5hytJvubu4AhKnBD6YxMJwz+U
         +5TCXEhk1+0hOI+HyJGlslLBHklxQPDYykNMoFx21ZsDHqmN5y/pF3+L+6ht1OE9B1xQ
         SxmYazZHNiqC3nUifhBbtTlavx4enWRXzyRAkG5tGsHNFlLPzyCpwT+WSoH3OHMBxHE0
         f8WosWOrlJv7sW4cfigpgmMcP4I1T2dE+Ek+2TusefYKsMG7rm1+vUTic9LDRBllo+Ey
         oRUQ==
X-Gm-Message-State: AOAM533+GI6VXJC763CieckS4VemMEqQ7T7/+XYPrX+TKMhrdBUS0vE5
	H3yW8eE9d10yagPV0JFkRjRn4T7m1utWTA==
X-Google-Smtp-Source: ABdhPJzEcZd0NlWBRLiVwLo1efIxTsslD3zHU/kHXHV1f3f6seoNssOsn+4xQedSmBYJTvdtpl4BIA==
X-Received: by 2002:a2e:5855:: with SMTP id x21mr10141797ljd.203.1618814527180;
        Sun, 18 Apr 2021 23:42:07 -0700 (PDT)
Received: from localhost.localdomain ([2a00:801:234:864a:9887:2624:8ad3:e96d])
        by smtp.gmail.com with ESMTPSA id q29sm602509lfd.264.2021.04.18.23.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 23:42:06 -0700 (PDT)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [dunfell] [PATCH 1/3] ima-evm-keys: add file-checksums to IMA_EVM_X509
Date: Mon, 19 Apr 2021 08:41:57 +0200
Message-Id: <20210419064159.12487-2-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210419064159.12487-1-liu.ming50@gmail.com>
References: <20210419064159.12487-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

This ensures when a end user change the IMA_EVM_X509 key file,
ima-evm-keys recipe will be rebuilt.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
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

