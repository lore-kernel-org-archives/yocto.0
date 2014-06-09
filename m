Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7336E00BEB; Sun,  8 Jun 2014 23:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74D72E00B6C
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 23:58:57 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id n15so655681wiw.5
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 23:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=U6dBwAGq+xVOontxRgtYQxKeN2Q2bB9+3Bf02zfZVSw=;
	b=pc6HDZzaNcT6Grlnr//mci0DoosseB6SptERqjNfYDP7imXPp9TNk6o154Omeqher+
	qtODsmMl23aeMcBugQME5PT+3DmBl8DVltmc/eIkSmOLbnHNMS5y/Ux8yGtubvvC9lWb
	3vZXLSxwJYMmStmuTlramxQPPxLQdJAm1pWkjLMTEgavWG0fyYvB4TmEWV5Y/KjznAn9
	SBHMn05IMvyPCmx7NiZBAVcRiImiKkXHd5uVquSw+04wijOEqAs6BJp2zY91vE9n/5lG
	j+VV7ejDKrZP5/mWr36ARZz67HV/9Lt5t6pXgnz6TgSE6w1NAwECJYHIeR8L5kWvAXAc
	g/Ig==
X-Received: by 10.194.77.2 with SMTP id o2mr28865846wjw.68.1402297136734;
	Sun, 08 Jun 2014 23:58:56 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	lz11sm12994865wic.0.2014.06.08.23.58.55 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Jun 2014 23:58:56 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 07:58:25 +0100
Message-Id: <9c061d514d5c846032c672ae42b6a1119e4e69db.1402296985.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-plugins-bad: Build eglglessink for Raspberry Pi
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
X-List-Received-Date: Mon, 09 Jun 2014 06:59:01 -0000

The eglglessink needs to be built to target the Raspberry Pi or it will seg-fault in use.

Autoconf attempts to detect whether to build for RPi but there are some include files needed, the search path to which must be specified.

ref: https://github.com/raspberrypi/firmware/issues/34

ref: https://github.com/raspberrypi/firmware/issues/99

This patch adds the needed include paths and forces the plugin to be built for Raspberry Pi.

With this patch the following pipeline works on RPi,

modprobe bcm2835-v4l2 gst_v4l2src_is_broken=1
gst-launch-1.0 --gst-debug-no-color v4l2src ! 'video/x-raw,format=RGB,width=1280,height=720,framerate=(fraction)30/1' ! eglglessink max-lateness=-1

Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
new file mode 100644
index 0000000..199e0c1
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' --with-egl-window-system=rpi"
-- 
2.0.0


