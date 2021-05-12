Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.1591.1620786456035642582
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 19:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 5qToJwCiTN1sUb3HJkGycjwOxcUuN0W58PwYKB4BrJHXTp1LBAMdKfplQwUfN9J9suvaj47bqD
 lbpPWsaEWBRg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199658607"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="199658607"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:34 -0700
IronPort-SDR: f9OR5i3WvuGcnsOC8UBTuupU0/wnqN/JyFwWm0MNNAzJJNFB5lnQcPxj0jzDqX1aVjefMQtpiE
 PBExcpFJgm+Q==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="625044089"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:33 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 0/3] Fix efi generation and add x86 MACHINE confs (cover letter)
Date: Wed, 12 May 2021 10:40:01 +0800
Message-Id: <20210512024004.29966-1-naveen.kumar.saini@intel.com>
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

32-bit supported boards:
* up_squared_32
* minnowboard (default)



Naveen Saini (3):
  zephyr-kernel-src: fix efi generation failure for x86 boards
  intel-x86-64.conf: add common MACHINE for x86 (64-bit) BOARDS
  intel-x86-32.conf: add common MACHINE for x86 (32-bit) BOARDS

 conf/machine/include/tune-core2-common.inc    |  6 ++
 conf/machine/include/tune-corei7-common.inc   |  3 +
 conf/machine/intel-x86-32.conf                | 12 +++
 conf/machine/intel-x86-64.conf                | 12 +++
 ...ry-generation-issue-in-cross-compila.patch | 80 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src.inc       |  1 +
 6 files changed, 114 insertions(+)
 create mode 100644 conf/machine/include/tune-core2-common.inc
 create mode 100644 conf/machine/intel-x86-32.conf
 create mode 100644 conf/machine/intel-x86-64.conf
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch

-- 
2.17.1

