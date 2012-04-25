Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF46E01363
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 07:11:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Apr 2012 07:11:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="92971152"
Received: from unknown (HELO localhost) ([10.255.12.155])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Apr 2012 07:11:19 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 25 Apr 2012 09:11:24 -0500
Message-Id: <cover.1335362402.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][3.2 KERNEL] standard/default/emenlow update
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
X-List-Received-Date: Wed, 25 Apr 2012 14:11:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes [YOCTO #1669].  Please pull into linux-yocto-3.2.

The following changes since commit 86d05af47be45c786c1823a76b6854fa8b411bec:
  Bruce Ashfield (1):
        Merge branch 'yocto/standard/base' into standard/default/emenlow

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/drm-lock-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/commit/?h=tzanussi/drm-lock-fix

Tom Zanussi (1):
  bsp/emenlow: give up drm_global_mutex on contention in drm_lock()

 drivers/gpu/drm-psb/drm_lock.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)


