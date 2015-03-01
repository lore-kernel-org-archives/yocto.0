Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCE80E0086D; Sun,  1 Mar 2015 15:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0CC2E008EC
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:06:32 -0800 (PST)
Received: by lamq1 with SMTP id q1so3785296lam.0
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:06:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=AFwdrso0hzg9Xrw1LGlNOPst1oRZiw1z+Gvhka9IBYA=;
	b=KBJDv3r1UNl1Ny3J8ug6d41x7RsKYoKGt+vULnIbUEiC09xQasHejF+mbFDrS0ddl8
	oebMu0NuY8gUpNVquNBixZz5aoqoyM/kGgPM7qQrEogOXs00/mO2T1icXvhIrktykBTC
	Lxk91pxkFnFl9gtwDOlPYcbBGzmNkRJTfiGiV3571sONWzxshWEukhDgv/Si/kkYiFoQ
	2TTCt9IpPXfR/bXRlIeak8u6YvZF/LUIhgwv4pMGp8Jc7otKhoRk7vZ1xYC2veMZacnH
	j3YMBSuXg4mXFMMMQntJNHvATZ3Bd5XU4WfziLRbZlS0m1uXp8BJGtdKYij+kvEUaLVA
	UZIw==
X-Gm-Message-State: ALoCoQmXR9be4t8giknM2NFhLf78mBuFCnDGio8a7dS78iIlOMHWocPGBjZTEwBt4dieOugy8VWt
X-Received: by 10.152.197.34 with SMTP id ir2mr21779777lac.36.1425251190962;
	Sun, 01 Mar 2015 15:06:30 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	n12sm2148284lbg.31.2015.03.01.15.06.30 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:06:30 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:06:20 +0100
Message-Id: <dd9956ff101fcce3a81c295cb8d01d8e748a58e4.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
References: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
References: <cover.1425251029.git.andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/6] rpi-basic-image: Define rpi SPLASH specific package
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
X-List-Received-Date: Sun, 01 Mar 2015 23:06:38 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/images/rpi-basic-image.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/images/rpi-basic-image.bb b/recipes-core/images/rpi-basic-image.bb
index 44524fd..623a5a7 100644
--- a/recipes-core/images/rpi-basic-image.bb
+++ b/recipes-core/images/rpi-basic-image.bb
@@ -1,4 +1,6 @@
 # Base this image on rpi-hwup-image
 include rpi-hwup-image.bb
 
+SPLASH = "psplash-raspberrypi"
+
 IMAGE_FEATURES += "ssh-server-dropbear splash"
-- 
2.1.0


