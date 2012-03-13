Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F55E0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 12:17:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 12:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120667459"
Received: from unknown (HELO localhost) ([10.255.15.152])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 12:16:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 13 Mar 2012 12:16:08 -0700
Message-Id: <cover.1331666101.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] ddimage: Add script for writing images to boot media
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
X-List-Received-Date: Tue, 13 Mar 2012 19:17:08 -0000

The following changes since commit 19d4e0c98046d434a02653864215c4fcffabc919:

  linux-yocto/meta-yocto: v3.2.9, v3.0.23 + fixes and updates (2012-03-13 16:53:47 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/bug1806
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bug1806

Darren Hart (1):
  ddimage: Add script for writing images to boot media

 scripts/contrib/ddimage |   87 +++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 87 insertions(+), 0 deletions(-)
 create mode 100755 scripts/contrib/ddimage

-- 
1.7.6.5


