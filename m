Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F99CE00BD0; Sat, 27 Feb 2016 05:46:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3BDEE00B46
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:46:41 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id e127so6208361pfe.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=2wFAPTPv6snj+q9I5/6gszeffcY852OpvTAdzKjd3Uo=;
	b=L8wq1f6NGJynmOGHw4oHcvoVq7f7TP7XdqaNiSafo2iB81trbPJu0G4DiQps0WASRz
	J7IlFHbbWFoQ8v6RQ/VL9lAsFmHjbkZ+lIr3+UQJi2vn9ehGutalW/humDR8wvD2Kgv+
	12XtstCpjhCxux4beT+TtLe+Q39JQZjNbYujFFt+6kC3gHhP7J4L98RUWgqQMfkbQ8py
	fXv1KiKugJCTOUN0JwZG1Uv7NALBoRZK2+JI9elavXPF4YuQC4xbMKbROHjpy2Q6RaLO
	7+9ZAv9IITVRBZitZ2N3zih04wiPyuRZv6fwx5/Z6/lnkJ8mb+EA9I8KBP7YHeM82r3O
	I21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=2wFAPTPv6snj+q9I5/6gszeffcY852OpvTAdzKjd3Uo=;
	b=GmJsb4Harwwf3tAeMtyvd45zJsBQ7u80qQuE09C1zed4V56M4GnZ5CeFTjbrPLTeMX
	aDkfGlELKoReYUTN0yL1ItpmTEB/Er+cqtvPJvxcysdRGXtGv6mfyy8JS6MKvkx4u4QO
	rM5DjlS0tI+ofF3UKeJ3VhLxZNx2kZb5Zo6JyITkZOqT3lSCXsfgd9079PDb4Yq2v8Ur
	WYCOEBHh7YMIAIMSd9deV0tbZmN6MyJ67exvwWh3gDuPLXBUJH0+B0xJV+R5ouQyfmcs
	61kHRz+K9Ynzc9TDPxI4Uwn0Qwvo2NVlP9QkHvYWyRCH76gDi65R3+UT3FSK6SDhs2Eq
	DsCg==
X-Gm-Message-State: AD7BkJKxwQNZoFPs4lncuUHyDKbQkKVvbSexTYk4SKhtJgmdQ5aKAUjmtDmPdJckE+uMbg==
X-Received: by 10.98.75.138 with SMTP id d10mr9520659pfj.108.1456580801805;
	Sat, 27 Feb 2016 05:46:41 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	w89sm26384998pfi.13.2016.02.27.05.46.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 05:46:39 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 00:46:49 +1100
Message-Id: <1456580809-29922-3-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456580809-29922-1-git-send-email-net147@gmail.com>
References: <1456580809-29922-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] u-boot-rpi: update path to imagetool-uncompressed.py
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
X-List-Received-Date: Sat, 27 Feb 2016 13:46:43 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rpi_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
index ea0c173..8bffaa3 100644
--- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
@@ -24,6 +24,6 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 do_compile_append() {
     # Create kernel.img from uboot.bin and name it u-boot.img
-    ${STAGING_LIBEXECDIR_NATIVE}/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
+    ${STAGING_LIBEXECDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
     mv kernel.img u-boot.img
 }
-- 
2.7.1


