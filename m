Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 79FD04C8086F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:06:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Jun 2011 15:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; d="scan'208";a="12202089"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2011 15:06:26 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dongxiao.xu@intel.com, yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:03:56 -0500
Message-Id: <cover.1306964893.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2][KERNEL] Add Ericsson 3G patches
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
X-List-Received-Date: Wed, 01 Jun 2011 22:06:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds the kernel patches needed for Ericsson 3G support,
needed by fishriver.

Please pull into linux-yocto-2.6.37.

Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/fishriver-3g
  Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/fishriver-3g

Alexey Orishko (2):
  usbnet: changes for upcoming cdc_ncm driver
  USB CDC NCM host driver

 drivers/net/usb/Kconfig    |   19 +
 drivers/net/usb/Makefile   |    1 +
 drivers/net/usb/cdc_ncm.c  | 1213 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/usb/usbnet.c   |   45 ++-
 include/linux/usb/usbnet.h |    6 +
 5 files changed, 1270 insertions(+), 14 deletions(-)
 create mode 100644 drivers/net/usb/cdc_ncm.c


