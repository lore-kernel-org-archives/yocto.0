Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.7044.1618364495372751291
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 18:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M8sX4egT;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id u11so5772882pjr.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 18:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Sh3FtOZOhthGr/8RD4rH3+tP48x+1KmnN3F22wn7yUI=;
        b=M8sX4egTMwBNcl9UZ/CoqVoL4Nmjag/PGHKeawn/iC4Qsed6tUHrTrLB+z7q29aPhK
         6AliLHRvvl0NjTfX6LMuwNy5zcK/nB/C20m3Vkze2yz34W+wQKZKSh+ueyO8rPNTJpnb
         o0RdwWHQte+mktpdVnMrg+az9sQ5KRlAmv759YMgIDhkJdE3h5VUpJnNporCgyZo6D23
         icsvE6SKwKI1KdpKg1PjVeH+VmKJs3i/kLgsWb+EjP7gRfiA8PrdtYDftN5WetuHa2+D
         nF01cgHbIA33l9H3t394mbfgohdoA9Hcamz/Bqmon+NGUlQKaFqhSJnNmmVjGiAHdCWm
         ZOkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Sh3FtOZOhthGr/8RD4rH3+tP48x+1KmnN3F22wn7yUI=;
        b=OMAn3QwZ1xZSh1VAJP0tE82LBw6YDY332rwKCgXXTriwW3yEYB4DMRzDvDhZ+2Mpu7
         OaJmzXy9rrSoebzVsZOA93ML/yvY0z+cIRE7C6YZDCh+brSoxvkhI0RwUaRlouoTpIva
         4lf575nUdsRGegZRLWE+GuUOy1n0yDDHdC1dlZ2qUEFA8IynG5KJbSG0a7+oydDXwQpn
         EWw1zVWZk94cTgParTinEHn7d0R0/hmY5GvLN8XDB8vK8+mPBL7o9C9iZvaLoxAyRQA9
         +PWAdh4evaRKduaZ7uaF0t9bwIFPHMygH1uV6YXERww/rs8NApzKc/zMw5hxsgafVh/e
         vz0A==
X-Gm-Message-State: AOAM532UFngrZ7F/XnWlzuSeK+0O443bGN+QVBDqC1E/ntUNPHkYAa0A
	fn5rqzooY8WfjPUB2QzBdHWjldy0hqezjw==
X-Google-Smtp-Source: ABdhPJwP8zBdNxhdcrR1GvuoP3Kv1hjGFoXGltRTutJjtB7I94meuapJq87RaX8gV9otDeuX9+wdhA==
X-Received: by 2002:a17:90a:4d86:: with SMTP id m6mr704109pjh.197.1618364494615;
        Tue, 13 Apr 2021 18:41:34 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id g24sm13427307pgn.18.2021.04.13.18.41.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 18:41:34 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] lkrg-module: Add Linux Kernel Runtime Guard
Date: Wed, 14 Apr 2021 01:41:32 +0000
Message-Id: <20210414014132.2273249-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210414014132.2273249-1-akuster808@gmail.com>
References: <20210414014132.2273249-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For more info see: https://github.com/openwall/lkrg

Add to local.conf:
IMAGE_INSTALL_append = " kernel-module-lkrg"

Need these kconfig options enabled:
CONFIG_KALLSYMS_ALL=y
CONFIG_JUMP_LABEL=y
CONFIG_DEBUG_KERNEL=y

To invoke module:

sudo insmod {path-to-modules}/p_lkrg.ko kint_enforce=1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/files/makefile_cleanup.patch         | 73 +++++++++++++++++++
 recipes-kernel/lkrg/lkrg-module_0.9.0.bb      | 33 +++++++++
 2 files changed, 106 insertions(+)
 create mode 100644 recipes-kernel/lkrg/files/makefile_cleanup.patch
 create mode 100644 recipes-kernel/lkrg/lkrg-module_0.9.0.bb

diff --git a/recipes-kernel/lkrg/files/makefile_cleanup.patch b/recipes-kernel/lkrg/files/makefile_cleanup.patch
new file mode 100644
index 0000000..106dc3f
--- /dev/null
+++ b/recipes-kernel/lkrg/files/makefile_cleanup.patch
@@ -0,0 +1,73 @@
+Upstream-Status: Pending
+
+This needs more work. Its my starting point.
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: lkrg-0.9.0/Makefile
+===================================================================
+--- lkrg-0.9.0.orig/Makefile
++++ lkrg-0.9.0/Makefile
+@@ -4,28 +4,10 @@
+ # Author:
+ #  - Adam 'pi3' Zabrocki (http://pi3.com.pl)
+ ##
+-
+-P_OUTPUT = output
+ P_PWD ?= $(shell pwd)
+-P_KVER ?= $(shell uname -r)
+-P_BOOTUP_SCRIPT ?= scripts/bootup/lkrg-bootup.sh
+-TARGET := p_lkrg
+-ifneq ($(KERNELRELEASE),)
+-    KERNEL := /lib/modules/$(KERNELRELEASE)/build
+-else
+-    ## KERNELRELEASE not set.
+-    KERNEL := /lib/modules/$(P_KVER)/build
+-endif
+-
+-#
+-# Uncomment for debug compilation
+-#
+-# ccflags-m := -ggdb -DP_LKRG_DEBUG_BUILD -finstrument-functions
+-# ccflags-y := ${ccflags-m}
+-# p_lkrg-objs += src/modules/print_log/p_lkrg_debug_log.o
+ 
+-obj-m += $(TARGET).o
+-$(TARGET)-objs += src/modules/ksyms/p_resolve_ksym.o \
++obj-m := p_lkrg.o
++p_lkrg-y := src/modules/ksyms/p_resolve_ksym.o \
+                   src/modules/hashing/p_lkrg_fast_hash.o \
+                   src/modules/comm_channel/p_comm_channel.o \
+                   src/modules/integrity_timer/p_integrity_timer.o \
+@@ -91,23 +73,14 @@ $(TARGET)-objs += src/modules/ksyms/p_re
+                   src/p_lkrg_main.o
+ 
+ 
+-all:
+-#	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules CONFIG_DEBUG_SECTION_MISMATCH=y
+-	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules
+-	mkdir -p $(P_OUTPUT)
+-	cp $(P_PWD)/$(TARGET).ko $(P_OUTPUT)
+-
+-install:
+-	$(MAKE) -C $(KERNEL) M=$(P_PWD) modules_install
+-	depmod -a
+-	$(P_PWD)/$(P_BOOTUP_SCRIPT) install
+ 
+-uninstall:
+-	$(P_PWD)/$(P_BOOTUP_SCRIPT) uninstall
++modules:
++	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) modules
++
++modules_install:
++	$(MAKE) -C $(KERNEL_SRC) M=$(P_PWD) modules_install
+ 
+ clean:
+-	$(MAKE) -C $(KERNEL) M=$(P_PWD) clean
+-	$(RM) Module.markers modules.order
+-	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/Module.markers
+-	$(RM) $(P_PWD)/src/modules/kmod/client/kmod/modules.order
+-	$(RM) -rf $(P_OUTPUT)
++	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
++	rm -f Module.markers Module.symvers modules.order
++	rm -rf .tmp_versions Modules.symvers
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.0.bb b/recipes-kernel/lkrg/lkrg-module_0.9.0.bb
new file mode 100644
index 0000000..dbc195d
--- /dev/null
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.0.bb
@@ -0,0 +1,33 @@
+SUMMARY = "Linux Kernel Runtime Guard"
+DESCRIPTION="LKRG performs runtime integrity checking of the Linux \
+kernel and detection of security vulnerability exploits against the kernel."
+SECTION = "security"
+HOMEPAGE = "https://www.openwall.com/lkrg/"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d931f44a1f4be309bcdac742d7ed92f9"
+
+DEPENDS = "virtual/kernel elfutils"
+
+SRC_URI = "https://www.openwall.com/lkrg/lkrg-${PV}.tar.gz \
+           file://makefile_cleanup.patch "
+
+SRC_URI[sha256sum] = "a997e4d98962c359f3af163bbcfa38a736d2a50bfe35c15065b74cb57f8742bf"
+
+S = "${WORKDIR}/lkrg-${PV}"
+
+inherit module kernel-module-split
+
+MAKE_TARGETS = "modules"
+
+MODULE_NAME = "p_lkrg"
+
+module_do_install() {
+    install -d ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
+    install -m 0644 ${MODULE_NAME}.ko \
+    ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko
+}
+
+RPROVIDES_${PN} += "kernel-module-lkrg"
+
+COMPATIBLE_HOST = "(i.86|x86_64|arm|aarch64).*-linux"
-- 
2.25.1

