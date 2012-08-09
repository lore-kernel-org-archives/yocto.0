Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 937BCE013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:05:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Aug 2012 14:05:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="195747836"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2012 14:05:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:38 -0500
Message-Id: <cover.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 00/19] yocto-bsp updates for master, v2
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
X-List-Received-Date: Thu, 09 Aug 2012 21:05:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes yocto bugs [YOCTO #2693] and [YOCTO #2587], and
fixes some other minor usability problems reported by users.

Please pull into poky/master.

v2: This is the same patchset as the previous one, but an additional
couple of patches fixing problems found in testing has been tacked on.

The following changes since commit 2dec760b79bb7e2e79c33c5127fa64685bd86a18:

  foomatic: fix perl path for target (2012-08-08 10:06:00 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-master-update
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-master-update

Tom Zanussi (19):
  yocto-bsp: add new strip_base() function
  yocto-bsp: strip '/base' from kernel branches in templates
  yocto-bsp: update default branch names
  yocto-bsp: allow branch display filtering
  yocto-bsp: use branches_base
  yocto-bsp: add standard branch mapping
  yocto-bsp: use standard branch mapping in bsp templates
  yocto-bsp: use rstrip() for assignment lines
  yocto-bsp: remove 'branch' statements in .scc if reusing branch
  yocto-bsp: add some standard policy
  yocto-bsp: add i586 option for i386
  yocto-bsp: use emgd 1.10 for i386 template
  yocto-bsp: generate default properties even if json specified
  yocto-bsp: add 3.4/remove 3.0 kernel from templates
  yocto-bsp: update standard branch mapping
  yocto-bsp: use emgd 1.14 for i386 template
  yocto-bsp: remove YOCTO_KERNEL_EXTERNAL_BRANCH usage
  yocto-bsp: use base branches for qemu 'newbranch' case
  yocto-bsp: add missing xserver-xf86-config .bbappend for qemu

 scripts/lib/bsp/engine.py                          |   44 ++++++++++++++++++-
 scripts/lib/bsp/kernel.py                          |   19 ++++++++
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../arm/recipes-kernel/linux/kernel-list.noinstall |    4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   12 +++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |   13 ++----
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   12 +++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |   15 ++----
 .../arch/i386/conf/machine/{{=machine}}.conf       |   14 ++++--
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
 .../linux/files/{{=machine}}-standard.scc          |   14 ++++++-
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |   12 +++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |   12 +++---
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |   12 +++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |   12 +++---
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    3 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |   12 +++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |   12 +++---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +--
 .../linux/files/{{=machine}}-standard.scc          |    9 +---
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   25 +++++------
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |   29 ++++++-------
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   25 +++++------
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |   29 ++++++-------
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
 .../linux/files/{{=machine}}-standard.scc          |   10 ++++-
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 -----------------
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |   12 +++---
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 ------------------
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |   12 +++---
 47 files changed, 277 insertions(+), 286 deletions(-)
 copy "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" (66%)
 copy "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" (63%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" (65%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" (67%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" (65%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" (68%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" (65%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" (68%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" (51%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" (53%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" (65%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" (66%)

-- 
1.7.4.1


