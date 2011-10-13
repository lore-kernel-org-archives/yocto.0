Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7018FE00502
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 22:07:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Oct 2011 22:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,338,1315206000"; d="scan'208";a="73057466"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 22:07:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 00:07:17 -0500
Message-Id: <cover.1318481569.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/10] meta-intel: xserver-xorg rename fixes
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
X-List-Received-Date: Thu, 13 Oct 2011 05:07:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset is a first pass at the fixes needed to fix up the server-xorg
renaming in meta-intel.

So far sugarbay has been build and boot-tested successfully into sato.
crownbay has been build tested but failed to start X - in any case it
builds, which is a step forward.  I applied the same changes to the other
BSPs but haven't yet built or booted them; I'll be doing that over the
next couple of days, but they should at least compile and not prevent
autobuilder from going green.

I did have one problem in that xf86-video-intel failed do_patch, and
had to respin the buidfix.patch as below, which doesn't make any sense
since I verified that the S = "${WORKDIR}/${BPN}-${PV}" assignment in
xorg-driver-common.inc was actually getting the right value for the
existing patch, and there shoule be no reason for it to fail.  Anyway,
that's another thing I'll look into tomorrow if nobody else does.

Index: xf86-video-intel-2.16.0/src/intel.h
===================================================================
--- xf86-video-intel-2.16.0.orig/src/intel.h    2011-10-12 21:50:29.794427760 -0500
+++ xf86-video-intel-2.16.0/src/intel.h 2011-10-12 21:52:04.953637183 -0500
@@ -65,9 +65,7 @@
 #include <pciaccess.h>
 
 #include "xf86drm.h"
-#include "sarea.h"
 #define _XF86DRI_SERVER_
-#include "dri.h"
 #include "dri2.h"
 #include "intel_bufmgr.h"
 #include "i915_drm.h"


The following changes since commit e0e52850cf5f84fb4ee1bfa15571aaf61e068450:
  Tom Zanussi (1):
        meta-emenlow: restore /usr/lib/dri for xpsb-glx

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/xorg-rename-fixes-v0
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/xorg-rename-fixes-v0

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
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 +++---
 meta-crownbay/conf/machine/crownbay.conf           |    8 ++++----
 meta-fishriver/conf/machine/fishriver.conf         |    6 +++---
 meta-fri2/conf/machine/fri2-noemgd.conf            |    6 +++---
 meta-fri2/conf/machine/fri2.conf                   |    8 ++++----
 meta-jasperforest/conf/layer.conf                  |    4 +---
 meta-jasperforest/conf/machine/jasperforest.conf   |    6 +++---
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 -
 meta-n450/conf/machine/n450.conf                   |    6 +++---
 meta-sugarbay/conf/layer.conf                      |    4 +---
 meta-sugarbay/conf/machine/sugarbay.conf           |    6 +++---
 17 files changed, 38 insertions(+), 43 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.bb => xserver-xorg-1.9.3.inc} (83%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/crosscompile.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/fix_open_max_preprocessor_error.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/macro_tweak.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/nodolt.patch (100%)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xorg_1.9.3.bb
 delete mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend


