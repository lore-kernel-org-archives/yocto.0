Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37028E01374
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:45:19 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Mar 2012 11:45:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="73842312"
Received: from unknown (HELO localhost) ([10.255.15.97])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Mar 2012 11:45:18 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2012 13:45:16 -0600
Message-Id: <cover.1330975070.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/5] meta-intel: update emenlow checksums
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
X-List-Received-Date: Mon, 05 Mar 2012 19:45:19 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Several recipes need checksums, add them.

The following changes since commit df18b721f86f0737c0f302e49b27ea232c70e683:

  meta-intel: add LAYERDEPENDS for layers needing the meta-intel common layer (2012-02-24 14:52:01 -0600)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel.git tzanussi/emenlow-checksums
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emenlow-checksums

Tom Zanussi (5):
  meta-emenlow: add SRC_URI checksums to xpsb-glx
  meta-emenlow: add SRC_URI checksums to xserver-psb
  meta-emenlow: add SRC_URI checksums to xserver-xorg-video-psb
  meta-emenlow: add SRC_URI checksums to psb-firmware
  meta-emenlow: add SRC_URI checksums to libva

 .../recipes-graphics/libva/libva_0.31.0.bb         |    3 +++
 .../psb-firmware/psb-firmware_0.30.bb              |    3 +++
 .../xorg-xserver/xserver-psb_1.7.99.2.bb           |    3 +++
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    3 +++
 .../xserver-xorg-video-psb_0.32.1.bb               |    3 +++
 5 files changed, 15 insertions(+), 0 deletions(-)


