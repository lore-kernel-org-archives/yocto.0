Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 174214C80053
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 23:05:20 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Aug 2011 21:05:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,308,1309762800"; d="scan'208";a="37317061"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2011 21:05:20 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2011 23:05:14 -0500
Message-Id: <cover.1312343514.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: new fri2 BSP
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
X-List-Received-Date: Wed, 03 Aug 2011 04:05:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is the initial version of a BSP for the Fish River Island II.
I don't actually have the hardware, but have successfully booted
a sato image with wired networking and vesa graphics on the closest
thing I have, the crownbay.

This BSP uses the 3.0 kernel - the fri2 kernel modifications were
originally pushed to linux-yocto-dev awhile ago, but the commit
history was lost in the move to 3.0.  It's reproduced below,
for reference.

commit 77d659c45fe47ef9e7f65f5b460a18d80f8c8f20
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Tue Jul 12 18:25:21 2011 -0500

    meta-fri2: use iwlagn feature
    
    Make use of the Intel wireless support for the Intel 6205 ABGN.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit 0008c9c1a16f816302be76b3c67b695c8a0064bd
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Tue Jul 12 18:25:20 2011 -0500

    meta: add mac80211 and iwlagn features
    
    Add iwlagn feature (Intel Wirelss WiFi Next Gen AGN) and one of its
    dependencies, mac80211, as a feature, since there are a bunch of
other
    config items that have the same dependency and could use it.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit 451ce7990c1e4757f3316f247e9c4e52830bd7c4
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Sun Jul 10 11:26:06 2011 -0500

    meta/fri2: create initial BSP infrastructure
    
    Inital BSP infrastructure for Intel Fish River Island II.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit 115003b6882981b33ae6e763088fbfb9dd1c21b3
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Sun Jul 10 11:26:05 2011 -0500

    meta/crownbay: remove eg20t.cfg and use new eg20t feature instead
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit baf6a74de2481d39beb29dc26674ddfd21467b0d
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Sun Jul 10 11:26:04 2011 -0500

    meta: add eg20t feature
    
    Option group for Intel Platform Controller Hub EG20T (Topcliff).
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>


The following changes since commit 3be9957211e54669825d1d55bb73c68d3f3354d0:
  Tom Zanussi (1):
        meta-sugarbay: switch to linux-yocto 3.0 kernel

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/fri2.v1
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/fri2.v1

Tom Zanussi (2):
  meta-fri2: new layer for Fish River Island II (E6XX/EG20T) systems
  meta-fri2: add 3g and wifi features

 meta-fri2/COPYING.MIT                              |   17 ++++
 meta-fri2/README                                   |   83 ++++++++++++++++++++
 meta-fri2/README.sources                           |   17 ++++
 meta-fri2/conf/layer.conf                          |   10 +++
 meta-fri2/conf/machine/fri2.conf                   |   36 +++++++++
 .../formfactor/formfactor/fri2/machconfig          |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xserver-xf86-config/fri2/xorg.conf             |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++
 11 files changed, 206 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/COPYING.MIT
 create mode 100644 meta-fri2/README
 create mode 100644 meta-fri2/README.sources
 create mode 100644 meta-fri2/binary/.gitignore
 create mode 100644 meta-fri2/conf/layer.conf
 create mode 100644 meta-fri2/conf/machine/fri2.conf
 create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor/fri2/machconfig
 create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-fri2/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
 create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend


