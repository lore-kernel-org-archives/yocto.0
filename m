Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.5834.1623401540970214857
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:52:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X1JkU5Ku;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id r198so7449528lff.11
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1/8oA0kdPSTKWQWjKHYYuqwL+oMRB3o7QVfjOyTor1k=;
        b=X1JkU5Ku+RkaE3LFYrmtyaVKSqxhwCJJQ/W/+KhVmLr0GExCooCgxqF8V0H5wH8CFM
         uL8qH599C4QK8CWtwaju4WeezruhtW6jTcnphwe23XHTIOFbelwy81n7YNEhdu7I8fiz
         9dGZ4r2GS/RQDLls1/WkHaFVXYcbwtMuLUiU7LRGckvG0+GPvzG+kj5ngN/wPA+K7e1O
         aP82jS04pDsBnuVBJWXmyquYd9Q8RYbt7/myWowhaC1FjfpDw2XOZNW8AzpZ1R9Dh7mh
         iQm94pnNpWKQryHxVWr+xdlcV9TzUDpm+QA0PyeAGzAR9/zjSC45N5ARnW2PeQgBNqo9
         WCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1/8oA0kdPSTKWQWjKHYYuqwL+oMRB3o7QVfjOyTor1k=;
        b=CbKhx9eZWoiUZzdnKP4oTjNlRAvjwZZZqiwlKzYPixnWfatjL4dsyvcgeBaGsgYjsQ
         tib4aRaHX3XsrUBZ9qhHGiFpNbU6UtGBggOm2CDbBeh8qf62CG3/6XHq/1aApeN/osl9
         TyqyfpkwwIiiZeeFfsAaK1Ehqch3AoMfpDOfx87qQF0m1pKzMGUzpm/OwCO2sXHAOO1r
         yrI2zVR3gLogYGZ5J81rfpRwXOvJO4VQQ2ANcyVgxb23Ao0O2DWb0ptdFHl9ue4s2kv3
         I3rU76oSNpS3Gl90Ov0TSUkKnOOo8sdJXUF+sAKmmn6pz9+iyCBp49HWYhckLMOfwhC2
         Btsg==
X-Gm-Message-State: AOAM531OoH2QrYmmKSdFgLQ5sX8AlyxzhA87+6eWzDeSQMDvAOoRGJOu
	S1G1KnNvdOIfjahARQd+Gftk9yQbQSnM7sUl
X-Google-Smtp-Source: ABdhPJz46Ji/Cnup4di6pSK14DfQ7Fb8G6lTZru08OTlu+Et/IxHWeVjg03Wns5oleUxssFF78JHiw==
X-Received: by 2002:a05:6512:3242:: with SMTP id c2mr2049501lfr.215.1623401539066;
        Fri, 11 Jun 2021 01:52:19 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id e29sm528825lfb.258.2021.06.11.01.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:52:18 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Nagesh Shamnur <nagesh.shamnur@huawei.com>
Subject: [meta-zephyr][PATCH 3/3] zephyr-flash-bossac.bbclass: Enable board flashing via bossac
Date: Fri, 11 Jun 2021 10:52:05 +0200
Message-Id: <20210611085205.1870988-4-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210611085205.1870988-1-zmuda.w@gmail.com>
References: <20210611085205.1870988-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Nagesh Shamnur <nagesh.shamnur@huawei.com>

Currently only dfu and pyocd flashing are supported. Some boards
such as Arduino Nano 33 BLE can be flashed via bossac which is
released by Arduino repo. Find the installed Arudino version of
bossac and flash using that tool.

Signed-off-by: Nagesh Shamnur <nagesh.shamnur@huawei.com>
---
 classes/zephyr-flash-bossac.bbclass   | 50 +++++++++++++++++++++++++++
 conf/machine/arduino-nano-33-ble.conf |  1 +
 2 files changed, 51 insertions(+)
 create mode 100644 classes/zephyr-flash-bossac.bbclass

diff --git a/classes/zephyr-flash-bossac.bbclass b/classes/zephyr-flash-bossac.bbclass
new file mode 100644
index 0000000..50222d5
--- /dev/null
+++ b/classes/zephyr-flash-bossac.bbclass
@@ -0,0 +1,50 @@
+#@DESCRIPTION: class file to flash boards like Arduino Nano BLE which depends on bossac for flashing
+
+python do_flash_usb() {
+    import shutil
+    import subprocess
+    import serial.tools.list_ports
+
+    # Note: make sure the installed bossac is set to PATH before running flash_usb()
+    # Check if bossac is avaiable for flashing
+    origbbenv = d.getVar("BB_ORIGENV", False)
+    bossac_path = shutil.which("bossac", path=origbbenv.getVar('PATH'))
+
+    if not bossac_path:
+       bb.fatal("ERROR: bossac not found, please install first and add to PATH")
+
+    board = d.getVar('BOARD')
+
+    if board == 'arduino_nano_33_ble':
+        # find the serial port to which board is connected to
+        for port in serial.tools.list_ports.comports():
+            if 'Arduino Nano 33 BLE' in port.description:
+                serial_port = port.device
+                break
+        else:
+            bb.fatal("ERROR: board not connected for flashing. Connect via USB and enable permission to connected port")
+
+        image = "%s/%s.bin" % (d.getVar('DEPLOY_DIR_IMAGE'), d.getVar('PN'))
+
+        command = [bossac_path, '-p', serial_port , '-R', '-e', '-w', '-v', '-b', image]
+    else:
+        bb.fatal("ERROR: Unsupported board %s" % board)
+
+    bb.note("command: %s" % command)
+    bb.plain("Attempting to flash board: %s" % board)
+
+    # Random failure are a possibility here, retry till there is a success for finite times
+    for _ in range(10, 0, -1):
+        try:
+            subprocess.check_call(command)
+            bb.plain("Bossac Flashing board: %s Success " % board)
+            break
+        except subprocess.CalledProcessError as e:
+            bb.warn("Failed to flash %s (error code: %s). Retrying after 1 second..." % (board, e.returncode))
+            time.sleep(1)
+}
+
+addtask do_flash_usb after do_deploy
+
+do_flash_usb[nostamp] = "1"
+do_flash_usb[vardepsexclude] = "BB_ORIGENV"
diff --git a/conf/machine/arduino-nano-33-ble.conf b/conf/machine/arduino-nano-33-ble.conf
index e45cfc2..18ba056 100644
--- a/conf/machine/arduino-nano-33-ble.conf
+++ b/conf/machine/arduino-nano-33-ble.conf
@@ -4,5 +4,6 @@
 #@DESCRIPTION: Machine configuration for Arudino nano 33 ble and Arduino nano 33 ble sense
 
 require conf/machine/include/nrf52.inc
+ZEPHYR_INHERIT_CLASSES += "zephyr-flash-bossac"
 ARCH_arduino-nano-33-ble = "arm"
 
-- 
2.25.1

