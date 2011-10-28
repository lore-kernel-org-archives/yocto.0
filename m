Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B029CE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 06:59:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Oct 2011 06:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,418,1315206000"; d="scan'208";a="83525798"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by fmsmga002.fm.intel.com with ESMTP; 28 Oct 2011 06:59:52 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 08:59:47 -0500
Message-Id: <cover.1319810084.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-romley: minor fixes
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
X-List-Received-Date: Fri, 28 Oct 2011 13:59:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

While reviewing the romley BSP, I noticed a couple of minor problems, which
this patchset fixes up.

The following changes since commit 478969defe862a2779bf7eb3bca30e2067827d7e:
  Kishore Bodke (1):
        New Romley BSP created. Uses Matrox MGA graphics driver.

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/romley-minor-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/romley-minor-updates

Tom Zanussi (2):
  meta-romley: Fix BSP description in romley.conf
  meta-romley: change references to sugarbay in
    linux-yocto-rt_3.0.bbappend

 meta-romley/conf/machine/romley.conf               |    2 +-
 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)


