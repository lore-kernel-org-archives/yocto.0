Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED14FE00B8C; Fri,  9 May 2014 06:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-ee0-f51.google.com (unknown [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD520E00B71
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:14 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id e51so2664107eek.24
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=GJO9iKqmUu/X5Hs5BYyK24Syi8vE2chmXWngo25Q2Pk=;
	b=CL4wxNM9FS3v0xBcCrkdY3lcLbTIqAL+HX2BXmKV+ot7t2mz2tZwpAZXEHobCegPB/
	GSlUbXrQBbFl9vOc1aNRquvT4ddR/Su9w0mrOijITtSVabt9SqL/x6GobxTxG6ORrcJj
	p1/WzFFFOTlR2yp9ZxqTxhr5r41/Anar7aRp0Mkx779gJOuvrRGY4y0rIeLyNyPdyhb1
	ZFzY3QApgUTMlfmsoXq9pbVUHN7xB13Qu0k3Gk0szgDHKd9GTa/XIDT1FVpo6+/xZWYh
	tbCkey3kRfZ3cf7+S1ZBi7CRj8l6X9EVtEiMZ2WfPRKdfFHUCTjzC7NofUbvcYzrFatJ
	s3sg==
X-Gm-Message-State: ALoCoQkwodUVwNI0eL5ancPkD4wCoOf5h8jv0xURHoDG+DXle3bH1lj60Aolu2bSUSt811U+gy/u
X-Received: by 10.14.183.5 with SMTP id p5mr13491859eem.52.1399640953630;
	Fri, 09 May 2014 06:09:13 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.12 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:12 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:08:58 +0300
Message-Id: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-raspberrypi][PATCH 1/9] rpi-default-versions: Use 3.12.X as default kernel version
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
X-List-Received-Date: Fri, 09 May 2014 13:09:30 -0000

Change-Id: Ief7949be4b9726b5b6ba58e6280f6b6ca3fdfdc4
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index 04297ba..1ca9701 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
-- 
1.8.5.3


