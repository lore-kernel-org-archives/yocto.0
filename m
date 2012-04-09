Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0155AE01363
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 14:46:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 14:46:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="127010777"
Received: from unknown (HELO localhost) ([10.7.199.62])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 14:46:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Saul Wold <sgw@linux.intel.com>
Date: Mon,  9 Apr 2012 14:45:27 -0700
Message-Id: <cover.1334007883.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/1] syslinux: Update distro-tracking fields
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
X-List-Received-Date: Mon, 09 Apr 2012 21:46:21 -0000

The following changes since commit 190f6d791d51aaa4cfb9f1cf932bc205ff674fb5:

  runqemu-internal: Add console=tty for qemuppc and NFS (2012-04-06 01:12:47 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib dvhart/distro-tracking
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/distro-tracking

Darren Hart (1):
  syslinux: Update distro-tracking fields

 .../conf/distro/include/distro_tracking_fields.inc |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

-- 
1.7.6.5


