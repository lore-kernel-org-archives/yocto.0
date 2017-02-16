Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42A37E00924; Thu, 16 Feb 2017 10:47:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FE1E008D0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:01 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id 19so2175141pfo.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Asd3EmEP/2y9iWFPp0UHX7Zg6/aaWEiGDrfrSeaKRtQ=;
	b=EinuMqZyjIKiqaclLeOMxpXtyczceWMG+7nsGm8GQrBl8n2EOoMOBi/JeDaQ/9Ez7c
	S3G2Ut3qgkgmajTSNSWML02lK8beVqeUFJndd2ssmOYti8Hw/fZe4WM8pvmqQKM8glHr
	XbZbD02pnVKbm6NMj1incUgIPBovdNCKrbj6Ae1tyJApeS+r9617VlALgqsh130/hO/G
	ATJx0JpF+euVLUMoq5vB30fh6wFSu5TQV1HLGxIJRW6Ztzsw21p2+Mou1smLCdOP0oSp
	EapP0Lh7JSd6PLmP5hrUir1sMITLOz79bEaSGEtN7L+7Fewv3Z007BdEmmHU2iSPn2mA
	UtZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Asd3EmEP/2y9iWFPp0UHX7Zg6/aaWEiGDrfrSeaKRtQ=;
	b=R7srbJrsRmXB4u/6XvQ4s42MGtVpzWCHfZNu/0b+IxaRK65uSKq0HTOJoBEbCv4IYt
	hQor2xBudcr3wIqOzggl2iHZXFs/oZC55V/26GKrNGf+vG+S6ajHQYEao1N6aQXooEyn
	+WtHqtnEb8aJyzr/UyKad+bSXtee3DbcnNpfPCh1ZGaPCzRiSrBklnO4wC/Pkt56ZFIU
	CjX8AdnJNa1vcWdMkAs6ulinAq8oKX4qOYeI84RA9bGAIrP2+M1y6PNvXycJw12AVnYk
	dFwWKy2BEoYh4ndFijlNFrO50yD7FDjs91ZExhpqhTBxGGM2xPHMlOHsSSy9FhPgE9TC
	R1KQ==
X-Gm-Message-State: AMke39kRIHnzefSzAJ4UbPAh3xw5uJcpv7zSv71C/vXhxDwGA44re1aAyz12sglPpJyNyQ==
X-Received: by 10.99.95.151 with SMTP id t145mr4529077pgb.75.1487270821529;
	Thu, 16 Feb 2017 10:47:01 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.47.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:47:01 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:42 -0800
Message-Id: <20170216184645.6258-11-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 11/14] rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3
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


