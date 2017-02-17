Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BD18E006C6; Fri, 17 Feb 2017 10:08:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B5CE0050B
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:02 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id e137so4108857itc.0
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=EGnl9IPPc3SoCSJPbVSLQ2GXByj46EhH8iXXo06gAKg=;
	b=isifhCxIApaS5X7o7ilcgJ9FAbsSOUZ8lQJJeHLdKcJ0kUZ2JE6jM/AGYDSZXQNBOd
	dxax2vyoQJTa86+RQfosog4bZUbRr7OM4hOgU7kkNXs0raFF0BSraWB44cXq78FCNXDA
	4hQDdh1u7EsFhtoj43uEdpoq45mWby262zWb1DuznrYbZcT2E36yUrA6S4whnw9Tf6f1
	awZZekMfEG7lqZ/FvU7VHJXdqfVxO7p4Yi0cMQ0Fb+ERNNnMTP0Q2pBdocmyYV+vwNd7
	s7zKyMUB8fymsVEBcQdUZ9T2ghNYM8oxSYsU74eN35xkO8466mggXFHkueVhrv23PhVu
	3z7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=EGnl9IPPc3SoCSJPbVSLQ2GXByj46EhH8iXXo06gAKg=;
	b=MQYiHIeSh1TEfTdHVEGDdDAg8lpgfW/izlLpbMkVQ7KXh7tFAVdbigH4ogG5oFovCs
	jlNMhrMihr7nbK41V1SsDXmgtd4Xz2Y2l6gAZLv32jkl2QlT27KaUr7VRLiSMA7yxQHc
	2EcsPGpghKwXI8kTVw1XM6GPt/x8SIoI+MGMk++efq1wXt3EAHgQMISqcb4dx9mAOv06
	WlxB/300+RahvDHItHsCMGPg/drb+e1ddyCdEYdYCUrr+HbmAv/ELz0qyYcKfFRI8OLT
	pdtfzi3tyUVGFB5Nl6BS+gTu31rqu98eA+mQjvAbLNWRu81BQG7fSl3LAhaZ9WGKkVpj
	+tEQ==
X-Gm-Message-State: AMke39kOF503Dsonf0TQoYEOFgZLXpC2FOKtFtYqyG1/j+BA5DSb9IlJ1kE9yMOudjIGgg==
X-Received: by 10.36.246.1 with SMTP id u1mr5601446ith.107.1487354882066;
	Fri, 17 Feb 2017 10:08:02 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id 202sm866258ith.7.2017.02.17.10.08.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 17 Feb 2017 10:08:01 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Feb 2017 13:07:46 -0500
Message-Id: <20170217180748.28796-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.11.0.258.ge05806d
In-Reply-To: <20170217180748.28796-1-twoerner@gmail.com>
References: <20170217180748.28796-1-twoerner@gmail.com>
Subject: [meta-rockchip][PATCH 1/3] remove DEFAULTTUNEs
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
X-List-Received-Date: Fri, 17 Feb 2017 18:08:05 -0000

The DEFAULTTUNE configuration should not be set at the BSP layer but in a
DISTRO layer (or a user's conf/local.conf). Remove the two DEFAULTTUNEs that
are currently in the layer and add a note in the README to inform users of
this issue and potential settings.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                          | 15 +++++++++++++++
 conf/machine/include/rk3066.inc |  1 -
 conf/machine/include/rk3288.inc |  1 -
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/README b/README
index ff28887..68ff433 100644
--- a/README
+++ b/README
@@ -49,6 +49,7 @@ Table of Contents
   I. Configure yocto/oe environment
  II. Building a second level bootloader based on kexec
 III. Booting your device
+ IV. Performance
 
 I. Configure yocto/oe environment
 ========================================
@@ -127,3 +128,17 @@ Then, plug your SDCARD into your Rockchip device and power on the board. If
 everything worked fine, Petitboot should be started automatically and list all 
 entries found in the configuration file.
 
+IV. Performance
+===============
+
+By default a BSP layer should not be tuning a build, this is a DISTRO-level
+decision. As such the default machine settings are meant to be the lowest
+common denominator in order to maximize generality. If you are interested in
+tweaking your build to maximize performance you can either use a DISTRO that
+has these same goals, or you can add settings in your configuration files
+(e.g. local.conf) as follows:
+
+	for rk3288:
+		DEFAULTTUNE = "cortexa17hf-neon-vfpv4"
+	for rk3066:
+		DEFAULTTUNE = "cortexa9-neon"
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index d43a88c..e307074 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -1,7 +1,6 @@
 # Copyright (C) 2014 NEO-Technologies
 # Released under the MIT license (see COPYING.MIT for the terms)
 
-DEFAULTTUNE = "cortexa9-neon"
 require conf/machine/include/tune-cortexa9.inc
 
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index e6c19a2..86fc567 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -3,7 +3,6 @@
 
 require conf/machine/include/tune-cortexa17.inc
 
-DEFAULTTUNE="cortexa17-neon"
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_IMAGETYPE = "zImage"
-- 
2.11.0.258.ge05806d


