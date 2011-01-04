Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E69F44C80050
	for <yocto@yoctoproject.org>; Mon,  3 Jan 2011 18:38:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 16:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="589567551"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.67])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 16:38:46 -0800
Message-Id: <cover.1294101386.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Old-Date: Mon, 3 Jan 2011 16:36:26 -0800
Date: Mon, 03 Jan 2011 16:39:22 -0800
To: yocto@yoctoproject.org
Subject: [PATCH 0/1] Autobuilder fixes and added functionality
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
X-List-Received-Date: Tue, 04 Jan 2011 00:38:47 -0000

Some minor fixes to the Autobuilder. I've reverted to Buildbot 0.8.2 for the time being,
as well as fixed some issues with poky-autobuild-generate-sources-tarball.

There is also a nasty issue when you have easy_install installed on a system. The BB 
installer will attempt to install via easy_install, however, if the install directory 
does not exist, it fails to install. I now create the install directories beforehand.

This is actually something that should be fixed on the BB side, and when I have some time
I'll look at it.

I've also added a --installbase option which does away with having to set all of the 
--(*)dir= options when you are trying to relocate the install from ~.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/bb-0.8.3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/bb-0.8.3

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  Fix for easy_install, source tarball and 0.8.3

 scripts/poky-autobuild-generate-sources-tarball |    2 +-
 scripts/poky-setup-autobuilder                  |   27 +++++++++++++++-------
 2 files changed, 19 insertions(+), 10 deletions(-)




