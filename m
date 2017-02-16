Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89F05E00935; Thu, 16 Feb 2017 10:47:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F8DE00566
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:04 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 68so2179127pfx.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=vjX9ISttNGQ/t9Ka5f7fLF9Cu0TeokIYDENd801vdyg=;
	b=tJ5dSDKuYx5o6ozVEXZl83epGWEIMGcXvjEdta+F9lEsl774Z663MO7KghGAOCpjSj
	F65AgThSxHztJZULPdtvOMQG++pb8iBA/Ii3LCKFIttj1BPL2zxrwT9F84NXsb/biijz
	d26ZgigIZ+O0CyInG8DnzbUEHpc4W4k9xEiYvcN2q0WPY+/WZqsyrqUkXVw6b2Otn9db
	Yb/RJowpb9dG85a063xtdq/itqbDikrvoDp+YeB3X4Vf7vASqcIZpC7Cz2I/UVookDyq
	wqOjY0yObHS0k3IbBogWq9QgQ/4Pr3+xne4syWI379xW/TNH6o8+FwIxPcJTYyg45Li+
	DKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vjX9ISttNGQ/t9Ka5f7fLF9Cu0TeokIYDENd801vdyg=;
	b=d7xxRUPzE2J9HCpATNMJbZ0nBJA1QB8mqrQ6a5SA2GLtq7Ba3qMcvf+rZmYhW7djmn
	ATdnD520X5RVbtpcM9UYaBOHinTzcQKHMD5MayKlcOFKcB/c/Of90oT7/+ivW432a2mc
	Y+oO+CGlvMPsco4n0ySSzktaNirJBLN1J+pyH2xQUVrd+U9TJyjmSfYu84+8f4u2APtZ
	UqeZvhcOZ9mZsId/zUcnjSiGz/tGjgMlg7sNnqqDgUftpswraC9gXHcgzJPGvjNRdI1D
	81VlXSlHKyLo10FBUUF2m+z68Phc5A96nKWTCaujsKbGzu5mnQgFlQhwolvjtmfGd86u
	4lSA==
X-Gm-Message-State: AMke39kxBQmPM3sDeopcfqINO21RWktAXKgMcHcM60xUc7c629IuCxUWdQhYPtPlGiJkCA==
X-Received: by 10.99.109.140 with SMTP id i134mr2470612pgc.11.1487270824091;
	Thu, 16 Feb 2017 10:47:04 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.47.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:47:03 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:45 -0800
Message-Id: <20170216184645.6258-14-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 14/14] linux-raspberrypi_dev: Fix build on rpi3 64bit
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:05 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index 2a5b692..bec0d23 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -1,8 +1,9 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
 LINUX_VERSION ?= "4.10.0-rc8"
 
 SRCREV = "9aa91f43583fdb07306f962e6ee6797fba1cc62d"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y \
+           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.1


