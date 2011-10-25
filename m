Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F35C6E006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 12:18:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2011 12:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="67032780"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by orsmga002.jf.intel.com with ESMTP; 25 Oct 2011 12:18:11 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 14:17:35 -0500
Message-Id: <cover.1319552233.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4][KERNEL] more bsp cleanup and new power/intel feature
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
X-List-Received-Date: Tue, 25 Oct 2011 19:18:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds a new power/intel feature containing power-related
config items for intel bsps and initially makes sugarbay and crownbay
use it.

It also removes the igb feature from common-pc-64, which shouldn't
be there and was responsible for Yocto bug #1188.

Fixes [YOCTO #1188]

Please pull into linux-yocto-3.0 and linux-yocto-dev.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/bsp-cleanup2-v0
  Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/bsp-cleanup2-v0

Tom Zanussi (4):
  meta: add power feature
  meta/sugarbay: use power/intel feature
  meta/crownbay: use power/intel feature
  meta/common-pc-64: remove igb

 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 -
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    1 +
 meta/cfg/kernel-cache/features/power/intel.cfg     |   28 ++++++++++++++++++++
 meta/cfg/kernel-cache/features/power/intel.scc     |    1 +
 5 files changed, 31 insertions(+), 1 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/power/intel.cfg
 create mode 100644 meta/cfg/kernel-cache/features/power/intel.scc


