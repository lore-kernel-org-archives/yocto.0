Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 084244C80AE6
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 18:25:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jul 2011 16:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="29598851"
Received: from unknown (HELO localhost) ([10.255.13.208])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2011 16:25:32 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 12 Jul 2011 18:25:14 -0500
Message-Id: <cover.1310512705.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2][KERNEL] Add and use iwlagn and mac80211 features
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
X-List-Received-Date: Tue, 12 Jul 2011 23:25:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds a couple new features, iwlagn and mac80211 for the
fri2 BSP.

Please pull into linux-yocto-dev.

Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/linux-3.0/meta/iwlagn
  Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/linux-3.0/meta/iwlagn

Tom Zanussi (2):
  meta: add mac80211 and iwlagn features
  meta-fri2: use iwlagn feature

 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    1 +
 meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg   |    4 ++++
 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc   |    3 +++
 .../kernel-cache/features/mac80211/mac80211.cfg    |    5 +++++
 .../kernel-cache/features/mac80211/mac80211.scc    |    1 +
 5 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg
 create mode 100644 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
 create mode 100644 meta/cfg/kernel-cache/features/mac80211/mac80211.cfg
 create mode 100644 meta/cfg/kernel-cache/features/mac80211/mac80211.scc


