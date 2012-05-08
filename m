Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0898FE0044A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:37:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2012 14:37:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150716865"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by fmsmga001.fm.intel.com with ESMTP; 08 May 2012 14:37:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:58 -0500
Message-Id: <cover.1336510043.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/9][KERNEL] meta-intel updates
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
X-List-Received-Date: Tue, 08 May 2012 21:37:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

More updates for meta-intel 1.2.

Please pull into linux-yocto 3.2.

The following changes since commit 6b3d4e09aa2531e9649f3f03827b7efbccfcec03:
  Tom Zanussi (1):
        meta: add mei feature

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/1.2-updates-2
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/1.2-updates-2

Tom Zanussi (9):
  meta/emenlow: use usb features
  meta/fishriver: use usb features
  meta/jasperforest: use usb features
  meta/sugarbay: use usb features
  meta/jasperforest: remove boot-live options
  meta/sugarbay: remove boot-live options
  meta/crownbay: move smp options from recipe-space
  meta/emenlow: move smp options from recipe-space
  meta/fishriver: move smp options from recipe-space

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |    7 +------
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    5 +++++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |    8 +-------
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    5 +++++
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |   14 +-------------
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    4 ++++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |   14 +-------------
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    3 +++
 9 files changed, 22 insertions(+), 39 deletions(-)


