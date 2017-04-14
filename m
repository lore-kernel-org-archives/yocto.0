Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E92D7E00A30; Fri, 14 Apr 2017 13:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2862E00B27
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:24 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id d79so207653wmi.2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=98qzihzbTqApuYTR+8hos0Eu7B9mh7JnUWVEE/VYrho=;
	b=p5e1y/JJQDIdvg9QHWtlNR3XgD7LSWaHpMhBQzM0ugy0SFqnQ5TSc3ntSCVbpt4aNX
	QEEr76vboFyiGHnWcDss7HJKkae+oOSnHGZIZKOleFwcv8qb9weeybiOfPgMTNqpZrQR
	BZzbppSr22f4OkmA0c6jtMZOeGYA9wZwDZtK6YzBmkmvLfSuYe6ffMrqslw5f0DAQtdY
	zfMQQCYVqJbbeJmtnboJnEg25d/xrCRC0QvJMYC4JCjUicxi3/BcpSsx+1x3uXnjdpl/
	80Vz1tlhaxIKg8aMbe6hr+07q4NAMvHMV3DLJ8hy+NcI+kBpvseBtQKfoEMPImHjLkmx
	hvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=98qzihzbTqApuYTR+8hos0Eu7B9mh7JnUWVEE/VYrho=;
	b=Wzz3zPngHKdJDDt372zYX0KtNX5PhkqZ6zLcFPOrKdjGrqx/Akki8KMtu3pnz4r0qO
	bObchk4TqzOxA8TUZn0jOHnWDZ+0pX0BpgArIFpPMUXgeb0/PuP1kCsL2Ppt2hz+0W4J
	DLYqa4pEwcUPnMa8QsNoClYLT3dsm3mCqJEoF87RESalJikyNqqKuho0uPOn8q7zH93f
	0zg8HjmtC9HHSsH5MlznB6m9EM+BZw2R0mbMrmo4Rd0MGxYFOUPWbtB0HRSdZrdymjSl
	XR1zDpt3z6opy1WBvsxzYmNR0lbIxKYExWNjvXTZIbLSyYeVmpcoapFdBX4Nt03Gv32a
	UvrQ==
X-Gm-Message-State: AN3rC/6lj6ZpDjqN+UhaOeXsfjcvwJtaVZKWc5AED0MeBYAiJn4gfvR9
	+5Xa3LwXVR3Big==
X-Received: by 10.28.0.78 with SMTP id 75mr214468wma.138.1492200803794;
	Fri, 14 Apr 2017 13:13:23 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:23 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:11 +0100
Message-Id: <20170414201313.3138-5-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/7] rpi-base.inc: Include dtb for RPI0 WiFi
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 092cbeb..003dd65 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -14,6 +14,7 @@ XSERVER = " \
     "
 
 KERNEL_DEVICETREE ?= " \
+    bcm2708-rpi-0-w.dtb \
     bcm2708-rpi-b.dtb \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
-- 
2.12.1


