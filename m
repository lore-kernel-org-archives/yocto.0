Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 738FDE00D9B; Wed,  9 Oct 2019 08:09:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55512E00BB5
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 08:09:50 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id 23so1610873pgk.3
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2019 08:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=2/cq/0/6808hB1+GJMZ5XNygVK4Bsdz7JW8DeaGS3gw=;
	b=ayA6p4Rfy6ku3SvkY6k/PqNJXHucZqykIOfHaFFD9hOchdkrauhXZO3KKNXikuzDo0
	hHDwND5+azWDwxeeX12Jl27yCxCnuYOefpH/nVyerzKifcRSsPRoKpkKM6XCeLZ9TTbY
	cJI5sDNrN7fdZ8PhboaCEUAI67D7UJxvSLxOXy8wfQ/Oips9XBkeFQPHwNqrxDb8MBjV
	RoVNjPfADGnJMg//rigju6VNVwMREuwr7sUbvxWuelh602aw5uAKNyGbmF3soCtsp314
	Kx13cz/aUkPTYs+honIao700qbpyAyWl6UlcVT/4/D/iq3r7ETWIBrKCJa53/aFWamOz
	LrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=2/cq/0/6808hB1+GJMZ5XNygVK4Bsdz7JW8DeaGS3gw=;
	b=aifvoUOl03Eso2dEeFjrUOBaF2uF8EA1Fn+nL5v9agvB5bQaP3EwXHzOeBoQ9GNFyt
	XPShD6wwoBoesSiSA1zMaENAaRPMOG6he0dBGfHHR8rtYFRhsCThMx0vyFCZrIQfy8rM
	ATOWELVXqWcuBbF9GIQl4gt6Sq7qPD3glJjn1vz5PCmbnrDXPIcbEiEDSGI5A23itakL
	T3OczzPcPMvfJR/tcRIBR5SzWgfH8qzv/S7P75/OLiN3l+pKE0xV9ia84WjJsbknVqT7
	e/mdcTJ2CeCC7KoJBuHsiHRsDMABOzmGhjp0TJb11VwsAQlM+eIyYm9w9lHvP2pfWHMO
	pWlg==
X-Gm-Message-State: APjAAAVOuHfhmPZJDv8S/waLcIk33Wl0cj+mHhZnftCjttbNzPYHs2WO
	FrCv6UO6VJaHwBinyOFyr5Hff2Yb
X-Google-Smtp-Source: APXvYqxMQPIs1eSfx7nmykL5+wD3lAh5+1AZKTGHxhuEGtIwS9SPPGY1OGOWVQea2K9TxX0e6iRadg==
X-Received: by 2002:a63:d757:: with SMTP id w23mr4562710pgi.19.1570633789473; 
	Wed, 09 Oct 2019 08:09:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:a5c0:b44a:489:d0b5:89c2])
	by smtp.gmail.com with ESMTPSA id
	q33sm2706720pgm.50.2019.10.09.08.09.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 Oct 2019 08:09:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Oct 2019 08:09:47 -0700
Message-Id: <1570633787-11133-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [thud][PATCH] linux-yocto/4.14: meta-yocto-bsp update to 143
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
X-List-Received-Date: Wed, 09 Oct 2019 15:09:51 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 426757e..5277798 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
-SRCREV_machine_genericx86-64 ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
-SRCREV_machine_edgerouter ?= "d8fb40cd0e99325715c70aed6f361a8318097829"
-SRCREV_machine_beaglebone-yocto ?= "c67809688bd22cb4cb909bcf1a1045e6337c3229"
-SRCREV_machine_mpc8315e-rdb ?= "258ee8228e0a512c6dbe2a0dadcd9f030ba45964"
+SRCREV_machine_genericx86    ?= "bc9d4b045fa0254d14ef3a667a200f02cb9af755"
+SRCREV_machine_genericx86-64 ?= "bc9d4b045fa0254d14ef3a667a200f02cb9af755"
+SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
+SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
+SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.98"
-LINUX_VERSION_genericx86-64 = "4.14.98"
-LINUX_VERSION_edgerouter = "4.14.98"
-LINUX_VERSION_beaglebone-yocto = "4.14.98"
-LINUX_VERSION_mpc8315e-rdb = "4.14.98"
+LINUX_VERSION_genericx86 = "4.14.143"
+LINUX_VERSION_genericx86-64 = "4.14.143"
+LINUX_VERSION_edgerouter = "4.14.143"
+LINUX_VERSION_beaglebone-yocto = "4.14.143"
+LINUX_VERSION_mpc8315e-rdb = "4.14.143"
-- 
2.7.4


