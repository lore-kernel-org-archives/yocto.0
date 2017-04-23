Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32C4EE00852; Sun, 23 Apr 2017 08:40:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA074E00349
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 08:40:39 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id e132so10290912ite.2
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 08:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=kv/jy7F7aTzy1U5aqL9/Dw+eF7WSlko4mtvajwYjESQ=;
	b=cI3SGpXFzyzYSKaRqkAg9A48+bCbxvJDwXcJhdcW4CNM5lYbpZqmKshKGeWI5Zii7T
	8yc5YMyxH1aXHd0hnG6Fbxl+dwh6HhHzAy4Gj2GqA0zV4lNp+FJnmiWJxExVql8jUJVA
	cie21FzpfpnZ5EO2+JUhOVC6WMWvGX8V669htKOTqw0ImClmi3vPu0YfnaidoTfPlWyH
	Gh+nS92LBbkA/KRuCKlciNM3IqnohLu6MiLYjwrXKjaSWhle9yCxvJ7d2ociZrzaCsnQ
	Kz9kEqHFTPm2nYa0FCIKLygOI1C7C2p7KNagYrhHw5vodDUqoiLrosPRpGut7nNXyuV9
	Xmtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=kv/jy7F7aTzy1U5aqL9/Dw+eF7WSlko4mtvajwYjESQ=;
	b=Va9ISGQD+P8pQjMXoRNI2HDXU4B/44KMjSDkW0xI2DCUc+zaiTOQh+UNaXq9dAilG1
	qnDbUe/bWsOdTscTahyKP/2Kd7TU/rxgmDUsk+dB92len8LSqwfshMm3g236xHK2P5UD
	MAz5L26eqZgfZhUo0uYaG+XZ8t0+crXHxNSzp/1NljhwTjf9sFfA2RI6HwzRDVcy8rRf
	jb914c9xgM2sGCKTvBZUfXyzP72hX1btFeWRVwSxEfO9o6OtlkdgoDOIfYyoqbrZZttb
	hPIecQoz17CmEj+9RMpFaryH8xCwOdZZVbkZP+mkEMKb+mcayyIW94JtwNB1GtXoIc0E
	Npvg==
X-Gm-Message-State: AN3rC/7XZl6ikH8YtBptG06ZmhRbLbQt89cCcPPBk9v3/jYjRPUwFMDX
	vSghwBLNHmwWvQ==
X-Received: by 10.84.205.70 with SMTP id o6mr26909980plh.63.1492962038812;
	Sun, 23 Apr 2017 08:40:38 -0700 (PDT)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id
	y28sm26049065pfk.16.2017.04.23.08.40.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 23 Apr 2017 08:40:38 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Apr 2017 00:40:12 +0900
Message-Id: <1492962013-13945-1-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][morty][PATCH 1/2] xserver-xf86-config: remove evdev configuration
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
X-List-Received-Date: Sun, 23 Apr 2017 15:40:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Andreas Müller <schnitzeltony@googlemail.com>

xorg-xserver recommends xf86-input-libinput since oe-core's commit

| commit 2d005faff6341a81a2afae28860101ba9db51ae8
| Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
| Date:   Wed Oct 26 11:37:38 2016 +0300
|
|    conf: Use xf86-input-libinput by default
| ...

As nice side effect warnings for missing evdev in Xorg.0.log are gone.

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
---
 .../rpi/xorg.conf.d/10-evdev.conf                  | 40 ----------------------
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  | 22 ++++++------
 2 files changed, 10 insertions(+), 52 deletions(-)
 delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf

diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
deleted file mode 100644
index cc83ab2..0000000
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
+++ /dev/null
@@ -1,40 +0,0 @@
-#
-# Catch-all evdev loader for udev-based systems
-# We don't simply match on any device since that also adds accelerometers
-# and other devices that we don't really want to use. The list below
-# matches everything but joysticks.
-
-Section "InputClass"
-        Identifier "evdev pointer catchall"
-        MatchIsPointer "on"
-        MatchDevicePath "/dev/input/event*"
-        Driver "evdev"
-EndSection
-
-Section "InputClass"
-        Identifier "evdev keyboard catchall"
-        MatchIsKeyboard "on"
-        MatchDevicePath "/dev/input/event*"
-        Driver "evdev"
-EndSection
-
-Section "InputClass"
-        Identifier "evdev touchpad catchall"
-        MatchIsTouchpad "on"
-        MatchDevicePath "/dev/input/event*"
-        Driver "evdev"
-EndSection
-
-Section "InputClass"
-        Identifier "evdev tablet catchall"
-        MatchIsTablet "on"
-        MatchDevicePath "/dev/input/event*"
-        Driver "evdev"
-EndSection
-
-Section "InputClass"
-        Identifier "evdev touchscreen catchall"
-        MatchIsTouchscreen "on"
-        MatchDevicePath "/dev/input/event*"
-        Driver "evdev"
-EndSection
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 062de2d..b361eef 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,19 +1,17 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf \
-                       file://xorg.conf.d/98-pitft.conf \
-                       file://xorg.conf.d/99-calibration.conf \
-                     "
+SRC_URI_append_rpi = " \
+    file://xorg.conf.d/98-pitft.conf \
+    file://xorg.conf.d/99-calibration.conf \
+"
 
 do_install_append_rpi () {
-	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
-	install -m 0644 ${WORKDIR}/xorg.conf.d/10-evdev.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
-
-	PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
-	if [ "${PITFT}" = "1" ]; then
-		install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
-		install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
-	fi
+    PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
+    if [ "${PITFT}" = "1" ]; then
+        install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
+        install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
+        install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
+    fi
 }
 
 FILES_${PN}_rpi += "${sysconfdir}/X11/xorg.conf ${sysconfdir}/X11/xorg.conf.d/*"
-- 
2.7.4


