Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2370E01366
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:32:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Jan 2012 11:32:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="93686308"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by orsmga002.jf.intel.com with ESMTP; 02 Jan 2012 11:32:36 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2012 13:32:38 -0600
Message-Id: <cover.1325525852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] emgd-1.10: new recipe
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
X-List-Received-Date: Mon, 02 Jan 2012 19:32:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds support for emgd-1.10.  This version relies on a new
licensing mechanism called LICENSE_FLAGS, which has been posted separately.
The LICENSE_FLAGS implementation provides the mechanism needed for this new
emgd recipe to be automatically downloaded from the emgd site and used by
the recipe rather than using the manual-copy method required by the emgd-1.8
and previous recipes.

In order to allow emgd-1.10 to be built, however, the emgd license string,
"License_emgd-driver-bin_1.10" must be added to the LICENSE_FLAGS_WHITELIST
variable in local.conf e.g.:

LICENSE_FLAGS_WHITELIST = "License_emgd-driver-bin_1.10"

This patchset also removes the 1.8 recipe in the process.

All the basic funcionality has been tested and works i.e. 2D graphics, mouse,
keyboard, 3D graphics (glxgears), and video accelaration
(big_buck_bunny_1080p_h264.mov).


The following changes since commit 7c3db7010479970f3f92501349827c517de3c36a:
  Tom Zanussi (1):
        meta-intel: change EMGD xserver libva dependency to libva-x11

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.10.v0
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-1.10.v0

Tom Zanussi (3):
  meta-intel: new recipe for emgd 1.10 driver
  meta-crownbay: pin to emgd-driver-bin_1.10
  meta-intel: remove emgd-1.8

 .../xorg-xserver/emgd-driver-bin_1.10.bb           |   97 ++++++++++++++++++++
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   39 --------
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 3 files changed, 98 insertions(+), 40 deletions(-)
 delete mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
 delete mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb


