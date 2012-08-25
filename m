Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C250CE0027F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 21:36:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Aug 2012 21:36:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,309,1344236400"; d="scan'208";a="184741005"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by azsmga001.ch.intel.com with ESMTP; 24 Aug 2012 21:36:56 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2012 23:36:35 -0500
Message-Id: <cover.1345868069.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/4] remove ia32-base.inc and fix crownbay branch
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
X-List-Received-Date: Sat, 25 Aug 2012 04:36:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This removes ia32-base to meta/conf/machine/include and separates out
the remaining meta-intel-specific variables into a meta-intel.inc.

Merging this depends on the move to oe-core being accepted.  For details see:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=2996

Also fixes a problem with the crownbay branch that appeared while test
building following the latest yocto-kernel class changes.

The following changes since commit c9e0d1edb1c7e1d2fa328fb1fb820b627ba02119:

  ia32-base.inc: Drop glibc --with-tls option, its now the only option for glibc (2012-08-22 14:16:59 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/ia32-base-rm.v1
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/ia32-base-rm.v1

Tom Zanussi (4):
  meta-intel.inc: new file
  ia32-base.inc: remove
  meta-intel.inc: have appropriate BSPs use it
  crownbay: fix KBRANCH

 conf/machine/include/ia32-base.inc                 | 65 ----------------------
 conf/machine/include/meta-intel.inc                | 16 ++++++
 meta-crownbay/conf/machine/crownbay.conf           |  1 +
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |  2 +-
 meta-fri2/conf/machine/fri2.conf                   |  1 +
 meta-romley/conf/machine/romley.conf               |  1 +
 meta-sys940x/conf/machine/sys940x.conf             |  1 +
 7 files changed, 21 insertions(+), 66 deletions(-)
 delete mode 100644 conf/machine/include/ia32-base.inc
 create mode 100644 conf/machine/include/meta-intel.inc

-- 
1.7.11.4


