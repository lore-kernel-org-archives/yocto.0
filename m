Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF6A1E00B28; Tue,  9 May 2017 14:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B13E0E00ACD
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 14:10:21 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id v42so3300069wrc.3
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 14:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id;
	bh=wHb9bn5K8a4Dd+PE6bcsCZXAg/CV7KX4QuxVBaQ83hA=;
	b=sOMHeRAi3umvyi5Dwa/tmuuayBISqRekYmliimM3r26zl0UoYUFGb4ZLrkJKjIBeTi
	TuUB3L4j3gq5BwLlCKPE5d+ry6lcZuafOWkEM+wQwRcz8s+XrrTbR0e6ek5wnRywkwCk
	Sdj+8NU8fN4GUW2EGlYLt55jrrW0pjlMv/Qy51lKOMzfd3SgtmP2DNP6TpBXuKjRbjT3
	oczahLQX90Bzn6FNDaN8kzFC/fmI/9+dAkdtaoIo/8NI1pOOJ4VaILnaSKZrZ8zAUO7A
	+jVJ0aQ8IHAFUzDqMiEqzgZZxSvoi8BHDIQ8y5B9gIxHWxN4oDPR8pXNcphAtKV9zWJP
	IuwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=wHb9bn5K8a4Dd+PE6bcsCZXAg/CV7KX4QuxVBaQ83hA=;
	b=E0lZ0sdbJslDWw1pVaXKzTiHsU81PbPXx7qJo/hM8emQPC2j8wLSRYZURgCJDTI7kg
	bJbXFPn6rSbhsv9o0wV0p/2r6UxYGcMlnlGmG7BplAb4+eM3/VdIgoALoPxMu9nkyMm7
	6Al8uggIomAV7kliiAFZ+2YZaKGRy2QwiylTSThYhTiEl/Y1OXKvzQcQt/62j/nHP445
	WOP6rGsFn1F6ya7TuYMHjlz1oU0fAQ8rVLqA+GWHRpNNJmU/sl3ZEsYwtxIIjvdxaQW2
	x77VU3EXjtLvM7+8Dzd0y07wikR56t6KmQ6/w9l4/u1mC594F3OjN4dHI/rhKvJXWGRH
	7PIg==
X-Gm-Message-State: AODbwcBBvgGXW9OmtBKnok2HxSdiTtSMe2yVecvvwBGZ+2A5TLwanhqD
	aYs65PCtFudr/Q8m
X-Received: by 10.28.206.67 with SMTP id e64mr2167377wmg.104.1494364220185;
	Tue, 09 May 2017 14:10:20 -0700 (PDT)
Received: from localhost.localdomain (109-230-21-223.static.orange.sk.
	[109.230.21.223])
	by smtp.gmail.com with ESMTPSA id v22sm800378wrd.38.2017.05.09.14.10.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 14:10:19 -0700 (PDT)
Sender: Belisko Marek <marek.belisko@gmail.com>
From: Marek Belisko <marek.belisko@open-nandra.com>
To: yocto@yoctoproject.org
Date: Tue,  9 May 2017 23:10:09 +0200
Message-Id: <1494364209-17742-1-git-send-email-marek.belisko@open-nandra.com>
X-Mailer: git-send-email 2.7.4
Cc: Marek Belisko <marek.belisko@open-nandra.com>
Subject: [PATCH] recipes-support: Add recipe for libgpiod
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
X-List-Received-Date: Tue, 09 May 2017 21:10:23 -0000

libgpiod - C library and tools for interacting with the linux GPIO
character device

Since linux 4.8 the GPIO sysfs interface is deprecated.
User space should use the character device instead.
This library encapsulates the ioctl calls and data structures behind a
straightforward API.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 meta/recipes-support/libgpiod/libgpiod_0.2.bb | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 meta/recipes-support/libgpiod/libgpiod_0.2.bb

diff --git a/meta/recipes-support/libgpiod/libgpiod_0.2.bb b/meta/recipes-support/libgpiod/libgpiod_0.2.bb
new file mode 100644
index 0000000..fe2cd80
--- /dev/null
+++ b/meta/recipes-support/libgpiod/libgpiod_0.2.bb
@@ -0,0 +1,25 @@
+SUMMARY = "C library and tools for interacting with the linux GPIO character device"
+HOMEPAGE = "https://github.com/brgl/libgpiod"
+
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2caced0b25dfefd4c601d92bd15116de"
+
+UPSTREAM_CHECK_URI = "https://github.com/brgl/libgpiod/releases"
+
+SRC_URI = "https://github.com/brgl/libgpiod/archive/v${PV}.tar.gz"
+
+SRC_URI[md5sum] = "e3430f35b6efa842693d659c0bfb7ad5"
+SRC_URI[sha256sum] = "de1947f3cb2cc4174364af430309fe6238976658575655bdbd76c60cffa7df92"
+
+inherit autotools pkgconfig
+
+# enable tools
+PACKAGECONFIG ?= "tools"
+
+PACKAGECONFIG[tests] = "--enable-tests,--disable-tests,kmod udev"
+PACKAGECONFIG[tools] = "--enable-tools,--disable-tools,"
+
+PACKAGES += " ${PN}-tools"
+
+FILES_${PN} = "${libdir}/*"
+FILES_${PN}-tools = "${bindir}/*"
-- 
2.7.4


