Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF4DBE00A30; Wed, 15 Feb 2017 18:46:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 683EFE00A18
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:46:12 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id v184so543211pgv.1
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=jzYjA4z+KRqtVOML9JJxnnFZqq3bjIHVecQ/BMV3gnU=;
	b=hwnQkEzdri9Nw702+vEhvrpOS/+aFrVHN1oTmcYrw9pS8z+34oevLJc3p/bkBg1+xr
	5YBeQwK+zLLQvWCFFP+RlhoGjTuUeXndueZDOL6tXtbCghTULqNtejWhzqPJPThuu2ER
	Ut1rHOuxeqfq2bACVRy+KVXiHN//8/Hvki7ypbAJfV0F4vgtOhQKao7+zvy6lriDH1bG
	vP/Fo6auQwNrje0bL/2CNbjbJMG/NpdeFxaEFVHY9HimQvOSkT7muW+bQLzKeRGsNX45
	b6PfIifLp8y3fI3l1n8EcA0JrWSfUrb4ZuNITKA1zUNtkiRPFT9hhpoYC3mdseXZyWHv
	G9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=jzYjA4z+KRqtVOML9JJxnnFZqq3bjIHVecQ/BMV3gnU=;
	b=f7vLxWizop911w/Mvym0VLZB50cpLYqPbdX0LCoxX3oEoSDDfe2UYqRcHWIo18yygx
	qXJupZNInN6TZ4V9g/jrEMgpplNQMhnoRQFbg7wgq0uTiO80kw+VVR1GPSD6q7mQ/WKl
	HNkHTq6OWEzuHymi+AM1jM61mwwpd76g6wwPPWAhitCxAWVS5SKgxmXAE6k6QS0L63pS
	BG3pQYvCIEiDSlRerz24tOKgT6nVpvy8+nqISc1ZMksVlqbNdTdw/TsWEd6+o/HgNRun
	l5ZsV85kBDQgnRaGQxo5B17yH3X6/VYjGbP6j5p6Hv294VdMfd9oyO6JearevGK44jNj
	cELA==
X-Gm-Message-State: AMke39mDxeqr9CVOZWt6r4rlxfhtIsuL7kSZFZx/hoaUco1uWUqS1Gv0F7r1Nhc80e7Mrw==
X-Received: by 10.84.138.3 with SMTP id 3mr47476546plo.94.1487213171837;
	Wed, 15 Feb 2017 18:46:11 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	l22sm9854728pgc.43.2017.02.15.18.46.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 18:46:11 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 15 Feb 2017 18:45:57 -0800
Message-Id: <20170216024557.10474-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216024557.10474-1-raj.khem@gmail.com>
References: <20170216024557.10474-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] linux-raspberrypi_dev: Fix build on rpi3 64bit
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
X-List-Received-Date: Thu, 16 Feb 2017 02:46:17 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index f186ac0..97bd4ed 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -1,8 +1,9 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
 LINUX_VERSION ?= "4.10.0-rc7"
 
 SRCREV = "28439f3b9b1de5c3b5ccf04fc359730fc8cd0646"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y \
+           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.1


