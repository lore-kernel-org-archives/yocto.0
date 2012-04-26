Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F27CE00596
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 11:48:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Apr 2012 11:48:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93544525"
Received: from unknown (HELO localhost) ([10.255.12.155])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Apr 2012 11:48:25 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 26 Apr 2012 13:48:36 -0500
Message-Id: <cover.1335447006.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][KERNEL 3.2] fix emenlow i2c_transfer error
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
X-List-Received-Date: Thu, 26 Apr 2012 18:48:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes [YOCTO #310].

Please pull into linux-yocto-3.2.

Thanks,

Tom

The following changes since commit 3ab8e8d9f0e9c2c44b6dbf8df84c0c2b03c4167c:
  Tom Zanussi (1):
        bsp/emenlow: give up drm_global_mutex on contention in drm_lock()

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/emenlow-i2c-transfer-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emenlow-i2c-transfer-fix

Tom Zanussi (1):
  bsp/emenlow: initialize lvds backlight only if lvds enabled

 drivers/gpu/drm-psb/intel_lvds.c |   51 ++++++++++++++++++++-----------------
 1 files changed, 28 insertions(+), 23 deletions(-)


