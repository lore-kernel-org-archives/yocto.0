Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF5FE006C6
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 15:47:58 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 05 Dec 2012 15:47:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,224,1355126400"; d="scan'208";a="176705545"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Dec 2012 15:47:57 -0800
From: nitin.a.kamble@intel.com
To: Openembedded-core@lists.openembedded.org,
	yocto@yoctoproject.org
Date: Wed,  5 Dec 2012 15:47:11 -0800
Message-Id: <cover.1354751008.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [Patch v2 0/1] Misc: check trailing white space in the patches
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
X-List-Received-Date: Wed, 05 Dec 2012 23:47:58 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The earlier (v1) patch was checking trailing white space only for added empty lines.
This v2 patch checks for all the lines added by patches.

Thanks,
Nitin

The following changes since commit 381c4b69c7e8b452f4d3de2f8214e6e5f6a9abe7:

  sstate.bbclass: fix detection of owners matching sstate files (2012-12-05 15:34:07 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/misc
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Nitin A Kamble (1):
  create-pull-request: detect trailing white space

 scripts/create-pull-request |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

-- 
1.7.3.4


