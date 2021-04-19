Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5458.1618814526520748639
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 23:42:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=Z2jxJ0Xh;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B5A1C38C05BA
	for <yocto@yoctoproject.org>; Mon, 19 Apr 2021 06:42:05 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id n8so54313586lfh.1
        for <yocto@yoctoproject.org>; Sun, 18 Apr 2021 23:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S6+aDFGwhgx+CglTsmuVv+JIC9RSQgmSPKGXnX+k1DE=;
        b=Z2jxJ0XhuZSEBfCQ1974PsJ6Or38DbZ6JCgW6KH06mqehxK/bO28FNhQ2JZ5zo7yed
         RJRM90n+88B7Fpgf0AfzlqKml1SoWrZ0SGjfFi60HsfEDxUALS4VQ1FKFZFqPPsQg6X+
         XyVP9I51NwQw6dpkeICwnK5kxf4YZD+ltHxXyIkPaNxuOj7d/pOkvSnmB9WsntCALBr/
         MzFWP/5mGIVKoq41WvSTE8//GQjNuk+765LeOZOp1pBLQKfWjtmAnpKjR3QkASjIYa66
         MHlFVxlpt5GUxqVoS6Bmqadm9jwy+YPnhD9jn+QLGR/mHWCQKgYeZlmONf1JWl7Y++aF
         eqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S6+aDFGwhgx+CglTsmuVv+JIC9RSQgmSPKGXnX+k1DE=;
        b=tOmtk4z1IpN9EtpV68OUsS57haCcaKFkI1s1xgF9VuZn/EVEZSBNSKwHSOZXXrGw1N
         Iv3DKvDqrLg2953Xhk6R9MUrl22cyBAiZvwZnpErgo6DYRhjd6O5wrZcdA8MCXi2fH8h
         mqog8OmhKmOxo6EvIm2oy97QnvYf5WTlvF4hdqvBs7WjC3Kzv0U/GRaQoMaHDNGh14I0
         wZCuj/w3tqa7C4yIZ2ePpWtUppF+qZeihL29WWhM3kP338X+wI0IFEd+zntvMw6bnmA6
         6Wdprv8hvzX3tdYYzV8YyoirImkobv7ERCX01qyhu3Ispqu0aikTu13aE68/UqDf+nvn
         NqHg==
X-Gm-Message-State: AOAM532zLj+NWuZk0anPhJ20+c9gJAeWlQOpLZSQS00Mo67nU8Ky/+6G
	NVqoafazQOY51VDx3cwUdzmwoxLSB4erOQ==
X-Google-Smtp-Source: ABdhPJwfuy91nrQbLzWdbR3OxHlWP474WMi08VHv+TcK14fJNsdBCrtEZ3owIpyTbwoZjax9THsgwA==
X-Received: by 2002:ac2:5149:: with SMTP id q9mr10959095lfd.361.1618814523859;
        Sun, 18 Apr 2021 23:42:03 -0700 (PDT)
Received: from localhost.localdomain ([2a00:801:234:864a:9887:2624:8ad3:e96d])
        by smtp.gmail.com with ESMTPSA id q29sm602509lfd.264.2021.04.18.23.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 23:42:03 -0700 (PDT)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <ming.liu@toradex.com>
Subject: [meta-security] [dunfell] [PATCH 0/3] Backport several IMA fixes to LTS dunfell
Date: Mon, 19 Apr 2021 08:41:56 +0200
Message-Id: <20210419064159.12487-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <ming.liu@toradex.com>

Ming Liu (3):
  ima-evm-keys: add file-checksums to IMA_EVM_X509
  meta: drop IMA_POLICY from policy recipes
  initramfs-framework-ima: introduce IMA_FORCE

 .../initrdscripts/initramfs-framework-ima.bb             | 5 +++++
 .../initrdscripts/initramfs-framework-ima/ima            | 9 +++++++--
 .../recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb    | 1 +
 .../ima-policy-appraise-all_1.0.bb                       | 9 ++-------
 .../ima_policy_hashed/ima-policy-hashed_1.0.bb           | 9 ++-------
 .../ima_policy_simple/ima-policy-simple_1.0.bb           | 9 ++-------
 6 files changed, 19 insertions(+), 23 deletions(-)

--=20
2.29.0

