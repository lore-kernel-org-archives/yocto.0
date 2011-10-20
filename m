Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D87D6E01341
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 14:29:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Oct 2011 14:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,381,1315206000"; d="scan'208";a="64706265"
Received: from unknown (HELO localhost) ([10.255.15.126])
	by azsmga001.ch.intel.com with ESMTP; 20 Oct 2011 14:29:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 20 Oct 2011 16:29:12 -0500
Message-Id: <cover.1319145936.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: jasperforest xorg fix
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
X-List-Received-Date: Thu, 20 Oct 2011 21:29:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This small patch gets jasperforest sato images working again.

The following changes since commit 42fcbb128c5fe812068bb86934ab31ac92fd9f83:
  Tom Zanussi (1):
        fri2-noemgd: set boot vga mode

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/jasperforest-dga
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/jasperforest-dga

Tom Zanussi (1):
  meta-jasperforest: add xserver-xorg bbappend

 .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend


