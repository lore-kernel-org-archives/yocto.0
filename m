Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20B0AE00E42; Fri, 29 Apr 2016 00:06:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65804E00E33
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 00:06:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 29 Apr 2016 00:06:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,550,1455004800"; d="scan'208";a="942675658"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2016 00:06:32 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 10:06:33 +0300
Message-Id: <cover.1461913316.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [screenshot][PATCH 0/1] Support Gtk+3
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
X-List-Received-Date: Fri, 29 Apr 2016 07:06:37 -0000

This patch is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib

The following changes since commit 3a9688e8a01b63a78f402b4e7c0b8b005fcdfa29:

  build: change link ordering to fix link problems (2013-06-17 16:58:49 +0100)

are available in the git repository at:

  git://github.com/jku/sato-screenshot gtk3
  https://github.com/jku/sato-screenshot/tree/gtk3

Jussi Kukkonen (1):
  Quick port to Gtk/Gdk 3

 configure.ac       |  2 +-
 screenshot-utils.c | 77 +++++++++++++++++++++++++++++-------------------------
 2 files changed, 43 insertions(+), 36 deletions(-)

-- 
2.8.1


