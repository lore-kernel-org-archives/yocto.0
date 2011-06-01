Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD0F04C804C2
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 14:58:06 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2011 12:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; 
   d="scan'208";a="8027548"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2011 12:58:05 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 14:55:54 -0500
Message-Id: <cover.1306958045.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] meta-intel: emgd updrade
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
X-List-Received-Date: Wed, 01 Jun 2011 19:58:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset upgrades emgd to 1.6 Gold.

The following changes since commit e94dba8309874a82a570db60223d18b2c723c3a5:
  Darren Hart (1):
        linux-yocto*: correct FILESEXTRAPATHS assignment in all layers

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.6-upgrade
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emgd-1.6-upgrade

Tom Zanussi (6):
  meta-crownbay: new recipe for emgd 1.6 driver binaries
  meta-intel: add xserver-xf86-dri-lite_1.9.3 to common
  meta-crownbay: add common to BBFILES
  meta-crownbay: update crownbay.conf
  meta-crownbay: remove obsolete graphics recipes
  meta-crownbay: update README with new build instructions.

 .../cache-xkbcomp-output-for-fast-start-up.patch   |  358 ++++++++++++++++++++
 .../xserver-xf86-dri-lite/crosscompile.patch       |   20 ++
 .../xserver-xf86-dri-lite/doublefix.patch          |   13 +
 .../xserver-xf86-dri-lite/drmfix.patch             |   13 +
 .../xserver-xf86-dri-lite/fix_macros.patch         |   17 +-
 .../xserver-xf86-dri-lite/fix_macros1.patch        |   22 ++
 .../fix_open_max_preprocessor_error.patch          |    0
 .../libdri-xinerama-symbol.patch                   |   50 +++
 .../xserver-xf86-dri-lite/macro_tweak.patch        |   28 ++
 .../xserver-xf86-dri-lite}/nodolt.patch            |    0
 .../xorg-server-disable-dri_sarea.patch            |   12 +
 .../xorg-server-enable-dri2.patch                  |   23 ++
 .../xserver-1.5.0-bg-none-root.patch               |  156 +++++++++
 .../xserver-DRI2Swapbuffer.patch                   |  179 ++++++++++
 .../xserver-xf86-dri-lite/xserver-boottime.patch   |   38 ++
 .../xserver-xf86-dri-lite/xserver-no-root-2.patch  |  105 ++++++
 .../xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb    |   19 +
 meta-crownbay/README                               |   95 +++++-
 meta-crownbay/conf/layer.conf                      |    4 +-
 meta-crownbay/conf/machine/crownbay.conf           |   12 +-
 .../xorg-xserver/emgd-driver-bin_1.6.bb            |   25 ++
 .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 -----
 .../xserver-xf86-emgd/crosscompile.patch           |   19 -
 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 --
 24 files changed, 1157 insertions(+), 166 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/cache-xkbcomp-output-for-fast-start-up.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/doublefix.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/drmfix.patch
 rename meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch => common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros.patch (56%)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros1.patch
 rename {meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd => common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite}/fix_open_max_preprocessor_error.patch (100%)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/libdri-xinerama-symbol.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
 rename {meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd => common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite}/nodolt.patch (100%)
 create mode 100755 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-disable-dri_sarea.patch
 create mode 100755 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-enable-dri2.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-1.5.0-bg-none-root.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-DRI2Swapbuffer.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-boottime.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-no-root-2.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb


