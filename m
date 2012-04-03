Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0394E0070C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 07:31:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2012 07:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137095840"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.14])
	by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2012 07:31:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 15:31:10 +0100
Message-Id: <cover.1333463421.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [meta-qt3] [PATCH 0/1] Qt3 rebuild fix
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
X-List-Received-Date: Tue, 03 Apr 2012 14:31:19 -0000

The following change since commit a1c72ecf80c0ded21709aa667c41d65399e4439f:

  qt-x11-free: fix QA errors (2012-03-14 17:35:09 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/qt3-fix
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-fix

Paul Eggleton (1):
  qt-x11-free: fix build failure in do_configure

 recipes-qt3/qt3/qt-x11-free-common.inc |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

-- 
1.7.5.4


