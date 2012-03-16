Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B770CE013AB
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 10:06:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Mar 2012 10:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="121725793"
Received: from unknown (HELO localhost) ([10.255.12.16])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2012 10:06:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 16 Mar 2012 10:05:37 -0700
Message-Id: <cover.1331917459.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2] Distro tracking updates: rt-tests, trace-cmd, kernelshark, and whitespace fixes
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
X-List-Received-Date: Fri, 16 Mar 2012 17:06:22 -0000

The following changes since commit be0f9dd483af2a2f55b2ae8ef9ca172e7c90819c:

  python-imaging: bring in fixes from meta-oe (2012-03-16 10:57:09 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/distro-tracking
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/distro-tracking

Darren Hart (2):
  distro-tracking: Update rt-tests, trace-cmd, and kernel shark
  distro-tracking: Remove trailing whitespace

 .../conf/distro/include/distro_tracking_fields.inc |  311 ++++++++++----------
 1 files changed, 162 insertions(+), 149 deletions(-)

-- 
1.7.6.5


