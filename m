Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B645AE0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 22:39:16 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jan 2012 22:39:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="97324419"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.146])
	by orsmga002.jf.intel.com with ESMTP; 11 Jan 2012 22:39:15 -0800
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jan 2012 14:37:18 +0800
Message-Id: <cover.1326349703.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] Change default signature handler
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
X-List-Received-Date: Thu, 12 Jan 2012 06:39:16 -0000

Fixed bug #1555.

Changed the default handler to basic hash for poky distro. Also added some 
descriptive comment in local.conf.extended.

The following changes since commit 0f4d99d207b224bb9ce23de00a48f795ae20b3a0:
  Richard Purdie (1):
        multilib.conf: Clean up file and add missing entries for various dependencies

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib llu/bug1555
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug1555

Lianhao Lu (1):
  meta-yocto/conf: Change default signature handler.

 meta-yocto/conf/distro/poky.conf           |    2 ++
 meta-yocto/conf/local.conf.sample.extended |    6 +++++-
 2 files changed, 7 insertions(+), 1 deletions(-)


