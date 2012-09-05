Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 034E2E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 09:56:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 09:56:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,375,1344236400"; d="scan'208";a="218161437"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.76])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 09:56:06 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 09:56:02 -0700
Message-Id: <cover.1346864117.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 0/3 v3] Meta-tlk update
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
X-List-Received-Date: Wed, 05 Sep 2012 16:56:21 -0000

The following changes since commit 16a7879b98352b70e8c17181912a26212d716c87:

  meta-emenlow: rename recipes-gnome bbappends (2012-09-04 10:04:37 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/meta-tlk
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/meta-tlk

Saul Wold (3):
  linux-yocto: Update linux-yocto for 3.2 and 3.4
  base-files: add /etc/motd with TLK info
  psplash: Add TLK info to psplash image

 .../base-files/base-files_3.0.14.bbappend          |    3 +++
 meta-tlk/recipes-core/base-files/files/motd        |    7 +++++++
 .../recipes-core/psplash/files/psplash-tlk.png     |  Bin 0 -> 42295 bytes
 meta-tlk/recipes-core/psplash/psplash_git.bbappend |   10 ++++++++++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
 7 files changed, 34 insertions(+), 0 deletions(-)
 create mode 100644 meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
 create mode 100644 meta-tlk/recipes-core/base-files/files/motd
 create mode 100644 meta-tlk/recipes-core/psplash/files/psplash-tlk.png
 create mode 100644 meta-tlk/recipes-core/psplash/psplash_git.bbappend
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.7.6


