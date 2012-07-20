Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DD5E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 10:02:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jul 2012 10:02:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="169009516"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by orsmga001.jf.intel.com with ESMTP; 20 Jul 2012 10:02:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 20 Jul 2012 12:02:52 -0500
Message-Id: <cover.1342803443.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: emgd package reorder fix
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
X-List-Received-Date: Fri, 20 Jul 2012 17:02:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The recent package reorder changes broke emgd - this patch fixes
that and gets crownbay et al graphics working again.

The following changes since commit 41d385015243dc02f8eea96a3ec3198dae7d2d27:
  Khem Raj (1):
        va-intel.bb: Add compatible host x86/x86_64

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-package-reorder-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emgd-package-reorder-fix

Tom Zanussi (1):
  emgd-driver-bin: remove FILES_${PN}-dev addition

 .../xorg-xserver/emgd-driver-bin_1.10.bb           |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)


