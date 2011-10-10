Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008E8E01348
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:34:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Oct 2011 20:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="60972363"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2011 20:34:51 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:34:44 -0500
Message-Id: <cover.1318217109.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/8][KERNEL] some meta-intel bsp cleanup, v4
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
X-List-Received-Date: Mon, 10 Oct 2011 03:34:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset is another step in some cleanup I'm doing for
the meta-intel bsps, basically removing unneeded or redundant
options and abstracting out useful features, in this case a
new vesafb feature used in this patchset by crownbay, emenlow,
and jasperforest.

This patchset doesn't change any of the previous patches - I'm
just resending them all to avoid confusion since I accidentally
named the v2 branch v3.  So this patchset keeps everything
up-to-date and supersedes the previous "v2" patchset.

v2: rebased on top of intervening changes
v3: misnamed
v4: added fishriver, sugarbay, fri2

Please pull into linux-yocto-3.0.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/bsp-cleanup-v4
  Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/bsp-cleanup-v4

Thanks,

Tom

Tom Zanussi (8):
  features/drm-psb: add related config options
  meta: add vesafb feature
  crownbay: cleanup bsp config
  emenlow: cleanup bsp config
  jasperforest: cleanup bsp config
  fishriver: cleanup bsp config
  sugarbay: cleanup bsp config
  fri2: cleanup bsp config

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   34 ++++--------------
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    5 ++-
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   35 +++++--------------
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    2 +
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   34 ++++--------------
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    2 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   34 ++++--------------
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    2 +
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 +---
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    2 +
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |   22 +-----------
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    1 +
 meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg |   13 +++++++
 .../kernel-cache/features/framebuffer/vesafb.cfg   |    8 ++++
 .../kernel-cache/features/framebuffer/vesafb.scc   |    1 +
 15 files changed, 71 insertions(+), 131 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
 create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.scc


