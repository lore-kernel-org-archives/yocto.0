Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C01544C80A8F
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 22:38:02 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jul 2011 20:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="30576928"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2011 20:38:01 -0700
From: Ke Liping <liping.ke@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Jul 2011 11:28:49 +0800
Message-Id: <cover.1310696828.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][Image Creator] Remove unused target tree data for Hob
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
X-List-Received-Date: Fri, 15 Jul 2011 03:38:03 -0000

From: Liping Ke <liping.ke@intel.com>

Since Hob only needes package dependency information, we can
create a new version of package information retrieving methods,
remove task dependency information, so that we can greatly
reduce data loading time for Hob

The following changes since commit fa4bcfdb73167f8159b88e5a4d711c0d37627a70:
  Darren Hart (1):
        bb-matrix: correct BB and PM number canonicalization

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib lke/hob_perf
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/hob_perf

Liping Ke (1):
  Remove unused target tree data for Hob

 bitbake/lib/bb/cooker.py |   96 +++++++++++++++++++++++++++++++++++++---------
 1 files changed, 77 insertions(+), 19 deletions(-)


