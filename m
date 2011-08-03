Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AECDF4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 15:57:29 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Aug 2011 13:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,312,1309762800"; d="scan'208";a="34046566"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by orsmga002.jf.intel.com with ESMTP; 03 Aug 2011 13:57:19 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 15:57:08 -0500
Message-Id: <cover.1312404638.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: emenlow updates
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
X-List-Received-Date: Wed, 03 Aug 2011 20:57:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A couple updates for meta-emenlow dealing with the new tune file
and live image changes.

Boot tested successfully with the emenlow live sato image.

The following changes since commit 567c3b6436b4cb9551c23845c15ab544542b5083:
  Tom Zanussi (1):
        meta-crownbay: remove obsolete dir

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emenlow-tunelive-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emenlow-tunelive-updates

Tom Zanussi (2):
  meta-emenlow: remove tune-related assignments from machine conf
  meta-emenlow: add live fstype

 meta-emenlow/conf/machine/emenlow.conf |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)


