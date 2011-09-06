Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE0DE0071A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 10:34:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Sep 2011 10:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="45739557"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by orsmga001.jf.intel.com with ESMTP; 06 Sep 2011 10:34:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Sep 2011 10:34:54 -0700
Message-Id: <cover.1315330406.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2] meta-intel: n450 SRCREV and PREFERRED_VERSION to 3.0.4
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
X-List-Received-Date: Tue, 06 Sep 2011 17:35:00 -0000

The following changes since commit b4ae4edff5f164b21a28572492b0e306e0c9537b:

  meta-intel: update SRCREVs (2011-09-06 08:26:12 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib dvhart/n450
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/n450

Darren Hart (2):
  n450: update linux-yocto SRCREV to 3.0.4
  n450: update linux-yocto PREFERRED_VERSION to 3.0%

 meta-n450/conf/machine/n450.conf                   |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.6


