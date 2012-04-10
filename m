Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD90E01374
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 06:50:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Apr 2012 06:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87350860"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.110])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Apr 2012 06:50:03 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Apr 2012 21:44:11 +0800
Message-Id: <cover.1334065030.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] adapted to latest opkg upstream for version compare
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
X-List-Received-Date: Tue, 10 Apr 2012 13:50:04 -0000

NOTE: this patch is for opkg-utils upstream.

Modified the C version of opkg-compare-version to adapt to the latest opkg upstream.

This is part of the 1.2 bug fixing [YOCTO #2233].

The following changes since commit 002d29bc605d7c2d02e4cf20a43c5277c15f5597:
  Tick Chen (1):
        [opkg-utils] fix install fail problem      Thanks for khorben's patch :-)      https://docs.openmoko.org/trac/attachment/ticket/2072/patch-opkg-utils_Makefile_install_path.diff

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib llu/opkg-utils
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=llu/opkg-utils

Lianhao Lu (1):
  opkg-compare-versions: Adapted to the latest opkg upstream.

 opkg-compare-versions.c |   55 +++++++++++++++++++++-------------------------
 1 files changed, 25 insertions(+), 30 deletions(-)


