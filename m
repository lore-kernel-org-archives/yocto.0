Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8EBE0044D
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 12:11:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Apr 2012 12:11:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138391952"
Received: from unknown (HELO localhost) ([10.255.12.127])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2012 12:11:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 30 Apr 2012 14:12:12 -0500
Message-Id: <cover.1335812928.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] A couple yocto-bsp fixes, v3
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
X-List-Received-Date: Mon, 30 Apr 2012 19:11:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes for a couple yocto-bsp bugs.

v2: fixed up the yocto-bsp help text as suggested by Darren Hart.
v3: fixed more of the yocto-bsp help text as suggested by William Mills.

The following changes since commit f39ba520d6f2477c99839a92049b1bb279f092cf:
  Richard Purdie (1):
        qt-4.8.1: Fix compile failures on qemux86

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-fixes-2219-2330
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-fixes-2219-2330

Tom Zanussi (2):
  yocto-kernel: use BUILDDIR to find bblayers.conf
  yocto-bsp: clarify help with reference to meta-intel

 scripts/lib/bsp/help.py   |   48 +++++++++++++++++++++++++++++++++++++++++---
 scripts/lib/bsp/kernel.py |    7 +++++-
 2 files changed, 50 insertions(+), 5 deletions(-)


