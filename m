Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67C1DE00D57; Tue,  3 May 2016 04:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8343E00D4F
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 May 2016 04:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489171"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:10 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:01 +0300
Message-Id: <cover.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-panel-2][PATCH 00/25] Upgrade to Gtk+3
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
X-List-Received-Date: Tue, 03 May 2016 11:30:15 -0000

Apologies for one more patch bomb: This is an upgrade for
matchbox-panel-2 to use modern dependencies, mostly Gtk+3. Most
commits are again from Ross, I just fixed bugs and replaced some
deprecated code.


This patchset is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib


  -Jussi

The following changes since commit a0b5fca04da208990f3c40e65dbb045da4cdb35e:

  showdesktop: Make sure active state is initialized (2016-03-21 11:27:08 +0000)

are available in the git repository at:

  git://github.com/jku/matchbox-panel-2 gtk3
  https://github.com/jku/matchbox-panel-2/tree/gtk3

Jussi Kukkonen (6):
  Fix a crash on startup
  Don't use deprecated GtkMisc
  Update .pc-file to require Gtk+-3.0
  Draw systray icons in their actual locations
  mb-panel: size request needs to be set before realize
  windowselector: Port to ScalingImage2

Ross Burton (19):
  build: check for GTK+3, and require 3.0
  windowselector: port to GTK+ 3
  startup: port to GTK+ 3
  startup-notify: port to GTK+ 3
  showdesktop: port to GTK+ 3
  launcher: port to GTK+ 3
  mb-panel: port to GTK+3
  notify: port to GTK+ 3
  systray: port to GTK+ 3
  data: ship our own icons here instead of in sato-icon-theme
  po: update POTFILES.in
  build: bump version to 2.9
  scaling-image: fix whitespace
  scaling-image: port to GTK+ 3 API
  mb-panel: allow resizing, but hide the grip
  mb-panel: replace --titlebar with --mode
  scaling-image2: revised and slimmer scaling image implementation
  applets: add scaling-image2 to the test harness
  showdesktop: port to use scaling-image2

 Makefile.am                              |   2 +-
 applets/Makefile.applets                 |   3 +-
 applets/launcher/launcher.c              |  12 +-
 applets/notify/applet.c                  |  19 +-
 applets/notify/mb-notification.c         |  40 +-
 applets/showdesktop/showdesktop.c        |  28 +-
 applets/startup-notify/startup.c         |  65 ++-
 applets/startup/startup.c                |  63 +--
 applets/systray/Makefile.am              |  20 +-
 applets/systray/fixedtip.c               | 275 ++++++++++
 applets/systray/fixedtip.h               |  68 +++
 applets/systray/na-marshal.list          |   3 -
 applets/systray/na-tray-child.c          | 526 +++++++++++++++++++
 applets/systray/na-tray-child.h          |  71 +++
 applets/systray/na-tray-manager.c        | 570 +++++++++++---------
 applets/systray/na-tray-manager.h        |  32 +-
 applets/systray/na-tray.c                | 865 +++++++++++++++++++++++++++++++
 applets/systray/na-tray.h                |  76 +++
 applets/systray/systray.c                |  91 +---
 applets/windowselector/windowselector.c  |  43 +-
 configure.ac                             |  11 +-
 data/16x16/panel-task-switcher.png       | Bin 0 -> 432 bytes
 data/16x16/panel-user-desktop.png        | Bin 0 -> 393 bytes
 data/22x22/panel-task-switcher.png       | Bin 0 -> 636 bytes
 data/22x22/panel-user-desktop.png        | Bin 0 -> 517 bytes
 data/32x32/panel-task-switcher.png       | Bin 0 -> 965 bytes
 data/32x32/panel-user-desktop.png        | Bin 0 -> 734 bytes
 data/48x48/panel-task-switcher.png       | Bin 0 -> 1588 bytes
 data/48x48/panel-user-desktop.png        | Bin 0 -> 1115 bytes
 data/64x64/panel-task-switcher.png       | Bin 0 -> 2328 bytes
 data/64x64/panel-user-desktop.png        | Bin 0 -> 1491 bytes
 data/Makefile.am                         |  18 +
 matchbox-panel.pc.in                     |   2 +-
 matchbox-panel/Makefile.am               |   4 +-
 matchbox-panel/mb-panel-scaling-image.c  |  37 +-
 matchbox-panel/mb-panel-scaling-image2.c | 451 ++++++++++++++++
 matchbox-panel/mb-panel-scaling-image2.h |  64 +++
 matchbox-panel/mb-panel.c                | 401 +++++++-------
 po/POTFILES.in                           |  24 +-
 39 files changed, 3209 insertions(+), 675 deletions(-)
 create mode 100644 applets/systray/fixedtip.c
 create mode 100644 applets/systray/fixedtip.h
 delete mode 100644 applets/systray/na-marshal.list
 create mode 100644 applets/systray/na-tray-child.c
 create mode 100644 applets/systray/na-tray-child.h
 create mode 100644 applets/systray/na-tray.c
 create mode 100644 applets/systray/na-tray.h
 create mode 100644 data/16x16/panel-task-switcher.png
 create mode 100644 data/16x16/panel-user-desktop.png
 create mode 100644 data/22x22/panel-task-switcher.png
 create mode 100644 data/22x22/panel-user-desktop.png
 create mode 100644 data/32x32/panel-task-switcher.png
 create mode 100644 data/32x32/panel-user-desktop.png
 create mode 100644 data/48x48/panel-task-switcher.png
 create mode 100644 data/48x48/panel-user-desktop.png
 create mode 100644 data/64x64/panel-task-switcher.png
 create mode 100644 data/64x64/panel-user-desktop.png
 create mode 100644 data/Makefile.am
 create mode 100644 matchbox-panel/mb-panel-scaling-image2.c
 create mode 100644 matchbox-panel/mb-panel-scaling-image2.h

-- 
2.8.1


