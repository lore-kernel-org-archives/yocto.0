Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1EACE0048B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 12:33:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2011 12:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,364,1309762800"; d="scan'208";a="40963191"
Received: from unknown (HELO localhost) ([10.255.14.198])
	by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2011 12:33:54 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 12 Aug 2011 14:33:49 -0500
Message-Id: <cover.1313172146.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] meta-intel: crownbay 1.8 emgd and 3.0 kernel upgrade
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
X-List-Received-Date: Fri, 12 Aug 2011 19:33:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset switches crownbay to the 3.0 kernel and upgrades emgd
to 1.8.  Both crownbay and crownbay-emgd were successfully built and
boot tested.

One major change coming out of this patchset is that the emgd binary
bits no longer have to be downloaded and extracted manually - the new
emgd-driver-bin recipe takes care of that now.

However, after these changes the crownbay (but not the crownbay-noemgd)
recipe will not build successfully unless the user overrides
COMMERCIAL_LICENSE as mentioned in the README and recipe DESCRIPTION.

The following changes since commit bf39c131f326f958693a827e25c30f0c1769cc8e:
  Darren Hart (1):
        rt: simplify linux-yocto-rt.bbappend for all BSPs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/crownbay-3.0-emgd
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-3.0-emgd

Tom Zanussi (6):
  meta-crownbay: switch to linux-yocto 3.0 kernel
  meta-crownbay: new recipe for emgd 1.8 driver binaries
  meta-crownbay: select emgd 1.8
  meta-crownbay: make the use of emgd-driver-bin COMMERCIAL
  meta-crownbay: xorg.conf changes
  meta-crownbay: update README

 meta-crownbay/README                               |  207 ++++----------------
 meta-crownbay/conf/layer.conf                      |    2 +
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +
 meta-crownbay/conf/machine/crownbay.conf           |    4 +-
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   36 ++++
 .../xserver-xf86-config/crownbay/xorg.conf         |    3 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 ++
 8 files changed, 103 insertions(+), 167 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend


