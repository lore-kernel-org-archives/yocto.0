Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91384E006B4
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:40:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Oct 2011 08:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="58903342"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 04 Oct 2011 08:40:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 10:40:42 -0500
Message-Id: <cover.1317740914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4][KERNEL] enable booting from iso
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
X-List-Received-Date: Tue, 04 Oct 2011 15:40:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A few of the 32-bit meta-intel BSPs need the boot-live config turned on
in order boot from iso images.  This patchset does that for crownbay,
emenlow, fishriver, and fri2.

Tested on crownbay.

Please pull into linux-yocto-3.0/meta.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/isoboot-fixes-2
  Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/isoboot-fixes-2

Tom Zanussi (4):
  meta/crownbay: enable booting from iso
  meta/emenlow: enable booting from iso
  meta/fishriver: enable booting from iso
  meta/fri2: enable booting from iso

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg   |    3 +++
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc   |    1 +
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg     |    3 +++
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc     |    1 +
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg           |    3 +++
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc           |    1 +
 8 files changed, 16 insertions(+), 0 deletions(-)


