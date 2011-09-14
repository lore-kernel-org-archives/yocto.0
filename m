Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EA0AE006D3
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 22:41:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Sep 2011 22:41:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48195057"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2011 22:41:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 00:41:00 -0500
Message-Id: <cover.1315977969.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/5] Remove grub2 to oe-core and make BSPs use it
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset removes grub2 from meta-intel, since it's been moved by
another patchset to oe-core.  It also moves all the meta-intel BSPs to
grub2 (1.99).

A future patch will factor out the common parts being added to the
machine configs - this initial patchset essentially just fixes what's
necessary for YOCTO bug #1428 in order to get things working again.

The following changes since commit 3b5a3cb7393d0e9a56ff38a0b41c61751afab2b5:
  Tom Zanussi (1):
        grub2: update license version

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/move-grub2
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/move-grub2

Tom Zanussi (5):
  meta-intel/common: remove grub-1.98
  meta-intel/MAINTAINERS: remove grub
  meta-intel: make 32-bit BSPs use grub2
  meta-sugarbay: prefer grub 1.99
  meta-jasperforest: prefer grub 1.99

 MAINTAINERS                                        |    1 -
 common/recipes-bsp/grub/grub-1.98/40_custom        |    9 ---
 .../grub/grub-1.98/gentrigtables-compile-fix.patch |   52 --------------------
 .../grub/grub-1.98/grub-install.in.patch           |   13 -----
 .../grub/grub-1.98/uninit-shdr-fix.patch           |   31 ------------
 common/recipes-bsp/grub/grub_1.98.bb               |   46 -----------------
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    3 +
 meta-crownbay/conf/machine/crownbay.conf           |    3 +
 meta-emenlow/conf/machine/emenlow.conf             |    3 +
 meta-fishriver/conf/machine/fishriver.conf         |    3 +
 meta-fri2/conf/machine/fri2.conf                   |    3 +
 meta-jasperforest/conf/machine/jasperforest.conf   |    2 +-
 meta-n450/conf/machine/n450.conf                   |    3 +
 meta-sugarbay/conf/machine/sugarbay.conf           |    2 +-
 14 files changed, 20 insertions(+), 154 deletions(-)
 delete mode 100755 common/recipes-bsp/grub/grub-1.98/40_custom
 delete mode 100644 common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch
 delete mode 100644 common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
 delete mode 100644 common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
 delete mode 100644 common/recipes-bsp/grub/grub_1.98.bb


