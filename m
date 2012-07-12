Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF3DBE00346
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 17:22:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Jul 2012 17:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121370474"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Jul 2012 17:22:01 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 19:21:59 -0500
Message-Id: <cover.1342052377.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: linux-firmware license update
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
X-List-Received-Date: Thu, 12 Jul 2012 00:22:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates the license checksum used in the recipe, which
trivially changed, but caused build failures for fri2 and fri2-noemgd.

The following changes since commit bf067c332c65ef6e8200e0c0b1d0226dc8300c85:
  Richard Purdie (1):
        meta-sys940x: Catch up with netbase 4.47 -> 5.0 upgrade

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/linux-firmware-lic-chksum-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/linux-firmware-lic-chksum-fix

Tom Zanussi (1):
  linux-firmware: update md5sum for LICENCE.iwlwifi_firmware

 .../linux-firmware/linux-firmware_git.bbappend     |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


