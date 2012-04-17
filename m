Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91FFFE0044D
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:29:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Apr 2012 20:29:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131727785"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by azsmga001.ch.intel.com with ESMTP; 16 Apr 2012 20:29:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 22:29:50 -0500
Message-Id: <cover.1334633179.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] kernel26 cleanup
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
X-List-Received-Date: Tue, 17 Apr 2012 03:29:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This (post-1.2) patchset removes the last vestiges of kernel26 from poky.

The following changes since commit c936fca6e163bc19bc08cbd0036b31ca6f6c3ed6:
  Richard Purdie (1):
        bitbake.conf: Add PARALLEL_MAKE to BB_HASHBASE_WHITELIST

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/kernel26-removal
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/kernel26-removal

Tom Zanussi (3):
  yocto-bsp: remove kernel26 machine feature from templates
  meta-yocto: remove kernel26 machine feature usage
  dev-manual: remove kernel26 machine feature mention

 .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
 meta-yocto/conf/machine/atom-pc.conf               |    3 +--
 meta-yocto/conf/machine/beagleboard.conf           |    2 +-
 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 +-
 meta-yocto/conf/machine/routerstationpro.conf      |    3 +--
 .../target/arch/arm/conf/machine/{{=machine}}.conf |    2 +-
 .../arch/mips/conf/machine/{{=machine}}.conf       |    3 +--
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |    2 +-
 8 files changed, 8 insertions(+), 11 deletions(-)


