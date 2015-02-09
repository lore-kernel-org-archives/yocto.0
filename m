Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48AA0E00990; Mon,  9 Feb 2015 15:52:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1AF3E00945
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 15:52:29 -0800 (PST)
Received: by labge10 with SMTP id ge10so16907050lab.12
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 15:52:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=I7CM+BwDXLy6yzhl11zd6uJpIzzTGhY1+o3NGkNdtOs=;
	b=eeYifxaWJ+Z5FMiE6csI1M5yZVxNWOvPi54VMPuqRRDQSBVcuaDcdU0K1f7fIceWqu
	cEux7Vjj2HTCxWx2pzMEFhmowIxNtqKTWFD/xcZxKNOHmL5yYWDYuNu6VQAA6kOH1cM+
	lOPGZL2rqWyw2+YFWUvKjOiL9bsRol/Xb9W/GEQa16ZXP5Ii8CQLU6WVqAMQ0PDXwUE/
	OuGu1W59a5k9zvLZZw5tjrjYb3os9PcXZ4RtPVR/ng4/9MGMHK4NGTiVta9N+WU5HfDn
	LEYtVMqtV4+Rkw10x1ywyZyR5vKt92DTcFVMjCVENQ/PVu91QS3q9ElPUnDUb31DFhMX
	rgvA==
X-Gm-Message-State: ALoCoQkxEKWa51uPFK5KheOeChauW2kkUhp6aKPN6tu+Ura72FyARXDxEKLwLzHqCRERDrhRCv2g
X-Received: by 10.112.198.1 with SMTP id iy1mr8385388lbc.13.1423525948853;
	Mon, 09 Feb 2015 15:52:28 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	lk6sm2380189lac.1.2015.02.09.15.52.28 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Feb 2015 15:52:28 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 10 Feb 2015 00:52:19 +0100
Message-Id: <1423525941-19710-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
References: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 3/5] rpi-gpio: Update to v0.5.9
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
X-List-Received-Date: Mon, 09 Feb 2015 23:52:40 -0000

Change-Id: Ifc455b9106f07583ccaf3fe82723baaeb5e04d2e
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/rpi-gpio_0.5.6.bb | 19 -------------------
 recipes-devtools/python/rpi-gpio_0.5.9.bb | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 19 deletions(-)
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.6.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.9.bb

diff --git a/recipes-devtools/python/rpi-gpio_0.5.6.bb b/recipes-devtools/python/rpi-gpio_0.5.6.bb
deleted file mode 100644
index eff22d0..0000000
--- a/recipes-devtools/python/rpi-gpio_0.5.6.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
-HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
-SECTION = "devel/python"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=35af90ff2a10e8bdc967653b9dfcb22a"
-
-SRCNAME = "RPi.GPIO"
-
-SRC_URI = "\
-          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
-          "
-S = "${WORKDIR}/${SRCNAME}-${PV}"
-
-inherit distutils
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRC_URI[md5sum] = "cbdff15871230ceef29bb407d31da485"
-SRC_URI[sha256sum] = "36b64a9485d6a0dc8f24cfca6af45759ee367ce412b952ebcf0409364e05813a"
diff --git a/recipes-devtools/python/rpi-gpio_0.5.9.bb b/recipes-devtools/python/rpi-gpio_0.5.9.bb
new file mode 100644
index 0000000..9394fd8
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.5.9.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
+HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=9b95630a648966b142f1a0dcea001cb7"
+
+SRCNAME = "RPi.GPIO"
+
+SRC_URI = "\
+          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
+          "
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+inherit distutils
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI[md5sum] = "54ea6ef33502d43e3a89713593315e5a"
+SRC_URI[sha256sum] = "167fab1861093677af69db135ce815729dd4fbfb8f8e2eb830eab6324bc89152"
-- 
2.1.0


