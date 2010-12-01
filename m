Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 897914C8123B
	for <yocto@yoctoproject.org>; Tue, 30 Nov 2010 23:01:50 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Nov 2010 21:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="355342433"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 30 Nov 2010 21:01:49 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PNet8-0008Lm-Af; Wed, 01 Dec 2010 13:05:54 +0800
Message-Id: <cover.1291174318.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Wed, 1 Dec 2010 11:31:58 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 0/1] Bug #528 fixing
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
X-List-Received-Date: Wed, 01 Dec 2010 05:01:50 -0000

Since this my very first time trying to contribute to distro, so let me 
put some fixing details here and warmly welcome the reivew/comment.

The purpose of this fixing is to add target name in the package name of
gcc(gdb/binutils)-cross-canadian so multiple cross-canadian toolchains 
can be installed into the same SDK sysroot.

We choose the PN instead of the PACKAGE(or PKG_pn) to change the package 
name because the -locale package is named by the PN. By changing PN, we 
have different -locale and -doc packages for different target.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/fix

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  cross-canadian: pkg name includes target arch

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
 10 files changed, 39 insertions(+), 13 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-cross-canadian.bb
 create mode 100644 meta/recipes-devtools/gdb/gdb-cross-canadian.inc


