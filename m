Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EE77E0086B; Sat, 23 Aug 2014 18:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0316E006EF
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:46 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id v6so10812749lbi.10
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=X2xOaTcExkJx3qgA8vXSJFq+S61tq/Pvrm9ixQgsiJc=;
	b=ZWBLURCq4WTgBY0cX+9qpCPpn1/Gybin5wPU+qZTge5jfZjL171TfHFYK+ZXJImqkq
	NwE2UrNxkzWpy82O+WCTG274bHnamvWmt6I3K3ipz3MTaPhWgKaxOQoA7jAKld0/hShw
	5mwk//PVjZqe4YPCpamnnyWnClEXFpg+1otnmGh5aDGbzVfMTUUTPgX8IbxlP9ecXAYP
	nDfYZqMqTqjwvK0AnBSvZ32av8KZAPAE3X9Iej+iJE7HNc/Hn4eNs5q+B/LXdmy6QsY4
	WhsDw+ZoDfA3kWQk3MLT0CoCbbQejIowXtjdRxNPg1vnwnUDSxVmABlAFUqzjWT21qff
	Lfvw==
X-Gm-Message-State: ALoCoQmU5XFvSqwZfBwpUIjmayksFNEm3Fv08F1c9gew6HFXWjWMX+hZ0Zc7VBU10yAeL586VgRX
X-Received: by 10.112.52.225 with SMTP id w1mr12243032lbo.44.1408842585229;
	Sat, 23 Aug 2014 18:09:45 -0700 (PDT)
Received: from otp-agherzan-l1.gjk.dk (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id u4sm1192544laa.42.2014.08.23.18.09.44
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Aug 2014 18:09:44 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 24 Aug 2014 03:09:35 +0200
Message-Id: <1408842576-30267-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
References: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Replace v3.14.2 by v3.16.1
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
X-List-Received-Date: Sun, 24 Aug 2014 01:09:49 -0000

Latest kernel supported by rPI.

Change-Id: I658d8bb78ff61f856fc82328633ca227325436e4
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../linux/{linux-raspberrypi_3.14.2.bb => linux-raspberrypi_3.16.1.bb}  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.14.2.bb => linux-raspberrypi_3.16.1.bb} (77%)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.14.2.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
similarity index 77%
rename from recipes-kernel/linux/linux-raspberrypi_3.14.2.bb
rename to recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
index 9cb7c64..60aca96 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.14.2.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
@@ -1,4 +1,4 @@
-SRCREV = "b0da29026e2bd5602fed7f650124838696f9dda6"
+SRCREV = "82692a293288c334f3da11895e63ea7d066db4f6"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.14.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.9.3


