Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7894E013C0
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 22:32:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2012 22:32:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129982637"
Received: from unknown (HELO localhost) ([10.255.15.231])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2012 22:32:13 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sat, 17 Mar 2012 00:30:52 -0500
Message-Id: <5ca45595832a36794b748e7f93d6b56036d840e6.1331961098.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331961098.git.tom.zanussi@intel.com>
References: <cover.1331961098.git.tom.zanussi@intel.com>
Subject: [PATCH 1/8] yocto-bsp: add BSP template files
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
X-List-Received-Date: Sat, 17 Mar 2012 05:32:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

BSP template files for all supported Yocto architectures, plus qemu
versions of the same.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../target/arch/arm/conf/machine/{{=machine}}.conf |   87 +++++
 .../{{ if xserver == \"y\": }} xorg.conf"          |   34 ++
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
 .../linux/files/{{=machine}}-non_hardware.cfg      |   30 ++
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |  336 ++++++++++++++++++++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    7 +
 .../arm/recipes-kernel/linux/kernel-list.noinstall |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +++
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +++
 .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 +
 .../lib/bsp/substrate/target/arch/common/README    |  118 +++++++
 .../substrate/target/arch/common/README.sources    |   17 +
 .../substrate/target/arch/common/conf/layer.conf   |   10 +
 .../formfactor/formfactor/{{=machine}}/machconfig  |    5 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../tasks/task-core-tools-profile.bbappend         |    2 +
 .../arch/i386/conf/machine/{{=machine}}.conf       |   48 +++
 ...erver_choice == \"xserver_emgd\": }} xorg.conf" |   48 +++
 ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 ++
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 ++
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |   54 ++++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |   30 ++
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +++
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +++
 .../arch/mips/conf/machine/{{=machine}}.conf       |   28 ++
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |    1 +
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    8 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +++
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +++
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |   53 +++
 .../recipes-kernel/linux/files/user-config.cfg     |    4 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |  163 ++++++++++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |   11 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +++
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +++
 .../arch/qemu/conf/machine/{{=machine}}.conf       |   59 ++++
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |   69 ++++
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 +
 .../recipes-kernel/linux/files/user-config.cfg     |    4 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |   30 ++
 .../linux/files/{{=machine}}-standard.scc          |   30 ++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    6 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   61 ++++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   61 ++++
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   63 ++++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   63 ++++
 .../arch/x86_64/conf/machine/{{=machine}}.conf     |   32 ++
 ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 ++
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 ++
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |   47 +++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |   17 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +++
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +++
 80 files changed, 2665 insertions(+), 0 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/README
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/README.sources
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/.gitignore b/scripts/lib/bsp/substrate/target/arch/arm/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
new file mode 100644
index 0000000..101dd60
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -0,0 +1,87 @@
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
+{{ if xserver == "y": }}
+PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"
+XSERVER = "xserver-xorg-lite \
+           xf86-input-evdev \
+           xf86-input-mouse \
+           xf86-video-omapfb \
+           xf86-input-keyboard"
+
+# Ship all kernel modules by default
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+# Allow for MMC booting (required by the NAND-less Beagleboard XM)
+EXTRA_IMAGEDEPENDS += "u-boot x-load"
+
+# Uncomment the following line to enable the hard floating point abi. Note that
+# this breaks some binary libraries and 3D (neither of which ship with
+# meta-yocto). For maximum compatibility, leave this disabled.
+#DEFAULTTUNE ?= "cortexa8hf-neon"
+{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_cortexa8" }}
+{{ input type:"choice" val:"tune_arm1136jf_s" msg:"arm1136jf-s tuning optimizations" }}
+{{ input type:"choice" val:"tune_arm920t" msg:"arm920t tuning optimizations" }}
+{{ input type:"choice" val:"tune_arm926ejs" msg:"arm926ejs tuning optimizations" }}
+{{ input type:"choice" val:"tune_arm9tdmi" msg:"arm9tdmi tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa8" msg:"cortexa8 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa9" msg:"cortexa9 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexm1" msg:"cortexm1 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexm3" msg:"cortexm3 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexr4" msg:"cortexr4 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ep9312" msg:"ep9312 tuning optimizations" }}
+{{ input type:"choice" val:"tune_iwmmxt" msg:"iwmmxt tuning optimizations" }}
+{{ input type:"choice" val:"tune_strongarm1100" msg:"strongarm1100 tuning optimizations" }}
+{{ input type:"choice" val:"tune_xscale" msg:"xscale tuning optimizations" }}
+{{ if tunefile == "tune_arm1136jf_s": }}
+include conf/machine/include/tune-arm1136jf-s.inc
+{{ if tunefile == "tune_arm920t": }}
+include conf/machine/include/tune-arm920t.inc
+{{ if tunefile == "tune_arm926ejs": }}
+include conf/machine/include/tune-arm926ejs.inc
+{{ if tunefile == "tune_arm9tdmi": }}
+include conf/machine/include/tune-arm9tdmi.inc
+{{ if tunefile == "tune_cortexa8": }}
+include conf/machine/include/tune-cortexa8.inc
+{{ if tunefile == "tune_cortexa9": }}
+include conf/machine/include/tune-cortexa9.inc
+{{ if tunefile == "tune_cortexm1": }}
+include conf/machine/include/tune-cortexm1.inc
+{{ if tunefile == "tune_cortexm3": }}
+include conf/machine/include/tune-cortexm3.inc
+{{ if tunefile == "tune_cortexr4": }}
+include conf/machine/include/tune-cortexr4.inc
+{{ if tunefile == "tune_ep9312": }}
+include conf/machine/include/tune-ep9312.inc
+{{ if tunefile == "tune_iwmmxt": }}
+include conf/machine/include/tune-iwmmxt.inc
+{{ if tunefile == "tune_strongarm1100": }}
+include conf/machine/include/tune-strongarm1100.inc
+{{ if tunefile == "tune_xscale": }}
+include conf/machine/include/tune-xscale.inc
+
+IMAGE_FSTYPES += "tar.bz2 jffs2"
+EXTRA_IMAGECMD_jffs2 = "-lnp "
+
+# 2.6.37 and later kernels use OMAP_SERIAL, ttyO2
+# earlier kernels use ttyS2
+SERIAL_CONSOLE = "115200 ttyO2"
+
+{{ preferred_kernel = kernel_choice.split('_')[0] }}
+{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+KERNEL_IMAGETYPE = "uImage"
+
+{{ input type:"edit" name:"uboot_machine" prio:"40" msg:"Please specify a value for UBOOT_MACHINE:" default:"omap3_beagle_config" }}
+UBOOT_MACHINE = "{{=uboot_machine}}"
+{{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x80008000" }}
+UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
+{{ input type:"edit" name:"uboot_loadaddress" prio:"40" msg:"Please specify a value for UBOOT_LOADADDRESS:" default:"0x80008000" }}
+UBOOT_LOADADDRESS = "{{=uboot_loadaddress}}"
+
+MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
new file mode 100644
index 0000000..0335e6a
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"	
@@ -0,0 +1,34 @@
+Section "Module"
+	Load	"extmod"
+	Load	"dbe"
+	Load	"glx"
+	Load	"freetype"
+	Load	"type1"
+	Load	"record"
+	Load	"dri"
+EndSection
+
+Section "Monitor"
+	Identifier	"Builtin Default Monitor"
+EndSection
+
+Section "Device"
+	Identifier	"Builtin Default fbdev Device 0"
+	Driver		"omapfb"
+EndSection
+
+Section "Screen"
+	Identifier	"Builtin Default fbdev Screen 0"
+	Device		"Builtin Default fbdev Device 0"
+	Monitor		"Builtin Default Monitor"
+EndSection
+
+Section "ServerLayout"
+	Identifier	"Builtin Default Layout"
+	Screen		"Builtin Default fbdev Screen 0"
+EndSection
+
+Section "ServerFlags"
+	Option		"DontZap"  "0"
+        Option		"AutoAddDevices" "False"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
new file mode 100644
index 0000000..361343b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
@@ -0,0 +1,30 @@
+#
+# Miscellaneous filesystems
+#
+CONFIG_NFS_DEF_FILE_IO_SIZE=1024
+
+#
+# Multiple Device Support
+#
+# CONFIG_MD is not set
+
+# Kernel Features
+#
+CONFIG_NO_HZ=y
+
+#
+# CPUIdle
+#
+CONFIG_CPU_IDLE=y
+CONFIG_CPU_IDLE_GOV_LADDER=y
+CONFIG_CPU_IDLE_GOV_MENU=y
+
+#
+# Kernel hacking
+#
+CONFIG_DEBUG_FS=y
+
+#
+# Power management options
+#
+CONFIG_PM_DEBUG=y
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
new file mode 100644
index 0000000..22ff307
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE preempt-rt
+define KARCH arm
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
new file mode 100644
index 0000000..cd8fa9c
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE standard
+define KARCH arm
+
+include ktypes/standard
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
new file mode 100644
index 0000000..994e034
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
@@ -0,0 +1,336 @@
+#
+# System Type
+#
+CONFIG_ARCH_OMAP=y
+CONFIG_HAVE_PWM=y
+CONFIG_ARM_L1_CACHE_SHIFT_6=y
+
+#
+# TI OMAP Implementations
+#
+# CONFIG_ARCH_OMAP2 is not set
+CONFIG_ARCH_OMAP3=y
+
+#
+# TI OMAP Common Features
+#
+CONFIG_ARCH_OMAP2PLUS=y
+
+#
+# OMAP Feature Selections
+#
+CONFIG_OMAP_32K_TIMER=y
+CONFIG_OMAP_32K_TIMER_HZ=128
+CONFIG_OMAP_DM_TIMER=y
+CONFIG_OMAP_RESET_CLOCKS=y
+CONFIG_OMAP_SMARTREFLEX=y
+CONFIG_OMAP_SMARTREFLEX_CLASS3=y
+CONFIG_OMAP_MBOX_FWK=m
+CONFIG_OMAP_MBOX_KFIFO_SIZE=256
+CONFIG_OMAP_IOMMU=m
+CONFIG_OMAP_IOMMU_DEBUG=m
+
+#
+# OMAP Board Type
+#
+CONFIG_MACH_OMAP3_BEAGLE=y
+
+#
+# Processor Features
+#
+CONFIG_ARM_THUMBEE=y
+CONFIG_ARM_L1_CACHE_SHIFT=6
+CONFIG_ARM_ERRATA_430973=y
+
+#
+# Kernel Features
+#
+CONFIG_LEDS=y
+
+
+#
+# Serial drivers
+#
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_RSA=y
+CONFIG_SERIAL_8250_MANY_PORTS=y
+CONFIG_SERIAL_8250_SHARE_IRQ=y
+CONFIG_SERIAL_8250_DETECT_IRQ=y
+CONFIG_SERIAL_8250_RUNTIME_UARTS=4
+
+#
+# At least one emulation must be selected
+#
+CONFIG_VFP=y
+CONFIG_NEON=y
+
+#
+# Power management options
+#
+CONFIG_PM=y
+CONFIG_PM_RUNTIME=y
+
+#
+# Generic Driver Options
+#
+CONFIG_MTD=y
+CONFIG_MTD_CONCAT=y
+CONFIG_MTD_PARTITIONS=y
+CONFIG_MTD_CMDLINE_PARTS=y
+#
+# User Modules And Translation Layers
+#
+CONFIG_MTD_CHAR=y
+CONFIG_MTD_BLKDEVS=y
+CONFIG_MTD_BLOCK=y
+
+#
+# RAM/ROM/Flash chip drivers
+#
+CONFIG_MTD_CFI=y
+CONFIG_MTD_CFI_INTELEXT=y
+
+#
+# Disk-On-Chip Device Drivers
+#
+CONFIG_MTD_NAND=y
+
+CONFIG_MTD_NAND_OMAP2=y
+# CONFIG_MTD_NAND_OMAP_PREFETCH is not set
+
+CONFIG_MTD_UBI=y
+
+#
+# SCSI device support
+#
+CONFIG_SCSI=y
+
+#
+# SCSI support type (disk, tape, CD-ROM)
+#
+CONFIG_BLK_DEV_SD=y
+
+#
+# Ethernet (10 or 100Mbit)
+#
+CONFIG_SMSC911X=y
+
+#
+# Userland interfaces
+#
+CONFIG_INPUT_EVDEV=y
+
+#
+# Input Device Drivers
+#
+CONFIG_KEYBOARD_TWL4030=y
+CONFIG_INPUT_TOUCHSCREEN=y
+CONFIG_TOUCHSCREEN_ADS7846=y
+
+#
+# Miscellaneous I2C Chip support
+#
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
+CONFIG_SPI=y
+CONFIG_SPI_MASTER=y
+CONFIG_SPI_OMAP24XX=y
+
+#
+# I2C GPIO expanders:
+#
+CONFIG_GPIO_TWL4030=y
+
+#
+# SPI GPIO expanders:
+#
+CONFIG_OMAP_WATCHDOG=y
+CONFIG_WATCHDOG_NOWAYOUT=y
+
+#
+# Multifunction device drivers
+#
+CONFIG_TWL4030_CORE=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_DUMMY=y
+CONFIG_REGULATOR_TWL4030=y
+
+#
+# Graphics support
+#
+CONFIG_FB=y
+CONFIG_DRM=m
+# CONFIG_VGASTATE is not set
+# CONFIG_VIDEO_OUTPUT_CONTROL is not set
+# CONFIG_FIRMWARE_EDID is not set
+# CONFIG_FB_DDC is not set
+# CONFIG_FB_BOOT_VESA_SUPPORT is not set
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+# CONFIG_FB_CFB_REV_PIXELS_IN_BYTE is not set
+CONFIG_FB_SYS_FILLRECT=m
+CONFIG_FB_SYS_COPYAREA=m
+CONFIG_FB_SYS_IMAGEBLIT=m
+# CONFIG_FB_FOREIGN_ENDIAN is not set
+CONFIG_FB_SYS_FOPS=m
+CONFIG_FB_DEFERRED_IO=y
+# CONFIG_FB_SVGALIB is not set
+# CONFIG_FB_MACMODES is not set
+# CONFIG_FB_BACKLIGHT is not set
+CONFIG_FB_MODE_HELPERS=y
+# CONFIG_FB_TILEBLITTING is not set
+
+#
+# Frame buffer hardware drivers
+#
+CONFIG_FB_OMAP=y
+CONFIG_FB_OMAP_CONSISTENT_DMA_SIZE=2
+# CONFIG_FB_S1D13XXX is not set
+# CONFIG_FB_TMIO is not set
+# CONFIG_FB_VIRTUAL is not set
+# CONFIG_FB_METRONOME is not set
+# CONFIG_FB_MB862XX is not set
+# CONFIG_FB_BROADSHEET is not set
+# CONFIG_FB_OMAP_BOOTLOADER_INIT is not set
+CONFIG_OMAP2_VRAM=y
+CONFIG_OMAP2_VRFB=y
+CONFIG_OMAP2_DSS=y
+CONFIG_OMAP2_VRAM_SIZE=14
+CONFIG_OMAP2_DSS_DEBUG_SUPPORT=y
+# CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS is not set
+CONFIG_OMAP2_DSS_DPI=y
+# CONFIG_OMAP2_DSS_RFBI is not set
+CONFIG_OMAP2_DSS_VENC=y
+# CONFIG_OMAP2_DSS_SDI is not set
+CONFIG_OMAP2_DSS_DSI=y
+CONFIG_OMAP2_DSS_USE_DSI_PLL=y
+# CONFIG_OMAP2_DSS_FAKE_VSYNC is not set
+CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=0
+CONFIG_FB_OMAP2=y
+CONFIG_FB_OMAP2_DEBUG_SUPPORT=y
+CONFIG_FB_OMAP2_NUM_FBS=2
+
+#
+# OMAP2/3 Display Device Drivers
+#
+CONFIG_PANEL_GENERIC=y
+CONFIG_PANEL_SHARP_LS037V7DW01=y
+# CONFIG_PANEL_LGPHILIPS_LB035Q02 is not set
+# CONFIG_PANEL_SAMSUNG_LTE430WQ_F0C is not set
+# CONFIG_PANEL_SHARP_LQ043T1DG01 is not set
+# CONFIG_PANEL_TAAL is not set
+CONFIG_PANEL_TOPPOLY_TDO35S=m
+CONFIG_PANEL_TPO_TD043MTEA1=m
+# CONFIG_BACKLIGHT_LCD_SUPPORT is not set
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+
+#
+# Display device support
+#
+CONFIG_DISPLAY_SUPPORT=y
+CONFIG_DUMMY_CONSOLE=y
+# CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY is not set
+CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
+# CONFIG_FONTS is not set
+CONFIG_FONT_8x8=y
+CONFIG_FONT_8x16=y
+# CONFIG_LOGO_LINUX_MONO is not set
+# CONFIG_LOGO_LINUX_VGA16 is not set
+
+#
+# Console display driver support
+#
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_LOGO=y
+# CONFIG_VGA_CONSOLE is not set
+
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_SOC=y
+CONFIG_SND_OMAP_SOC=y
+CONFIG_SND_OMAP_SOC_OMAP3_BEAGLE=y
+
+#
+# USB Input Devices
+#
+CONFIG_USB=y
+CONFIG_USB_SUPPORT=y
+
+#
+# Miscellaneous USB options
+#
+CONFIG_USB_DEVICEFS=y
+CONFIG_USB_OTG=y
+# CONFIG_USB_OTG_WHITELIST is not set
+
+#
+# USB Host Controller Drivers
+#
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_TT_NEWSCHED=y
+CONFIG_USB_EHCI_ROOT_HUB_TT=y
+CONFIG_USB_MUSB_HDRC=y
+CONFIG_USB_MUSB_OMAP2PLUS=y
+CONFIG_USB_MUSB_SOC=y
+
+#
+# OMAP 343x high speed USB support
+#
+CONFIG_USB_MUSB_OTG=y
+CONFIG_USB_GADGET_MUSB_HDRC=y
+CONFIG_USB_MUSB_HDRC_HCD=y
+CONFIG_USB_INVENTRA_DMA=y
+
+
+#
+# NOTE: USB_STORAGE enables SCSI, and 'SCSI disk support'
+#
+
+#
+# may also be needed; see USB_STORAGE Help for more information
+#
+CONFIG_USB_STORAGE=y
+
+#
+# USB Miscellaneous drivers
+#
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_USB_OTG_UTILS=y
+CONFIG_TWL4030_USB=y
+
+CONFIG_MMC=y
+
+#
+# MMC/SD Host Controller Drivers
+#
+CONFIG_MMC_OMAP_HS=y
+
+#
+# Real Time Clock
+#
+CONFIG_RTC_LIB=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_TWL4030=y
+
+#
+# DOS/FAT/NT Filesystems
+#
+CONFIG_VFAT_FS=y
+
+#
+# Multimedia core support
+#
+
+CONFIG_VIDEO_OMAP3_ISP=y
+# CONFIG_VIDEO_OMAP34XX_ISP_PREVIEWER is not set
+CONFIG_VIDEO_OMAP34XX_ISP_RESIZER=y
+# CONFIG_VIDEO_HELPER_CHIPS_AUTO is not set
+
+#
+# Advanced Power Management Emulation support
+#
+CONFIG_APM_EMULATION=y
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
new file mode 100644
index 0000000..39f87f5
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
@@ -0,0 +1,7 @@
+kconf hardware {{=machine}}.cfg
+kconf non-hardware {{machine}}-non_hardware.cfg
+
+include features/usb-net/usb-net.scc
+
+kconf hardware user-config.cfg
+include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..14cefa6
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,4 @@
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.2) kernel? (y/n)" default:"y"}}
+
+{{ if use_default_kernel == "n": }}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.2"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
new file mode 100644
index 0000000..144acd3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
new file mode 100644
index 0000000..7fc48a5
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
new file mode 100644
index 0000000..12de75e
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -0,0 +1,41 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
new file mode 100644
index 0000000..5480e90
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git a/scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT b/scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy 
+of this software and associated documentation files (the "Software"), to deal 
+in the Software without restriction, including without limitation the rights 
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+copies of the Software, and to permit persons to whom the Software is 
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in 
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+THE SOFTWARE.
diff --git a/scripts/lib/bsp/substrate/target/arch/common/README b/scripts/lib/bsp/substrate/target/arch/common/README
new file mode 100644
index 0000000..928659f
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/README
@@ -0,0 +1,118 @@
+This README file contains information on building the meta-{{=machine}}
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/xxxx
+  layers: xxxx
+  branch: master
+
+
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: XXX YYYYYY <xxx.yyyyyy@zzzzz.com>
+
+Please see the meta-xxxx/MAINTAINERS file for more details.
+
+
+Table of Contents
+=================
+
+  I. Building the meta-{{=machine}} BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-{{=machine}} BSP layer
+========================================
+
+--- replace with specific instructions for your layer ---
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build a
+{{=machine}} image by adding the location of the meta-{{=machine}}
+layer to bblayers.conf, along with any other layers needed (to access
+common metadata shared between BSPs) e.g.:
+
+  yocto/meta-xxxx \
+  yocto/meta-xxxx/meta-{{=machine}} \
+
+To enable the {{=machine}} layer, add the {{=machine}} MACHINE to local.conf:
+
+  MACHINE ?= "{{=machine}}"
+
+You should then be able to build a {{=machine}} image as such:
+
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+As an alternative to downloading the BSP tarball, you can also work
+directly from the meta-xxxx git repository.  For each BSP in the
+'meta-xxxx' repository, there are multiple branches, one corresponding
+to each major release starting with 'laverne' (0.90), in addition to
+the latest code which tracks the current master (note that not all
+BSPs are present in every release).  Instead of extracting a BSP
+tarball at the top level of your yocto build tree, you can
+equivalently check out the appropriate branch from the meta-xxxx
+repository at the same location.
+
+
+II. Booting the images in /binary
+=================================
+
+--- replace with specific instructions for your platform ---
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=core-image-sato-{{=machine}}-20101207053738.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+This should give you a bootable USB flash device.  Insert the device
+into a bootable USB socket on the target, and power on.  This should
+result in a system booted to the Sato graphical desktop.
+
+If you want a terminal, use the arrows at the top of the UI to move to
+different pages of available applications, one of which is named
+'Terminal'.  Clicking that should give you a root terminal.
+
+If you want to ssh into the system, you can use the root terminal to
+ifconfig the IP address and use that to ssh in.  The root password is
+empty, so to log in type 'root' for the user name and hit 'Enter' at
+the Password prompt: and you should be in.
+
+----
+
+If you find you're getting corrupt images on the USB (it doesn't show
+the syslinux boot: prompt, or the boot: prompt contains strange
+characters), try doing this first:
+
+# dd if=/dev/zero of=/dev/sdf bs=1M count=512
diff --git a/scripts/lib/bsp/substrate/target/arch/common/README.sources b/scripts/lib/bsp/substrate/target/arch/common/README.sources
new file mode 100644
index 0000000..3c4cb7b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/README.sources
@@ -0,0 +1,17 @@
+The sources for the packages comprising the images shipped with this
+BSP can be found at the following location:
+
+http://downloads.yoctoproject.org/mirror/sources/
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can be found at the
+following location:
+
+http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can also be found at the
+following locations:
+
+git://git.yoctoproject.org/poky.git
+git://git.yoctoproject.org/meta-xxxx
diff --git a/scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore b/scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf b/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
new file mode 100644
index 0000000..921d976
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "{{=machine}}"
+BBFILE_PATTERN_{{=machine}} := "^${LAYERDIR}/"
+BBFILE_PRIORITY_{{=machine}} = "6"
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
new file mode 100644
index 0000000..3b85d38
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
@@ -0,0 +1,5 @@
+# Assume a USB mouse and keyboard are connected
+{{ input type:"boolean" name:"touchscreen" msg:"Does your BSP have a touchscreen? (y/n)" default:"n" }}
+HAVE_TOUCHSCREEN={{=touchscreen}}
+{{ input type:"boolean" name:"keyboard" msg:"Does your BSP have a keyboard? (y/n)" default:"y" }}
+HAVE_KEYBOARD={{=keyboard}}
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..54da0ff
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
new file mode 100644
index 0000000..9e8e5c8
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_{{=machine}} = " systemtap"
+
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
new file mode 100644
index 0000000..ab491b2
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -0,0 +1,48 @@
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+{{ preferred_kernel = kernel_choice.split('_')[0] }}
+{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_core2" }}
+{{ input type:"choice" val:"tune_atom" msg:"Atom tuning optimizations" }}
+{{ input type:"choice" val:"tune_core2" msg:"Core2 tuning optimizations" }}
+{{ if tunefile == "tune_atom": }}
+include conf/machine/include/tune-atom.inc
+{{ if tunefile == "tune_core2": }}
+include conf/machine/include/tune-core2.inc
+
+require conf/machine/include/ia32-base.inc
+
+{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
+
+{{ if xserver == "y": }}
+{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
+
+{{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
+{{ input type:"choice" val:"xserver_emgd" msg:"EMGD xserver support (proprietary)" }}
+{{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
+
+{{ if xserver == "y": }}
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+{{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
+           ${XSERVER_IA32_VESA} \
+{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
+           ${XSERVER_IA32_EMGD} \
+{{ if xserver == "y" and xserver_choice == "xserver_i915": }}
+           ${XSERVER_IA32_I915} \
+{{ if xserver == "y": }}
+           "
+
+{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
+PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
+
+{{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
+APPEND += "video=vesafb vga=0x318"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
new file mode 100644
index 0000000..662f60f
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"	
@@ -0,0 +1,48 @@
+##
+## X Config options generated from CED
+## x11 conf skeleton
+## DriverVer=
+##
+
+Section "Screen"
+    Identifier    "Screen0"
+    Device        "IntelEMGD-0"
+    Monitor       "Monitor0"
+    SubSection    "Display"
+    EndSubSection
+EndSection
+
+# Primary (First/only) display
+Section "Device"
+    Identifier "IntelEMGD-0"
+    Driver     "emgd"
+    VendorName "Intel(R) DEG"
+    BoardName  "Embedded Graphics"
+    BusID      "0:2:0"
+    Screen      0
+    Option     "PcfVersion"            "1792"
+    Option     "ConfigId"              "1"
+    Option     "ALL/1/name"                   "e6xx"
+    Option     "ALL/1/General/PortOrder"      "24000"
+    Option     "ALL/1/General/DisplayConfig"  "1"
+    Option     "ALL/1/General/DisplayDetect"  "1"
+    Option     "ALL/1/General/TuningWA" "1"
+    Option     "ALL/1/Port/4/General/name"           "lvds"
+    Option     "ALL/1/Port/4/General/EdidAvail"      "3"
+    Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
+    Option     "ALL/1/Port/4/General/Rotation"       "0"
+    Option     "ALL/1/Port/4/General/Edid"           "0"
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen 0       "Screen0" 0 0
+   # InputDevice    "Mouse0" "CorePointer"
+   # InputDevice    "Keyboard0" "CoreKeyboard"
+   # InputDevice    "DevInputMice" "SendCoreEvents"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
new file mode 100644
index 0000000..96b94b4
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Intel Graphics Driver"
+    Driver	"intel"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Intel Graphics Driver"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Generic VESA"
+    Driver	"vesa"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Generic VESA"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
new file mode 100644
index 0000000..9fb8002
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE preempt-rt
+define KARCH i386
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
new file mode 100644
index 0000000..28c353b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE standard
+define KARCH i386
+
+include ktypes/standard
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg
new file mode 100644
index 0000000..e93c0b8
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg
@@ -0,0 +1,54 @@
+CONFIG_X86_32=y
+CONFIG_MATOM=y
+CONFIG_PRINTK=y
+
+# Basic hardware support for the box - network, USB, PCI, sound
+CONFIG_NETDEVICES=y
+CONFIG_ATA=y
+CONFIG_ATA_GENERIC=y
+CONFIG_ATA_SFF=y
+CONFIG_PCI=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_USB_SUPPORT=y
+CONFIG_USB=y
+CONFIG_USB_ARCH_HAS_EHCI=y
+CONFIG_R8169=y
+CONFIG_PATA_SCH=y
+CONFIG_MMC_SDHCI_PCI=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_NET=y
+CONFIG_USB_UHCI_HCD=y
+CONFIG_USB_OHCI_HCD=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_HDA_INTEL=y
+CONFIG_SATA_AHCI=y
+CONFIG_AGP=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
+
+# Make sure these are on, otherwise the bootup won't be fun
+CONFIG_EXT3_FS=y
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_MODULES=y
+CONFIG_SHMEM=y
+CONFIG_TMPFS=y
+CONFIG_PACKET=y
+
+# Needed for booting (and using) USB memory sticks
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
+
+CONFIG_RD_GZIP=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
new file mode 100644
index 0000000..309f25d
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
@@ -0,0 +1,30 @@
+kconf hardware {{=machine}}.cfg
+
+include features/intel-e1xxxx/intel-e100.scc
+include features/intel-e1xxxx/intel-e1xxxx.scc
+
+{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
+include features/drm-emgd/drm-emgd.scc
+
+{{ if xserver == "y" and xserver_choice == "xserver_i915": }}
+include features/i915/i915.scc
+
+include features/dmaengine/dmaengine.scc
+include features/serial/8250.scc
+include features/hpet/hpet.scc
+include features/ericsson-3g/f5521gw.scc
+
+{{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
+include features/framebuffer/vesafb.scc
+
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/power/intel.scc
+
+include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
+kconf hardware user-config.cfg
+include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..14cefa6
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,4 @@
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.2) kernel? (y/n)" default:"y"}}
+
+{{ if use_default_kernel == "n": }}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.2"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
new file mode 100644
index 0000000..144acd3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
new file mode 100644
index 0000000..7fc48a5
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
new file mode 100644
index 0000000..39bf0f3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -0,0 +1,41 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
new file mode 100644
index 0000000..4877aa2
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/.gitignore b/scripts/lib/bsp/substrate/target/arch/mips/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
new file mode 100644
index 0000000..51157e5
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
@@ -0,0 +1,28 @@
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+require conf/machine/include/tune-mips32.inc
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
+                    serial"
+
+KERNEL_IMAGETYPE = "vmlinux"
+KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
+
+{{ preferred_kernel = kernel_choice.split('_')[0] }}
+{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
+{{ if xserver == "y": }}
+PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
+XSERVER = "xserver-kdrive-fbdev"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+IMAGE_FSTYPES ?= "jffs2 tar.bz2"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
new file mode 100644
index 0000000..792c4d5
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE preempt-rt
+define KARCH mips
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
new file mode 100644
index 0000000..c6139f0
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE standard
+define KARCH mips
+
+include ktypes/standard
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg
new file mode 100644
index 0000000..a1b333c
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg
@@ -0,0 +1 @@
+CONFIG_MIPS=y
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
new file mode 100644
index 0000000..7d29541
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
@@ -0,0 +1,8 @@
+kconf hardware {{=machine}}.cfg
+
+include cfg/usb-mass-storage.scc
+include cfg/vfat.scc
+
+kconf hardware user-config.cfg
+include user-patches.scc
+
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..14cefa6
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,4 @@
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.2) kernel? (y/n)" default:"y"}}
+
+{{ if use_default_kernel == "n": }}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.2"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
new file mode 100644
index 0000000..144acd3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
new file mode 100644
index 0000000..7fc48a5
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
new file mode 100644
index 0000000..12de75e
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -0,0 +1,41 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
new file mode 100644
index 0000000..5480e90
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore b/scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
new file mode 100644
index 0000000..4f83dbb
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -0,0 +1,53 @@
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+TARGET_FPU = ""
+
+{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_ppc603e" }}
+{{ input type:"choice" val:"tune_ppc603e" msg:"ppc603e tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce300c2" msg:"ppce300c2 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce500" msg:"ppce500 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce500mc" msg:"ppce500mc tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce500v2" msg:"ppce500v2 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce5500_32b" msg:"ppce5500-32b tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce5500_64b" msg:"ppce5500-64b tuning optimizations" }}
+{{ if tunefile == "tune_ppc603e": }}
+include conf/machine/include/tune-ppc603e.inc
+{{ if tunefile == "tune_ppce300c2": }}
+include conf/machine/include/tune-ppce300c2.inc
+{{ if tunefile == "tune_ppce500": }}
+include conf/machine/include/tune-ppce500.inc
+{{ if tunefile == "tune_ppce500mc": }}
+include conf/machine/include/tune-ppce500mc.inc
+{{ if tunefile == "tune_ppce500v2": }}
+include conf/machine/include/tune-ppce500v2.inc
+{{ if tunefile == "tune_ppce5500_32b": }}
+include conf/machine/include/tune-ppce5500-32b.inc
+{{ if tunefile == "tune_ppce5500_64b": }}
+include conf/machine/include/tune-ppce5500-64b.inc
+
+KERNEL_IMAGETYPE = "uImage"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
+
+{{ preferred_kernel = kernel_choice.split('_')[0] }}
+{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
+{{ if xserver == "y": }}
+PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
+XSERVER = "xserver-kdrive-fbdev"
+
+{{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x00000000" }}
+UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
+
+{{ input type:"edit" name:"kernel_devicetree" prio:"40" msg:"Please specify a [arch/powerpc/boot/dts/xxx] value for KERNEL_DEVICETREE:" default:"mpc8315erdb.dts" }}
+KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/{{=kernel_devicetree}}"
+
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
new file mode 100644
index 0000000..2ee921b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
@@ -0,0 +1,4 @@
+CONFIG_FTRACE_SYSCALLS=y
+CONFIG_SCHED_TRACER=y
+CONFIG_IRQSOFF_TRACER=y
+CONFIG_PREEMPT_TRACER=y
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
new file mode 100644
index 0000000..4a182a3
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE preempt-rt
+define KARCH powerpc
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
new file mode 100644
index 0000000..1213e61
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE standard
+define KARCH powerpc
+
+include ktypes/standard
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg
new file mode 100644
index 0000000..9f37d07
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg
@@ -0,0 +1,163 @@
+..........................................................................
+.                                WARNING
+.
+. This file is a kernel configuration fragment, and not a full kernel
+. configuration file.  The final kernel configuration is made up of
+. an assembly of processed fragments, each of which is designed to
+. capture a specific part of the final configuration (e.g. platform
+. configuration, feature configuration, and board specific hardware
+. configuration).  For more information on kernel configuration, please
+. consult the product documentation.
+.
+..........................................................................
+CONFIG_PPC32=y
+CONFIG_PPC_OF=y
+CONFIG_PPC_UDBG_16550=y
+
+#
+# Processor support
+#
+CONFIG_PPC_83xx=y
+
+#
+# Platform support
+#
+CONFIG_MPC831x_RDB=y
+# CONFIG_PPC_CHRP is not set
+# CONFIG_PPC_PMAC is not set
+
+#
+# Bus options
+#
+CONFIG_PCI=y
+
+#
+# Memory Technology Devices (MTD)
+#
+CONFIG_MTD=y
+CONFIG_MTD_PARTITIONS=y
+CONFIG_MTD_CMDLINE_PARTS=y
+CONFIG_MTD_OF_PARTS=y
+
+#
+# User Modules And Translation Layers
+#
+CONFIG_MTD_CHAR=y
+CONFIG_MTD_BLOCK=y
+
+#
+# RAM/ROM/Flash chip drivers
+#
+CONFIG_MTD_CFI=y
+CONFIG_MTD_CFI_AMDSTD=y
+
+#
+# Mapping drivers for chip access
+#
+CONFIG_MTD_PHYSMAP_OF=y
+
+#
+# NAND Flash Device Drivers
+#
+CONFIG_MTD_NAND=y
+
+#
+# Ethernet (1000 Mbit)
+#
+CONFIG_GIANFAR=y
+
+#
+# Serial drivers
+#
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_NR_UARTS=2
+
+#
+# Watchdog Device Drivers
+#
+CONFIG_8xxx_WDT=y
+
+#
+# I2C support
+#
+CONFIG_I2C=y
+CONFIG_I2C_CHARDEV=y
+
+#
+# I2C Hardware Bus support
+#
+CONFIG_I2C_MPC=y
+
+CONFIG_SENSORS_LM75=y
+
+CONFIG_MISC_DEVICES=y
+
+#
+# Miscellaneous I2C Chip support
+#
+CONFIG_EEPROM_AT24=y
+
+#
+# SPI support
+#
+CONFIG_SPI=y
+# CONFIG_SPI_DEBUG is not set
+CONFIG_SPI_MASTER=y
+
+#
+# SPI Master Controller Drivers
+#
+CONFIG_SPI_MPC8xxx=y
+
+#
+# SPI Protocol Masters
+#
+CONFIG_HWMON=y
+
+#
+# SCSI device support
+#
+CONFIG_SCSI=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SCSI_LOGGING=y
+
+CONFIG_ATA=y
+CONFIG_ATA_VERBOSE_ERROR=y
+CONFIG_SATA_FSL=y
+CONFIG_ATA_SFF=y
+
+#
+# USB support
+#
+CONFIG_USB=m
+CONFIG_USB_DEVICEFS=y
+
+#
+# USB Host Controller Drivers
+#
+CONFIG_USB_EHCI_HCD=m
+CONFIG_USB_EHCI_FSL=y
+CONFIG_USB_STORAGE=m
+
+#
+# Real Time Clock
+#
+CONFIG_RTC_CLASS=y
+
+#
+# I2C RTC drivers
+#
+CONFIG_RTC_DRV_DS1307=y
+
+CONFIG_KGDB_8250=m
+
+CONFIG_CRYPTO_DEV_TALITOS=m
+
+CONFIG_FSL_DMA=y
+
+CONFIG_MMC=y
+CONFIG_MMC_SPI=m
+
+CONFIG_USB_FSL_MPH_DR_OF=y
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
new file mode 100644
index 0000000..17d5033
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
@@ -0,0 +1,11 @@
+kconf hardware {{=machine}}.cfg
+
+include cfg/usb-mass-storage.scc
+include cfg/vfat.scc
+{{ if kernel_choice == "linux-yocto_3.0" or kernel_choice == "linux-yocto-rt_3.0": }}
+include features/dmaengine/dmaengine.scc
+{{ if kernel_choice == "linux-yocto_3.2" or kernel_choice == "linux-yocto-rt_3.2": }}
+include cfg/dmaengine/dmaengine.scc
+
+kconf hardware user-config.cfg
+include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..14cefa6
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,4 @@
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.2) kernel? (y/n)" default:"y"}}
+
+{{ if use_default_kernel == "n": }}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.2"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
new file mode 100644
index 0000000..144acd3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
new file mode 100644
index 0000000..7fc48a5
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
new file mode 100644
index 0000000..12de75e
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -0,0 +1,41 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
new file mode 100644
index 0000000..5480e90
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
new file mode 100644
index 0000000..003ead1
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -0,0 +1,59 @@
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+{{ preferred_kernel = kernel_choice.split('_')[0] }}
+{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+
+{{ input type:"choicelist" name:"qemuarch" prio:"5" msg:"Which qemu architecture would you like to use?" default:"i386" }}
+{{ input type:"choice" val:"i386" msg:"i386    (32-bit)" }}
+{{ input type:"choice" val:"x86_64" msg:"x86_64  (64-bit)" }}
+{{ input type:"choice" val:"arm" msg:"ARM     (32-bit)" }}
+{{ input type:"choice" val:"powerpc" msg:"PowerPC (32-bit)" }}
+{{ input type:"choice" val:"mips" msg:"MIPS    (32-bit)" }}
+{{ if qemuarch == "i386": }}
+require conf/machine/include/tune-i586.inc
+{{ if qemuarch == "x86_64": }}
+require conf/machine/include/tune-i586.inc
+{{ if qemuarch == "arm": }}
+require conf/machine/include/tune-arm926ejs.inc
+{{ if qemuarch == "powerpc": }}
+require conf/machine/include/tune-ppc603e.inc
+{{ if qemuarch == "mips": }}
+require conf/machine/include/tune-mips32.inc
+
+require conf/machine/include/qemu.inc
+
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
+MACHINE_FEATURES += "x86"
+KERNEL_IMAGETYPE = "bzImage"
+SERIAL_CONSOLE = "115200 ttyS0"
+# We bypass swrast but we need it to be present for X to load correctly
+XSERVER ?= "xserver-xorg \
+           mesa-dri-driver-swrast \
+           xf86-input-vmmouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-video-vmware \
+           qemugl"
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
+
+{{ if qemuarch == "arm": }}
+KERNEL_IMAGETYPE = "zImage"
+SERIAL_CONSOLE = "115200 ttyAMA0"
+
+{{ if qemuarch == "powerpc": }}
+KERNEL_IMAGETYPE = "vmlinux"
+SERIAL_CONSOLE = "115200 ttyS0"
+
+{{ if qemuarch == "mips": }}
+KERNEL_IMAGETYPE = "vmlinux"
+KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
+SERIAL_CONSOLE = "115200 ttyS0"
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
new file mode 100644
index 0000000..10a6d9a
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
@@ -0,0 +1,69 @@
+
+Section "Files"
+EndSection
+
+Section "InputDevice"
+    Identifier    "Generic Keyboard"
+    Driver        "evdev"
+    Option        "CoreKeyboard"
+    Option        "Device"      "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
+    Option        "XkbRules"    "xorg"
+    Option        "XkbModel"    "evdev"
+    Option        "XkbLayout"    "us"
+EndSection
+
+Section "InputDevice"
+    Identifier    "Configured Mouse"
+    Driver        "vmmouse"
+    Option        "CorePointer"
+    Option        "Device"        "/dev/input/mice"
+    Option        "Protocol"        "ImPS/2"
+    Option        "ZAxisMapping"        "4 5"
+    Option        "Emulate3Buttons"    "true"
+EndSection
+
+Section "InputDevice"
+    Identifier    "Qemu Tablet"
+    Driver        "evdev"
+    Option        "CorePointer"
+    Option        "Device"        "/dev/input/touchscreen0"
+    Option        "USB"           "on"
+EndSection
+
+Section "Device"
+    Identifier    "Graphics Controller"
+    Driver        "vmware"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+    # 1024x600 59.85 Hz (CVT) hsync: 37.35 kHz; pclk: 49.00 MHz
+    Modeline "1024x600_60.00"   49.00  1024 1072 1168 1312  600 603 613 624 -hsync +vsync
+    # 640x480 @ 60Hz (Industry standard) hsync: 31.5kHz
+    ModeLine "640x480"    25.2  640  656  752  800    480  490  492  525 -hsync -vsync
+    # 640x480 @ 72Hz (VESA) hsync: 37.9kHz
+    ModeLine "640x480"    31.5  640  664  704  832    480  489  491  520 -hsync -vsync
+    # 640x480 @ 75Hz (VESA) hsync: 37.5kHz
+    ModeLine "640x480"    31.5  640  656  720  840    480  481  484  500 -hsync -vsync
+    # 640x480 @ 85Hz (VESA) hsync: 43.3kHz
+    ModeLine "640x480"    36.0  640  696  752  832    480  481  484  509 -hsync -vsync
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device        "Graphics Controller"
+    Monitor        "Generic Monitor"
+    SubSection "Display"
+        Modes     "640x480"
+    EndSubSection
+EndSection
+
+Section "ServerLayout"
+    Identifier    "Default Layout"
+    Screen        "Default Screen"
+    InputDevice    "Generic Keyboard"
+    # InputDevice    "Configured Mouse"
+    InputDevice    "QEMU Tablet"
+    Option         "AllowEmptyInput" "no"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
new file mode 100644
index 0000000..d3420e0
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"	
@@ -0,0 +1,2 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
new file mode 100644
index 0000000..2ee921b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
@@ -0,0 +1,4 @@
+CONFIG_FTRACE_SYSCALLS=y
+CONFIG_SCHED_TRACER=y
+CONFIG_IRQSOFF_TRACER=y
+CONFIG_PREEMPT_TRACER=y
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
new file mode 100644
index 0000000..6399a4b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -0,0 +1,30 @@
+define KMACHINE {{=machine}}
+define KTYPE preempt-rt
+{{ if qemuarch == "i386": }}
+define KARCH i386
+{{ if qemuarch == "x86_64": }}
+define KARCH x86_64
+{{ if qemuarch == "arm": }}
+define KARCH arm
+{{ if qemuarch == "powerpc": }}
+define KARCH powerpc
+{{ if qemuarch == "mips": }}
+define KARCH mips
+
+{{ if qemuarch == "i386": }}
+include bsp/common-pc/common-pc-preempt-rt
+branch {{=machine}}
+{{ if qemuarch == "x86_64": }}
+include bsp/common-pc-64/common-pc-64-preempt-rt
+branch {{=machine}}
+{{ if qemuarch == "arm": }}
+include bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt
+branch {{=machine}}
+{{ if qemuarch == "powerpc": }}
+include bsp/qemu-ppc32/qemu-ppc32-rt
+branch {{=machine}}
+{{ if qemuarch == "mips": }}
+include bsp/mti-malta32/mti-malta32-be-preempt-rt
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
new file mode 100644
index 0000000..9ed66c3
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -0,0 +1,30 @@
+define KMACHINE {{=machine}}
+define KTYPE standard
+{{ if qemuarch == "i386": }}
+define KARCH i386
+{{ if qemuarch == "x86_64": }}
+define KARCH x86_64
+{{ if qemuarch == "arm": }}
+define KARCH arm
+{{ if qemuarch == "powerpc": }}
+define KARCH powerpc
+{{ if qemuarch == "mips": }}
+define KARCH mips
+
+{{ if qemuarch == "i386": }}
+include bsp/common-pc/common-pc-standard
+branch {{=machine}}
+{{ if qemuarch == "x86_64": }}
+include bsp/common-pc-64/common-pc-64-standard
+branch {{=machine}}
+{{ if qemuarch == "arm": }}
+include bsp/arm-versatile-926ejs/arm-versatile-926ejs-standard
+branch {{=machine}}
+{{ if qemuarch == "powerpc": }}
+include bsp/qemu-ppc32/qemu-ppc32-standard
+branch {{=machine}}
+{{ if qemuarch == "mips": }}
+include bsp/mti-malta32/mti-malta32-be-standard
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
new file mode 100644
index 0000000..e301b22
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
@@ -0,0 +1,6 @@
+kconf hardware {{=machine}}.cfg
+
+include features/logbuf/size-normal.scc
+
+kconf hardware user-config.cfg
+include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..14cefa6
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,4 @@
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.2) kernel? (y/n)" default:"y"}}
+
+{{ if use_default_kernel == "n": }}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.2"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
new file mode 100644
index 0000000..21e5234
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -0,0 +1,61 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/qemu-ppc32" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
new file mode 100644
index 0000000..c0e22c7
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -0,0 +1,61 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemu-ppc32" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
new file mode 100644
index 0000000..56c4029
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -0,0 +1,63 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"yocto/standard/arm-versatile-926ejs" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/qemu-ppc32" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/mti-malta32-be" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
new file mode 100644
index 0000000..36c5cc3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -0,0 +1,63 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/arm-versatile-926ejs" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/qemu-ppc32" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/mti-malta32-be" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore b/scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
new file mode 100644
index 0000000..6c2db22
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
@@ -0,0 +1,32 @@
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+{{ preferred_kernel = kernel_choice.split('_')[0] }}
+{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+require conf/machine/include/tune-x86_64.inc
+require conf/machine/include/ia32-base.inc
+
+{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
+
+{{ if xserver == "y": }}
+{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
+
+{{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
+{{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
+{{ if xserver == "y": }}
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+{{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
+           ${XSERVER_IA32_VESA} \
+{{ if xserver == "y" and xserver_choice == "xserver_i915": }}
+           ${XSERVER_IA32_I915} \
+{{ if xserver == "y" and xserver == "y": }}
+           "
+
+{{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
+APPEND += "video=vesafb vga=0x318"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
new file mode 100644
index 0000000..96b94b4
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Intel Graphics Driver"
+    Driver	"intel"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Intel Graphics Driver"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Generic VESA"
+    Driver	"vesa"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Generic VESA"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
new file mode 100644
index 0000000..ecb0f01
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
new file mode 100644
index 0000000..2a32fea
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -0,0 +1,8 @@
+define KMACHINE {{=machine}}
+define KTYPE standard
+define KARCH x86_64
+
+include bsp/common-pc-64/common-pc-64-standard
+branch {{=machine}}
+
+include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg
new file mode 100644
index 0000000..b4b82d7
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg
@@ -0,0 +1,47 @@
+CONFIG_PRINTK=y
+
+# Basic hardware support for the box - network, USB, PCI, sound                     
+CONFIG_NETDEVICES=y
+CONFIG_ATA=y
+CONFIG_ATA_GENERIC=y
+CONFIG_ATA_SFF=y
+CONFIG_PCI=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_USB_SUPPORT=y
+CONFIG_USB=y
+CONFIG_USB_ARCH_HAS_EHCI=y
+CONFIG_R8169=y
+CONFIG_PATA_SCH=y
+CONFIG_MMC_SDHCI_PCI=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_NET=y
+CONFIG_USB_UHCI_HCD=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_HDA_INTEL=y
+
+# Make sure these are on, otherwise the bootup won't be fun                         
+CONFIG_EXT3_FS=y
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_MODULES=y
+CONFIG_SHMEM=y
+CONFIG_TMPFS=y
+CONFIG_PACKET=y
+
+CONFIG_I2C=y                                                                        
+CONFIG_AGP=y                                                                        
+CONFIG_PM=y                                                                         
+CONFIG_ACPI=y                                                                       
+CONFIG_INPUT=y                                                                      
+                                                                                    
+# Needed for booting (and using) USB memory sticks                                  
+CONFIG_BLK_DEV_LOOP=y                                                               
+CONFIG_NLS_CODEPAGE_437=y                                                           
+CONFIG_NLS_ISO8859_1=y                                                              
+                                                                                    
+CONFIG_RD_GZIP=y
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
new file mode 100644
index 0000000..5b8ccba
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
@@ -0,0 +1,17 @@
+kconf hardware {{=machine}}.cfg
+
+include features/serial/8250.scc
+{{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
+include cfg/vesafb.scc
+{{ if xserver == "y" and xserver_choice == "xserver_i915": }}
+include features/i915/i915.scc
+include cfg/usb-mass-storage.scc
+include features/power/intel.scc
+
+include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
+kconf hardware user-config.cfg
+include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..14cefa6
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,4 @@
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.2) kernel? (y/n)" default:"y"}}
+
+{{ if use_default_kernel == "n": }}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.2"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
new file mode 100644
index 0000000..144acd3
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
new file mode 100644
index 0000000..7fc48a5
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
new file mode 100644
index 0000000..377e6a7
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -0,0 +1,41 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
new file mode 100644
index 0000000..17c98ee
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -0,0 +1,39 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "y": }}
+KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if need_new_kbranch == "y": }}
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+
+KMACHINE_{{=machine}}  = "{{=machine}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
-- 
1.7.0.4


