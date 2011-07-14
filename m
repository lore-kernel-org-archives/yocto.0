Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFBDD4C80205
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 10:43:20 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2011 08:42:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="25862385"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 08:42:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 10:42:36 -0500
Message-Id: <cover.1310657858.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] emenlow glx bugfix
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
X-List-Received-Date: Thu, 14 Jul 2011 15:43:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is a fix for Yocto bug #1235.

The following changes since commit 92fc07a5f1b98779806cdcc2341487ff5ea5a238:
  Dexuan Cui (1):
        emenlow: fix some .bbappend files' name: poky -> core, etc.

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/bug-1235
  http://git.yoctoproject.org/cgit.cgi/meta-intel/log/?h=tzanussi/bug-1235

Tom Zanussi (1):
  meta-emenlow: fix glx bug

 .../libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb         |    6 +++++-
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    3 ++-
 2 files changed, 7 insertions(+), 2 deletions(-)


