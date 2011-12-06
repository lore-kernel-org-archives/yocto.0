Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7206E00744
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2011 20:53:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Dec 2011 20:53:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="83857081"
Received: from unknown (HELO localhost) ([10.255.12.237])
	by orsmga002.jf.intel.com with ESMTP; 05 Dec 2011 20:53:58 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Dec 2011 22:53:54 -0600
Message-Id: <cover.1323136479.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: add extra gst plugins for video acceleration
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
X-List-Received-Date: Tue, 06 Dec 2011 04:54:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds a recipe to install some additional gst plugins needed
for playing and testing mp4 videos and has crownbay use it.

The following changes since commit 4a03808a715749bd50b2cf1d09b145c4a249bda4:
  Tom Zanussi (1):
        Revert "meta-intel: add gst-meta-base .bbappend"

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/gst-va
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/gst-va

Tom Zanussi (2):
  meta-intel: new package - gst-va-intel
  meta-crownbay: use gst-va-intel

 .../recipes-multimedia/gstreamer/gst-va-intel.bb   |   28 ++++++++++++++++++++
 meta-crownbay/conf/machine/crownbay.conf           |    2 +
 2 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-va-intel.bb


