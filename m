Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E4ECE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 15:52:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2012 15:52:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="127136624"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by orsmga002.jf.intel.com with ESMTP; 30 Mar 2012 15:52:05 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 15:52:04 -0700
Message-Id: <cover.1333145263.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
MIME-Version: 1.0
Subject: [PATCH 0/3] Misc Fixes
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
X-List-Received-Date: Fri, 30 Mar 2012 22:52:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 06fc2d2ec8e72f063f2c67601b2f027f76971e05:

  documentation/dev-manual/dev-manual-common-tasks.xml: Title change (2012-03-30 17:20:51 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/misc
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Nitin A Kamble (3):
  nasm: fix issue with repeat configure
  cross-canadian.bbclass: fix rpath for sdk executables
  poky-tiny: avoid eglibc locale packaging

 meta-yocto/conf/distro/poky-tiny.conf   |    3 +++
 meta/classes/cross-canadian.bbclass     |    4 +++-
 meta/recipes-devtools/nasm/nasm_2.07.bb |    8 ++++----
 3 files changed, 10 insertions(+), 5 deletions(-)

-- 
1.7.6.4


