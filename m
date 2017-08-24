Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCA8FE00B77; Thu, 24 Aug 2017 05:05:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEBDDE00B01
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 05:05:33 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id m7so3623736pga.3
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 05:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=jzlYabFLXBUmhzmpgaYfFxtXx44GC6O9EXBKQTSgSX4=;
	b=iHa1pvRTbzR6HIfdLlAXCPQEy48dfhDKzek5WBnrPDEbAYZkiB/crleUmhaR8P71WX
	gVXAWmpVXR4z/Aokp7aFB8v1xk1objpR3Ee6Ckr3wHqAoPopKUN1KdpXvpTszeZ4aICs
	wp7VcuVIjTyI6sLexTHUVi11NS05c6AxATZQqVQzNKEp4PfwIw5X6VBicYFYTiNrwCSB
	KyK5JE/JAy3P8BJ0W14VZW2mYx6Ig2L2HroVQe/0SzBp1HI7qJJlaWQRCdUtIok5Cg/h
	qy081s9yNj1mUJSmaH2vdI+Cq3Y4y1kv2vSnKgJMelC8tKxX81G0gOWVJT+hZnOIQb3Z
	fZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=jzlYabFLXBUmhzmpgaYfFxtXx44GC6O9EXBKQTSgSX4=;
	b=eRDqppM5uaaNYTnJ6K4z5kUFT+Tj43hWKTHc5lJaSgPir5u6kVUsKLVlJAgs5HkWSf
	xxz+j5tvFudWscwSXGZVfRu0lDZMiUyo2/cHJB1BF20nZba2ZVEMBP11YqIMAw4RsXTy
	tF8zlDG24PstR0/qOwxPDr1J9KEbafPOBAI+tqCblN+txsI1R/Uk9MrltLjcmKvJPbKO
	1QhMjXn6dcW5J7azkuZg1lvm8ER7tLpsfxWKomCD0kL3N6ysmahAVtVxuJv1ymLgR9g8
	biF46M4zFOxexGApA/IMh0cRpLiExnKu0czQYF0yQmLlhNDj1FWUO+oUppfYFx7Mq516
	z8gA==
X-Gm-Message-State: AHYfb5h6Fy1OGeuXqe2W4OzzUcSBX/05Mb/8rcbKe4kCveucfFeXZfcr
	OJc1zKPkmYild6Kh
X-Received: by 10.98.1.9 with SMTP id 9mr6107205pfb.223.1503576332399;
	Thu, 24 Aug 2017 05:05:32 -0700 (PDT)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id 2sm7789615pfi.104.2017.08.24.05.05.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 24 Aug 2017 05:05:31 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Aug 2017 21:05:01 +0900
Message-Id: <1503576301-18920-2-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
Subject: [meta-raspberrypi][PATCH] bluez5: add functions for raspberrypi0-wifi
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
X-List-Received-Date: Thu, 24 Aug 2017 12:05:36 -0000

hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not found.

Paches that in order to use bluetooth with BCM43430 are not enabled.
Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like as follows:

- SRC_URI_append_raspberrypi3
- do_install_append_raspberrypi3()
- FILES_${PN}_append_raspberrypi3
- SYSTEMD_SERVICE_${PN}_append_raspberrypi3

These should be enabled with raspberrypi0-wifi too.

Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
---
 recipes-connectivity/bluez5/bluez5_%.bbappend | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
index 956d776..075dc2b 100644
--- a/recipes-connectivity/bluez5/bluez5_%.bbappend
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -24,3 +24,28 @@ FILES_${PN}_append_raspberrypi3 = " \
     "
 
 SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
+
+SRC_URI_append_raspberrypi0-wifi = " \
+    file://BCM43430A1.hcd \
+    file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
+    file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch \
+    file://0003-Increase-firmware-load-timeout-to-30s.patch \
+    file://0004-Move-the-43xx-firmware-into-lib-firmware.patch \
+    file://brcm43438.service \
+    "
+
+do_install_append_raspberrypi0-wifi() {
+    install -d ${D}/lib/firmware/brcm/
+    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM43430A1.hcd
+
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${WORKDIR}/brcm43438.service ${D}${systemd_unitdir}/system
+    fi
+}
+
+FILES_${PN}_append_raspberrypi0-wifi = " \
+    /lib/firmware/brcm/BCM43430A1.hcd \
+    "
+
+SYSTEMD_SERVICE_${PN}_append_raspberrypi0-wifi = " brcm43438.service"
-- 
2.7.4


