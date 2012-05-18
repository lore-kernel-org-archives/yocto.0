Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E78E01422
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 18:21:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2012 18:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154246756"
Received: from unknown (HELO localhost) ([10.255.13.71])
	by fmsmga001.fm.intel.com with ESMTP; 17 May 2012 18:21:35 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 17 May 2012 20:21:37 -0500
Message-Id: <cover.1337303882.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: fix ldflags QA error
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
X-List-Received-Date: Fri, 18 May 2012 01:21:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

ldflags recently became a QA error, causing emgd-driver-bin to fail with
errors like:

ERROR: QA Issue: No GNU_HASH in the elf binary: '/srv/yocto/poky/build/tmp/work/core2-poky-linux/emgd-driver-bin-1.10-r0/packages-split/emgd-driver-bin/usr/lib/libmixcommon.so.0.1.9'

This fixes emgd as far as the error goes.

Fixes [YOCTO #2469]

The following changes since commit cfb938bc873fb6ea48b1c50674acc330be8f2d29:
  Tom Zanussi (1):
        meta-intel: update some kernel SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-ldflags-skip
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emgd-ldflags-skip

Tom Zanussi (1):
  emgd-driver-bin: skip insane ldflags check

 .../xorg-xserver/emgd-driver-bin_1.10.bb           |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


