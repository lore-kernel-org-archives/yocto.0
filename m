Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EC24E00777
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 15:23:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Aug 2011 15:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,253,1312182000"; d="scan'208";a="41876006"
Received: from unknown (HELO localhost) ([10.255.13.233])
	by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2011 15:23:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Aug 2011 15:23:25 -0700
Message-Id: <cover.1313792192.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Fri, 19 Aug 2011 22:23:29 -0000

There have been requests to enable the hard floating point abi for the
Yocto Project Beagleboard BSP. With the recent cortexa8 tune file changes
I submitted to oe-core, subject "tune: update arm7a and cortexa8 tune files",
it is now possible for the machine config to change DEFAULTTUNE to take
advantage of the newly added "hf" tune variants.

Some binary libraries are incompatible with hardfp, as is 3D support on the
Beagleboard. We don't ship either, so I feel it makes sense to take advantage
of as much of the core CPU features as possible.

This addresses [YOCTO 1203]
http://bugzilla.yoctoproject.org/show_bug.cgi?id=1204

I don't feel very strongly about this however. So if someone would like to
argue for hardfp not being the default, please do so and I can easily
comment out the DEFAULTTUNE change and add a comment in the machine config
describing how to enable hardfp.

The following changes since commit 53bdf3fd520b75730cc802f52121dd394894e130:

  tune: Add hard floating point variants of cortexa8 tunes (2011-08-19 15:02:10 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/beagleboard-hardfp
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagleboard-hardfp

Darren Hart (1):
  beagleboard: enable hard floating point abi

 meta-yocto/conf/machine/beagleboard.conf |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

-- 
1.7.6


