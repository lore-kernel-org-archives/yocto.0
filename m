Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web08.7949.1613570975529666461
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 06:09:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vKOTwJFg;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: liu.ming50@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id a17so16272782ljq.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 06:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6X+jQnKIatZqQX5nZXfAooUCpEvbG5EGKxqC9euhuxM=;
        b=vKOTwJFgAcRCX1gntV5sYBo11tMC2BDyO3DMRqRJhpNDqaGBKgJpLS21O3lAtdTwij
         is0TYJeJfjHxOJunJsbQjHaL3WmKUoqJE3f6sdyAL6E/Tj7wQsKAcEA5ZRqq7KmTEbfi
         8fery7WHnpbcrK7KgI5xJdS8qCvOq7A+CRQBL0LCxw3jpjzwlgV/nUZBD3eWR0EQ7zoI
         p33IMSSLt6/6Yv+y0Y2coi1A9FXGuEBxPo7KflEHbzSr2TmoS0xMb6PJlZIpJjlkgMoD
         1SFmSS0fOD7d56Tsz2JZtM/OneflRGrd9E7Pgr6GCEqaWDsT7idopotqYTt8pD0BUbxM
         GXUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6X+jQnKIatZqQX5nZXfAooUCpEvbG5EGKxqC9euhuxM=;
        b=MXtmp1RbMGtNDXyeYUGQoV5qq4owOyDvgPDepWYQa17i0e61YG2mGQoe16TH4nkLdP
         HYtWLg/j269emZJ8/IJeolSOpFghVcNjf7tuk+Dljug+OyMlYdy++nLr0NJ1illBsFRV
         JB7YLqwdU5dZC5bZAtiz3/AZk4I1VI02W9/dqGiR/TRyn0U2lxYuulS/Oh9eEMPLjwCy
         pKw4316h23XXnnOTtH/D2kl+s6Dd6iG8w5qpe/Z7zTC/bVjSUWjfzSbG+br1OMFHTolT
         47pLTpW8kJKGplw31/FVkvLaTk/2zQcnvEJA2MRBFmlV5byu96he7ENAuS5I7phGQ807
         AcZQ==
X-Gm-Message-State: AOAM530kSO9lDM+fMj9KDRPy+j9NUQeVorLqRXMRU1/doO9ttSIvPikF
	AevJ4VYP002PvRyluRgBJOb0eZowq8xL5A==
X-Google-Smtp-Source: ABdhPJw1uNi2Tj0G3fip1KT2wtIMRDPNNLWnzOns8mZ9zDgUXqnV53z1WbZNBHpr5hueLhWxjpX7vQ==
X-Received: by 2002:a2e:8803:: with SMTP id x3mr14481816ljh.173.1613570973299;
        Wed, 17 Feb 2021 06:09:33 -0800 (PST)
Return-Path: <liu.ming50@gmail.com>
Received: from localhost.localdomain ([90.129.215.157])
        by smtp.gmail.com with ESMTPSA id q26sm253363lfc.254.2021.02.17.06.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 06:09:32 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@lists.yoctoproject.org,
	openembedded-devel@lists.openembedded.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH 0/5] Some fixes for IMA/EVM
Date: Wed, 17 Feb 2021 15:09:24 +0100
Message-Id: <20210217140929.987752-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ming Liu <liu.ming50@gmail.com>

Ming Liu (5):
  ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
  initramfs-framework-ima: fix a wrong path
  meta: refactor IMA/EVM sign rootfs
  initramfs-framework-ima: let ima_enabled return 0
  ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic

 meta-integrity/README.md                      |  4 ++-
 meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----------
 .../initrdscripts/initramfs-framework-ima.bb  |  2 +-
 .../initrdscripts/initramfs-framework-ima/ima |  3 +-
 .../ima-evm-keys/ima-evm-keys_1.0.bb          | 16 +++++++++
 .../ima-evm-utils/ima-evm-utils_git.bb        |  1 +
 6 files changed, 38 insertions(+), 21 deletions(-)
 create mode 100644 meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb

-- 
2.29.0

