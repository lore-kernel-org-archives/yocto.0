Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 612A7E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 15:09:40 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2012 15:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94573678"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.169])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2012 15:09:40 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon,  9 Jan 2012 15:08:10 -0800
Message-Id: <cover.1326150136.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] Add meta-cedartrail to meta-intel/master
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
X-List-Received-Date: Mon, 09 Jan 2012 23:09:40 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch set is to update the meta-cedartrail BSP from edison branch to master branch.
Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit 7c3db7010479970f3f92501349827c517de3c36a:

  meta-intel: change EMGD xserver libva dependency to libva-x11 (2011-12-22 09:22:37 -0600)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail

Kishore Bodke (1):
  meta-cedartrail: Create new layer for cedartrail System.

 MAINTAINERS                                        |    3 +
 meta-cedartrail/COPYING.MIT                        |   17 +++
 meta-cedartrail/README                             |  111 ++++++++++++++++++++
 meta-cedartrail/README.sources                     |   17 +++
 meta-cedartrail/conf/layer.conf                    |   10 ++
 meta-cedartrail/conf/machine/cedartrail.conf       |   15 +++
 .../formfactor/formfactor/cedartrail/machconfig    |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xserver-xf86-config/cedartrail/xorg.conf       |   26 +++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++
 13 files changed, 226 insertions(+), 0 deletions(-)
 create mode 100755 meta-cedartrail/COPYING.MIT
 create mode 100755 meta-cedartrail/README
 create mode 100755 meta-cedartrail/README.sources
 create mode 100644 meta-cedartrail/binary/.gitignore
 create mode 100644 meta-cedartrail/conf/layer.conf
 create mode 100644 meta-cedartrail/conf/machine/cedartrail.conf
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.5.4


