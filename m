Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F806E0140C
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 11:40:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2011 11:40:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="69019023"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by orsmga001.jf.intel.com with ESMTP; 28 Oct 2011 11:40:23 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 13:40:12 -0500
Message-Id: <cover.1319826880.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] meta-intel: linux-yocto-rt fixes for crownbay and fri2
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
X-List-Received-Date: Fri, 28 Oct 2011 18:40:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Trying to build rt images for crownbay and fri2, I ran in to a few build
problems - this patchset fixes them up.

The following changes since commit 478969defe862a2779bf7eb3bca30e2067827d7e:
  Kishore Bodke (1):
        New Romley BSP created. Uses Matrox MGA graphics driver.

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/rt-fixes
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/rt-fixes

Tom Zanussi (3):
  meta-crownbay: add linux-yocto-rt_3.0.bbappend
  meta-fri2: allow linux-yocto-rt to be used for fri2-noemgd
  meta-crownbay: allow linux-yocto-rt to be used for crownbay

 .../linux/linux-yocto-rt_3.0.bbappend              |   20 ++++++++++++++++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
 2 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend


