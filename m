Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 394AA4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 12:27:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Aug 2011 10:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,311,1309762800"; d="scan'208";a="34764295"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by azsmga001.ch.intel.com with ESMTP; 03 Aug 2011 10:27:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 12:27:32 -0500
Message-Id: <cover.1312391788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] meta-intel: crownbay updates
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
X-List-Received-Date: Wed, 03 Aug 2011 17:27:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A few updates for meta-crownbay dealing with the new tune file
and live image changes, and a minor cleanup item.

Both crownbay and crownbay-emgd live images boot tested successfully.

The following changes since commit e2fda0b69db2a93a32cea84a4ece7ba25c20b6c3:
  Tom Zanussi (1):
        meta-fri2: add 3g and wifi features

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/crownbay-tunelive-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-tunelive-updates

Tom Zanussi (3):
  meta-crownbay: remove tune-related assignments from machine conf
  meta-crownbay: add live fstype
  meta-crownbay: remove obsolete dir

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    4 +---
 meta-crownbay/conf/machine/crownbay.conf           |    4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore


