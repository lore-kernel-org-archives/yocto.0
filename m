Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B5BE0054C
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2011 15:54:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2011 15:54:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="82812397"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2011 15:54:37 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  2 Dec 2011 17:54:45 -0600
Message-Id: <cover.1322867339.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: fix gst-meta-base problem
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
X-List-Received-Date: Fri, 02 Dec 2011 23:54:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This reverts a build problem introduced by the gst-meta-base append
that added the gstreamer components for testing.

The following changes since commit c882e7c2c6e6035471c8839ef4624b57720236d1:
  Tom Zanussi (1):
        meta-intel: add libva to EGMD xserver

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git master
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/gst-meta-base-revert

Tom Zanussi (1):
  Revert "meta-intel: add gst-meta-base .bbappend"

 .../gstreamer/gst-meta-base_0.10.bbappend          |    9 ---------
 1 files changed, 0 insertions(+), 9 deletions(-)
 delete mode 100644 common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend


