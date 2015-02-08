Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B423EE0092D; Sun,  8 Feb 2015 03:57:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAAC8E00848
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:09 -0800 (PST)
Received: by mail-lb0-f181.google.com with SMTP id b6so2589982lbj.12
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=I7sLwqgRvpRwiTpJjvOAGJYE63GJ5aUiXk75dq8ydkw=;
	b=CcM3+EvVkG41lCo97KvR6aBp/yv8/XZu8kCgmUjjxGb+5IHMhU9Aolooy58VL8Zskt
	ThtFT3e1o7gQYDp+3jFNdJ0b+Efn4ddkPchbvku4EX+lx/ScGZe6pbIMpSkuJHRE1iEs
	6q3gltbj1tJftPcWtumMZFzMaYyIY65znUlYYgUTfxMuUGR8Xu+Ggj4g+YGdWA5llmr9
	EMaGHOAwXMxPF9B7c6keQPrZwyH/Gy7J/+smlG0p0o3mLlJcSNDu6WuYqJTbGfoFzQ/+
	2DC7BG+7wRBh1or3QJ15yBZPaZc36xZG0fKCxqkeVjtupOYe5itEhNWNLu1YnvcZAnZO
	2hEw==
X-Gm-Message-State: ALoCoQmJlfctq+/PNf9uh9ZxUPoM/1JBwOrOa9GOE5Glm0E3jeZvtbWiKJ2ntCLkSeDOywjDedLz
X-Received: by 10.112.142.168 with SMTP id rx8mr11261345lbb.37.1423396627007; 
	Sun, 08 Feb 2015 03:57:07 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.06 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:06 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:54 +0200
Message-Id: <1423396620-22510-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/8] xserver-xf86-config: Use SOC specific assignements
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:13 -0000

In this way the modifications will be used on all RPI boards.

Change-Id: Ife10db876db85c1c4944028a0b49ccae4d8c0d41
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc                                | 3 +++
 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend   | 6 +++---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 2 +-
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 4be28a1..65ec712 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -2,6 +2,9 @@ include conf/machine/include/rpi-default-settings.inc
 include conf/machine/include/rpi-default-versions.inc
 include conf/machine/include/rpi-default-providers.inc
 
+SOC_FAMILY = "rpi"
+include conf/machine/include/soc-family.inc
+
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 
 SERIAL_CONSOLE ?= "115200 ttyAMA0"
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4ca42d6..2cf40f8 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,10 +1,10 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI_append_raspberrypi = " file://xorg.conf.d/10-evdev.conf "
+SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf "
 
-do_install_append_raspberrypi () {
+do_install_append_rpi () {
 	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
 	install -m 0644 ${WORKDIR}/xorg.conf.d/* ${D}/${sysconfdir}/X11/xorg.conf.d/
 }
 
-FILES_${PN}_raspberrypi += "${sysconfdir}/X11/xorg.conf ${sysconfdir}/X11/xorg.conf.d/*"
+FILES_${PN}_rpi += "${sysconfdir}/X11/xorg.conf ${sysconfdir}/X11/xorg.conf.d/*"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index fba7e1a..39ded59 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -1,3 +1,3 @@
-EXTRA_OECONF_append_raspberrypi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
+EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
                                    -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
                                     --with-egl-window-system=rpi"
-- 
2.1.0


