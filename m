Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A0B5E01346
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 16:21:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Oct 2012 16:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="240020331"
Received: from unknown (HELO localhost) ([10.255.14.158])
	by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2012 16:11:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, nitin.a.kamble@intel.com,
	kishore.k.bodke@intel.com, rahul.saxena@intel.com
Date: Mon, 29 Oct 2012 18:11:51 -0500
Message-Id: <cover.1351551995.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/2] Some meta-intel cleanup for 1.3
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
X-List-Received-Date: Mon, 29 Oct 2012 23:21:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset updates the kernel SRCREVs and adds KERNEL_VERSION for all
the meta-intel BSPs.

It also removes the remaining linux-yocto-3.0 bbappends.

The following changes since commit 20c289289ef1fa84bbef323c77d2c39e9e8a9882:

  romley: add WEBTITLE & Compliance information (2012-10-29 14:59:37 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/1.3-kernel-srcrevs
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/1.3-kernel-srcrevs

Tom Zanussi (2):
  meta-intel: update kernel SRCREVs and pin LINUX_VERSION
  meta-intel: remove linux-yocto*_3.0 bbappends

 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  2 ++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       | 10 ++++++----
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend       | 10 ++++++----
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend       | 10 ++++++----
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  9 ---------
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 11 -----------
 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend | 11 -----------
 meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend | 10 ++++++----
 meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend |  2 ++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  2 ++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 10 ----------
 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend | 10 ----------
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 14 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       | 17 -----------------
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend       | 10 ++++++----
 27 files changed, 64 insertions(+), 156 deletions(-)
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.11.4


