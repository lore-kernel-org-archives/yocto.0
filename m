Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78C7F4C810AF
	for <yocto@yoctoproject.org>; Fri,  7 Jan 2011 15:19:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2011 13:19:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,290,1291622400"; d="scan'208";a="590937139"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2011 13:19:36 -0800
Message-Id: <cover.1294436282.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Fri, 7 Jan 2011 13:38:02 -0800
To: yocto@yoctoproject.org
CC: 
Subject: [PATCH 0/2] Resend pull request for ADT installer with fixed for MIT Lic and repo entry
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Jan 2011 21:19:52 -0000

Fix the MIT License issues and leave ipkg repo entry empty before it's setup

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/installer-feature
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/installer-feature

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Jessica Zhang (1):
  Fix MIT Lic issues and leave references to adt repo entry empty
    before it's setup

Liping Ke (1):
  adt-intaller feature implementation, including the bitbake recipe
    file for creating the intaller tar file under /tmp/deploy/sdk, and
    the adt-installer script files and config files

 .../installer/adt-installer/adt_installer          |  367 ++++++++++++++++++++
 .../installer/adt-installer/adt_installer.conf     |   52 +++
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
 .../adt-installer/scripts/adt_installer_internal   |  209 +++++++++++
 .../installer/adt-installer/scripts/data_define    |   40 +++
 .../installer/adt-installer/scripts/extract_rootfs |   67 ++++
 .../installer/adt-installer/scripts/util           |  104 ++++++
 .../installer/adt-installer_1.0.bb                 |   84 +++++
 9 files changed, 937 insertions(+), 0 deletions(-)
 create mode 100755 meta/recipes-devtools/installer/adt-installer/adt_installer
 create mode 100644 meta/recipes-devtools/installer/adt-installer/adt_installer.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/data_define
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/util
 create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb


