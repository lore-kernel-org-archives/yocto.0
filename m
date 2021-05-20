Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.8004.1621516152668018093
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 06:09:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: eKbh2puX2DKNPN6n2qD8m7Gjx20oAYdkHz/53DWSk7FM6vVnYULfm+sXCP7m9H9CFQt8eWSg5+
 woNQbcxK1onw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201263890"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="201263890"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:10 -0700
IronPort-SDR: 7l4PZcHJzsj+C08dytKT9cqfQrWc+rjuhlwF+8UxgyLy01AYkk2U9JY5bD591TD8UDmTWAU2Nq
 W3TOVUURggrQ==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="467908644"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:09 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 0/4] Fix efi generation and add x86 MACHINE confs (cover letter)
Date: Thu, 20 May 2021 21:20:26 +0800
Message-Id: <20210520132030.22991-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

(1) zephyr-kernel-src: fix efi generation failure for x86 boards

With zephyr v2.5.0, EFI binary generation support has been added for x86 board (64-bit mode).
To achieve this, an python tool[1] has been added to convert zephyr EFL file
into an EFI appliable. But unfortunately at current this does not work with Yocto cross-compilation env.
This patch fix this issue and allow to build zephyr.efi for ehl_crb and up_squared boards.


(2)
Instead of creating machine configuration for each
supported boards, I would like to have common machine configurations for
supported boards. One for 64-bit (intel-x86-64.conf) and one for 32-bit
(intel-x86-32.conf).

User need to specify board value to ZEPHYR_BOARD in local.conf based on
targeted board i.e
    ZEPHYR_BOARD = "ehl_crb"

64-bit supported boards:
* up_squared
* ehl_crb_sbl
* ehl_crb (default)
* acrn
* acrn_ehl_crb

32-bit supported boards:
* up_squared_32
* minnowboard (default)

(3) Dropped acrn MACHINE configuration, which can be build with
MACHINE = "intel-x86-64"
ZEPHYR_BOARD = "acrn"

---
v2:
Fixed build for Zephyr 2.4.0
Dropped ACRN configuration

Naveen Saini (4):
  zephyr-kernel-src: fix efi generation failure for x86 boards
  intel-x86-64.conf: add common MACHINE for x86 (64-bit) BOARDS
  intel-x86-32.conf: add common MACHINE for x86 (32-bit) BOARDS
  acrn.conf: drop acrn machine configuration

 conf/machine/acrn.conf                        |  9 ---
 conf/machine/include/tune-core2-common.inc    |  6 ++
 conf/machine/include/tune-corei7-common.inc   |  3 +
 conf/machine/intel-x86-32.conf                | 12 +++
 conf/machine/intel-x86-64.conf                | 14 ++++
 ...ry-generation-issue-in-cross-compila.patch | 80 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-2.5.0.inc |  3 +
 .../zephyr-kernel/zephyr-kernel-src.inc       |  8 +-
 8 files changed, 122 insertions(+), 13 deletions(-)
 delete mode 100644 conf/machine/acrn.conf
 create mode 100644 conf/machine/include/tune-core2-common.inc
 create mode 100644 conf/machine/intel-x86-32.conf
 create mode 100644 conf/machine/intel-x86-64.conf
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch

-- 
2.17.1

