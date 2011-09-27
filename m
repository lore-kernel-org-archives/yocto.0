Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41AACE00507
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 20:58:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Sep 2011 20:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="56185292"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by orsmga001.jf.intel.com with ESMTP; 26 Sep 2011 20:58:54 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 26 Sep 2011 22:57:42 -0500
Message-Id: <cover.1317095647.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: emgd updates
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
X-List-Received-Date: Tue, 27 Sep 2011 03:58:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This small patchset fixes a typo and some QA warnings in
emgd-driver-bin_1.8.

It also removes obsolete emgd-1.6 support.

The following changes since commit d286d43b6552dc2abffe7888d726d8b08f77b96c:
  Tom Zanussi (1):
        meta-intel: update SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.8-fixes
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-1.8-fixes

Tom Zanussi (2):
  meta-intel: fix symlink typo and QA checks in emgd-driver-bin
  meta-crownbay: remove emgd-1.6

 .../xorg-xserver/emgd-driver-bin_1.8.bb            |    8 ++++--
 .../xorg-xserver/emgd-driver-bin_1.6.bb            |   25 --------------------
 2 files changed, 5 insertions(+), 28 deletions(-)
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb


