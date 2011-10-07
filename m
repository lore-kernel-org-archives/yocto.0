Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB016E004CF
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2011 06:14:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Oct 2011 06:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,502,1312182000"; d="scan'208";a="71251099"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2011 06:14:26 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Fri,  7 Oct 2011 08:15:36 -0500
Message-Id: <cover.1317993031.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/5][KERNEL] some meta-intel bsp cleanup, v2
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
X-List-Received-Date: Fri, 07 Oct 2011 13:14:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset is another step in some cleanup I'm doing for
the meta-intel bsps, basically removing unneeded or redundant
options and abstracting out useful features, in this case a
new vesafb feature used in this patchset by crownbay, emenlow,
and jasperforest.

v2: rebased on top of intervening changes

Please pull into linux-yocto-3.0.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/bsp-cleanup-v2
  Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/bsp-cleanup-v2

Thanks,

Tom

Tom Zanussi (5):
  features/drm-psb: add related config options
  meta: add vesafb feature
  crownbay: cleanup bsp config
  emenlow: cleanup bsp config
  jasperforest: cleanup bsp config

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   34 ++++--------------
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    5 ++-
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   35 +++++--------------
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    2 +
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 +---
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    2 +
 meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg |   13 +++++++
 .../kernel-cache/features/framebuffer/vesafb.cfg   |    8 ++++
 .../kernel-cache/features/framebuffer/vesafb.scc   |    1 +
 9 files changed, 48 insertions(+), 59 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
 create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.scc


