Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC232E00D8A; Thu,  7 Sep 2017 06:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A23A9E00D8A
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:24:52 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id n64so1046248wrb.2
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 06:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=6y2QW2x0bjp2raxeYtUJxuBubNfUem0c5++8j5CxVhE=;
	b=X45LNK/EF0Rnt3eRaonM6hOSgBF8uhrUp6AXP7/WQeNGpjSNzOA3gtUrHXrmmkgCxz
	8dF3Ds84Qz++PlyKeAb1ypXDWnKLaXvoNezKUaMA5EJKpj8/n7n1Wq98mPiJy6d72P5b
	H8NWEEzptkhomganbuTUjG9WfznAREzC2oacWSBrmYaUZRIKaG19xSAYsv79cD+GLwr0
	EuEAdDQmRXNwzBNPBFzuq4NgXENlBqiAFBg3G2ucrjEDoL+s+28uAF6y1T8LRZCxnjXH
	hYFNC7NeCpC2VBFA6oO/S+JpGepv5v/ffwOET0Ki4nsc3gl6KsBCfL6mw9YpHI8ncjWD
	d5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=6y2QW2x0bjp2raxeYtUJxuBubNfUem0c5++8j5CxVhE=;
	b=OdvCKZ9UHtjhAcVzBzdK+NoxZS92TpfTo/Rpk4g1j5bGMrQsNVEDHpzD3KF8i7mCVA
	p64aGFSAUftU98w3sfHNJ+HFQm+Uy+CxyT9XTP3odAyHtIkFJyP6ArDSbK0HFEvCpnR1
	wnAmpz6NbssJ2JIFi7VgPfTw1cZpYTEKf45mzpeasE3MAECElORsYFKY09mNiLPvAzPn
	4laCrM1rry1YlI/NkUL1Iq9M4/+/mu+kLIZEj7zyUlmZGYVTAzCKQi6l8IyHwVNRaggo
	XOYay1JsOoNUSGdYHVtjIYHFujyD8eI6KZx2rF3MPInDkOdly2cO6USxRO10fUYGrrKc
	iHFw==
X-Gm-Message-State: AHPjjUhc+W2vBk7zZkBu4vTE2qX1q5/JOxELQNW8kb+ap4QhR7I5BzGI
	+HN7zC5GED6eFnqf0Ca7gQ==
X-Google-Smtp-Source: ADKCNb4VcDo1IFCqqoUVR2X6rU6U1sBqrIut3nkHAGE6EuHTgDq3AE1hfMjQD6DjfEWkCxSrD4hVLA==
X-Received: by 10.223.138.235 with SMTP id z40mr1744535wrz.14.1504790690923;
	Thu, 07 Sep 2017 06:24:50 -0700 (PDT)
Received: from localhost.localdomain
	(host109-150-130-236.range109-150.btcentralplus.com.
	[109.150.130.236]) by smtp.gmail.com with ESMTPSA id
	z108sm2581622wrc.49.2017.09.07.06.24.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Sep 2017 06:24:50 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 14:24:38 +0100
Message-Id: <1504790680-20783-3-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
References: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [PATCH 3/5] pi-blaster: Update to current master HEAD
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
X-List-Received-Date: Thu, 07 Sep 2017 13:24:53 -0000

License in the README was moved a couple of lines below.

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-devtools/pi-blaster/pi-blaster.inc    | 2 +-
 recipes-devtools/pi-blaster/pi-blaster_git.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.inc
index 6ea4fa3..3cb79cc 100644
--- a/recipes-devtools/pi-blaster/pi-blaster.inc
+++ b/recipes-devtools/pi-blaster/pi-blaster.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspbe
 HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
 SECTION = "devel/libs"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://README.md;beginline=212;endline=239;md5=a012868ef5f83b9f257af253d7cb07a3"
+LIC_FILES_CHKSUM = "file://README.md;beginline=225;endline=252;md5=a012868ef5f83b9f257af253d7cb07a3"
 
 SRC_URI = "git://github.com/sarfata/pi-blaster \
            file://remove-initscript-lsb-dependency.patch \
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index ac812ab..730f9d3 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -1,3 +1,3 @@
 require pi-blaster.inc
 
-SRCREV = "9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c"
+SRCREV = "1035ad7dffb270c40eec1bb3a654171a755fba98"
-- 
2.7.4


