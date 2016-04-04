Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3320E008EE; Mon,  4 Apr 2016 12:31:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 309BFE006C7
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 12:31:16 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id r187so12521586pfr.2
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 12:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=MbK1q4PbzAvajh13c0J9yXT0Y+unqunOQgoxJVIGcSQ=;
	b=vbb5rWBa8wf5NCc0+vEcvpHpdlyaMsbnJfYWe7NbdJAmKrQh5FuOnkqJ1BFCLSnh8g
	se9BkVPEcniiLfC8n98qkF+0VV+tHVKAf1yvFpM14Ezx0kU1/9GjjBXVwYzhhL+VJLx4
	KYi76iJD50Ql/QIh24YnpBrP4mhCXI9XCRs4r+hBBXwtqt6RYaqVx1Out4wYHrQKpDwc
	J3FIPMCOKxQ91eiMVr51zxUwlfH0IfrJodFn8tOI0N738LTW/6DrPp5C62nf9uxXrIx3
	O05CB2Ygtbc+4aJGr+EvAf60hbMkGOtqBYWEgcWvzSXHTsVif1/2xAH7OQUoIihCTFcZ
	p8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MbK1q4PbzAvajh13c0J9yXT0Y+unqunOQgoxJVIGcSQ=;
	b=mpalwiYaTfarjP/Fah7J8tCy1cjeI/78DfXhckmPlVWRbyGerblpDhaKHeLqr3WIQS
	tE1LyEssuGjwRACnYSTBndm9GdPWcGhYtUhSvB3OJS4+c55PszYwC/R2yQE2C9atiEyi
	+iGSRZ40CYFLtuZE6ev5cZIiHOVtNXSHuByhgAhUHZsgAWwuPcJu4w/CfsrPgqc9b/Zm
	D/nBDGNBNahmNOOnHtr9g5wkJqnoKAxlahkqweNxiUvOth+Ad8djPCsE4422q6eQvjsm
	irk05OU2fASBFCZkE80WdZTZxbMxkuwUr0jhv6W7wZu+TByZ28TZ+oLqr2q7Mk3ZOIUD
	793g==
X-Gm-Message-State: AD7BkJJ79qYv3unVVrO8IHrjLjm70r1uZvDC2Vv+Omj5/3vYeOkzb7W331x+ER/oZjzbzw==
X-Received: by 10.98.69.75 with SMTP id s72mr24176174pfa.66.1459798276324;
	Mon, 04 Apr 2016 12:31:16 -0700 (PDT)
Received: from resin.localdomain ([209.65.105.100])
	by smtp.gmail.com with ESMTPSA id
	w20sm41330472pfi.31.2016.04.04.12.31.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 04 Apr 2016 12:31:15 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 21:31:01 +0200
Message-Id: <1459798261-14251-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH v2 1/1] README: Mention all the supported machines
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
X-List-Received-Date: Mon, 04 Apr 2016 19:31:19 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 536926b..cfd83b3 100644
--- a/README
+++ b/README
@@ -73,7 +73,11 @@ revision: HEAD
 a. source poky/oe-init-build-env rpi-build
 b. Add needed layer to bblayers.conf:
     - meta-raspberrypi
-c. Set MACHINE to "raspberrypi"/"raspberrypi2" in local.conf
+c. Set MACHINE in local.conf to one of the supported boards:
+    - raspberrypi
+    - raspberrypi0
+    - raspberrypi2
+    - raspberrypi3
 d. bitbake rpi-hwup-image
 e. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
 f. Boot your RPI.
-- 
2.7.4


