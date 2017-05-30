Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBF10E00B1B; Tue, 30 May 2017 02:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBF35E0080F
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 02:57:26 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id q24so8374365lfb.1
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 02:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=vt+FwjoeE0D9HvopUJcHvfiA1rgEmvdT2kan+4GaH7c=;
	b=mG/7WT9BGuA97HH6BfIghpHSRryl5xcsnmT9Kn8fmQcbQIN8TziUlw/PSGzEHxkFY/
	j/amKqRfcs+dzloYuDPUFBgVLK98oSR6Z4b02Yjx8FpOYXKwwNnJtVRTbON3VUvKL3yn
	LBbvT+eF1j1fjiYSR0jCn1PAR0WgGQD1DRQYbTuf5sAeDUJkguV52OfUI547zbWPKbl0
	DjBGgIA6Q+X0iyNxzp6wKAAquXcio3NsFKM2C/a4tq3EepX5bNMM0y5NOZDopGIO9EKp
	o765bIB48l9Usrb5A0acc19djszfj5gK1dtVRLFb8YnJeZPFrtaifeDJuaHrUt5jAAJr
	g3Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=vt+FwjoeE0D9HvopUJcHvfiA1rgEmvdT2kan+4GaH7c=;
	b=PDuTeeA3MTW+C+t8rqXicna53pT59LbSkxoBLkYkNVqWIeuVX8iwnhQwRhJTz9o35A
	VVgHVc9lRo8Vm4oKBt2yoOmpBczOScxWQQc+jjue/mlxMohI1UaQsqj2D8Ib7uWIOHDP
	fCsFfPQ2SHjmzOtjDOCwPfcE5+v33KTNpkL0W9EIuArSzS0jjqKaOf3Pt4EDmfAXIX1H
	22Gp2eba4FzoV/22cdQc8HYxJ1SOuj8c+M4roqMhct6Q/VEA3xXMtyc7i4nrErYYlGSn
	WyoyKIETFikxkPWVdOAwk5DhpEIP7DKOJb8ytrM+I0geB05xzFqSndYaSLeyebCNTL3e
	GcaQ==
X-Gm-Message-State: AODbwcDCxkQCD9HduZJvprEOIXDeBeU0bj57KT777mujGYGFn0jKkUyU
	R+gnXYqyHITLC+Jd
X-Received: by 10.223.160.70 with SMTP id l6mr16332511wrl.0.1496138245449;
	Tue, 30 May 2017 02:57:25 -0700 (PDT)
Received: from localhost ([217.30.68.212])
	by smtp.gmail.com with ESMTPSA id d4sm2825686wra.65.2017.05.30.02.57.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 May 2017 02:57:24 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue, 30 May 2017 09:57:23 +0200
Message-Id: <20170530075723.18340-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.13.0
Subject: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Tue, 30 May 2017 09:57:28 -0000

* use latest revision in rpi-4.11.y branch
* using AUTOREV causes bitbake to run git ls-remote on the github.com repository in order
  to convert AUTOREV to currently latest SRCREV even when you don't use linux-raspberrypi_dev
  at all, just happen to have meta-raspberrypi layer in your bblayers.conf, that's bad for
  people who want to be able to build without network access (completely from premirror)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index 239d630..06771b9 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -3,7 +3,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-dev:"
 LINUX_VERSION ?= "4.11"
 LINUX_RPI_DEV_BRANCH ?= "rpi-4.11.y"
 
-SRCREV = "${AUTOREV}"
+SRCREV = "3b3178eb6c0ddea0a6856f16f52b5d2c21ed9299"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=${LINUX_RPI_DEV_BRANCH} \
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
-- 
2.13.0


