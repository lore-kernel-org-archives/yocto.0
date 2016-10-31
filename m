Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29BFBE00848; Mon, 31 Oct 2016 09:52:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05722E00747
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:17 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id n85so9175248pfi.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=rVUlsLHW8skvoi76kv9H6dM0XoWepzADll1aZ3npcYo=;
	b=H9FOV4NHrAq2a08HE6dLekL7pn/Ddngc/G6wE1zlPGr+YURN/CQbG2D8KnzELFBf36
	DWf7g6aaZNvvz4Qu/plcBluv57uxtV4MtFqOTh5DqHx8lW4Awr0dOfaDorxhcEEZ3NSX
	CQU3sjNt0RFwJu6K6y2eB618m3W0qDGaoCZOMIidMBUHSYQT/1Wb9FRUIJGTRwuRxEes
	0q9v/VIAXtLuyNY89PwBNODInp8lZT5XvOICv4f1rTMFHbRY9ojZhs9TUq/MlRopMLB0
	7oyFJUDEXuuh25B7zykRnUUtY6l0JuHwrWXVv+Et3NsC22jlHB5RZ8MZ9K2ND7ejXErt
	4xvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=rVUlsLHW8skvoi76kv9H6dM0XoWepzADll1aZ3npcYo=;
	b=aCkJhvtKl6f80JRfzv+BpP1hoPC9uZotW+56cIFPF0xxSw3Cu06kTnZfiSJRTP5TRy
	YfS08DfOlnm0H0kXHIOc2ll1rNMMuaXR3BmYb46bjV7PiEKwDn9O6VfAjSw5R/G68zlB
	W0/GVYGqzgCHFy3BH/y8XtNc2qL1O26UACjepgzNivUW+/h0li0W0JNCCYP+eOCx76J5
	sOZOwgYoYsS8EgZARONjYt8/kk40xkvqEKdbRhOEKVk4SYj8Pg8EL0SHAhSDkF935B0K
	ds9w8CJ+mTR4D3Bi0g5A0TWlK5m3yclx+HI3MnDYTVEineRHQQQ0AgcoMFo3uInQYsMy
	09rw==
X-Gm-Message-State: ABUngvfXbQbLjhnPN9NvFk5lb0EHDXDovf/4Y5I8EaS9ANqSjxszMj1SPQh8N9KGUVo/aw==
X-Received: by 10.98.138.219 with SMTP id o88mr51658086pfk.52.1477932737368;
	Mon, 31 Oct 2016 09:52:17 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r2sm14653100pfi.67.2016.10.31.09.52.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:52:16 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 09:52:04 -0700
Message-Id: <20161031165208.16286-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.1
In-Reply-To: <20161031165208.16286-1-raj.khem@gmail.com>
References: <20161031165208.16286-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/6] linux-raspberrypi_4.8.bb: Update to 4.8.4
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
X-List-Received-Date: Mon, 31 Oct 2016 16:52:22 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 02623f4..528cfef 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.1"
+LINUX_VERSION ?= "4.8.4"
 
-SRCREV = "5b7970b19bbb2ea1620591bfb6517848696ed0b9"
+SRCREV = "d8f7c2da3d33ea4fb4f67411badad374b1160b44"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.10.1


