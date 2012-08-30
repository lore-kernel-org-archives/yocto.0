Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F40F8E003C8
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 14:38:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Aug 2012 14:38:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,342,1344236400"; d="scan'208";a="193708032"
Received: from unknown (HELO localhost) ([10.255.13.3])
	by orsmga002.jf.intel.com with ESMTP; 30 Aug 2012 14:38:08 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 30 Aug 2012 16:37:58 -0500
Message-Id: <cover.1346362316.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2] meta-intel: refactor VAAPI_IMPL
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
X-List-Received-Date: Thu, 30 Aug 2012 21:38:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The current code assumes intel va as the default fallthrough, which it
shouldn't be - the current shortcoming came up when adding pvr va for
cedatrail.

This patchset fixes things up to make it more extensible, and usable by
cedartrail.

The following changes since commit 1ef6cd26cabe46d9ceaa0d257bf7d690a0592e7c:

  meta-emenlow: unset preferred providers for virtual/libgles[12] (2012-08-30 09:48:18 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel.git tzanussi/va-impl-changes
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/va-impl-changes

Tom Zanussi (2):
  meta-intel: add va-impl-intel MACHINE_FEATURE
  meta-intel: use va-impl-intel MACHINE_FEATURE

 .../recipes-multimedia/gstreamer/gst-va-intel.bb   |   16 +++++++++++++---
 common/recipes-multimedia/libva/va-intel.bb        |   16 ++++++++++++----
 meta-chiefriver/conf/machine/chiefriver.conf       |    1 +
 meta-crownbay/conf/machine/crownbay.conf           |    2 +-
 meta-fri2/conf/machine/fri2.conf                   |    2 +-
 meta-sugarbay/conf/machine/sugarbay.conf           |    2 ++
 6 files changed, 30 insertions(+), 9 deletions(-)

-- 
1.7.4.1


