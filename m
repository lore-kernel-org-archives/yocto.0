Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2BADE00A28; Sat, 11 Feb 2017 21:27:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEC9E00A4C
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:14 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 75so6486680pgf.3
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Asd3EmEP/2y9iWFPp0UHX7Zg6/aaWEiGDrfrSeaKRtQ=;
	b=viJN/9R5rSt3K1bdRRmDhP4vDCqIZiDd29URXev1yvvB/pwUHx8/wOJXIc2Gmf6xod
	RYHd5U8mwoyjpX8yfwjYC9bswcdsmFxsCg2JgHgHs30x8hrPRittJ+9qpDu+amw+2XOI
	jjaokxos4XF9KERFqIYdwZHjI27o82G66zGTFuQ8Jz/T4gR5RZ++qTvI+WtCMC3tC81j
	L7MIKIm2G++YGBkxknafPjGOdHmgKKSsYE63FUboCReSJH021Ka13U8Gl6Sz8zCaYakg
	q+u0WavIQWXjGvhi1G49McW+JdMPUF/5VTEY7cr3i9drSQ85yNenEpDHB/IeX1CFzf1T
	ELxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Asd3EmEP/2y9iWFPp0UHX7Zg6/aaWEiGDrfrSeaKRtQ=;
	b=HGLFL9wjjv7GwmvYpUKPihTeL5PzFWoNLGbGNezZrcoMQC6dQcXKglg+dWFpYgFgdk
	bamXDRd5vORr1ExuSp2Kuasz96suwd6pSzf9VS+Xg7NZwTpAn4FrYxhz4InpdNGX/3fO
	dYE/rYZb+QngqjWHr3ZYVLVBW48v+eh598apk7sPeTzZ3DHKWXFgk9CRfZXATBIfa24q
	d34GB6/DGtD3Kk06xdO1f4ygi9vTSrokwDPdxx5NJeKfGeFK+EdXnSTyZpOoaAyky0re
	bZY2eUO4ZwtoHX49l4AjD2X+kyIx6RJdVXV0l6g7VA65uMvf1F11LIBrR5TOM9jGKjPh
	NfWA==
X-Gm-Message-State: AMke39kKubSPdYdZOhzDfiPsnITaAybhVEPVx4wMexVv0P3Rx85wh6IEEpqLR8xhlxLNSQ==
X-Received: by 10.84.132.1 with SMTP id 1mr21601549ple.44.1486877233963;
	Sat, 11 Feb 2017 21:27:13 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:13 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:55 -0800
Message-Id: <20170212052655.12342-11-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 11/11] rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3
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

Let config.txt explicitly specify it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index f610718..20ec343 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -112,6 +112,12 @@ do_deploy() {
     fi
 }
 
+do_deploy_append_raspberrypi3-64() {
+    # Device Tree support
+    echo "# Load correct Device Tree for Aarch64" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    echo "device_tree=bcm2710-rpi-3-b.dtb" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+}
+
 addtask deploy before do_package after do_install
 do_deploy[dirs] += "${DEPLOYDIR}/bcm2835-bootfiles"
 
-- 
2.11.1


