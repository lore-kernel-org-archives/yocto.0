Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8944E0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 10:47:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Oct 2012 10:47:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="200630819"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 04 Oct 2012 10:47:30 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.112.10])
	by linux.intel.com (Postfix) with ESMTP id 07E732C8001
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 10:47:29 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 20:47:07 +0300
Message-Id: <cover.1349372542.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.12
Subject: [PATCH 0/1] meta-tlk: fix ignored SRC_URI appends
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
X-List-Received-Date: Thu, 04 Oct 2012 17:47:31 -0000

Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
SRC_URI_append instead of SRC_URI.
Also placed all variables in an .inc file to be required by all
linux-yocto recipes in here, since all versions use the same.

[YOCTO #3217]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---

The following changes since commit c4a86a2ad5df3a94b47e394090f67f7e324b1483:

  meta-crystalforest: Create a custom build Image recipe. (2012-10-03 23:56:13 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mihai/bug3217
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mihai/bug3217

Mihai Lindner (1):
  meta-tlk: fix ignored SRC_URI appends

 meta-tlk/recipes-kernel/linux/linux-yocto.inc          | 3 +++
 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend | 7 +------
 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend | 7 +------
 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend | 7 +------
 4 files changed, 6 insertions(+), 18 deletions(-)
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto.inc

-- 
1.7.12


