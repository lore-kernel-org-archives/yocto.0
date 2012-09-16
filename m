Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8867FE0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 15:35:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Sep 2012 15:35:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,439,1344236400"; d="scan'208";a="146090527"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Sep 2012 15:35:34 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Sun, 16 Sep 2012 15:27:02 -0700
Message-Id: <cover.1347834237.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/2] emgd recipe misc fixes
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
X-List-Received-Date: Mon, 17 Sep 2012 22:35:40 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Here are the fixes related to the emgd recipe. These are verified with crownbay BSP with the latest master branches.

Thanks,
Nitin

The following changes since commit 574d10a3a2040ff685b74f9d4034f045d0191e5b:

  meta-intel: move emgd-driver-bin_1.14 to xorg-driver/ (2012-09-15 15:02:43 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/work
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work

Nitin A Kamble (2):
  emgd-driver-bin: Fix package naming issue
  emgd-driver-bin: avoid rebuilding issue of the recipe

 .../xorg-driver/emgd-driver-bin_1.14.bb            |   11 ++++++++++-
 1 files changed, 10 insertions(+), 1 deletions(-)

-- 
1.7.3.4


