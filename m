Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2B5BE013EC
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:38:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 May 2012 14:38:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="141600650"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by orsmga002.jf.intel.com with ESMTP; 08 May 2012 14:38:58 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  8 May 2012 16:39:03 -0500
Message-Id: <cover.1336510378.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] meta-intel updates
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
X-List-Received-Date: Tue, 08 May 2012 21:38:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

More updates for meta-intel 1.2

The following changes since commit 749a127f0b813d314c3515fc14dc144d0d44fcfb:
  Darren Hart (1):
        fri2: Update SRCREVs for 3.2 Kernel

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/1.2-updates-2
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/1.2-updates-2

Tom Zanussi (3):
  meta-crownbay: remove smp options from recipe-space
  meta-emenlow: remove smp options from recipe-space
  meta-fishriver: remove smp options from recipe-space

 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 --
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    1 -
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    1 -
 3 files changed, 0 insertions(+), 4 deletions(-)


