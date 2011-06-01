Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D2494C8086F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:07:27 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jun 2011 15:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; d="scan'208";a="12202390"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2011 15:07:26 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dongxiao.xu@intel.com, yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:05:16 -0500
Message-Id: <cover.1306964823.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2][KERNEL] meta-intel: fishriver updates
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
X-List-Received-Date: Wed, 01 Jun 2011 22:07:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds an ericsson 3g feature and also creates a separate
bsp for fishriver, which had previously been hijacking crownbay.

Please pull into linux-yocto-2.6.37.

Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/yocto/standard/fishriver
  Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto/standard/fishriver

Tom Zanussi (2):
  meta: add ericsson-3g f5521gw feature
  meta/fishriver: create initial BSP infrastructure

 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg      |   39 +++++++++++
 .../bsp/fishriver/fishriver-standard.scc           |    7 ++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   69 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |   15 ++++
 .../kernel-cache/features/ericsson-3g/f5521gw.cfg  |    3 +
 .../kernel-cache/features/ericsson-3g/f5521gw.scc  |    3 +
 6 files changed, 136 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
 create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg
 create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc


