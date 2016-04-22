Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51812E00F6C; Fri, 22 Apr 2016 07:46:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E8CBE00DA1
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:25 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id 127so10288473wmz.0
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=GyX1p2R1+K1yUtT2/frSd8xB0qNbU+kxSlDKQ+k9kq0=;
	b=OdNWi3ULoMhNNfpsGne7qzS/JWWc/sLZMJWe0AQHLIzJr6cu6jpO33jXIYduUD+Ktp
	+FEx3rrmhNzo7BbHCD0b7nF5ge9obMzdG1PdEpW2HE6kNMT/vMt9VPN87I6WU3pMyuks
	8fGCgzterVqb44/hOGQYJgZvfWgSJvPO9oDhsNA9iK3Lqy/YXzzSnTy6JgfNXsQwT2A3
	99qfoIKOJDz9j2iTp0BiGriE/8Gy1bfc98yr8BzUZTUc53raWHwB/vRmMQL3onIJZh3N
	ICLRLkh+qamj12bZwBsenSlLwrRH3ScIherndbl3XRJd+S/QsLOqYuOpx0Q31ODgba9o
	eELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=GyX1p2R1+K1yUtT2/frSd8xB0qNbU+kxSlDKQ+k9kq0=;
	b=RAK7BGccWxh/5+mltd3AfCWRZd3p+rPIV13QG5B6oIgxcrco6j9PiZSSKsSEFb4o8u
	HxmKnJZ8bS3QAvfF9WAfNOxKZW7A6Y4d6h8rxqbjPxveh6yQ+ZWZEItz4dJu4WhZlHnl
	3cyn4VZhJJ+LKcVqhCgI2+t+T1s+JH9OuZ3Ru9Vj0SOpupPLq0SDPve8NpBLcXrkJcvJ
	ilQF/SdCvY0ffG3xPgZW4+hGzfRXAc0Z9vPo0KxTmr7EnoQmtreo3XUi7gUONpFYCbvY
	5RjEfNyLfyTLSn7lQxyk4Z7a3E0Kwd23J2kvkcIAvfZzVysUajCv7e2TbG9x2GuungCF
	4BUg==
X-Gm-Message-State: AOPr4FX45yxYBpf+IHNOPjtwKkG1uLAtUBRmkj1fYzMLKSeIl4UznNtzx2IXowV2DJWVlg==
X-Received: by 10.28.147.135 with SMTP id v129mr4073179wmd.65.1461336385042;
	Fri, 22 Apr 2016 07:46:25 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id m14sm3750574wmc.4.2016.04.22.07.46.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 Apr 2016 07:46:24 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 22 Apr 2016 16:46:13 +0200
Message-Id: <1461336375-19194-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
References: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/5] packagegroup-rpi-test: Add packages to be able to test WiFi/Bluetooth
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
X-List-Received-Date: Fri, 22 Apr 2016 14:46:28 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/packagegroups/packagegroup-rpi-test.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packagegroups/packagegroup-rpi-test.bb
index f33c05d..ae16cec 100644
--- a/recipes-core/packagegroups/packagegroup-rpi-test.bb
+++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
@@ -13,10 +13,15 @@ RDEPENDS_${PN} = "\
     pi-blaster \
     python-rtimu \
     python-sense-hat \
+    connman \
+    connman-client \
+    crda \
+    bluez5 \
 "
 
 RRECOMMENDS_${PN} = "\
     bigbuckbunny-1080p \
     bigbuckbunny-480p \
     bigbuckbunny-720p \
+    ${MACHINE_EXTRA_RRECOMMENDS} \
 "
-- 
2.8.0


