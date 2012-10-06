Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99440E0045E
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 08:16:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Oct 2012 08:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,543,1344236400"; d="scan'208";a="231426305"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2012 08:16:50 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.112.10])
	by linux.intel.com (Postfix) with ESMTP id 95B982C8001
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 08:16:50 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Oct 2012 18:16:32 +0300
Message-Id: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.12
Subject: [PATCH 0/1] meta-tlk: fix included file name
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
X-List-Received-Date: Sat, 06 Oct 2012 15:16:55 -0000

PN in linux-yocto-tlk.inc takes the .inc file name and becomes
linux-yocto-tlk. Renamed to linux-yocto_tlk.inc to avoid confusions.
Related to: [YOCTO #3217]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
The following changes since commit 7228f6b0c81817c8a8455ea78271abfd5d66fed8:

  meta-tlk: fix ignored SRC_URI appends (2012-10-05 14:47:55 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mihai/bug3217
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mihai/bug3217

Mihai Lindner (1):
  meta-tlk: fix included file name

 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend                  | 2 +-
 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend                  | 2 +-
 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend                  | 2 +-
 .../recipes-kernel/linux/{linux-yocto-tlk.inc => linux-yocto_tlk.inc}   | 0
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename meta-tlk/recipes-kernel/linux/{linux-yocto-tlk.inc => linux-yocto_tlk.inc} (100%)

-- 
1.7.12


