Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49E50E0120D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 10:16:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Aug 2011 10:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,281,1312182000"; d="scan'208";a="11059297"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.13.243])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Aug 2011 10:16:01 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 10:15:54 -0700
Message-Id: <cover.1314288840.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] Enable network sanity checks for Poky derived distros
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
X-List-Received-Date: Thu, 25 Aug 2011 17:16:04 -0000

With recent enhancements to the network sanity check we can now enable this
for Poky derived distributions without significant impact to the user.

The following changes since commit 6c2b7beac3cd23ed44bd3e195c6360a0932876bf:

  classes/sanity: enhance the network connectivity test (2011-08-25 08:51:30 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib josh/connection-test
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/connection-test

Joshua Lock (1):
  poky.conf: perform network sanity check by default for poky distros

 meta-yocto/conf/distro/poky.conf |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

-- 
1.7.6


