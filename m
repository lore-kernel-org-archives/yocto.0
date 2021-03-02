Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1268.1614704333608273821
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 08:58:53 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=HmINmrJN;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8ED0838C0731
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 16:58:52 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id n4so3466011wmq.3
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 08:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KirIxS0UUOj4jxk7kBtXvZA1vSXRoCTvw8H0+ySUFh0=;
        b=HmINmrJNqZEd8j5mr9szh3PVWrR4yhYKkjroiWQVX+W16N2vhpow5dmqiHUnTWVE27
         LEONww2LRDLSOKEVPeewi2URrsEwe89uDYPTklU5ip/cefTkNVEEX9S+0TtpPyAYOI/7
         V7IwGESiQpV/lP2e8uzS2oZ8OIUnmHTc6AX38rxOGN6O5KKY/DR8qjpPjaoCOzv+9BJf
         sn+4pr4xQXSOJ5rGthWXnqjb+QOzA54Mm4FkbwlVCR5K+bukHcKZcwufgOVa29LjJrrt
         ksFICBRpbzqlka/Aoqrb50EjYXPu4N+rQLZO9U7BC7zJr5IkdRiGMP0cJTM8dGoZcHbq
         jTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KirIxS0UUOj4jxk7kBtXvZA1vSXRoCTvw8H0+ySUFh0=;
        b=crdTUcu1SCSkxsvLxIOa1spUz3pqXTfWksXzOkZCEQyaigvbxlqyG1ACtxOQR/rwmN
         TDJqiIuhsUyDoOi4r6aqLq1FVgeFuAjFTP7CaWzTUSQoEBf4eLL0w8U6cquwjZ9EZWZQ
         u495qYhxiiTF4m/D0ILSrz6n6zQ86HF4v3keJKGOjwzsnbYM0SYSHaKQ6+pedwGTrfbB
         bBq2Gc7zGqpR8l3oErJNmMnP/mP+thIM0W+rObyNFAH85gy85/AdYALQoeUqTHruBPyQ
         Ar3CV0QAqces+FWtsBqIG0q0Bu5H/6aCY1Q3uIrBDDvUtXxnWVSLSDQl66Ts+a2VTdK+
         yzDw==
X-Gm-Message-State: AOAM532dqa2I8tu+jiXG9NopyUackBLcnKIB+kd9D5ZhD0HFBhmoQHu9
	PB97/brvOUSddV9MqVM4Q0IblvTxhLo=
X-Google-Smtp-Source: ABdhPJwZT/GK6Qaoj3kXe7Jvp4RZNXMAAZQrmodeyG1ItbD5WKd+O/aAOQWhbAMFY3R7/EFDBXZTQQ==
X-Received: by 2002:a7b:c1c4:: with SMTP id a4mr4519059wmj.122.1614697068478;
        Tue, 02 Mar 2021 06:57:48 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:48 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <ming.liu@toradex.com>
Subject: [meta-security][dunfell][PATCH 0/9] Some IMA/EVM fixes to dunfell branch
Date: Tue,  2 Mar 2021 15:57:36 +0100
Message-Id: <20210302145745.1891826-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <ming.liu@toradex.com>

Cherry pick some IMA/EVM fixes to LTS dunfell branch, with these=20
patches applied, I could run a ima enabled image with sysvinit/systemd
on qemuarm/qemuarm64 and some NXP machines.

Ming Liu (9):
  ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
  initramfs-framework-ima: fix a wrong path
  ima-evm-keys: add recipe
  initramfs-framework-ima: RDEPENDS on ima-evm-keys
  meta: refactor IMA/EVM sign rootfs
  README.md: update according to the refactoring in
    ima-evm-rootfs.bbclass
  initramfs-framework-ima: let ima_enabled return 0
  ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic
  ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic

 meta-integrity/README.md                      |  4 ++-
 meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----------
 .../initrdscripts/initramfs-framework-ima.bb  |  2 +-
 .../initrdscripts/initramfs-framework-ima/ima |  3 +-
 .../ima-evm-keys/ima-evm-keys_1.0.bb          | 16 +++++++++
 .../ima-evm-utils/ima-evm-utils_git.bb        |  1 +
 .../ima_policy_hashed/files/ima_policy_hashed |  3 ++
 7 files changed, 41 insertions(+), 21 deletions(-)
 create mode 100644 meta-integrity/recipes-security/ima-evm-keys/ima-evm-=
keys_1.0.bb

--=20
2.29.0

