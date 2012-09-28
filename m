Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1151E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 12:43:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Sep 2012 12:43:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; d="scan'208";a="199486770"
Received: from wrk.jf.intel.com ([10.7.202.88])
	by orsmga001.jf.intel.com with ESMTP; 28 Sep 2012 12:43:46 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Sep 2012 12:43:46 -0700
Message-Id: <cover.1348861287.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 0/1] nfs regression workaround
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
X-List-Received-Date: Fri, 28 Sep 2012 19:44:00 -0000

The new recovery mechanism used by nfs in 3.4 kernels is currently
failing when building baryon against poky 1.3_M3. This workaround
causes nfs to revert back to the old recovery mechanism.

The issue is discussed in more detail here:
https://lkml.org/lkml/2012/6/11/243

The following changes since commit e4efadec4a1ded0a66fa67c7cca868b7a4b6221b:

  talloc: specify the version of LGPL and include the license text (2012-09-27 16:54:08 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-nfsd-regression
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-nfsd-regression

Kevin Strasser (1):
  nfs-utils: workaround for nfsd regression in the 3.4 kernel

 .../nfs-utils/nfs-utils_1.2.3.bbappend             |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend

-- 
1.7.9.5


