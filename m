Return-Path: <shane.wang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D35DFE004D2
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 01:55:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2012 01:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="124402559"
Received: from yocto-build5.sh.intel.com (HELO localhost) ([10.239.48.3])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2012 01:55:36 -0700
From: Shane Wang <shane.wang@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Apr 2012 17:23:13 +0800
Message-Id: <cover.1333358047.git.shane.wang@intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1][Resend] meta-yocto fix
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
X-List-Received-Date: Mon, 02 Apr 2012 08:55:37 -0000

The patch is to change local.conf to allow Hob change BB threads and pmake. Please review.
In the current local.conf, BB_NUMBER_THREADS and PARALLEL_MAKE are assigned
by '=', which overwrites the values set from the Hob. To avoid that, use '?='
instead.

The following changes since commit 8691a588267472eb5a32b978a0eb9ddfd0c91733:

  cross-canadian.bbclass: fix rpath for sdk executables (2012-03-31 18:00:59 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib shane/meta-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=shane/meta-yocto

Shane Wang (1):
  meta-yocto/local.conf.sample: change = to ?= for BB_NUMBER_THREADS
    and PARALLEL_MAKE

 meta-yocto/conf/local.conf.sample |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.6


