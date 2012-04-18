Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29028E013E8
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 14:26:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2012 14:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="155304907"
Received: from unknown (HELO localhost) ([10.255.12.196])
	by fmsmga002.fm.intel.com with ESMTP; 18 Apr 2012 14:26:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 18 Apr 2012 16:26:40 -0500
Message-Id: <cover.1334784305.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] A couple yocto-bsp fixes
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
X-List-Received-Date: Wed, 18 Apr 2012 21:26:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes for a couple yocto-bsp bugs.

The following changes since commit 1a03b7dfba464fde770ba69b618427d13e0a3b8b:
  Scott Rifenbark (1):
        documentation/bsp-guide/bsp.xml: spelling corrected.

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-fixes-2219-2330
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/yocto-bsp-fixes-2219-2330

Tom Zanussi (2):
  yocto-kernel: use BUILDDIR to find bblayers.conf
  yocto-bsp: clarify help with reference to meta-intel

 scripts/lib/bsp/help.py   |   40 ++++++++++++++++++++++++++++++++++++++++
 scripts/lib/bsp/kernel.py |    7 ++++++-
 2 files changed, 46 insertions(+), 1 deletions(-)


