Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C7FE00B37; Sat, 27 Feb 2016 05:46:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2876AE00B37
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:46:39 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id t66so1946635pfb.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tf5vv+2CEiBThM1e9QmfHvOgbF/Qd0G6QQmbDl+Tqgc=;
	b=pfBKUFEjK9ca+LFBp9ixHTkf4uUqA3fI1Fz7HX1H/hgShTeoLOun9OYCfc5l8Brse4
	QF0aiy9Hz6AX+LOHSNRYLOdNX0hdytCInW9atV0uKr4N0AsHicbYqhNXIQfqbhxG78g7
	MzzZRChfQgvsaqra8NpwWqjftm2A8giTb9M3EZKB720ne6Mqrqi2dtxajK68KocCrvR9
	gk/AtnElW8oe6I4EdO+y6bDjKu6qdhI4DOhVHY95kIn9LCWD0ldE4YdJ2fqkDFbvGFFP
	BoRaZY2ggkKrSIPldaKTTHocdy0npmQAIUtRG4HrDEXzbqUg+QyHNsWAhXcn8geqnNZT
	WJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=tf5vv+2CEiBThM1e9QmfHvOgbF/Qd0G6QQmbDl+Tqgc=;
	b=Ef1H+sM4EAvZ4hnOiL5tOZmUA8Zn3CjySYIFnVMKUCx5WGf8DeME7G4LUnr0yyZb04
	mjbRNk5O0OGtdASmPUwI1XdE9Oq8rOUw6hytuLYWgwkQmvUQir8SFzClpISU/4CYQq+b
	56/U8ZLtKDR8I8Z/EwuUcWvGiCwbK7IYZHyQ+LNKQetnQXHjgbRWWQ6Dg9iAgd9dTzH5
	HxeDTZv3TWeVhIYaFGWaS72tZvm+xT3IUs4xYXdRqd7SvQki/akf0vVa1SXevM/yGiur
	s4mgsojxlhT1EG4XPlnpS5bX0739njClfPjqm+pthMKWfU0uq3sb1LPAfa0obzB6JRis
	fwhg==
X-Gm-Message-State: AD7BkJIoRwKBV8pKP0js81nKkHa3vEWn89UkJr3eKW3ly4FeI3JWaLGi/uPIovv4YKdyWA==
X-Received: by 10.98.14.67 with SMTP id w64mr9592669pfi.154.1456580799371;
	Sat, 27 Feb 2016 05:46:39 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	r77sm26362750pfa.47.2016.02.27.05.46.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 05:46:36 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 00:46:48 +1100
Message-Id: <1456580809-29922-2-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456580809-29922-1-git-send-email-net147@gmail.com>
References: <1456580809-29922-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] linux-raspberrypi: update path to mkknlimg
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
X-List-Received-Date: Sat, 27 Feb 2016 13:46:42 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 05f2d2b..8c7c46c 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
     if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_LIBEXECDIR_NATIVE}/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
         fi
     fi
 }
-- 
2.7.1


