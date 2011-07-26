Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 473D04C801DA
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2011 11:41:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jul 2011 09:41:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,270,1309762800"; d="scan'208";a="34683690"
Received: from unknown (HELO localhost) ([10.255.14.104])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jul 2011 09:41:23 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 26 Jul 2011 11:41:19 -0500
Message-Id: <cover.1311697880.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] switch meta-sugarbay to 3.0 kernel
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
X-List-Received-Date: Tue, 26 Jul 2011 16:41:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Built and booted into sato - basic testing shows everything
works as expected.

The following changes since commit 96c247dad88b9fc0159b2a929216876d9fbb06dc:
  Tom Zanussi (1):
        meta-emenlow: fix glx bug

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/sugarbay-linux-3.0-switchover
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/sugarbay-linux-3.0-switchover

Tom Zanussi (2):
  meta-sugarbay: switch to linux-yocto 3.0 kernel

 meta-jasperforest/conf/machine/jasperforest.conf   |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++++++
 meta-sugarbay/conf/machine/sugarbay.conf           |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    7 +++++++
 4 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend


