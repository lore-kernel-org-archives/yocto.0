Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89BB9E0129F
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 21:08:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Oct 2011 21:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,344,1315206000"; d="scan'208";a="77985535"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2011 21:08:58 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 23:08:44 -0500
Message-Id: <cover.1318564650.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/10] meta-intel: xserver-xorg rename fixes, v1
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
X-List-Received-Date: Fri, 14 Oct 2011 04:08:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset is a first pass at the fixes needed to fix up the server-xorg
renaming in meta-intel and get X working again.

So far sugarbay and crownbay both with and without EMGD have been built and
boot-tested successfully into sato.

One thing I don't yet understand though is why sugarbay worked fine with
just the rename, while the crownbay BSPs needed to have the following
added to XSERVER in order to get them to work.

+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-dri \
+           xserver-xorg-extension-dri2 \
+           xserver-xorg-extension-glx \
+           xserver-xorg-extension-extmod \
+           xserver-xorg-extension-dbe \
+           xserver-xorg-module-libint10 \

If anyone can give me a clue as to why that would be or how it's supposed
to work, I'd appreciated it.

Thanks,

Tom

The following changes since commit 0ea04b02119c44865e5e1c2529c74950928c3347:
  Eric Bénard (1):
        meta-emenlow: update qt4 to 4.7.4

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/xorg-rename-fixes-v1
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?h=tzanussi/xorg-rename-fixes-v1

Tom Zanussi (10):
  meta-intel: /common xserver-xorg name change
  meta-sugarbay: xserver-xorg rename
  meta-sugarbay: remove meta-intel/common from BBFILES
  meta-crownbay: xserver-xorg renaming updates
  meta-fishriver: xserver-xorg renaming updates
  meta-fri2: xserver-xorg renaming updates
  meta-jasperforest: remove meta-intel/common from BBFILES
  meta-jasperforest: xserver-xorg renaming updates
  meta-jasperforest: remove obsolete xserver-xf86-dri-lite .bbappend
  meta-n450: xserver-xorg renaming updates

 ...86-dri-lite_1.9.3.bb => xserver-xorg-1.9.3.inc} |   16 ++++++----------
 .../crosscompile.patch                             |    0
 .../fix_open_max_preprocessor_error.patch          |    0
 .../macro_tweak.patch                              |    0
 .../nodolt.patch                                   |    0
 .../xorg-xserver/xserver-xorg_1.9.3.bb             |    4 ++++
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |   14 +++++++++++---
 meta-crownbay/conf/machine/crownbay.conf           |   14 ++++++++++----
 meta-fishriver/conf/machine/fishriver.conf         |    6 +++---
 meta-fri2/conf/machine/fri2-noemgd.conf            |    8 +++++---
 meta-fri2/conf/machine/fri2.conf                   |    8 ++++----
 meta-jasperforest/conf/layer.conf                  |    4 +---
 meta-jasperforest/conf/machine/jasperforest.conf   |    6 +++---
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 -
 meta-n450/conf/machine/n450.conf                   |    6 +++---
 meta-sugarbay/conf/layer.conf                      |    4 +---
 meta-sugarbay/conf/machine/sugarbay.conf           |    6 +++---
 17 files changed, 54 insertions(+), 43 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.bb => xserver-xorg-1.9.3.inc} (83%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/crosscompile.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/fix_open_max_preprocessor_error.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/macro_tweak.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/nodolt.patch (100%)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xorg_1.9.3.bb
 delete mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend


