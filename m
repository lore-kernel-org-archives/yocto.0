Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9529DE00BA0; Sun,  8 Jun 2014 04:10:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66543E00BF9
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 04:10:29 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id m15so4698041wgh.16
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 04:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=K/2KSKl2egWYKf/XUp47Qv+DAzrH+8nVfQmmOKB4VkQ=;
	b=Fm2eS5ZfhIvsfuWUdKM6QcX7trGie+X9V2783ov5IdIUhy7iQxJcyTr/7WosDTMUlk
	XGEfRX4XESt4b0GTBw4MuusYCIJRiovMtiJG8QRyRQ4X6vcmpz1TAuyYDmV5IfQ9MIlE
	0pOHr6U7W+bJ5Y+UiGAwQ249Y07f5rXiDCSEjev+6nNfeZsRRDSnmkL44oTQlcmRmkC/
	VbUBznT/roHbJyqlV5ykpM1v4J4NCxhwi99C5hdcc6poIt6jAx5jtOCHWUbdW+dV/NoF
	KjDAB3J02mNP75BaliHMWjGWHpDj2n9loQ2ObQpI2UVJjL16mNVfWZovN/oaTDHJIEJZ
	leDQ==
X-Received: by 10.180.207.9 with SMTP id ls9mr19110252wic.32.1402225828551;
	Sun, 08 Jun 2014 04:10:28 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id gb6sm8320639wic.6.2014.06.08.04.10.27
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Jun 2014 04:10:27 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Sun,  8 Jun 2014 12:10:07 +0100
Message-Id: <dc94ee091c8cdc622879c78517e4bf5dd5c7b448.1402225565.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <cover.1402225565.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402225565.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1402225565.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1402225565.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi: Update kernel to 3.12.21
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
X-List-Received-Date: Sun, 08 Jun 2014 11:10:35 -0000

Amongst other patches, this release includes a fix to an issue with gstreamer1.0 and v4l2src blocking

ref: https://bugzilla.gnome.org/show_bug.cgi?id=726521

ref: https://github.com/raspberrypi/linux/commit/fd1355b22e5c52b5e31b936b5f68d3b62cb189c8

To make use of the optional fix the module parameter gst_v4l2src_is_broken needs to be set when loading bcm2835-v4l2.ko

With this in place, and with userland and gstreamer1.0-omx patches, gstreamer1.0 can be used with PiCam via v4l2src instead of raspivid.

(There may still be performance issues to be addressed for v4l2src vs raspivid pipe & fdsrc).

Change-Id: Ia0ed4e6c8f27df9bb12ae2350526f6314e016d51
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 .../{linux-raspberrypi_3.12.18.bb => linux-raspberrypi_3.12.21.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.12.18.bb => linux-raspberrypi_3.12.21.bb} (77%)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
similarity index 77%
rename from recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
rename to recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
index 736be5f..a40b54f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
@@ -1,4 +1,4 @@
-SRCREV = "b09a27249d61475e4423607f7632a5aa6e7b3a53"
+SRCREV = "cb53ea88f75180cc1ba74f7f197c8e3fd4f47cfe"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
2.0.0


