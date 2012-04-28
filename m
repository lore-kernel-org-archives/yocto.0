Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AB9FE0030B
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 17:24:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Apr 2012 17:24:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94035621"
Received: from unknown (HELO localhost) ([10.255.12.155])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Apr 2012 17:24:57 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Fri, 27 Apr 2012 19:25:12 -0500
Message-Id: <cover.1335572520.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] A couple yocto-bsp fixes, v2
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
X-List-Received-Date: Sat, 28 Apr 2012 00:24:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes for a couple yocto-bsp bugs.

v2: fixed up the yocto-bsp help text as suggested by Darren Hart.

The following changes since commit c47a869308cb0cccde0b1aee9a001352c99a8395:
  Richard Purdie (1):
        netbase: Correctly set FILESEXTRAPATHS to include the version

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-fixes-2219-2330
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-fixes-2219-2330

Tom Zanussi (2):
  yocto-kernel: use BUILDDIR to find bblayers.conf
  yocto-bsp: clarify help with reference to meta-intel

 scripts/lib/bsp/help.py   |   46 ++++++++++++++++++++++++++++++++++++++++++--
 scripts/lib/bsp/kernel.py |    7 +++++-
 2 files changed, 49 insertions(+), 4 deletions(-)


