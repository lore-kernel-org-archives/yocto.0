Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7DC9E00E5A; Fri, 29 Apr 2016 03:51:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE69CE00E53
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 03:51:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 29 Apr 2016 03:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,551,1455004800"; d="scan'208";a="969082531"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2016 03:51:12 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 13:50:35 +0300
Message-Id: <cover.1461926785.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-config-gtk][PATCH 0/1] Upgrade to Gtk+3
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
X-List-Received-Date: Fri, 29 Apr 2016 10:51:18 -0000

This one is a trivial port.

This patchset is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib

The following changes since commit 3ed74dfb7c57be088a5ab36e446c0ccde9fa1028:

  2008-09-25  Ross Burton  <ross@linux.intel.com> (2008-09-25 15:52:01 +0000)

are available in the git repository at:

  git://github.com/jku/matchbox-config-gtk gtk3
  https://github.com/jku/matchbox-config-gtk/tree/gtk3

Jussi Kukkonen (1):
  Port to Gtk+3

 appearance/mb-appearance.c | 4 ++--
 configure.ac               | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.8.1


