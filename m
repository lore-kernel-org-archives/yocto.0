Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.2999.1602957816722765346
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=noWmyAlY;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id ds1so3048967pjb.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WCKqu1JbnjULW1j2DRcc+TRcmECPZOENOquFdBvkphM=;
        b=noWmyAlY+4YSI10AyJZd6VR8NUlWyvxpUlqEnT+s0MVr1P+s4w8AsDy75aAWnMa8Kl
         M/zADht+mXGXCLSYS1JtN1A+CCbkp7qWkhuN5yDS7dsulCeRBUiYWzhCXkYq94bZosIt
         0tKJ+k2u3+5a69Dfguok/Yy36H5oEnSKMddDgWdGSoJATBF0PFb7aUvCqtR/JXfKwUKK
         aXW46VhZLAuGilI0WjrfxHflFvq/+l9s/y72HsGWSmZKN09dJum6Evs3qVEcxRfFrPmL
         mEhHX6fg9dgdhUfyPcbY/ayD0r2knjryDVNIvDpSqfQHXP+FtRR8uW3lIccJgkioqwg2
         iQzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WCKqu1JbnjULW1j2DRcc+TRcmECPZOENOquFdBvkphM=;
        b=IdUM6SVUUp5bHX9pu64bJw5nvjzCv1GR5WmyF7q9Yj2C/1+lzuzlt5+Bucuumfq43k
         oMaZdnZJKQJhPYHSUWQTwlLocNOlLxCovq3l3S96TJkEhuHsiCNeuJCLWP8ljYjIoeRq
         EIFCWNv9lvu3TAT4JwjIvatlEzMCsLL8/0DrspvH7Yy1HheRQeud9Sh50TjPYSmjwnLM
         nKUH/TA4j11xa10yWhHawEDizFfD/PMlE48XsLc3EtQwqdH2Y9lbX3Lbv9mNbGWAnVJ9
         E5xXo3iz1J+A3iv56+kCOwY5laX7xq8Pkyu/5veyh4bnXbapzXtztNy4+dHZznfObMr7
         8/KQ==
X-Gm-Message-State: AOAM5315+R13poLICmXFLkg6oG1YumF+4HXZKtbbtitKeIvK3JiKDL6R
	dnLJ9LlwTaD0gEWHod/KMFTVEQ9kF00=
X-Google-Smtp-Source: ABdhPJzktfSpeb+gcrOHZCBB32VGt+AvyU98/xJNHuMPIHyrpZwUWONr5rrh8tmyQ0EgOFKr9eDm2g==
X-Received: by 2002:a17:902:7e82:b029:d3:f3b5:d99a with SMTP id z2-20020a1709027e82b02900d3f3b5d99amr9357062pla.7.1602957815823;
        Sat, 17 Oct 2020 11:03:35 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:35 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 00/32] Patch review
Date: Sat, 17 Oct 2020 11:02:57 -0700
Message-Id: <cover.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Armin Kuster <akuster@mvista.com>

These are backports from master or fixes
Please have any feedback by Monday.

Clean build on https://gitlab.com/akuster/meta-security/-/pipelines/203972999

The following changes since commit d4ec0d86b4d906bfeb9355e45926e0e0f84105da:

  gitignore added (2020-09-29 07:21:24 -0700)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-security dunfell-next
  http://git.yoctoproject.org/cgit.cgi//log/?h=dunfell-next

Armin Kuster (13):
  gitlab-ci: add support for dunfell
  packagegroup-core-security-ptest: update fail2ban ptest pkg name
  packagegroup-core-security: remove clamav for riscv*
  libsecomp: rv32/rv64 target builds are not supported yet
  packagegroup-core-security: remove libseccomp for riscv*
  packagegroup-core-security: dont include suricata on riscv or ppc
  apparmor: exclude mips64, not supported
  apparmor: fix build issue with ptest enabled.
  packagegroup-core-security: remove clamav from musl image
  ibmswtpm2: fix QA warning
  README: updated branch for Dunfell
  apparmor: fix issue with older use of shell in make
  apparmor: fix QA warning with systemd enabled

Jonatan Pålsson (1):
  sssd: Make manpages buildable

Kai Kang (1):
  sssd: disable build secrets

Mingli Yu (1):
  scap-security-guide: add expat-native to DEPENDS

Naveen Saini (3):
  initramfs-framework/dmverity: add retry loop for slow boot devices
  wic: add wks.in for intel dm-verity
  linux-%/5.x: Add dm-verity fragment as needed

Sajjad Ahmed (1):
  layer.conf: use += instead of := to update BBFILES

niko.mauno@vaisala.com (12):
  dm-verity-img.bbclass: Fix bashisms
  dm-verity-img.bbclass: Reorder parse-time check
  dm-verity-image-initramfs: Ensure verity hash sync
  dm-verity-image-initramfs: Bind at do_image instead
  linux-yocto(-dev): Add dm-verity fragment as needed
  dm-verity-img.bbclass: Stage verity.env file
  initramfs-framework: Add dmverity module
  dm-verity-image-initramfs: Use initramfs-framework
  dm-verity-initramfs-image: Cosmetic improvements
  dm-verity-image-initramfs: Add base-passwd package
  dm-verity-image-initramfs: Drop locales from image
  beaglebone-yocto-verity.wks.in: Refer IMGDEPLOYDIR

 .gitlab-ci.yml                                | 144 ++++++++++++++
 README                                        |  12 +-
 classes/dm-verity-img.bbclass                 |  22 ++-
 kas/kas-security-alt.yml                      |   8 +
 kas/kas-security-base.yml                     |  64 ++++++
 kas/kas-security-dm.yml                       |  13 ++
 kas/qemuarm.yml                               |   6 +
 kas/qemuarm64-alt.yml                         |   6 +
 kas/qemuarm64-ima.yml                         |  10 +
 kas/qemuarm64-multi.yml                       |  12 ++
 kas/qemuarm64-musl.yml                        |  10 +
 kas/qemuarm64-tpm2.yml                        |  10 +
 kas/qemuarm64.yml                             |   6 +
 kas/qemumips64-alt.yml                        |  10 +
 kas/qemumips64-multi.yml                      |  14 ++
 kas/qemumips64.yml                            |   6 +
 kas/qemuppc.yml                               |   6 +
 kas/qemuriscv64.yml                           |   6 +
 kas/qemux86-64-alt.yml                        |   6 +
 kas/qemux86-64-dm-verify.yml                  |   6 +
 kas/qemux86-64-ima.yml                        |  10 +
 kas/qemux86-64-multi.yml                      |  12 ++
 kas/qemux86-64-tpm.yml                        |  10 +
 kas/qemux86-64-tpm2.yml                       |  10 +
 kas/qemux86-64.yml                            |   6 +
 kas/qemux86-ima.yml                           |  10 +
 kas/qemux86-musl.yml                          |  10 +
 kas/qemux86-test.yml                          |  11 ++
 kas/qemux86.yml                               |   6 +
 meta-integrity/README.md                      |   8 +-
 meta-integrity/conf/layer.conf                |   3 +-
 meta-security-compliance/README               |   8 +-
 .../scap-security-guide.inc                   |   2 +-
 meta-security-isafw/README.md                 |   4 +-
 meta-tpm/README                               |   8 +-
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb  |   3 +-
 .../images/dm-verity-image-initramfs.bb       |  28 ++-
 .../initrdscripts/initramfs-dm-verity.bb      |  13 --
 .../initramfs-dm-verity/init-dm-verity.sh     |  46 -----
 .../initramfs-framework/dmverity              |  63 ++++++
 .../initramfs-framework_1.0.bbappend          |  16 ++
 recipes-kernel/linux/linux-%_5.%.bbappend     |   2 +-
 recipes-kernel/linux/linux-yocto-dev.bbappend |   1 +
 recipes-kernel/linux/linux-yocto_5.%.bbappend |   1 +
 recipes-mac/AppArmor/apparmor_2.13.4.bb       | 186 +++++++++---------
 ...-Don-t-build-syscall_sysctl-if-missi.patch |  96 +++++++++
 ...-fix-failure-on-older-versions-of-Ma.patch |  40 ++++
 .../libseccomp/libseccomp_2.4.3.bb            |   3 +
 .../packagegroup-core-security-ptest.bb       |   2 +-
 .../packagegroup-core-security.bb             |   9 +-
 ...AC_CHECK_FILE-when-building-manpages.patch |  34 ++++
 recipes-security/sssd/sssd_1.16.4.bb          |  11 +-
 wic/beaglebone-yocto-verity.wks.in            |   2 +-
 wic/systemd-bootdisk-dmverity.wks.in          |  15 ++
 54 files changed, 857 insertions(+), 209 deletions(-)
 create mode 100644 .gitlab-ci.yml
 create mode 100644 kas/kas-security-alt.yml
 create mode 100644 kas/kas-security-base.yml
 create mode 100644 kas/kas-security-dm.yml
 create mode 100644 kas/qemuarm.yml
 create mode 100644 kas/qemuarm64-alt.yml
 create mode 100644 kas/qemuarm64-ima.yml
 create mode 100644 kas/qemuarm64-multi.yml
 create mode 100644 kas/qemuarm64-musl.yml
 create mode 100644 kas/qemuarm64-tpm2.yml
 create mode 100644 kas/qemuarm64.yml
 create mode 100644 kas/qemumips64-alt.yml
 create mode 100644 kas/qemumips64-multi.yml
 create mode 100644 kas/qemumips64.yml
 create mode 100644 kas/qemuppc.yml
 create mode 100644 kas/qemuriscv64.yml
 create mode 100644 kas/qemux86-64-alt.yml
 create mode 100644 kas/qemux86-64-dm-verify.yml
 create mode 100644 kas/qemux86-64-ima.yml
 create mode 100644 kas/qemux86-64-multi.yml
 create mode 100644 kas/qemux86-64-tpm.yml
 create mode 100644 kas/qemux86-64-tpm2.yml
 create mode 100644 kas/qemux86-64.yml
 create mode 100644 kas/qemux86-ima.yml
 create mode 100644 kas/qemux86-musl.yml
 create mode 100644 kas/qemux86-test.yml
 create mode 100644 kas/qemux86.yml
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity.bb
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh
 create mode 100644 recipes-core/initrdscripts/initramfs-framework/dmverity
 create mode 100644 recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
 create mode 100644 recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch
 create mode 100644 recipes-mac/AppArmor/files/0001-tests-regression-fix-failure-on-older-versions-of-Ma.patch
 create mode 100644 recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
 create mode 100644 wic/systemd-bootdisk-dmverity.wks.in

-- 
2.17.1

