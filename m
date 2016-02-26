Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF3CE00D40; Fri, 26 Feb 2016 01:27:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F77CE00D36
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 01:27:07 -0800 (PST)
Received: by mail-pa0-f41.google.com with SMTP id fy10so48288263pac.1
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 01:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Z7uwh/tA1+3W6m3G2n/c10+W4Z4xGtB0rY/gL3v+WYI=;
	b=oKihXJTi6YLFrUTbl/DHyGfPOaOsgzexWtWaPYo1BzjQk+/+gsEbq/8AuE5NbmSjI9
	uBLK6klkE1LH9XBzef94twQDrYuxBoZdYf8xboO7mdGjHjJyej+iS7hbVt1SgyM7UN9e
	BmtwqF4Na1xwLrpmKop5qb9eN8enJMCsKIaY2uiWco470x0hEJ9qtMxEl8smkPgKCZ3F
	eWciPqApnknTvZD8EM8RuQvAYOVxUXKcfRGLF3+FBSgDMNB6AqXeek6XiL+ohoxOZ6ey
	2b+tR1pzRnAl2927foMCGSOvK6PD/ykKFxVl/rw/bk3TnoW/UkXZpeZWY3GfOdVIv7xb
	99WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Z7uwh/tA1+3W6m3G2n/c10+W4Z4xGtB0rY/gL3v+WYI=;
	b=g3bU+/YuzfgUMNcqH7ZUkbAFzeB6tHObY22bLr6a9GSsiyl7zdy2YkPnA8VoV4EN+2
	jDKk/zNjgeDrdrmnX1qwlvCGQmwLpjegzZI7iAnOiSBQgEHE7zYjFOrolkvAF8ExGewe
	I7bqJ31udMRehrlBzokBrjYjlgkfBi+HJbOYdjotPqitNC8In/GL3bbOMCDk7/4tOcnC
	Hnk+xMEjnpC/CMK+yb4LjnjRbgLdqLkuTq89xQgTbXEMslgmb9rrlQVvXjYREj+589f5
	DQ3E/iUzrr/IsnMyPOxwkT4cMH6RT2c6kdqQa6/yecdtnhCV5JoMCJQS39DA1m4hIlem
	SiXA==
X-Gm-Message-State: AD7BkJKJlAddImDaJSzE7OiqUYgEZXWkzQn5A2cgaUCG0iC3sGBuJjToPu76JBbhwpvu/w==
X-Received: by 10.66.234.104 with SMTP id ud8mr585434pac.143.1456478827596;
	Fri, 26 Feb 2016 01:27:07 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	k14sm17855658pfj.0.2016.02.26.01.27.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Feb 2016 01:27:06 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Feb 2016 20:26:57 +1100
Message-Id: <1456478817-7221-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Fri, 26 Feb 2016 09:27:11 -0000

The path had libexecdir hardcoded so it was no longer correct when
libexecdir was changed in meta/conf/bitbake.conf from ${libdir}/${BPN}
to ${prefix_native}/libexec for nativesdk recipes.

Fixes "No such file or directory" error when executing do_rpiboot_mkimage.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..8c7c46c 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
     if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
         fi
     fi
 }
-- 
2.7.1


