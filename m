Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BBA0E0144D
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:40 -0700 (PDT)
Received: by mail-pz0-f48.google.com with SMTP id z8so2264105dad.35
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=mZWwHB1I0SUrt/41wydBLYdLwdLGfcznhJGwFRlfP/I=;
	b=G1kUOSdbvRcKptbkCM0TkGtGhd/lz/QpfrcIkIxne+LGa+jv9iyyXzkoYAbrKIKaFt
	ykFjd0eWFnNeYoH0xtQLeYF3nqrntH6BG0NQR4yiqamUb8QpXEy1XcFGrEF+q5xrLK1h
	ZcdQpq0SPNWIPdhI65LE8K/oerkohPu8j9zcIFrojQ2oxEZiNsBE/XqcS1CE6P5ua/BO
	es+W5UPNJ716wjl0e3MfIwMLAKPbGn2tVmz2iW2gNGIomcNjKY/5l8x0FI6L9yAB9hoQ
	hXkCmHRfaEtNukQZV11xOOCpYrNe34nia5Nq8uuujq0kkiLxmX+/sMwBF4rl1LaZxSzh
	iVJA==
Received: by 10.68.217.229 with SMTP id pb5mr4066036pbc.20.1339651180508;
	Wed, 13 Jun 2012 22:19:40 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id he9sm8220192pbc.68.2012.06.13.22.19.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Jun 2012 22:19:40 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 13 Jun 2012 22:19:33 -0700
Message-Id: <c4e7ebadf9f1839a5ef06a12d2f3e3e63255495e.1339650859.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339650859.git.dvhart@linux.intel.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1339650859.git.dvhart@linux.intel.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnj3w56A2V80+L4ReVO+1snyH0WqS2iXO7CYohmI4VnVwF9rXg1Ui3Vz9O1VZAXE+usEk52
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] tiny-init: Basic init mechanism for poky-tiny
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
X-List-Received-Date: Thu, 14 Jun 2012 05:19:40 -0000

Currently poky-tiny images will boot and run /bin/sh, which results in
error messages to the console about being unable to open the tty and job
control being disabled.

The shell must be session leader to open the tty, and the tty must not
be /dev/console (it should be a vt or a physical tty like ttyS0), the
tty is required for job control (handling signals, etc.).

The goals of poky-tiny are to be an initial starting point from which to
build a distribution that does what you want, and NOTHING more.

This patch results in a system that boots with the virtual filesystems
mounted, the local network interface up, and a shell with job control
running, and a hook (/etc/rc.local) for easy customization. Nothing
else.

Thanks to Tim Bird for his suggestion to include support for rc.local by
default.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tim Bird <tim.bird@am.sony.com>
---
 meta-yocto/conf/distro/poky-tiny.conf              |    2 +-
 meta-yocto/recipes-core/tiny-init/files/init       |   21 ++++++++++++++++
 .../recipes-core/tiny-init/files/rc.local.sample   |   23 +++++++++++++++++
 meta-yocto/recipes-core/tiny-init/tiny-init.bb     |   26 ++++++++++++++++++++
 4 files changed, 71 insertions(+), 1 deletions(-)
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/init
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/rc.local.sample
 create mode 100644 meta-yocto/recipes-core/tiny-init/tiny-init.bb

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index d6295f7..541e194 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -93,7 +93,7 @@ DISTRO_FEATURES = "tiny \
 # Use tmpdevfs and the busybox runtime services
 VIRTUAL-RUNTIME_dev_manager = ""
 VIRTUAL-RUNTIME_login_manager = ""
-VIRTUAL-RUNTIME_init_manager = ""
+VIRTUAL-RUNTIME_init_manager = "tiny-init"
 VIRTUAL-RUNTIME_keymaps = ""
 
 # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
new file mode 100644
index 0000000..bf2817d
--- /dev/null
+++ b/meta-yocto/recipes-core/tiny-init/files/init
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+# Mount the Linux kernel virtual filesystems
+mount none -t proc /proc
+mount none -t sysfs /sys
+mkdir /dev/pts
+mount none -t devpts /dev/pts
+
+ifup lo
+
+# Allow for distro or local customizations
+if [ -f /etc/rc.local ] ; then
+	source /etc/rc.local
+fi
+
+# Become session leader and try to find a real tty (e.g. ttyS0)
+while true; do
+	setsid cttyhack sh
+	echo "Console sh exited with $?, respawning..."
+	sleep 1
+done
diff --git a/meta-yocto/recipes-core/tiny-init/files/rc.local.sample b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
new file mode 100644
index 0000000..d9e198a
--- /dev/null
+++ b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
@@ -0,0 +1,23 @@
+#!/bin/sh
+
+# Start services and customize the boot process here.
+echo "Running /etc/rc.local..."
+
+# Use init scripts included with packages such as dropbear
+#/etc/init.d/dropbear start
+
+# Spawn a getty manually
+#setsid /sbin/getty 115200 ttyS2
+
+# Print a banner
+#echo "You are running a poky-tiny image brought to you by the Yocto Project."
+
+# Setup a debugging environment
+#mkdir /debugfs
+#mount none -t debugfs /debugfs
+
+# Load modules (note: linux-yocto-tiny does not have module support by default)
+#modprobe yourdriver
+
+# DO NOT run any long running tasks or loops as these will delay
+# the /init script and the console shell.
diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
new file mode 100644
index 0000000..1cf46ed
--- /dev/null
+++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
@@ -0,0 +1,26 @@
+SUMMARY = "Poky-tiny init"
+DESCRIPTION = "Basic init system for poky-tiny"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+PR = "r0"
+
+SRC_URI = "file://init \
+	   file://rc.local.sample \
+	  "
+
+do_configure() {
+	:
+}
+
+do_compile() {
+	:
+}
+
+do_install() {
+	install -d ${D}${sysconfdir}
+	install -m 0755 ${WORKDIR}/init ${D}
+	install -m 0755 ${WORKDIR}/rc.local.sample ${D}${sysconfdir}
+}
+
+FILES_${PN} = "/init ${sysconfdir}/rc.local.sample"
-- 
1.7.5.4


