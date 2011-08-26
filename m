Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98548E01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 20:59:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Aug 2011 20:59:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="44811811"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2011 20:59:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:04 -0500
Message-Id: <cover.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/10] meta-intel: EMGD 1.8 and 3.0 kernel upgrade, v4
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
X-List-Received-Date: Fri, 26 Aug 2011 03:59:14 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset switches crownbay to the 3.0 kernel and upgrades emgd
to 1.8.  Both crownbay and crownbay-noemgd were successfully built and
boot tested into sato.

It also does the same for fri2, after adding a new fri2 machine config
and renaming the current one to fri2-noemgd.  Both fri2 and fri2-noemgd
were successfully built and boot tested into sato.

Changes since v2:

  - reworked the emgd-driver-bin 1.8 recipe to require manual setup
  - removed EMGD_LICENSE and anything license-related
  - updated READMEs to re-add manual instructions
  - updated to use new kernel wildcard scheme

The following changes since commit fb15cc4e1c4be75c81acaf6a1dd33675a9142975:
  Bruce Ashfield (1):
        meta-tlk: initial creation

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.8v4
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-1.8v4

Tom Zanussi (10):
  meta-crownbay: switch to linux-yocto 3.0 kernel
  meta-crownbay: new recipe for emgd 1.8 driver binaries
  meta-crownbay: select emgd 1.8
  meta-crownbay: xorg.conf changes
  meta-fri2: add EMGD 1.8 capabilities to fri2
  meta-intel: move emgd-driver-bin_1.8 to common
  meta-fri2: add common/recipes-graphics to BBFILES
  meta-intel: update meta-crownbay kernel SRCREVs
  meta-crownbay: update README
  meta-fri2: update README

 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   35 ++++
 meta-crownbay/README                               |  181 ++++----------------
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +
 meta-crownbay/conf/machine/crownbay.conf           |    4 +-
 .../xserver-xf86-config/crownbay/xorg.conf         |    3 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 +
 .../linux/linux-yocto-rt_3.0.bbappend              |   10 -
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 ++
 meta-fri2/README                                   |  108 ++++++++++--
 meta-fri2/conf/layer.conf                          |    4 +-
 meta-fri2/conf/machine/fri2-noemgd.conf            |   36 ++++
 meta-fri2/conf/machine/fri2.conf                   |    5 +-
 .../formfactor/formfactor/fri2-noemgd/machconfig   |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    1 +
 .../xserver-xf86-config/fri2-noemgd/xorg.conf      |   26 +++
 .../xserver-xf86-config/fri2/xorg.conf             |   48 ++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   13 ++-
 17 files changed, 302 insertions(+), 193 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-fri2/conf/machine/fri2-noemgd.conf
 create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig
 create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf


