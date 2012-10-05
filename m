Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6931CE0049B
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 04:20:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Oct 2012 04:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="220854016"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 05 Oct 2012 04:20:21 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.112.10])
	by linux.intel.com (Postfix) with ESMTP id 18CE32C8001
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 04:20:21 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Oct 2012 14:20:01 +0300
Message-Id: <cover.1349435514.git.mihaix.lindner@linux.intel.com>
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
X-List-Received-Date: Fri, 05 Oct 2012 11:20:22 -0000

Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
SRC_URI_append instead of SRC_URI.
Also placed all variables in an .inc file to be required by all
linux-yocto recipes in here, since all versions use the same.

[YOCTO #3217]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
The following changes since commit 6eea475e2038c1de3fbbd5bcd0986862ff85bb9a:

  meta-crownbay: remove 3.0 kernel support (2012-10-04 20:20:52 -0500)

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


