Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D50E009A7; Thu, 16 Feb 2017 10:47:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97EF3E00726
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:01 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id o64so2183874pfb.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=zH8LpbmZY/bMLC2W39F7rwbap1QAaj0d+ZwdEvrUx1k=;
	b=S3zvM7yzdM1295l//hMLqInTBOdLC/HBvnFuS234NF2167Xf1vi10YzUedQLWubKLj
	BwQn/3rG2xjJPRwg6Y1O5KxYMLhtHkX0z8QJJQl5MitaWITp+SJDcu7pyq2wmDcc6WGs
	ihVAyMzrFtM+rWUjVwzmMfhISFhBNJEBy/2j52jzX8IGn4lcmiHUM1mXoohXzjji3X0E
	Ar+zFgtp/36P1+E8ij+4RbPPuZyS7sSGBCuwS0gWGI1tqrqfdiZJjDq8ZDIiklL0m84W
	CqM3n968l/mEVFL6qUuMpUNzmN3kP+9TgyZbTlV23aGgnvOBTWgyMEJc0NidSCDsIp8x
	MoVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=zH8LpbmZY/bMLC2W39F7rwbap1QAaj0d+ZwdEvrUx1k=;
	b=c8Xp/hz8O/DhkGQzevNK1NYqwwdUxqCrb1fFh64UMjJxSLnwHfhY83m6m/PmdHdVWK
	FMA6syJe/DH94d1Y4RwWBOuCCOtd1zuhWUSVoTo+qIU0fs3+qsic6FY4AjJLQImEWaCS
	NYID8x12wZVr8+YLe/RwFrMD7Oo2ANPc24dzFuvFS3UJ5KEJDTppvOv+H7JWaJMdrshd
	ke3NRWJ9jWbq8rxoFfOmrycHoVv2qjt1fWIfcle4bnz59TLJPV4GLvTGstemKr61yk/d
	tpgWu/ieP2mM8BjDs35Gzn7h7+Oq6WMj8R/BZ8XtL1K567f3+6O+KRsa7GBOC8WRcfVJ
	/NBQ==
X-Gm-Message-State: AMke39mPUsYGL9dfLdsvuYNmH7fPwyasjOpuObvuGbsEIGn4UbF33sI9TB4ZcyyPy5bG2Q==
X-Received: by 10.99.99.193 with SMTP id x184mr4692458pgb.226.1487270820763;
	Thu, 16 Feb 2017 10:47:00 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.47.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:47:00 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:41 -0800
Message-Id: <20170216184645.6258-10-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 10/14] sdcard: Use kernel8.img for 64bit kernel image name
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:03 -0000

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


