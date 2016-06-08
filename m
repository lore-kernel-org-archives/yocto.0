Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6029FE00CEC; Wed,  8 Jun 2016 06:02:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22DB0E00CE5
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:02:10 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id k184so2820415wme.2
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2016 06:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=Y2B4ZeBb85N2vU3uAzSbZ2xHFewbFMM7xLjsvd5S+H8=;
	b=YnP3k/QQn3pm7JUc1f8F849HkcqMvD6bb6v8glOrOxZG+Ql4aUQSc9wbWl2Fza0rGY
	WF0qt/rByunrEIDA/HJOnd1PUu8cJ1EVDTI3Z/yL/zFZhqKkOlpe3npPQSdHlDW3XywG
	n2KSki9f60ZC13n1SKFbGjL3dpRs39hwuPFnRiy3Ax0T6FZYeIuxsQqoPJjviGldPMzN
	qWh4Nr81y/qJSj+9N1LxvJ2Tj4NLBEiIEqFvfBd7iOH3UtNK9haygMaFDnPPmSljrh1r
	NqRX2zhk6Pfcsg0glAwAykp3+HZwzurdRrti5qH0Aiqa8h1JSh9EgOWtW+pHJ6TM4KWo
	fL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=Y2B4ZeBb85N2vU3uAzSbZ2xHFewbFMM7xLjsvd5S+H8=;
	b=atKJ8s+UnRTmPpNoRkiwA+3GE6WPxjFWtYzsdMz400hngYKFSKMf4ZHaH0LWS8C70n
	VUfoI0XFqwqLygSf6UdqAb3FPWGDQFe/UsP/6msV8NEkMGHQCIIxFQAgX5bk2QKzMJ2h
	Ikml7lZbOuZ/hDAhj4DszMciFC2FKAvDtybI4b7iPyY7t6dCoURLl0jxQ4t4qJRJgglN
	7B1Az5K9ZuLsNXx0HIsp+XeiSvccDFGDOpah81tz2BUUKW6ZUEk+OTXpV9+FB45HBsnI
	YM24YZid3/2oAbmWEBhrdSrNnryoVbkASljxDH3aLglfpKuEVNi1f5z89Pc9dIH/tXZz
	gp9Q==
X-Gm-Message-State: ALyK8tJbmqq5MiWuavw7jNsgcQEZENx94vN8h/9DqomYPyWOJwKCC5HJrW9OHjl0j2G3Bw==
X-Received: by 10.194.116.195 with SMTP id jy3mr4407076wjb.137.1465390929972; 
	Wed, 08 Jun 2016 06:02:09 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id h8sm1446079wjg.9.2016.06.08.06.02.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 08 Jun 2016 06:02:09 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Wed,  8 Jun 2016 14:02:29 +0100
Message-Id: <1465390949-26330-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH] sdcard_image-rpi: Prevent taskhash mismatch
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
X-List-Received-Date: Wed, 08 Jun 2016 13:02:14 -0000

As recently discussed on the mailing list, bitbake now issues an error when the
task hash computed by the bitbake master differs from the task hash computed by
the bitbake worker. This usually happens when the task hash depends on the date
and time for some reason.

This affects IMAGE_CMD_rpi-sdimg and is fixed by excluding the dependency on the
current date and time from the command.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/sdcard_image-rpi.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 3b4f13f..a8d83a3 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -72,7 +72,7 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 FATPAYLOAD ?= ""
 
 IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
-IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
+IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"
 
 IMAGE_CMD_rpi-sdimg () {
 
-- 
2.1.4


