Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BC9E002A5
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 21:40:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 21:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170673533"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 21:40:50 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2012 23:40:48 -0500
Message-Id: <cover.1342759135.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] meta-intel: some linux-yocto-3.4 updates
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
X-List-Received-Date: Fri, 20 Jul 2012 04:40:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This switches the chiefriver and jasperforest BSPs to linux-yocto-3.4
and removes the jasperforest linux-yocto-3.0 support.

The following changes since commit a944332ecfa59247cc0787c55d79a6392e3218bd:
  Tom Zanussi (1):
        meta-n450: explicitly specify KBRANCH we expect to use

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/3.4-updates
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/3.4-updates

Tom Zanussi (3):
  meta-chiefriver: switch to linux-yocto-3.4 kernel
  meta-jasperforest: switch to linux-yocto-3.4 kernel
  jasperforest: retire linux-yocto-3.0

 meta-chiefriver/conf/machine/chiefriver.conf       |    2 +-
 .../linux/linux-yocto-rt_3.4.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   10 ++++++++++
 meta-jasperforest/conf/machine/jasperforest.conf   |    3 ++-
 ...rt_3.0.bbappend => linux-yocto-rt_3.4.bbappend} |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 ---------
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 +++++++++
 7 files changed, 31 insertions(+), 12 deletions(-)
 create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
 create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
 rename meta-jasperforest/recipes-kernel/linux/{linux-yocto-rt_3.0.bbappend => linux-yocto-rt_3.4.bbappend} (84%)
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend


