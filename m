Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E46FEE00B70; Fri,  9 May 2014 06:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-ee0-f47.google.com (unknown [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CD9E00B75
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:17 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id c13so2685931eek.20
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=njOjw15qXvrdqLx7zzpSMbfq61XNDjz92zL1KNgn2YE=;
	b=RwwVhzElUTNaRYSxI66ql2gDit5XQkcfRl3cFOJDY4PZ5kpjVmyQsuBs76uOj+uVgp
	lDUZqeCKFNZtOZxisPvw7tixCEc1kIZtovCcC69PiUOY8MoUvUwAFhaYVgGohkfA3bOS
	Zbs7sLMWmqpwxwe2sUFSsDoyvM89qVGj/0goBHcj5JxhRTKNdm+Sjej3TTi3lCniyOZB
	8zRYQ+LzvwEbBIZxOH1kQvl+tgRxbaiNSAhhFZlAWk7vzLXiVzljI+mKtnG9KyTC/PnB
	XAnK8tu58F5RkPo8CwfidBJXF9WrjS650t0cRuW4d3rSskxeeN3uxSXU2ys2yiMw6gV2
	vQpQ==
X-Gm-Message-State: ALoCoQk3VVeyVwhHMzQo+GNYKu2zZ0+2j0LLon2Mp/2LI/cGYHKyOx9OITu4WaRs9dS5lWxuDOlw
X-Received: by 10.14.194.133 with SMTP id m5mr13351451een.38.1399640955960;
	Fri, 09 May 2014 06:09:15 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.15 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:15 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:00 +0300
Message-Id: <1399640946-21680-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/9] linux-raspberrypi: Remove v3.11
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

Change-Id: I28824a738a081bdeb362da4cf0cb449d11cbe449
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.10.bb | 6 ------
 1 file changed, 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.10.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
deleted file mode 100644
index 6df11fe..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "8f768c5f2a3314e4eacce8d667c787f8dadfda74"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
-- 
1.8.5.3


