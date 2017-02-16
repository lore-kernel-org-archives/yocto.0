Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F441E00A21; Thu, 16 Feb 2017 03:49:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E78E00A18
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 03:49:09 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id r141so13120709wmg.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 03:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=35BVEofkLB076F9HgjDF0XV8mkW2WoOhiZymPuzozts=;
	b=qNG7BsIqeL5wxao0GOhy9LbHH3JAKT1wrNr5rWTTU/P2fZXWdUWzWJ9bRcCx9FRpcm
	QvC5ep/5pfTWyr8eN0Ox7wG/QGT1iDDcNjo8yrNJw7bwZwx0mqG5o9Ob+ENpA4eU3V87
	MHu1TjCQmXtemzJNrxq2I5H9ZEz3+UBdNjSxBJxbpVhMjbb11ZvyrkJUVao65m2b1EsR
	Gu/bcL7sPv0a/VQh8MlSxI7CKPTvpNf7BVfcz0NzQxKhXWRFP79Q9/Vu9FXEH9k7SCvA
	sxypErCwpWjljtjS8UsxVepqATbL8cN82OOqy2eIzksfzKhIIc/2T+nq1ntJEkAapdqh
	zNBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=35BVEofkLB076F9HgjDF0XV8mkW2WoOhiZymPuzozts=;
	b=ACOHq/eLEZHak4RmZoO0fOozuRh9htdO9XQEx8kNxAkbZR0XUbk5wWxb4zKHAf6of2
	2J/GfKIzu4LNp71q5fefQEdUpALFCLKVQ+iKT5czvEZrCPPV79dD0+n8tigGvP0zgI7H
	QPLrj8wik1NYQ/fMR7eMF6OTwXs0wYM5qGfrdvzhKXn5NeMhd5SPVQaJsTZXu85U6nIr
	hj7pTJ5FYA013PmKeIOgQUeu7uoGR4aDfedMg20fMxn6tCyI/fDqUv785k7O/5d2yKOI
	1vRddc0HI2nQSKUWS92SrXPQplPUPJN65dWwequmW3se8WOgGaSI6l7Rhq8K/d3Bjkuy
	BDQw==
X-Gm-Message-State: AMke39kJP9adP+MM9dftuAoZW2ry9vBrdrjCeSYeeVKWOpU9qNKa3Nuo16r67/qLd5qfJw==
X-Received: by 10.28.158.82 with SMTP id h79mr12691546wme.30.1487245748162;
	Thu, 16 Feb 2017 03:49:08 -0800 (PST)
Received: from mueller-a-nb-linux.zera.local
	(ip-109-91-251-48.hsi12.unitymediagroup.de. [109.91.251.48])
	by smtp.googlemail.com with ESMTPSA id
	k9sm5483704wrd.51.2017.02.16.03.49.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 03:49:07 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 12:49:01 +0100
Message-Id: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] xserver-xf86-config: remove evdev configuration
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
X-List-Received-Date: Thu, 16 Feb 2017 11:49:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

xorg-xserver recommends xf86-input-libinput since oe-core's commit

| commit 2d005faff6341a81a2afae28860101ba9db51ae8
| Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
| Date:   Wed Oct 26 11:37:38 2016 +0300
|
|    conf: Use xf86-input-libinput by default
| ...

As nice side effect warnings for missing evdev in Xorg.0.log are gone.

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
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


