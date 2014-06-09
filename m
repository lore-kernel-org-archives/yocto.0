Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954E0E00B6C; Sun,  8 Jun 2014 23:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BE6EE00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 23:58:53 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id w62so934874wes.38
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 23:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=FW9N0H25uRVdVLzcpxh7/S5fA7n8DXLquyT0cNuOFNE=;
	b=oYM/7phMcgiJ8aJxZ0YhhHC1JH1FXn/QcOU9ntTlHtdoYaj6dn1SKlbICU2te4R2zA
	9eG63kYC7AyFgr8aHUV/Iq5N3IA4vMmXyrgdpDqLhxqyl/xiJJHGbQj+AeDhfyDscsww
	qDh8jjfyYScntAep7SS9Okoy9BAGLl9nfs8m+ONMq8CYHafzpaXm48fsEdlugN0qqxLi
	4AHlF5DlcpXexvmspyoJ1k9ivF4a1WgeJ4FEGEzMGe4fIths9QCRodfP3BNyq3OnlWTm
	gNj9Hxrp6s2KFR4Nd79tDNBFSLkPlk7k+meTi1FIB77vvmM2+hCEGRx5rJAE2DhcltqJ
	MeDg==
X-Received: by 10.181.11.193 with SMTP id ek1mr17688112wid.15.1402297132219;
	Sun, 08 Jun 2014 23:58:52 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	lz11sm12994865wic.0.2014.06.08.23.58.50 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Jun 2014 23:58:51 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 07:58:24 +0100
Message-Id: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
Subject: [meta-raspberrypi][PATCH 0/1] gstreamer1.0-plugins-bad: Build eglglessink for Raspberry Pi
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
X-List-Received-Date: Mon, 09 Jun 2014 06:58:57 -0000

Please see following patch for details

Alex J Lennon (1):
  gstreamer1.0-plugins-bad: Build eglglessink for Raspberry Pi

 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend

-- 
2.0.0


