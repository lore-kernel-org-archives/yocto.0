Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCEBE00289
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 09:49:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2012 09:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="192535018"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2012 09:49:10 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Wed,  1 Aug 2012 09:46:52 -0700
Message-Id: <cover.1343839498.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] Fixes for meta-intel/denzil
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
X-List-Received-Date: Thu, 02 Aug 2012 16:49:20 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

I found the emgd recipe was failing due to packaging QA errors on the denzil branch.
this pull request fixes it.

Thanks,
Nitin

The following changes since commit a1a32b20ee7677f05cc01ab7428f256127657e98:

  fri2: Update README (2012-07-30 16:24:01 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/denzil
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/denzil

Nitin A Kamble (1):
  emgd-driver-bin_1.14: avoid QA warnings

 .../xorg-xserver/emgd-driver-bin_1.14.bb           |   92 ++++++++++++++++++++
 1 files changed, 92 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb

-- 
1.7.3.4


