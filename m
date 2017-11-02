Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A76FE00928; Thu,  2 Nov 2017 08:51:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD07AE00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:51:34 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id z55so5462830wrz.1
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yDxLRMBedCqh8xOVohF9yGRq5cn9yo3p3AKaiIQxEqE=;
	b=JDZwcNmolqVthvhiKaL6zO+3QuLzhBDGI5LJoyz2jP/289zL5hUJ9kK1F2cn5sboDe
	qvatQfD5mx1fNXU6lPFGLnk62kaGHJNThak0880HkxlKunxvL6a1UccANXXAtmPQke3I
	C0cC/THDxk/QxdomxLMtdfxqjPgQ/iDbaqaxvC6vieXPE6iuKtqvu0Rkg0KhuZQDIGXZ
	Bv498IbI6KDCN76eCK4s9uITSY3qCmqxcHHhMkpxB9Jnui5y+XOqFRSF2AT3PdDrqyr5
	9D+lB1fLfbEQ+/Zr2mtrRqLvibzzOYSBqs6FiLUhPq9bl0pA1Xorb/D9mzYshCYvjfPC
	7GSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=yDxLRMBedCqh8xOVohF9yGRq5cn9yo3p3AKaiIQxEqE=;
	b=W0VTyLJurrrv1gglhJVTFeEIPKl6f5hD0qKF9dz02LzuybNBF6gys2EpwKmDtRkWJ/
	tIlA9TGVVBD/AuCIs1ivRvCPfnjgdKaPXvLSGSYmzzeIVhkbkVJT+CAw1LWetpUBP6hG
	jBZf1RybWIr2zduN5eYcrS275hM8Tbd1v/GLhuwOBSi9pSLbU67ZEFmrYk//LWaIPE4h
	xzghDqm+C8DN8ozV+iy2JD7osXjVydiHKaRe99zsoM7nh7AngOQucyDXr2q74Nti6vax
	UqpsWssNynrCt6EK+2VQkbo+yQ/EjhRFYgKPDIGYhsxX8e8ybRotWVKtpaqGSgWi4mgL
	hrkw==
X-Gm-Message-State: AMCzsaUH+UjSw/R+KwO8Rf7YDFg9a25QGw7nixNn+3SRHSiaUM5rSVCP
	eK0fNlZYQ1gjR/S+63vMR0zpRCw5AD0=
X-Google-Smtp-Source: ABhQp+TgQRHHOjUuJImvBXI0QEKL4+drWR85MZQWknT8nKFY0BKunrnav3i5W9ysfyXwzu0J1IH86w==
X-Received: by 10.223.200.132 with SMTP id k4mr3226028wrh.215.1509637893562;
	Thu, 02 Nov 2017 08:51:33 -0700 (PDT)
Received: from localhost.localdomain
	(host86-154-149-85.range86-154.btcentralplus.com. [86.154.149.85])
	by smtp.gmail.com with ESMTPSA id 89sm1481975wri.79.2017.11.02.08.51.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Nov 2017 08:51:33 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Nov 2017 15:51:07 +0000
Message-Id: <1509637869-29982-3-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
References: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH 3/5] pi-blaster: An .inc file looks too much for this small recipe
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
X-List-Received-Date: Thu, 02 Nov 2017 15:51:41 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-devtools/pi-blaster/pi-blaster.inc    | 21 ---------------------
 recipes-devtools/pi-blaster/pi-blaster_git.bb | 22 +++++++++++++++++++++-
 2 files changed, 21 insertions(+), 22 deletions(-)
 delete mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc

diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.inc
deleted file mode 100644
index 3cb79cc..0000000
--- a/recipes-devtools/pi-blaster/pi-blaster.inc
+++ /dev/null
@@ -1,21 +0,0 @@
-DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspberry Pi."
-HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
-SECTION = "devel/libs"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://README.md;beginline=225;endline=252;md5=a012868ef5f83b9f257af253d7cb07a3"
-
-SRC_URI = "git://github.com/sarfata/pi-blaster \
-           file://remove-initscript-lsb-dependency.patch \
-"
-
-S = "${WORKDIR}/git"
-
-inherit update-rc.d autotools
-
-INITSCRIPT_PACKAGES = "${PN}"
-INITSCRIPT_NAME_${PN} = "${PN}.boot.sh"
-INITSCRIPT_PARAMS_${PN} = "defaults 15 85"
-
-COMPATIBLE_MACHINE = "^rpi$"
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index 730f9d3..2748459 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -1,3 +1,23 @@
-require pi-blaster.inc
+DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspberry Pi."
+HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
+SECTION = "devel/libs"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://README.md;beginline=225;endline=252;md5=a012868ef5f83b9f257af253d7cb07a3"
+
+SRC_URI = "git://github.com/sarfata/pi-blaster \
+           file://remove-initscript-lsb-dependency.patch \
+"
+
+S = "${WORKDIR}/git"
 
 SRCREV = "1035ad7dffb270c40eec1bb3a654171a755fba98"
+
+inherit update-rc.d autotools
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME_${PN} = "${PN}.boot.sh"
+INITSCRIPT_PARAMS_${PN} = "defaults 15 85"
+
+COMPATIBLE_MACHINE = "^rpi$"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
2.7.4


