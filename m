Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A7A0E013D4
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 20:42:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2012 20:42:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="163973262"
Received: from unknown (HELO localhost) ([10.255.12.138])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2012 20:42:38 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Sun, 10 Jun 2012 22:42:24 -0500
Message-Id: <cover.1339385977.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] meta-intel: remove linux-yocto-2.6.37
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
X-List-Received-Date: Mon, 11 Jun 2012 03:42:39 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove 2.6.37 .bbappends to match recent oe-core linux-yocto-2.6.37 removal.

The following changes since commit a2c22fb791eb70b230a5f8169d3580f4f3a4f967:
  Kishore Bodke (1):
        meta-cedartrail: update SRCREV

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/rm-linux-yocto--2.6.37
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/rm-linux-yocto--2.6.37

Tom Zanussi (6):
  meta-sugarbay: remove linux-yocto-2.6.37 .bbappend
  meta-crownbay: remove linux-yocto-2.6.37 .bbappend
  meta-emenlow: remove linux-yocto-2.6.37 .bbappend
  meta-fishriver: remove linux-yocto-2.6.37 .bbappend
  meta-jasperforest: remove linux-yocto-2.6.37 .bbappend
  meta-n450: remove linux-yocto-2.6.37 .bbappend

 .../linux/linux-yocto_2.6.37.bbappend              |   15 ---------------
 .../linux/linux-yocto_2.6.37.bbappend              |    6 ------
 .../linux/linux-yocto_2.6.37.bbappend              |    6 ------
 .../linux/linux-yocto_2.6.37.bbappend              |    8 --------
 .../linux/linux-yocto_2.6.37.bbappend              |   10 ----------
 .../linux/linux-yocto_2.6.37.bbappend              |    7 -------
 6 files changed, 0 insertions(+), 52 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend


