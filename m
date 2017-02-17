Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDBA8E008D0; Thu, 16 Feb 2017 18:04:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A84E00724
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 18:04:14 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so2858145pfo.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 18:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=orqhLH8EqjY7nbABqgv3hmh6sa4vtKORs7h56lW3buw=;
	b=j8oSH3mHHYF4vowzFS7O2QNOKIhLnVm0znkoewJ8IGbzDA/hqqhbo+EkRbKyzsj6gT
	dW+EkK3yqdPs2r3w9ZEwuC5SrfVaWlMILlhZocVaDtfhB+HlLpMnAbAXQMEwtLmzFMKe
	j7z3W9T46XoDhdaHqdmXEAoxv70zWVepEmjQchI2Kou/qAVwpz5uCjZ8cmNvQdQQAM10
	Wqs9LNVNE3g6dDyDF7cceR4G0EsAoMpLrvIukZDqh0T1hSfDufb0lV2CUvv8D99y4tMW
	4hjHEg3Ma+yx4X70xpXSZgJrMH3qGFzvPPhO78FCEEkKB6hgM3uegsMfgh/CjLzmcKeX
	YGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=orqhLH8EqjY7nbABqgv3hmh6sa4vtKORs7h56lW3buw=;
	b=uMc/tjr0vWK+9GSxLJsuQv732PJfsbTWw0txErCU6nxuzmscygqGitH3n32/vyCTmu
	AmZN3psxfzFuXlkLxss1IrrJ5vOsIfxn66OP7AKV7uhan0VPH0xJlDnyFZUff2o+hJQp
	JdPjJstJsZJtUNIlq7Up2uKL4Oi0WlsjuuzFnRcWMK8ncCiJoOqEmg9celRLa4pVRdfW
	wcT6eRYtmW+/EDA9N5LEUOllkiO/Kr7zPmsgWJv0BFDiH/E6Z5gveXZUWXzFSAMlO4c2
	nOg5Xl7gFkBoMosf45En+D5HAIAf4kItZXN5AjmOmCYcU9eXdGp9vO4zADKHVYRGExTq
	9seg==
X-Gm-Message-State: AMke39l/zun4TYZD50M8xgofM7My/BtU/Huzuh0LNTEr4WoJuNvqgIVhJ3n7cGIpzpxL4A==
X-Received: by 10.84.232.129 with SMTP id i1mr7633094plk.129.1487297053781;
	Thu, 16 Feb 2017 18:04:13 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	y21sm15854694pgh.52.2017.02.16.18.04.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 18:04:12 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 18:04:05 -0800
Message-Id: <20170217020405.29044-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH] linux-firmware: Bring up wifi/ble interface on rpi3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Feb 2017 02:04:17 -0000

Currently the firmware is installed but kernel fails to load it
due this .txt file missing in the firmware directory and it ends
up with wifi/bluetooth i/f not being initialized. The error is
also in dmesg

[    3.120991] usbcore: registered new interface driver brcmfmac
[    3.148240] brcmfmac mmc1:0001:1: Direct firmware load for brcm/brcmfmac43430-sdio.txt failed with error -2

After applying this patch now ifconfig -a can list wlan0 interface
successfully.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../linux-firmware/files/brcmfmac43430-sdio.txt    | 66 ++++++++++++++++++++++
 .../linux-firmware/linux-firmware_%.bbappend       | 12 ++++
 2 files changed, 78 insertions(+)
 create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
 create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbappend

diff --git a/recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt b/recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
new file mode 100644
index 0000000..ea4f648
--- /dev/null
+++ b/recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
@@ -0,0 +1,66 @@
+# NVRAM file for BCM943430WLPTH
+# 2.4 GHz, 20 MHz BW mode
+
+# The following parameter values are just placeholders, need to be updated.
+manfid=0x2d0
+prodid=0x0727
+vendid=0x14e4
+devid=0x43e2
+boardtype=0x0727
+boardrev=0x1101
+boardnum=22
+macaddr=00:90:4c:c5:12:38
+sromrev=11
+boardflags=0x00404201
+boardflags3=0x08000000
+xtalfreq=37400
+nocrc=1
+ag0=255
+aa2g=1
+ccode=ALL
+
+pa0itssit=0x20
+extpagain2g=0
+#PA parameters for 2.4GHz, measured at CHIP OUTPUT
+pa2ga0=-168,7161,-820
+AvVmid_c0=0x0,0xc8
+cckpwroffset0=5
+
+# PPR params
+maxp2ga0=84
+txpwrbckof=6
+cckbw202gpo=0
+legofdmbw202gpo=0x66111111
+mcsbw202gpo=0x77711111
+propbw202gpo=0xdd
+
+# OFDM IIR :
+ofdmdigfilttype=18
+ofdmdigfilttypebe=18
+# PAPD mode:
+papdmode=1
+papdvalidtest=1
+pacalidx2g=42
+papdepsoffset=-22
+papdendidx=58
+
+# LTECX flags
+ltecxmux=0
+ltecxpadnum=0x0102
+ltecxfnsel=0x44
+ltecxgcigpio=0x01
+
+il0macaddr=00:90:4c:c5:12:38
+wl0id=0x431b
+
+deadman_to=0xffffffff
+# muxenab: 0x1 for UART enable, 0x2 for GPIOs, 0x8 for JTAG
+muxenab=0x1
+# CLDO PWM voltage settings - 0x4 - 1.1 volt
+#cldo_pwm=0x4
+
+#VCO freq 326.4MHz
+spurconfig=0x3 
+
+edonthd20l=-75
+edoffthd20ul=-80
diff --git a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
new file mode 100644
index 0000000..252da22
--- /dev/null
+++ b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
@@ -0,0 +1,12 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI += "file://brcmfmac43430-sdio.txt"
+
+do_install_append() {
+	install -D -m 0644 ${WORKDIR}/brcmfmac43430-sdio.txt ${D}/lib/firmware/brcm/brcmfmac43430-sdio.txt
+}
+
+FILES_${PN}-bcm43430 += " \
+  /lib/firmware/brcm/brcmfmac43430-sdio.txt \
+"
+
-- 
2.11.1


