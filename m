Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6A7AE00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 17:59:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2012 17:59:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,530,1344236400"; d="scan'208";a="200293600"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2012 17:59:01 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2012 19:58:59 -0500
Message-Id: <cover.1349312169.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/3] meta-intel: crownbay cleanups
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
X-List-Received-Date: Thu, 04 Oct 2012 00:59:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset removes 3.0 kernel support and adds 3.4-rt for crownbay.

The following changes since commit 2c1e927fa99abe47865a03cf661d4757ff3147c6:

  gst-va-intel: incude gst-ffmpeg only if 'commercial' is whitelisted (2012-10-02 22:56:20 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/crownbay-1.3-cleanups
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/crownbay-1.3-cleanups

Tom Zanussi (3):
  meta-crownbay: add 3.4 rt support
  meta-crownbay: remove -rt smp options from recipe-space
  meta-crownbay: remove 3.0 kernel support

 .../recipes-kernel/linux/linux-yocto-rt_3.2.bbappend    |  4 ----
 ...octo-rt_3.0.bbappend => linux-yocto-rt_3.4.bbappend} |  8 ++------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       | 17 -----------------
 3 files changed, 2 insertions(+), 27 deletions(-)
 rename meta-crownbay/recipes-kernel/linux/{linux-yocto-rt_3.0.bbappend => linux-yocto-rt_3.4.bbappend} (69%)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.11.4


