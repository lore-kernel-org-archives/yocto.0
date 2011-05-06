Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (unknown [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A625A4C80132
	for <yocto@yoctoproject.org>; Fri,  6 May 2011 07:45:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 May 2011 05:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,326,1301900400"; d="scan'208";a="743297219"
Received: from unknown (HELO helios) ([10.255.16.100])
	by orsmga001.jf.intel.com with SMTP; 06 May 2011 05:45:32 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 06 May 2011 13:45:32 +0100
Message-Id: <622dd8a4a6b268da6ff940f7c0f7050b39ea3b9e.1304685476.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1304685476.git.paul.eggleton@linux.intel.com>
References: <cover.1304685476.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 27 Apr 2011 13:47:25 +0100
Date: Fri, 06 May 2011 13:45:32 +0100
To: yocto@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] Add emenlow pieces removed from oe-core
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
X-List-Received-Date: Fri, 06 May 2011 12:45:54 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../tasks/task-poky-sdk-gmae.bbappend              |    1 +
 .../task-poky-standalone-gmae-sdk-target.bbappend  |    1 +
 .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ++++
 .../clutter/clutter-1.6_1.6.14.bbappend            |    4 ++++
 .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ++++
 .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 ++
 .../recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend     |    2 ++
 8 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
 create mode 100644 meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
 create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter_git.bbappend
 create mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
 create mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend

diff --git a/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend b/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..9743e2c
--- /dev/null
+++ b/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_task-core-tools-profile_append_emenlow = " lttng-ust systemtap"
+
diff --git a/meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend b/meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
new file mode 100644
index 0000000..ff258e0
--- /dev/null
+++ b/meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
@@ -0,0 +1 @@
+SDK-EXTRAS_emenlow ?= " lttng-ust-dev"
diff --git a/meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend b/meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
new file mode 100644
index 0000000..ff258e0
--- /dev/null
+++ b/meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
@@ -0,0 +1 @@
+SDK-EXTRAS_emenlow ?= " lttng-ust-dev"
diff --git a/meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend b/meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
new file mode 100644
index 0000000..71677ad
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
@@ -0,0 +1,4 @@
+DEPENDS_emenlow = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
+EXTRA_OECONF_emenlow = "${BASE_CONF} --with-flavour=glx"
+PACKAGE_ARCH_emenlow = "${MACHINE_ARCH}"
+
diff --git a/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend b/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
new file mode 100644
index 0000000..71677ad
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
@@ -0,0 +1,4 @@
+DEPENDS_emenlow = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
+EXTRA_OECONF_emenlow = "${BASE_CONF} --with-flavour=glx"
+PACKAGE_ARCH_emenlow = "${MACHINE_ARCH}"
+
diff --git a/meta-emenlow/recipes-graphics/clutter/clutter_git.bbappend b/meta-emenlow/recipes-graphics/clutter/clutter_git.bbappend
new file mode 100644
index 0000000..71677ad
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/clutter/clutter_git.bbappend
@@ -0,0 +1,4 @@
+DEPENDS_emenlow = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
+EXTRA_OECONF_emenlow = "${BASE_CONF} --with-flavour=glx"
+PACKAGE_ARCH_emenlow = "${MACHINE_ARCH}"
+
diff --git a/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend b/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
new file mode 100644
index 0000000..92eabf2
--- /dev/null
+++ b/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
@@ -0,0 +1,2 @@
+QT_GLFLAGS_emenlow = "-opengl"
+
diff --git a/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend b/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
new file mode 100644
index 0000000..92eabf2
--- /dev/null
+++ b/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
@@ -0,0 +1,2 @@
+QT_GLFLAGS_emenlow = "-opengl"
+
-- 
1.7.4.1


