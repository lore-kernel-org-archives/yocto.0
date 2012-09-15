Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A35ABE011BD
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 13:17:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Sep 2012 13:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,428,1344236400"; d="scan'208";a="222555580"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2012 13:17:06 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 15 Sep 2012 15:17:04 -0500
Message-Id: <cover.1347739624.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/4] meta-intel: BSP updates for gst-ffmpeg LICENSE_FLAGS change, v2
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
X-List-Received-Date: Sat, 15 Sep 2012 20:17:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset updates the BSPs that enable video acceleration to
make them able to handle the new LICENSE_FLAGS change to gst-ffmpeg.

There's no change to functionality if you add "commercial" to
LICENSE_FLAGS_WHITELIST when building; if that's not done you'll
simply get an image without video acceleration.

v2: while testing this change, I noticed that emgd-1.10 was missing
and that some BSPs still use it, and also took the opportunity to
fix a longstanding mistake in where the emgd recipes were located.
Finally, my attempts to make things build with the LICENSE_FLAGS
change by using RRECOMMENDS as suggested all met with failure, so
am keeping the method that works for now.

The following changes since commit 164e0c7418229a38d7c97cd6bb3117a89869f6a4:

  meta-cedartrail: Update PVR graphics driver to version 1.0.3 (2012-09-15 14:56:30 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/va-license-flags-commercial
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/va-license-flags-commercial

Tom Zanussi (4):
  meta-intel: make video acceleration choice dependent on LICENSE_FLAGS
  meta-intel: restore emgd 1.10
  meta-intel: have fri2 and sys940x prefer emgd-1.10
  meta-intel: move emgd-driver-bin_1.14 to xorg-driver/

 .../xorg-driver/emgd-driver-bin_1.10.bb            | 91 ++++++++++++++++++++++
 .../emgd-driver-bin_1.14.bb                        |  0
 meta-cedartrail/README                             | 15 ++++
 meta-cedartrail/conf/machine/cedartrail.conf       |  3 +-
 meta-chiefriver/README                             | 15 ++++
 meta-chiefriver/conf/machine/chiefriver.conf       |  3 +-
 meta-crownbay/README                               | 15 ++++
 meta-crownbay/conf/machine/crownbay.conf           |  3 +-
 meta-fri2/README                                   | 15 ++++
 meta-fri2/conf/machine/fri2.conf                   |  4 +-
 meta-sugarbay/README                               | 15 ++++
 meta-sugarbay/conf/machine/sugarbay.conf           |  3 +-
 meta-sys940x/README                                | 15 ++++
 meta-sys940x/conf/machine/sys940x.conf             |  4 +-
 14 files changed, 195 insertions(+), 6 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
 rename common/recipes-graphics/{xorg-xserver => xorg-driver}/emgd-driver-bin_1.14.bb (100%)

-- 
1.7.11.4


