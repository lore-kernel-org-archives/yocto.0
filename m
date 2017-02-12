Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26CCFE00A64; Sat, 11 Feb 2017 21:27:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA60E00A0C
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:13 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 194so6507281pgd.0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=zH8LpbmZY/bMLC2W39F7rwbap1QAaj0d+ZwdEvrUx1k=;
	b=XDC9huDCIhWhVkQwiz2aFofBqWoy9tO/CjjS/tkgrIOS2P0xBcJWRI+OsX2OK/odNp
	IQPpCLk77tZUWKHLbdvUKsxWZGHst+lcXvvwptdg5cPWiZcWv2LILwANTmybGXYyhoyQ
	GfHDSloH3hNwDrvrOgEI5NPsrHwYWo9GiqoJsop61JfwtqmfP3EBpZ9s/wi4ghQ203DG
	L2Q9u+JggWczvpbYqwvdhJggHWHe5INJctb6c8QSTU/Q9JAM8I0S/RzykbcUaZnQfaGb
	jKc7sh7b8NIjzvPTe+PK4EOYLtMNh8iUrjKVH4+Ee45jxfNKvQ/Vyzq+tlvzpuUohrjv
	BFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=zH8LpbmZY/bMLC2W39F7rwbap1QAaj0d+ZwdEvrUx1k=;
	b=cFelBvtRAseEgr+PYWTTLq0N1YV11jsdlwH7lwlEM3KHnZxzQoAvdsjlwgAONVIeeq
	RvKI4lu7k7lyDvCe7J0sRHRvz7wQePuOumYZd4aVmh87ecbf5jEt1lBHaPRlWXh2Uwli
	0YEVenOSdv3/NudMOWlkm7CqRp+XGXttEEf68lwUbALFNOlUiKN8waiptKjYX3UumHqs
	jjpp3+A1TcAPYfXgOzE4YL+tU8sa6yMoFtYgh2oopxbscRES8slwtG7S6sdpC3tP5gt5
	fZmknIoSTP9nPn5J8LZXxL8PRno7k5gHVxBflv+HOS0oorsUT+u7v8UxUouj8R0iWUeq
	koMA==
X-Gm-Message-State: AMke39nntQbQl9fit9iLO5i5HqLOWYdJmuB1/QSf5q0rQXAaMkidSSYrpB5ehh01h5V0cg==
X-Received: by 10.84.193.36 with SMTP id e33mr21645673pld.4.1486877232977;
	Sat, 11 Feb 2017 21:27:12 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:12 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:54 -0800
Message-Id: <20170212052655.12342-10-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 10/11] sdcard: Use kernel8.img for 64bit kernel image name
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:15 -0000

This helps the firmware to identify the kernel as 64bit
image

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 116d5e8..79ab53a 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -35,6 +35,7 @@ KERNEL_INITRAMFS ?= ""
 # Kernel image name
 SDIMG_KERNELIMAGE_raspberrypi  ?= "kernel.img"
 SDIMG_KERNELIMAGE_raspberrypi2 ?= "kernel7.img"
+SDIMG_KERNELIMAGE_raspberrypi3-64 ?= "kernel8.img"
 
 # Boot partition volume id
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
-- 
2.11.1


