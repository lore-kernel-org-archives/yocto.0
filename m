Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A791E00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:26:35 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2012 14:26:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102858495"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2012 14:26:34 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>, Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 14:26:03 -0800
Message-Id: <cover.1328135056.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [pull-sys940x 0/4][meta-intel] Inforce SYS940X BSP (Intel Atom E6xx + EG20T)
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
X-List-Received-Date: Wed, 01 Feb 2012 22:26:35 -0000

The following changes since commit c6d991cf83b3047419cc0076ea4ab1297b9cfb6d:

  meta-intel: update some kernel SRCREVs (2012-01-30 15:33:10 -0600)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib dvhart/sys940x
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/sys940x

Darren Hart (4):
  meta-intel: Add Inforce SYS940x BSP
  ranpwd: Add ranpwd recipe
  genmac: Replace RANDOM_MAC in network/interfaces with a randomly
    generated MAC
  netbase: Add interfaces with RANDOM_MAC for sys940x* machines

 meta-sys940x/COPYING.MIT                           |   17 +++
 meta-sys940x/README                                |  140 ++++++++++++++++++++
 meta-sys940x/README.sources                        |   18 +++
 meta-sys940x/conf/layer.conf                       |   10 ++
 meta-sys940x/conf/machine/sys940x-noemgd.conf      |   19 +++
 meta-sys940x/conf/machine/sys940x.conf             |   23 ++++
 .../formfactor/sys940x-noemgd/machconfig           |    3 +
 .../formfactor/formfactor/sys940x/machconfig       |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 meta-sys940x/recipes-bsp/genmac/files/genmac       |   46 +++++++
 meta-sys940x/recipes-bsp/genmac/genmac.bb          |   30 ++++
 meta-sys940x/recipes-core/netbase/files/interfaces |   10 ++
 .../recipes-core/netbase/netbase_4.47.bbappend     |    3 +
 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb |   23 ++++
 .../xserver-xf86-config/sys940x-noemgd/xorg.conf   |   26 ++++
 .../xserver-xf86-config/sys940x/xorg.conf          |   48 +++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.0.bbappend              |   14 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   17 +++
 19 files changed, 456 insertions(+), 0 deletions(-)
 create mode 100644 meta-sys940x/COPYING.MIT
 create mode 100644 meta-sys940x/README
 create mode 100644 meta-sys940x/README.sources
 create mode 100644 meta-sys940x/binary/.gitignore
 create mode 100644 meta-sys940x/conf/layer.conf
 create mode 100644 meta-sys940x/conf/machine/sys940x-noemgd.conf
 create mode 100644 meta-sys940x/conf/machine/sys940x.conf
 create mode 100644 meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x-noemgd/machconfig
 create mode 100644 meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x/machconfig
 create mode 100644 meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-sys940x/recipes-bsp/genmac/files/genmac
 create mode 100644 meta-sys940x/recipes-bsp/genmac/genmac.bb
 create mode 100644 meta-sys940x/recipes-core/netbase/files/interfaces
 create mode 100644 meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
 create mode 100644 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
 create mode 100644 meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x-noemgd/xorg.conf
 create mode 100644 meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x/xorg.conf
 create mode 100644 meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.6.5


