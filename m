Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C403E00A81; Mon, 10 Aug 2015 14:22:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1665AE00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:22:45 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so42830560wic.1
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:22:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dThrwowjK95xQ7YT7qS6hoU1IbGaB5glBixtZhaSw/8=;
	b=Rt4KlpFQb2bVoGZ+3j7EOn8gXEa8nuHI1+jX2mT/OrN1FaX8rj2Uxf7dHw9oy74Yd2
	npM+F0QNjMAHEpkNNqOvU4WeXjKmRNhnmbY+84fGq9WWAYIzC9U+C+7tYi75T/lUKBer
	6JC5RbzoyDkaPV59idaZyFvu/ZjpsQkYx0eD/2a3MoTU0cn+mCn/HyVqNd5VjOvsMW5O
	To9Ls91p7+liGLyijIWmZY+eLcYg15qO4ZLocfdOvqswtOZa7Gf0pDEnKjj0QJ7UKMoZ
	RClnYlUH62HqIAKR5ED6aFQOMGESZO6MBFoNaDjOICo2+YYr2yHwe0Z3TUPMq05dFzJR
	B9Ow==
X-Gm-Message-State: ALoCoQnywyB09Hp2S1Ca1WTU77C+BJZ8PbgiZSTE+ZYhxLqZhGw19xCLY4u8PHDxs5VbpfC5Tj+r
X-Received: by 10.194.237.232 with SMTP id vf8mr48221820wjc.22.1439241764342; 
	Mon, 10 Aug 2015 14:22:44 -0700 (PDT)
Received: from resin.localdomain ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ib9sm31317521wjb.2.2015.08.10.14.22.42
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 10 Aug 2015 14:22:43 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 23:22:36 +0200
Message-Id: <1439241756-4610-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.5.0
Cc: Pierre FICHEUX <pierre.ficheux@gmail.com>
Subject: [meta-raspberrypi][PATCH 1/1] rpi-default-providers: Let users overwrite the default providers
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
X-List-Received-Date: Mon, 10 Aug 2015 21:22:47 -0000

[Feature #65]

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
Signed-off-by: Pierre FICHEUX <pierre.ficheux@gmail.com>
---
 conf/machine/include/rpi-default-providers.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ee3a3ac..cabbd43 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,10 +1,10 @@
 # RaspberryPi BSP default providers
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
-PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
+PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
 PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
 PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
-PREFERRED_PROVIDER_jpeg = "jpeg"
+PREFERRED_PROVIDER_jpeg ?= "jpeg"
-- 
2.5.0


