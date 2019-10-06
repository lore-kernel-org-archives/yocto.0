Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 478D5E007C2; Sun,  6 Oct 2019 08:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B02E007C2
	for <yocto@yoctoproject.org>; Sun,  6 Oct 2019 08:40:41 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id v4so7026786pff.6
	for <yocto@yoctoproject.org>; Sun, 06 Oct 2019 08:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=8uSHq94ruwPHZ8KwK7br+c9PtuUqcAhguqZr1gp3iW0=;
	b=lyWXBWUdkeiHbqUveN4Yt6S+C+y1yDarEYhv0jshLdP6OXkumRJ8RLADLvAQPT37HE
	x3bDmYpx9IiXyEA0fdJPBUwvxod3cET8ZKz841am8Y4pC/xhIn6ecb6/2iAXIB0Oh06d
	OltSZLvdiF3WSprMBOrwm82+JYQv59eMb/u3Qe4kMZUACe2akZjiNN+CBQ/+qZRdMWGZ
	A8r7tSbrbuPGJBoHuf2LvwZruqFulRGViBeK7dxvHZK3wJZjepbeVFi2TE/yRNpHvDYm
	4uz9mUwfs5Y7yc+1Q7VcU560Z2Pn4zCbfqe89b2Kin/mPISsrckDgfSsELMSiSYwvmQj
	EuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=8uSHq94ruwPHZ8KwK7br+c9PtuUqcAhguqZr1gp3iW0=;
	b=GNA8iHkUbIK6lGVySJCbW2h0a59EUsYleseuA5GsYR2joI2/MPDxfSHAQypUkgidOr
	fUviepp2UQvGLGG4xW37JCS0XjKGmPWSTzpop6/PbkwbDnPoCfZ+J9UyQ2Gd9twvBN31
	cvq/EttwI3WdS7mYaeYZBTibdJz6hFiOytY2mOIGPAfI5nt5bT/JuQOmMsnKLAMLNEQc
	VzQBHbUHbPc6axquSzqz8Y0I9BrImGg4ICdFvG25+DIdnvL0v88dUAKBLBPkLmSfB+aX
	urxtTwUB8ju/s8UMJuO07VY3oG8q3dn/sHzKW631tYpvbptPFf3+XR6Bv1SkIO8IzO3Z
	oV/Q==
X-Gm-Message-State: APjAAAUzRAhZak5m3UUhhRfWK5iQBxLU1OT78uHmqZSR56ffWW3hPd0N
	UCiqzlFqgCzEl05WTOKctCjtocRjL9M=
X-Google-Smtp-Source: APXvYqz5lfTt1aIgKyrghUcOIVBiqHAwRfEWzTLWUejB6DEeytzpbBho2jX4/zIOxsRG27FtMcyxSA==
X-Received: by 2002:a17:90a:3090:: with SMTP id
	h16mr28670257pjb.46.1570376441138; 
	Sun, 06 Oct 2019 08:40:41 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:a5c0:65e8:7322:d189:1d85])
	by smtp.gmail.com with ESMTPSA id
	e4sm12226543pff.22.2019.10.06.08.40.40 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 06 Oct 2019 08:40:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  6 Oct 2019 08:40:35 -0700
Message-Id: <126f95e7702370c3c5803afbe99a6a86878ed12a.1570376186.git.akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1570376186.git.akuster808@gmail.com>
References: <cover.1570376186.git.akuster808@gmail.com>
Subject: [warrior 1/3] meta-yocto-bsp: Bump to the latest stable kernel for all the BSP
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
X-List-Received-Date: Sun, 06 Oct 2019 15:40:44 -0000

From: Kevin Hao <kexin.hao@windriver.com>

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20 ++++++++++----------
 .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index 6025230..ec269d9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
-SRCREV_machine_genericx86-64 ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
-SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
-SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
-SRCREV_machine_mpc8315e-rdb ?= "8b60f968823256f5d2889c4520d70299ca21411b"
+SRCREV_machine_genericx86    ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_genericx86-64 ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_beaglebone-yocto ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
+SRCREV_machine_mpc8315e-rdb ?= "d419f4ca6ba4b097b8ad710a93b89510f5b2998c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.19.19"
-LINUX_VERSION_genericx86-64 = "4.19.19"
-LINUX_VERSION_edgerouter = "4.19.14"
-LINUX_VERSION_beaglebone-yocto = "4.19.14"
-LINUX_VERSION_mpc8315e-rdb = "4.19.14"
+LINUX_VERSION_genericx86 = "4.19.34"
+LINUX_VERSION_genericx86-64 = "4.19.34"
+LINUX_VERSION_edgerouter = "4.19.34"
+LINUX_VERSION_beaglebone-yocto = "4.19.34"
+LINUX_VERSION_mpc8315e-rdb = "4.19.34"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
index 5cf6e1f..d7cf121 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_genericx86-64 ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_edgerouter ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_beaglebone-yocto ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
-SRCREV_machine_mpc8315e-rdb ?= "8b62af7f252af10588276802c4c6d7c502e875be"
+SRCREV_machine_genericx86    ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_genericx86-64 ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_edgerouter ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_beaglebone-yocto ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
+SRCREV_machine_mpc8315e-rdb ?= "670ce7e9db627d0c2067cfdb571ddc1f117818d8"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "5.0.3"
-LINUX_VERSION_genericx86-64 = "5.0.3"
-LINUX_VERSION_edgerouter = "5.0.3"
-LINUX_VERSION_beaglebone-yocto = "5.0.3"
-LINUX_VERSION_mpc8315e-rdb = "5.0.3"
+LINUX_VERSION_genericx86 = "5.0.13"
+LINUX_VERSION_genericx86-64 = "5.0.13"
+LINUX_VERSION_edgerouter = "5.0.13"
+LINUX_VERSION_beaglebone-yocto = "5.0.13"
+LINUX_VERSION_mpc8315e-rdb = "5.0.13"
-- 
2.7.4


