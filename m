Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06682E0049D
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 12:27:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Sep 2012 12:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,424,1344236400"; d="scan'208";a="192886755"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by azsmga001.ch.intel.com with ESMTP; 14 Sep 2012 12:27:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, nitin.a.kamble@intel.com,
	rahul.saxena@intel.com, kishore.k.bodke@intel.com
Date: Fri, 14 Sep 2012 14:27:41 -0500
Message-Id: <cover.1347650435.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] meta-intel: BSP updates for gst-ffmpeg LICENSE_FLAGS change
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
X-List-Received-Date: Fri, 14 Sep 2012 19:27:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset updates the BSPs that enable video acceleration to
make them able to handle the new LICENSE_FLAGS change to gst-ffmpeg.

There's no change to functionality if you add "commercial" to
LICENSE_FLAGS_WHITELIST when building; if that's not done you'll
simply get an image without video acceleration.

The following changes since commit 8f9963b46f0923b6efd076e365f17b4a3de065e1:

  meta-crystalforest: Add Maintainer. (2012-09-11 13:55:10 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/va-license-flags-commercial
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/va-license-flags-commercial

Tom Zanussi (1):
  meta-intel: make video acceleration choice dependent on LICENSE_FLAGS

 meta-chiefriver/README                       | 15 +++++++++++++++
 meta-chiefriver/conf/machine/chiefriver.conf |  3 ++-
 meta-crownbay/README                         | 15 +++++++++++++++
 meta-crownbay/conf/machine/crownbay.conf     |  3 ++-
 meta-fri2/README                             | 15 +++++++++++++++
 meta-fri2/conf/machine/fri2.conf             |  3 ++-
 meta-sugarbay/README                         | 15 +++++++++++++++
 meta-sugarbay/conf/machine/sugarbay.conf     |  3 ++-
 meta-sys940x/README                          | 15 +++++++++++++++
 meta-sys940x/conf/machine/sys940x.conf       |  3 ++-
 10 files changed, 85 insertions(+), 5 deletions(-)

-- 
1.7.11.4


