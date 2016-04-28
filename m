Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85233E00DCA; Thu, 28 Apr 2016 06:03:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ABF0E00DCF
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:02:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 28 Apr 2016 06:02:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="954766309"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2016 06:02:36 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:02:19 +0300
Message-Id: <cover.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-desktop-2][PATCH 00/16] Upgrade to GTK+3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Apr 2016 13:03:19 -0000

This branch was started 4(!) years ago to update matchbox-desktop
to GTK+3, most of it is Ross' handiwork.

For my part, the TakuTable removal started because it had some small
but annoying layout bugs and FlowBox seems to do everything we need
without those problems (and with less code).

Code still uses some deprecated API, but nothing that I expect to be
removed in the next GTK+ releases.


This patchset is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib

Thanks,
  Jussi

The following changes since commit 5fe37ef38500f858a22ecdf9bf69bf06e213bf68:

  Do nothing on delete-event when not STANDALONE (2016-03-22 12:13:24 +0000)

are available in the git repository at:

  git://github.com/jku/matchbox-desktop-2 gtk3
  https://github.com/jku/matchbox-desktop-2/tree/gtk3

Jussi Kukkonen (2):
  Use a GtkFlowBox instead of TakuTable
  Don't set the desktop fullscreen if MODE_DESKTOP

Ross Burton (14):
  Initial port to GTK+ 3
  taku-tile: make a subclass of GtkButton, remove all unique logic
  fixup 1024d115181a182918197d280e0797566178d26f
  main: load a custom CSS stylesheet if present
  taku-category-bar: don't try to make the arrows square
  desktop: set as unresizable to hide resize grip
  fixup initial port
  taku-table: port to GtkGrid
  More fixes
  main: ignore file not found errors when loading CSS
  desktop: add --mode
  build: remove unused --enable-standalone option
  build: add a real INSTALL file
  build: update git.mk

 INSTALL                      | 370 +++++++++++++++++++++++++++++
 Makefile.am                  |  10 +-
 configure.ac                 |   9 +-
 git.mk                       | 115 +++++++--
 libtaku/Makefile.am          |   1 -
 libtaku/launcher-util.c      |  23 +-
 libtaku/taku-icon-tile.c     |   6 +-
 libtaku/taku-launcher-tile.c |   9 +-
 libtaku/taku-launcher-tile.h |   2 +
 libtaku/taku-table.c         | 541 -------------------------------------------
 libtaku/taku-table.h         |  70 ------
 libtaku/taku-tile.c          | 136 +----------
 libtaku/taku-tile.h          |  10 +-
 libtaku/xutil.c              |   3 +-
 libtaku/xutil.h              |   2 +-
 src/Makefile.am              |   7 +-
 src/desktop.c                | 183 ++++++++++-----
 src/desktop.h                |   7 +-
 src/main.c                   |  79 ++++++-
 src/taku-category-bar.c      |  46 ++--
 src/taku-category-bar.h      |   5 +-
 21 files changed, 734 insertions(+), 900 deletions(-)
 create mode 100644 INSTALL
 delete mode 100644 libtaku/taku-table.c
 delete mode 100644 libtaku/taku-table.h

-- 
2.8.1


