Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B88B5E009CE; Wed, 18 Jan 2017 09:34:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CBB5E009C9
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:34:39 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id l7so2700810qtd.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=ya/IjL6RTb4gMJblKZ+2ZFTe0tT/uboOH7a7tDtupQA=;
	b=yoMMvcNX+RMEdHkZZWH70ctdz0+e5trItN8bmyzGW+4Gph4TS0AgYY3wrXKCSEbAsu
	qCmVCKDlndvfPLGH63y4jMz5AwKuoCDkosphVDPxcloU7htpyGIG4dsjpOWXTwKgB8Qz
	LquGXYhQhvPlDFq9brotDeY61oT7V17qugev07Lm5Imtc1GaKY6R14MkYqJ8aR0e3NgX
	V9rGlBCOY0+SW6ctJt3PgelW2rh5cVzAHhToLsknr2T3Qvf4Jur1s6eYtfgyQuK1lXiF
	FkcXc10OJIAEh3TXexYcnGiluDy6+RLT9wlJ6ED8X1pVRIjsZ5q0zlh78w4gU2mueG6s
	eP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ya/IjL6RTb4gMJblKZ+2ZFTe0tT/uboOH7a7tDtupQA=;
	b=jh0gTvq2XknFtedW5vcExZoB0DAxB9T3ebc3NuX+XNY5lLwmL+OQTMlNeOgMZrny/j
	i4waucRZPJcwGERcR/uOiejyVGRXobI1Hs2b+3ug1cW4QsDfN851Kz7flIUX8JmYtciD
	U3rtvKBKtWDASTJA3qlVsnxkz+pJQ+JFgS+d3wKU50MXpdgl+2bsexSsPN/VviOpcyjQ
	ytl/VZqIiaiMKKqh614xZA5NeC24MmvN3rDGPc9ltCAiIk1oCDQqDRQjQehzYUm5mwlc
	XzZEcMfmDDwQb739epUyBaBr2WoTS1gWiSaZcv8FG6H/WZqdRPY2QML5zCNuHwWmLoIE
	jmag==
X-Gm-Message-State: AIkVDXKAoTS76Qck0hA+rG2zPwmy6JanIWyaWvTPd9QEpBBHw9+h4qL0LODe7tUohnE/Ag==
X-Received: by 10.237.53.162 with SMTP id c31mr4137748qte.55.1484760878853;
	Wed, 18 Jan 2017 09:34:38 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e33sm727791qtb.31.2017.01.18.09.34.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 Jan 2017 09:34:38 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 18:34:01 +0100
Message-Id: <1484760842-5100-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH 1/2] linux-raspberrypi_4.4: Update to 4.4.43
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
X-List-Received-Date: Wed, 18 Jan 2017 17:34:42 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 3317c02..0f78225 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.39"
+LINUX_VERSION ?= "4.4.43"
 
-SRCREV = "5e46914b3417fe9ff42546dcacd0f41f9a0fb172"
+SRCREV = "17ca1c930978a9ea6ddfec61fd0e2043e8ab3b17"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.7.4


