Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDDBAE00839; Mon, 17 Apr 2017 05:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274BBE0053A
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:14 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id l28so20173048wre.0
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=Y5bnMyOXeuQeXzSb99KXXA7iLWVmvplH6VMMB0FZB/k=;
	b=Qc3FmlAlFjC1kgE62NMFY0nbPl4HyY1rE/kO5tPR4Pcp5Zjm1fKUdqVdDwHx9jUFFP
	dBnotiK/432yNqejXRaVVZodUCcFe3Gsuf3CP1V+7rUg4kzKsGEvjTKaEpik6CHeqADb
	Yd6jeT3oH9XIwpl9r6B1XSA5/geuSWdGYOIoN+XKGfFLpM+7UxAMjjnnfqEIeToZmlMx
	g6XmgfoTFcsIDo1nv2VJ7yTHFIbF5sZ/0nWG7uhNNwpIODL1VA6YfjBopkXUNG9z/V25
	08StU/wosiy5o0UQfLVUIeNIyQVdOf2EEAqoK79k4rDW9yOKsCJlzsLLL3XZDUJusqs6
	YemA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Y5bnMyOXeuQeXzSb99KXXA7iLWVmvplH6VMMB0FZB/k=;
	b=Nk+SHAeDHfOmZr0Gut8chqzedaiKEdnALqzyr1ysW4nCg8gKdlqE58f9sSrAZoBIgp
	o4kzsFpqgvFNn9VYmD/ixxfMoppfu09GFc7zLR74nDi8QqOOsZtBWUNNZHIGP9KEp/4l
	TL/bNHG79bjw8Wzr1n8k72T4e0DRXEYXGvKOTXzuwAE3hK+gP+6nVYPUw+cLTrzEVSat
	kL03er1p1GzKAKqNkzFQPfMTpzktG6k2IKKl526yGbBjnylzO+VTOY5P9BG6RxSGs3rX
	lNbADBSlWMYJAfF19iZdjfKFo1MrH9h6Yim0S+xP4T9YbVHMlm/wQ3fqg5TZ/fkbpFA/
	CnQQ==
X-Gm-Message-State: AN3rC/7or1iHSg7GQ2pmqQ95rG7O0szT0cPDQWHa1i+DGrs87+Uhl85X
	yWpZV+rpvgbHYg==
X-Received: by 10.223.180.81 with SMTP id v17mr9843330wrd.101.1492432633584;
	Mon, 17 Apr 2017 05:37:13 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:12 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:04 +0100
Message-Id: <20170417123710.6374-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][morty][PATCH 1/7] linux-firmware: Bring up wifi/ble interface on rpi3
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:21 -0000

From: Khem Raj <raj.khem@gmail.com>

Currently the firmware is installed but kernel fails to load it
due this .txt file missing in the firmware directory and it ends
up with wifi/bluetooth i/f not being initialized. The error is
also in dmesg

[    3.120991] usbcore: registered new interface driver brcmfmac
[    3.148240] brcmfmac mmc1:0001:1: Direct firmware load for brcm/brcmfmac43430-sdio.txt failed with error -2

After applying this patch now ifconfig -a can list wlan0 interface
successfully.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
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
2.12.2


