Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE462E00D69; Tue,  3 May 2016 06:32:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA52E00D59
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 06:32:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 03 May 2016 06:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="945179247"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2016 06:32:46 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 16:32:34 +0300
Message-Id: <cover.1462281781.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-desktop-2][PATCH 0/2] More Gtk+3 fixes
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
X-List-Received-Date: Tue, 03 May 2016 13:32:51 -0000

Two patches more on top of the 16 patch set earlier: these fix the
last deprecation warnings (with GTK 3.20).

I've pushed these into the same branch and have nothing more planned for
matchbox-desktop-2.

Jussi

The following changes since commit 606344f8b1652bcc3d369911990cf5bc46a16ab6:

  Don't set the desktop fullscreen if MODE_DESKTOP (2016-04-28 10:49:55 +0300)

are available in the git repository at:

  git://github.com/jku/matchbox-desktop-2 gtk3
  https://github.com/jku/matchbox-desktop-2/tree/gtk3

Jussi Kukkonen (2):
  TakuCategoryBar: Avoid deprecated API
  TakuIconTile: Avoid deprecated icon API

 libtaku/taku-icon-tile.c     | 24 +++++++++++++++++++-----
 libtaku/taku-launcher-tile.c | 32 +++++++++++++++++---------------
 libtaku/taku-menu-desktop.c  |  8 ++------
 libtaku/taku-menu.h          |  3 +--
 src/desktop.c                |  4 ----
 src/taku-category-bar.c      | 27 ++++++---------------------
 6 files changed, 45 insertions(+), 53 deletions(-)

-- 
2.8.1


