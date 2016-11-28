Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 443C6E00C20; Mon, 28 Nov 2016 07:12:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A80E00BF3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 07:12:47 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id h133so23292856ioe.2
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 07:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=NCdmX6+zMXUAHAf7wivGQj2Zsbhm9Mv22yCeQfy8cnQ=;
	b=BR7ERt1JxMcsxfLJDGBR1rOcuZRstv64lJtHLVu/3CfGz41+MwW0ec4AMf3Bt5qgrb
	rRuzB9IYVCyMkKr58G/kWxxlbnZ679QGM7T6qe+uxZa4gHFhe/yLKDjPNJx+DKUef3+9
	lEZIBbWQJufuPqTPgnzqBXW0LWn3X8mFLWKAzJ7hVOceeogU/7A/dD4HN8KgvdAehdlo
	UdzgYtouRBPxNeyvxElH01Or1W/fDIE1/BvYEahkd5wuRDugBG5q75Vw2ifKECnThFto
	Zp1jZR6g5W0qzTKObGgR5ke8DG3d+5CTBV32V9hXPZKLCXagIeui2tA/OfuWK4Vu9sOT
	y+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=NCdmX6+zMXUAHAf7wivGQj2Zsbhm9Mv22yCeQfy8cnQ=;
	b=I7VDxf3bq/cZq63LgaDn4ENw6xPgGXWOFUW/KQ1fhpjntJq4VmN6tdMiTvoPPKgNsB
	MRr9UvB3SyENXJKL0dyAnNG3eZqYSNLNdyIrVkw3UmSjF7+2MVD2cwUSIYE5Z4jnzi8l
	yJOLFK74kN3oaQ9bCbK2vIVA5nulT9ncXrfHIAB9yerhyDdvAnpgtdbOlFQYWYE4h2sO
	dYMKNZwm6wp2rhSKdAwEgNfeMFQPEz3FAj3anX8h5SGfSCF2hziahNdDoDlnaocic9P5
	zvLP0Uh/ULiAned99WHN2+JPwKVCIHfGjlSKXT9FU93QBPqqQ6ncIwR7YmqXmEalYIpr
	Hbug==
X-Gm-Message-State: AKaTC01EZjkPyY/DaiR0Xe5KW2xhwWDusQqLFLjQUxQch/PDut+SQpJ07r1+s33kdk4mkQ==
X-Received: by 10.107.174.4 with SMTP id x4mr16903874ioe.194.1480345965705;
	Mon, 28 Nov 2016 07:12:45 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	c101sm19949008ioj.25.2016.11.28.07.12.44 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Nov 2016 07:12:45 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 10:12:33 -0500
Message-Id: <20161128151233.8861-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.10.0.129.g35f6318
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.32
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
X-List-Received-Date: Mon, 28 Nov 2016 15:12:51 -0000

This helps align the raspberry pi 4.4.y kernel with the latest 4.4.y
PREEMPT_RT patch.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 19e8552..0724ac1 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.28"
+LINUX_VERSION ?= "4.4.32"
 
-SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
+SRCREV = "f779cabf56bc88319d582db58969ba6f7184a775"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.10.2


