Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36C34E00DC6; Thu, 28 Apr 2016 05:57:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB465E00DC1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:57:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 28 Apr 2016 05:57:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="968383645"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2016 05:57:51 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 15:56:22 +0300
Message-Id: <cover.1461828099.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-sato][PATCH 0/2] Matchbox theme update
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
X-List-Received-Date: Thu, 28 Apr 2016 12:57:55 -0000

Update the matchbox window manager theme to be more compatible with
current GTK default themes. The theme is now gray and boring but
hopefully does not clash with everything else as badly. The titlebar
is much thinner in preparation for the separation of panel and
titlebar: With client side decorations their integration is no longer
possible.


This patchset is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib

I'll try to send the rest of matchbox-* patchsets during this week.

Cheers,
  Jussi

The following changes since commit e3ccc08d4a680d70fd4891fca966aa6ce503065c:

  Fix png file name after rename (2011-09-16 10:44:13 +0100)

are available in the git repository at:

  git://github.com/jku/matchbox-sato gtk3
  https://github.com/jku/matchbox-sato/tree/gtk3

Jussi Kukkonen (2):
  Make titlebar more like default GTK3
  Remove the qvga theme

 Sato/matchbox/Makefile.am                  |  21 +-----
 Sato/matchbox/arrow-down-active-qvga.png   | Bin 333 -> 0 bytes
 Sato/matchbox/arrow-down-active.png        | Bin 511 -> 0 bytes
 Sato/matchbox/arrow-down-qvga.png          | Bin 332 -> 0 bytes
 Sato/matchbox/arrow-down.png               | Bin 556 -> 0 bytes
 Sato/matchbox/close-button-active-qvga.png | Bin 400 -> 0 bytes
 Sato/matchbox/close-button-active.png      | Bin 706 -> 251 bytes
 Sato/matchbox/close-button-qvga.png        | Bin 362 -> 0 bytes
 Sato/matchbox/close-button.png             | Bin 710 -> 251 bytes
 Sato/matchbox/dia-left-edge-qvga.png       | Bin 218 -> 0 bytes
 Sato/matchbox/dia-right-edge-qvga.png      | Bin 225 -> 0 bytes
 Sato/matchbox/dia-tile-qvga.png            | Bin 188 -> 0 bytes
 Sato/matchbox/open-menu-active.png         | Bin 0 -> 161 bytes
 Sato/matchbox/open-menu.png                | Bin 0 -> 161 bytes
 Sato/matchbox/theme-qvga.xml               | 109 -----------------------------
 Sato/matchbox/{theme-vga.xml => theme.xml} |  67 ++++++++++--------
 Sato/matchbox/titlebar-left-edge-qvga.png  | Bin 383 -> 0 bytes
 Sato/matchbox/titlebar-right-edge-qvga.png | Bin 385 -> 0 bytes
 Sato/matchbox/titlebar-tile-qvga.png       | Bin 267 -> 0 bytes
 configure.ac                               |  16 +----
 20 files changed, 39 insertions(+), 174 deletions(-)
 delete mode 100644 Sato/matchbox/arrow-down-active-qvga.png
 delete mode 100644 Sato/matchbox/arrow-down-active.png
 delete mode 100644 Sato/matchbox/arrow-down-qvga.png
 delete mode 100644 Sato/matchbox/arrow-down.png
 delete mode 100644 Sato/matchbox/close-button-active-qvga.png
 delete mode 100644 Sato/matchbox/close-button-qvga.png
 delete mode 100644 Sato/matchbox/dia-left-edge-qvga.png
 delete mode 100644 Sato/matchbox/dia-right-edge-qvga.png
 delete mode 100644 Sato/matchbox/dia-tile-qvga.png
 create mode 100644 Sato/matchbox/open-menu-active.png
 create mode 100644 Sato/matchbox/open-menu.png
 delete mode 100644 Sato/matchbox/theme-qvga.xml
 rename Sato/matchbox/{theme-vga.xml => theme.xml} (55%)
 delete mode 100644 Sato/matchbox/titlebar-left-edge-qvga.png
 delete mode 100644 Sato/matchbox/titlebar-right-edge-qvga.png
 delete mode 100644 Sato/matchbox/titlebar-tile-qvga.png

-- 
2.8.1


