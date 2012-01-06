Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 875C4E006B0
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 14:41:12 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2012 14:41:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="95362754"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.169])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2012 14:41:12 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Fri,  6 Jan 2012 14:40:05 -0800
Message-Id: <cover.1325888873.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Fri, 06 Jan 2012 22:41:12 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch is to update the meta-cedartrail BSP from edison branch to master branch.
Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit 7c3db7010479970f3f92501349827c517de3c36a:

  meta-intel: change EMGD xserver libva dependency to libva-x11 (2011-12-22 09:22:37 -0600)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail

Kishore Bodke (1):
  meta-cedartrail: Create meta-cedartrail BSP     Add meta-cedartrail
    to meta-intel

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


