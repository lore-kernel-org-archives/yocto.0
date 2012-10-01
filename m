Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABDE8E0027E
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303440"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:19 +0100
Message-Id: <cover.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [yocto-docs][PATCH 00/11] Misc documentation updates
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:37 -0000

The following changes since commit a85840611650c9124b6194acca59c8bfe71f566c:

  documentation: dev-manual - trademark added and reference updated. (2012-10-01 09:27:42 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/doc-fixes-4
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/doc-fixes-4

Paul Eggleton (11):
  documentation/poky-ref-manual: the G in GPL is "General"
  documentation/poky-ref-manual: add staticdev-pkgs
  documentation/poky-ref-manual: add SDKIMAGE_FEATURES
  documentation/poky-ref-manual: minor improvements
  documentation/poky-ref-manual: remove reference to Ubuntu Intrepid
  documentation: update for current netbase version
  documentation/dev-manual: clarify section on updating PR
  documentation/poky-ref-manual: update FAQ for adding a new board
  documentation/poky-ref-manual: update FAQ on stability
  documentation/poky-ref-manual: clarify FAQ on products using the
    system
  documentation/poky-ref-manual: update FAQ for Poky

 documentation/bsp-guide/bsp.xml                    |    2 +-
 .../dev-manual/dev-manual-common-tasks.xml         |    7 +-
 documentation/dev-manual/dev-manual-newbie.xml     |    2 +-
 documentation/poky-ref-manual/faq.xml              |   74 +++++++-------------
 documentation/poky-ref-manual/ref-features.xml     |    2 +
 documentation/poky-ref-manual/ref-images.xml       |    4 +-
 documentation/poky-ref-manual/ref-variables.xml    |   27 ++++---
 documentation/poky-ref-manual/usingpoky.xml        |    6 +-
 8 files changed, 57 insertions(+), 67 deletions(-)

-- 
1.7.9.5


