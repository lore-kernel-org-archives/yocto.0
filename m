Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9E8BE01400
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 16:44:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Sep 2012 16:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,509,1344236400"; d="scan'208";a="199768695"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by orsmga001.jf.intel.com with ESMTP; 29 Sep 2012 16:44:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com
Date: Sat, 29 Sep 2012 18:44:39 -0500
Message-Id: <cover.1348958906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] meta-intel: fix for xserver-xorg-config bbappend FILESPATH
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
X-List-Received-Date: Sat, 29 Sep 2012 23:44:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes Yocto bug Bug 3158 [xserver-xorg-config_0.1.bbappend
bsp FILESPATH not set in a robust manner].

  meta-cedartrail: add machine override to SRC_URI (2012-09-27 11:58:25 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/meta-intel-filesextrapaths
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/meta-intel-filesextrapaths

Tom Zanussi (1):
  meta-intel: use FILESEXTRAPATHS for xserver-xf86-config bbappends

 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 12 files changed, 12 insertions(+), 34 deletions(-)

-- 
1.7.11.4


