Return-Path: <schnitzeltony@googlemail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C085E01509
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 13:58:01 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id a11so4248367eaa.29
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 13:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding;
	bh=/LpMLUFAY/8NDDXaYEwgpsjMEhckyr4CJkPx/EaS2ww=;
	b=K8KNPgsyv4imsPXQY+zK7+QrslQrYgxGBKcYX9FIEG8/8xO+h5MhBEuDV8UUS/yuC8
	VJHGjklkp2ky5zZHuSxBKa1F2bkaRMR/X/xuNJY4HsAg4lUJb9TgRJOkWpwTwtQo7S8V
	GpPKfK4TUr30Y7GVmMKRCCRAArESbAnJfF3yjYhprG7CKeOSFk07k2e55E39sgBOSIus
	bQVJ8E7y0P0STtRzBiap5YhPSx1XX2R59zOlkmkg1PRw4ejTPswIhZ7fxc1a2YsnV95Z
	iPX9TzTprwymU9Jc/9Ewp8Ke6irAHYOYuNQyNNBudUYqpiS5IsmSfUNdccf2Ahc+hAoj
	pkKg==
X-Received: by 10.14.1.195 with SMTP id 43mr10572499eed.31.1359064680818;
	Thu, 24 Jan 2013 13:58:00 -0800 (PST)
Received: from localhost.localdomain (p5B0A316D.dip.t-dialin.net.
	[91.10.49.109])
	by mx.google.com with ESMTPS id b2sm37011988eep.9.2013.01.24.13.57.59
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 24 Jan 2013 13:58:00 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 22:57:42 +0100
Message-Id: <1359064662-17052-3-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/2] xserver-xf86-config: fix do_install
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Jan 2013 21:58:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

for some reason wildcards don't work in current head. Error message was:

| DEBUG: Executing shell function do_install
| install: cannot stat `/home/Superandy/tmp/oe-core-eglibc/work/raspberrypi-angstrom-linux-gnueabi/xserver-xf86-config/0.1-r18/xorg.conf.d/*': No such file or directory

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 65931e2..a8b8e8c 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,12 +1,14 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # Don't forget to bump PRINC if you update the extra files.
-PRINC := "${@int(PRINC) + 5}"
+PRINC := "${@int(PRINC) + 6}"
 
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
 
-SRC_URI_append_raspberrypi = " file://xorg.conf.d/* "
+SRC_URI_append_raspberrypi = " \
+	file://xorg.conf.d/10-evdev.conf \
+"
 
 do_install_append_raspberrypi () {
 	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
-- 
1.7.4.4


