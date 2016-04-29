Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49FDDE00E58; Fri, 29 Apr 2016 03:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E93E00E53
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 03:41:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2016 03:41:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,551,1455004800"; d="scan'208";a="965302260"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga002.jf.intel.com with ESMTP; 29 Apr 2016 03:41:14 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 13:41:12 +0300
Message-Id: <cover.1461925753.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-terminal][PATCH 0/1] Upgrade to Gtk+ 3 and current Vte
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
X-List-Received-Date: Fri, 29 Apr 2016 10:41:19 -0000

The big change is that spawning a shell is now done "manually" as
vte_terminal_fork_*() have been removed.

This patchset is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib

The following changes since commit 452bca253492a97a587f440289b9ab27d217353e:

  INSTALL: remove, this is a dangling symlink (2013-02-04 10:13:06 +0000)

are available in the git repository at:

  git://github.com/jku/matchbox-terminal gtk3
  https://github.com/jku/matchbox-terminal/tree/gtk3

Jussi Kukkonen (1):
  Upgrade to current Vte and Gtk+ versions

 Makefile.am  |  4 ++--
 configure.ac |  2 +-
 main.c       | 49 +++++++++++++++++++++++++++++++++++++++----------
 3 files changed, 42 insertions(+), 13 deletions(-)

-- 
2.8.1


