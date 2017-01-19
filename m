Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E241E00AA5; Thu, 19 Jan 2017 03:51:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE8EE00A96
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:24 -0800 (PST)
Received: by mail-yw0-f195.google.com with SMTP id l75so3693993ywb.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=RYdIK39ggS9yDPxmX9jD5OJ8WVr2HwTws2gdOxiNw60=;
	b=AabLzC4vxG24FCgW2p9L8b1TpsG/6Vn4IL9QnmVpwbGJf6PXwvxF15L3GAhclj4haH
	ItL2rWMCN4iW/Kno7GOb3lWhuAf/3MSCKDY0oWUcsgydLbUWZAmeonSsoMzludluKveP
	sv9dDHvRXujsjZmM3imR7h5RG3As5IiArrqLvYo/ZGU0n0tULmGA0a1x+xqFjhq4oqmf
	NhsgjRBClGuAr9OyoR5OcZU3nfMojVnFQSC82FC3ZEvC/iinp6P+og+k619QdRGmg47j
	pLM7SlRnTJX6CT3ViN/6kWnxdiVMGkjCm0/migLHvq2WiCrzfRfALp3eOTwW4srViZUn
	rLgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=RYdIK39ggS9yDPxmX9jD5OJ8WVr2HwTws2gdOxiNw60=;
	b=iHpw+4Yncxzo4R4x45kpYXlOJglmBISLqAi2vAm3lXAGfOwUefQnRuY1G9QWQ6dX+j
	CLig7GLN8U065v2wYk3agf6oZVggGz9uTPoQNWN5M5LYZsQslA82AX8NP0stM5SfkY3L
	B0RhPqVF7sihGdHQmKQuOZqVtOokPPisgVPwNO2noIMGvwLna2ecoGM6EKVCVa90HG8S
	mRiBjT6xNsgH/2bwvPbp89urWnakl/trbhqjBxpY5mhLuj95Zgwi8TPZQ+jzcdLbxe3+
	O6d7A5beGsDvOt7Lvj53wCS+R20ecXHr+1X3qlYDjK8N584V0eoV7GtF1Yf/7NFIM1wj
	u7+g==
X-Gm-Message-State: AIkVDXIg+9FpaenCEKatoEvdE9YXhgkjjsMWocY+lULixYSws3xPnPlHlTr6PaJ8Srp1Qw==
X-Received: by 10.55.88.195 with SMTP id m186mr3295439qkb.173.1484826683551;
	Thu, 19 Jan 2017 03:51:23 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	i48sm2833382qti.37.2017.01.19.03.51.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 03:51:23 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 12:50:55 +0100
Message-Id: <1484826659-21692-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 2/6] linux-raspberrypi: Upgrade to v4.4.39
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
X-List-Received-Date: Thu, 19 Jan 2017 11:51:26 -0000

From: Paul Barker <paul@paulbarker.me.uk>

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 35a72d7..3317c02 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.35"
+LINUX_VERSION ?= "4.4.39"
 
-SRCREV = "5d765c8b5782de7ed49f623c107f1b395429b560"
+SRCREV = "5e46914b3417fe9ff42546dcacd0f41f9a0fb172"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.7.4


