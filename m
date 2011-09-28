Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0303CE004CF
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 16:01:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Sep 2011 16:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,458,1312182000"; d="scan'208";a="56743870"
Received: from unknown (HELO cenodoxus.amr.corp.intel.com) ([10.255.15.60])
	by azsmga001.ch.intel.com with ESMTP; 28 Sep 2011 16:01:22 -0700
From: Beth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Sep 2011 16:01:16 -0700
Message-Id: <cover.1317250357.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1] Increment DISTRO_VERSION and DISTRO_NAME in master
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
X-List-Received-Date: Wed, 28 Sep 2011 23:01:24 -0000

With the edison branch stable, it's safe to increment DISTRO_VERSION and
DISTRO_NAME

The following changes since commit 72928abdfc00af2a7a5fac27f82e23e5de8efc4b:

  util-linux: Ensure perl scripts reference the correct perl (2011-09-28 21:51:52 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib eflanagan/distro_version
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=eflanagan/distro_version

Elizabeth Flanagan (1):
  poky.conf: Increment DISTRO_VERSION

 meta-yocto/conf/distro/poky.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


