Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web10.15674.1607616171267136475
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:02:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9LeHPm8;
 spf=pass (domain: gmail.com, ip: 209.85.167.66, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f66.google.com with SMTP id u18so8942009lfd.9
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RQBjFtoAgapnp3zYNqsGsQmGZ9pYe3r7SN/d8U5ffxo=;
        b=A9LeHPm8wSQDxY7GF0fV+iMEMLZSsNhzUAuJCzgtUeWsOhHfCx51aMULEVDO4vwZqY
         VP0FfGi+0iIJy4XdK1sqXBjd9iX/7N2fBXPwdfqAIrcgBjxSERmVC4I/q2mE+dweBuQp
         c45mymo9RoN3GZxL5omnQieFjQqkexW4uMSJpv+Eh0QTatyARyfPAb/8mSlBxtJwlnGl
         juHdHkeHSNkGXkFoQ3NYKoI9PI1EzYOC0YHaFW0rc3qU/WWORLYlVH0GlZxRUa4Xc+x0
         I8BJiaIF070DUiBvPE9h/o0pL8OFeo0pjNiS+HBN9BRnUbjnLFlFMSYJ70eLPnrtRQOq
         nr1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RQBjFtoAgapnp3zYNqsGsQmGZ9pYe3r7SN/d8U5ffxo=;
        b=Z6od4tKh53/4JgNkXaPjQ6MxdcTWz06rJlJjMxd9RUBq5Fb6ZoeE+dAeOUv1hG/3vE
         +J6GfRjmTq3HDf0yefyFFjK27Vg1rXKq1TwYvTcPs+nrVGdzS+3vxw4z/5VMEatMY7Q0
         mvf6AhJDncA22JHMAPHRIzbytxQLgWgLbnbZxq6eoVzXMwAumWMq59ej83eGJ5kRbyOk
         t4Z4NyN4FwBBYPyElJ+mPQUT3WEcujvQirYF7V7d5PN4to+uC1f2SWzBlOqn4j5OdZlF
         hwCGVWlrQN7HbuQEk07CEvAS6Gt31uR0FffjYCAgBgCX2YF/9i06C5zUA1V3uAZKS6+H
         Gmhg==
X-Gm-Message-State: AOAM530UHxnBJIvYpGL8A8sx+pzorIvIHhnberZcOEwPPt0FHrkuJ0w3
	cwJ26CI6J4G/JcUVOLj29CEnS2Ngh38Stg==
X-Google-Smtp-Source: ABdhPJz6C/LcDoMdGnUu3eiQGyQfpMfiHmabWfj10HOGxTZyaOgMr9N1Apm7IrtLJKzBwvXgywnTCA==
X-Received: by 2002:a19:6005:: with SMTP id u5mr2978175lfb.367.1607616169376;
        Thu, 10 Dec 2020 08:02:49 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id n10sm646744ljg.139.2020.12.10.08.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 08:02:49 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v3 4/5] zephyr-flash-pyocd.bbclass: support for flashing via pyocd
Date: Thu, 10 Dec 2020 16:02:10 +0000
Message-Id: <20201210160211.71850-5-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201210160211.71850-1-zmuda.w@gmail.com>
References: <20201210160211.71850-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Implement do_flash_usb for boards supported by pyocd:

    MACHINE=xxx bitbake yyy -c flash_usb

Pyocd support abundance of boards, however for now this
meta-layer supports only one board that can be flashed
using pyocd, that is 96Boards Nitrogen.

Describe the feature in README.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 README.txt                         | 23 +++++++++++++++++++++++
 classes/zephyr-flash-pyocd.bbclass | 16 ++++++++++++++++
 conf/machine/96b-nitrogen.conf     |  1 +
 3 files changed, 40 insertions(+)
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
index 0000000..04500af
--- /dev/null
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -0,0 +1,16 @@
+python do_flash_usb() {
+    from pyocd.core.helpers import ConnectHelper
+    from pyocd.flash.file_programmer import FileProgrammer
+
+    image = f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.elf"
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
-- 
2.25.1

