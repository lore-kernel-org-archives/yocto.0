Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
 by mx.groups.io with SMTP id smtpd.web12.2301.1607285742147644341
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 12:15:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jatys0vm;
 spf=pass (domain: gmail.com, ip: 209.85.167.68, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f68.google.com with SMTP id z21so15014203lfe.12
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 12:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VvnoazjpJmuSIbNBDXuCOcnvXciR7imnMgNKK2ZwK4U=;
        b=Jatys0vmARFzvDm/reAZ3uJPD/YiohgpfVE4md5KwKZNs04EIUpUQ1ZdIXdvrmF/iQ
         UPpNgFq8t01ZL1mV8yvpWAIphnCg+uh2Dld1EjM7TyhzDRkvB6ErpxD2dftgIIx7EQoP
         UZA3kEbd5WysP2IDlBNioKpyalb9h6g7Eb2H6Zu1WyeCV9IrgIhtHScuKiezYKyC8YS5
         QMkkUX5OwZyIQRSMzLI+sRebXqtNjJYixtFTnc2mYBu3NmCKUIfQScXg+QWrtr05oG3V
         hwAOLdxzfx5frBsAfvzwzchAGrcyKKrQsbcdRSj97N7czo5LqMT3FKHZK+WYWwj/8ryK
         YmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VvnoazjpJmuSIbNBDXuCOcnvXciR7imnMgNKK2ZwK4U=;
        b=ED5V5wAdgKatsUODkjlEBMcKz/wZLHCgVQ4tRb2VY58PngGKzXE7m592gTvEmJh6cK
         JphXseWRPpQkXg3RSaP92EYZQedDZweSTnlRndBxfuMcwXC1rbavO3ey4XPWGwqO1S9+
         gB5o+XtYHzg4BAihqKuxyqgfVlVflq1guSrWdzRbChLCl5ukH2ZcvD26/862wyp7eB8x
         lA1f8vaAwZOP6PEfpIpCkaPBN41l1WzkzNI6cw5OlTzS67fodXBvmKVtCWhtSs9qTS4A
         IZmgGJ6XMkil7AMgS9I/6Jcyij2NRawwqeVMouWPDGNxupEidHfryyDuHMg5ZTlm1ccA
         TQ0Q==
X-Gm-Message-State: AOAM530Tmg5vqZaam2eOlkF+1LcAIycXgs54YccgVfVtD3C2aSJiZw6H
	3va2BbUucnwV4y/vMgc66kRIQqBqFSCi4w==
X-Google-Smtp-Source: ABdhPJzNX83YekMpZgEuM27AvCMu37XGo04WWGuxZ54THzIrgvoVNY/7oUNBz/yNeRrLB45QFBJKkg==
X-Received: by 2002:ac2:5192:: with SMTP id u18mr715232lfi.225.1607285740289;
        Sun, 06 Dec 2020 12:15:40 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 16sm530682ljr.11.2020.12.06.12.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 12:15:40 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com,
	zbigniew.bodek@huawei.com,
	jaroslaw.marek@huawei.com,
	robert.drab@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: support for flashing via pyocd
Date: Sun,  6 Dec 2020 20:15:21 +0000
Message-Id: <20201206201521.3377-6-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Flash boards supported via pyocd:

    MACHINE=xxx bitbake yyy -c flash_usb

The only supported board for now is 96Boards Nitrogen. Modify its
config accordingly.

Modify helloworld and philosopers samples with adidtional .hex
output file deployment, as this format is required by pyocd.

Describe the feature in README.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 README.txt                                    | 23 +++++++++++++++++++
 classes/zephyr-flash-pyocd.bbclass            | 17 ++++++++++++++
 conf/machine/96b-nitrogen.conf                |  1 +
 .../zephyr-kernel/zephyr-helloworld.bb        |  1 +
 .../zephyr-kernel/zephyr-philosophers.bb      |  1 +
 5 files changed, 43 insertions(+)
 create mode 100644 classes/zephyr-flash-pyocd.bbclass

diff --git a/README.txt b/README.txt
index 6463339..4366764 100644
--- a/README.txt
+++ b/README.txt
@@ -43,6 +43,29 @@ The same sample, for Nios2 image:
     $ MACHINE=qemu-nios2 bitbake zephyr-philosophers
     $ runqemu qemu-nios2
 
+Flashing
+=================================
+
+You can flash Zephyr samples to boards. Currently, the following MACHINEs
+are supported:
+ * DFU:
+  - arduino_101_sss
+  - arduino_101
+  - arduino_101_ble
+ * pyocd:
+  - 96b_nitrogen
+
+To flash the example you built with command e.g.
+
+    $ MACHINE=96b_nitrogen bitbake zephyr-philosophers
+
+call similar command with explicit flash_usb command:
+
+    $ MACHINE=96b_nitrogen bitbake zephyr-philosophers -c flash_usb
+
+dfu-util and/or pyocd need to be installed in your system. If you observe
+permission errors or the flashing process seem to hang, follow those instructions:
+https://github.com/pyocd/pyOCD/tree/master/udev
 
 Building and Running Zephyr Tests
 =================================
diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
new file mode 100644
index 0000000..aafe9e7
--- /dev/null
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -0,0 +1,17 @@
+
+python do_flash_usb() {
+    from pyocd.core.helpers import ConnectHelper
+    from pyocd.flash.file_programmer import FileProgrammer
+
+    image = f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.hex"
+    bb.plain(f"Attempting to flash {image} to board {d.getVar('BOARD')}")
+
+    with ConnectHelper.session_with_chosen_probe() as session:
+        FileProgrammer(session).program(image)
+        session.board.target.reset()
+}
+
+addtask do_flash_usb
+
+do_flash_usb[nostamp] = "1"
+do_flash_usb[vardepsexclude] = "BB_ORIGENV"
diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
index d1905f2..998db4c 100644
--- a/conf/machine/96b-nitrogen.conf
+++ b/conf/machine/96b-nitrogen.conf
@@ -4,4 +4,5 @@
 #@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
 
 require conf/machine/include/nrf52832.inc
+ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
 ARCH_96b-nitrogen = "arm"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
index 1400e72..9b77975 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${PN}.elf
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex ${DEPLOYDIR}/${PN}.hex
 }
 
 addtask deploy after do_compile
diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
index 5f7fbcb..f720999 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${PN}.elf
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex ${DEPLOYDIR}/${PN}.hex
 }
 
 addtask deploy after do_compile
-- 
2.25.1

