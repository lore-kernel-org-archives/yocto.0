Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5846.1613823525428571798
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:45 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=cyIH7rq9;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 79A5D38C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:44 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id r23so40273724ljh.1
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NtEOBNFHwIQKDVN6PdBj7b7b58Kn8Dsy+S/nJcAqHu4=;
        b=cyIH7rq9qiH6DSV8wZ89hDQjrNl0S4SGlC2+R2qaqA40dagUtb/4TAkN3e/HD1rwhq
         VnaQANkMOb/pfMNU0EpFvbjtdjLfvJuKCXnqEImGpcCInAIroOcOeWH5mepNUutwOsKn
         qLF0dYI+DdVMmTqqtuWXPPOj6RwDjN4fX5cI7VN51eOFX7IrBRsXGA90/ihocV+U59Ed
         nFH+5hP/eduz6fRrJ3z6y8qPrW39udYndmfT09TP3L3DJxOOBWhObsxMYE8HeBTVw0Eu
         j6s/QfHj3p7hxzcR3ZfW1+Kt2jPSIiwXuXbpv8UY1le+3WuPV1xitKYiD+O/oh19LJ1e
         di2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NtEOBNFHwIQKDVN6PdBj7b7b58Kn8Dsy+S/nJcAqHu4=;
        b=iZ6yP/UnCG8K+FJwInxgn+U9tkcYzsN+1W+oM6E1mASEKmjV1hCrF/Gj1LwbivOPls
         rrAdu0gRXMJQsIrEkU7AcuvvRO1EB1QNs8Tw8OQdd5gRx3x7BCET8Gd1cQ8dgIf0OxjR
         j3oYhZ/1GWD5PYh60eV2LSpIpgtXQ5XClbWf+QXvkqVVK695L3GS3s2+NrwtEk88ZGcX
         WmmSTvOCfWrsgI/1T15KYWYt5PyWmqep67Li/KYVoOSagf34jBE8/hggw1SvrCcQUdxG
         pO0ywzTJZe0DZ3ZTS2zWc6D3scA7qbVfMZrBquQmv02JZKXMec0m7/KBO/n2UY+4Ooa/
         MIeQ==
X-Gm-Message-State: AOAM530DfAp1Tl26jII1hyHPc0x4k3AtxJHiXBJfAIbb36aweGuQ4AjR
	QMMbBjHhybYw63Eq2RYZ3v2J9fhxwf0FHQ==
X-Google-Smtp-Source: ABdhPJwISMwd5G/EGzjDgDgNgz3m/cG/M6l3TI0b7VqGXMoZ+Lj1KStulG78KHi41Dt+ZSe2ezUMaw==
X-Received: by 2002:a2e:730c:: with SMTP id o12mr8483027ljc.27.1613823522580;
        Sat, 20 Feb 2021 04:18:42 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:42 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 0/8] Some fixes for IMA/EVM
Date: Sat, 20 Feb 2021 13:18:14 +0100
Message-Id: <20210220121822.1873572-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Changes in patch set V2:

1 Split patches as suggested by Dmitry Baryshkov.

Ming Liu (8):
  ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
  initramfs-framework-ima: fix a wrong path
  ima-evm-keys: add recipe
  initramfs-framework-ima: RDEPENDS on ima-evm-keys
  meta: refactor IMA/EVM sign rootfs
  README.md: update according to the refactoring in
    ima-evm-rootfs.bbclass
  initramfs-framework-ima: let ima_enabled return 0
  ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic

 meta-integrity/README.md                      |  4 ++-
 meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----------
 .../initrdscripts/initramfs-framework-ima.bb  |  2 +-
 .../initrdscripts/initramfs-framework-ima/ima |  3 +-
 .../ima-evm-keys/ima-evm-keys_1.0.bb          | 16 +++++++++
 .../ima-evm-utils/ima-evm-utils_git.bb        |  1 +
 6 files changed, 38 insertions(+), 21 deletions(-)
 create mode 100644 meta-integrity/recipes-security/ima-evm-keys/ima-evm-=
keys_1.0.bb

--=20
2.29.0

