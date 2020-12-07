Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web08.7628.1607353275953510006
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 07:01:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GUq3lgHb;
 spf=pass (domain: gmail.com, ip: 209.85.208.195, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f195.google.com with SMTP id f24so15235616ljk.13
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 07:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y/EB/dkn6xVWHC6G/qJqGPQQOUYXZhsyc2GUf8xaIU4=;
        b=GUq3lgHbw9hzzmwc+dVmTy5rwNwB3c/mE0+ltM4EG7o2//zF7kIgeaf8gVhSrSedq8
         MwMJmHc1f/x8mm76zJ+UaphSj5EW1jqMTC/yI1LxLJLEbSXN4l/shpRPTJLt2grlqhRk
         kwnz9Uyg4J0BKeW8gw1l+HdNwUXjYSUVad+P8WgaDSnA/HcUMexqFEdHDP9vpdY/ZxrR
         0O0yQNZW4WiCI67Y/1qLQmFL2QyDN4arEX/xFNVHzTnJskEMrALxJ3o7AK/oaDTUiKN+
         ofrPj10YYubiFUEcDzkVSn/EpO1spMrth/XFvxlAd4t0FuXwF7cSfiHBzRgTtnBUf3qe
         dx6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y/EB/dkn6xVWHC6G/qJqGPQQOUYXZhsyc2GUf8xaIU4=;
        b=cgq9xQCukJFXlxgs/14x6Ie1OuCisSFws5EDzYbDPRxGpp03QACD72Rav2mXEH0SHp
         V4+Rf2gNvyxkZFRGmTTXe+s/sKWh5zp2xt8iRJqU1emLhhwltc5ZmjSuQz2UnUR6RdAk
         HPKMVbHxKxJe3l0tVTe0NQU5Yok6OKeCm9c2rw36cckAGnEum6pxa9SeTcmv778T248q
         nYLBAtxD1HaEOAbPERjquyDUaXpjBCW+NbjX9khDzaicLirUvxM/lybyJxlChycOcaB5
         Bn+Gft6fXd+kFQnmAOk+s6+mkGqdOGL000zQBEa80ykZ0cOgbOmPAlbwPS+tw6axU++p
         usRQ==
X-Gm-Message-State: AOAM530hTCUbeTN9WbTRfMC63kqfIcEV5g2XLkXvFaydYYbfm/9XgNxv
	3NMVdhew2HLuTRnBeVRlSQuuTLsw5T6jHA==
X-Google-Smtp-Source: ABdhPJy/64O+CsWdT+OdiojPP8rohXDEi00GLNGElwDMl5SfeHb2BKBfVJkqT987N7Qa/4kwoNkgyA==
X-Received: by 2002:a2e:320c:: with SMTP id y12mr9461068ljy.362.1607353272513;
        Mon, 07 Dec 2020 07:01:12 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 5sm2928681lfr.197.2020.12.07.07.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:01:12 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 5/5] zephyr-flash-pyocd.bbclass: support for flashing via pyocd
Date: Mon,  7 Dec 2020 15:01:04 +0000
Message-Id: <20201207150104.12208-6-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207150104.12208-1-zmuda.w@gmail.com>
References: <20201207150104.12208-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

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
index 6463339..bda872b 100644
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
+  - arduino-101-sss
+  - arduino-101
+  - arduino-101-ble
+ * pyocd:
+  - 96b-nitrogen
+
+To flash the example you built with command e.g.
+
+    $ MACHINE=96b-nitrogen bitbake zephyr-philosophers
+
+call similar command with explicit flash_usb command:
+
+    $ MACHINE=96b-nitrogen bitbake zephyr-philosophers -c flash_usb
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

