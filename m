Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B929E4C805AF
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2011 15:56:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Jul 2011 13:56:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,264,1309762800"; d="scan'208";a="31805275"
Received: from unknown (HELO localhost) ([10.255.14.130])
	by orsmga001.jf.intel.com with ESMTP; 25 Jul 2011 13:56:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 25 Jul 2011 15:56:27 -0500
Message-Id: <cover.1311626316.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] switch meta-jasperforest to 3.0 kernel
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
X-List-Received-Date: Mon, 25 Jul 2011 20:56:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Built and booted into sato - basic testing shows everything
works as expected.

The following changes since commit 96c247dad88b9fc0159b2a929216876d9fbb06dc:
  Tom Zanussi (1):
        meta-emenlow: fix glx bug

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/jasperforest-linux-3.0-switchover
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/jasperforest-linux-3.0-switchover

Tom Zanussi (1):
  meta-jasperforeset: switch to linux-yocto 3.0 kernel

 meta-jasperforest/conf/machine/jasperforest.conf   |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++++++
 2 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend


