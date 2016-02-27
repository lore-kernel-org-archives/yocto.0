Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73AF7E00C55; Sat, 27 Feb 2016 07:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C528E00DF4
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:19 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id d32so30899988qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=WfY7P+o90C5QpBlrOSXeQ5LI2XirFwLBS4flc9iGo/4=;
	b=mGimwSV9E24M5cXHOaeZ/kdfDLJ5jGywFQmUDabJxagb585Ns20CivuepJN0UUy5jz
	95bXZkj2gLaD3QWoZ5nBnE2aRrepP8qKNHnXRLiBj7AsQhSCcOYOyIMzHtfQr/onNn+r
	6yGZvdmyFQTBzaTIja03G0r7kfL29MxUA0xBaAc2ebkthwwX2d3OYJu32RLj1LqFPUH8
	H3ql5/t7z2+tJcWKojCdEmrSHfGhtR4VUwCL2UyEGzS077yDlMSpRJOpQ6Wu10mlc2cR
	OKJsIQ422qJ1CGp6Y3+DOOchiax+HFn6o8vaJxrhlwDes5sUrGY4e+eJ+1m2TA0uZ2M3
	aVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=WfY7P+o90C5QpBlrOSXeQ5LI2XirFwLBS4flc9iGo/4=;
	b=hK1okALYUlAcjih7PdFAiWV3SBZZhpSlFua6tBF1VMbUx5kU8xOnZ5fmRmzOsXg/ZQ
	BWjEDS6qkHNzXRQa6cdNjyKXOjZXxT1tsPvFmJQheJTmBeSR5+sIF4IMkM/+a0njFQhU
	ZgG9fD+O4tdqkqSkZL9RhUylZYn/Ssgt3MLRgU0N7R6+LlSHCAwqyXS6Ma+dsIEdXUeO
	nTo9qbZ/ijdgNmy2Iifsp4iesjHRQ+l5bKxuc2xrz33ucBnjV8qVVtKP+bSK8YgDiPVz
	uWNdemC38UTO9QRsYyf62TpYMJH1IGJySzLkU0PDPFfV3gtvJSfU1pQup2NKIAk1b0xB
	J2+g==
X-Gm-Message-State: AD7BkJJ3mzH3JpkdRQXqvZd+dgneTZzmDin/WRewdbWTAVRsbYgY2+/m4qGKsmcIkXwRYQ==
X-Received: by 10.140.32.203 with SMTP id h69mr8957450qgh.55.1456586838941;
	Sat, 27 Feb 2016 07:27:18 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:18 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:57 +0000
Message-Id: <2fd22fccd2de90ffeb79279e791d58d9b334325b.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 18/23] firmware: Upgrade to latest stable 20160209
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:29 -0000

Readme change a bit thats why LIC_FILES_CHKSUM changed

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/bootfiles/bcm2835-bootfiles.bb | 2 +-
 recipes-bsp/common/firmware.inc            | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/bootfiles/bcm2835-bootfiles.bb b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
index 0665944..b279e15 100644
--- a/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
+++ b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Closed source binary files to help boot the ARM on the BCM2835."
 LICENSE = "Proprietary"
 
-LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=e86e693d19572ee64cc8b17fb062faa9"
+LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=4a4d169737c0786fb9482bb6d30401d1"
 
 inherit deploy
 
diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 020f0ed..2e0864e 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "f7108cfdc715f79c5fd051fb4c3ae6f4b1b01f23"
-RPIFW_DATE ?= "20151021"
+RPIFW_SRCREV ?= "3442862c10fab68c2e88d660d2e69c143bb1f00c"
+RPIFW_DATE ?= "20160209"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.9.1


