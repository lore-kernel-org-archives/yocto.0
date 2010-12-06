Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBDC54C80FB2
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 04:12:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 02:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="580925901"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 02:12:32 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PPY8O-0004m8-4h; Mon, 06 Dec 2010 18:17:28 +0800
Message-Id: <cover.1291629646.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Mon, 6 Dec 2010 18:00:46 +0800
To: yocto@yoctoproject.org,joshua.lock@intel.com
Subject: [PATCH 0/2] Bug #528 fixing.
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
X-List-Received-Date: Mon, 06 Dec 2010 10:12:33 -0000

Merged with the previous commit 1185fb9 to fixing bug #528.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/fix

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (2):
  cross-canadian: pkg name includes target arch
  Using TRANSLATED_TARGET_ARCH instead of TARGET_ARCH.

 meta/classes/cross-canadian.bbclass                |    3 +++
 meta/conf/machine/qemux86-64.conf                  |    1 +
 meta/recipes-core/meta/meta-toolchain.bb           |    2 +-
 meta/recipes-core/tasks/task-cross-canadian.bb     |   15 +++++++++++++++
 meta/recipes-core/tasks/task-sdk-host.bb           |    5 +----
 .../binutils/binutils-cross-canadian.inc           |    6 ++++++
 .../binutils/binutils-cross-canadian_2.20.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc-cross-canadian.inc   |    4 ++++
 .../gcc/gcc-cross-canadian_4.3.3.bb                |    2 +-
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 meta/recipes-devtools/gdb/gdb-cross-canadian.inc   |    7 +++++++
 .../recipes-devtools/gdb/gdb-cross-canadian_7.2.bb |    7 ++-----
 12 files changed, 43 insertions(+), 13 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-cross-canadian.bb
 create mode 100644 meta/recipes-devtools/gdb/gdb-cross-canadian.inc


