Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD031E01200
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 11:36:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Aug 2011 11:36:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43410085"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.14.203])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 11:36:10 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 11:36:06 -0700
Message-Id: <cover.1314124511.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] Fix for lttng-ust not compiling on beagleboard
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
X-List-Received-Date: Tue, 23 Aug 2011 18:36:10 -0000

Thanks to Darren for helping with this one.

Sau!


The following changes since commit b2266beeb357bae938830f559845f5f3deb4f916:

  usermanual: The git fetcher defaults to the git protocol (or file) (2011-08-23 10:00:35 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/fix
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/fix

Saul Wold (1):
  beagleboard.conf: set DEFAULT_TUNE to cortexa8

 meta-yocto/conf/machine/beagleboard.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

-- 
1.7.6


