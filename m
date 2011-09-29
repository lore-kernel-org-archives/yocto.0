Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B4BDE00502
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 12:53:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Sep 2011 12:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="57307898"
Received: from unknown (HELO localhost) ([10.255.14.216])
	by orsmga001.jf.intel.com with ESMTP; 29 Sep 2011 12:53:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 14:53:42 -0500
Message-Id: <cover.1317325799.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] emenlow: do_roofs fix
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
X-List-Received-Date: Thu, 29 Sep 2011 19:53:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch fixes a do_rootfs failure I saw building emenlow:

| error: Failed dependencies:
|        pkgconfig is needed by xpsb-glx-0.18-r8.core2

It should be pulled into both edison and master.

The following changes since commit 6041dcd0e6dee843437c23a0e76b5e9b12008314:
  Tom Zanussi (1):
        meta-crownbay: remove emgd-1.6

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/xpsb-glx-rootfs-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xpsb-glx-rootfs-fix

Tom Zanussi (1):
  xpsb-glx: Move the pkgconfig file(s) to the -dev package

 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)


