Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3D71E00945; Wed, 11 Feb 2015 12:35:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C32B5E008EA
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:35:05 -0800 (PST)
Received: by labge10 with SMTP id ge10so5839672lab.12
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 12:35:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=3Yg4czkgNjIbJIsYAalia3+TfukJzUia844FHViY1Y0=;
	b=A+2RXd6Iusmtc0ZeqNRVJGoxXW5ngMcamXoG3BQi53hhdooIe0zm1/9Kvo/yUN37f5
	mCbaAL3qGBTsVfNvm7AiPBMpOz8Z7QAleF5azE4E/gQRDiXlzsF/3jXQ4C4p+fZSrBQi
	oRYz7TeX59syE2mkGGmTmhcB4q1km3D4DE+ps/yp+QNIpzxLSe/CSxJ3nC4A+jjE81mm
	jsQo6t/dm3ZL0CYgpzSp8rLT3QUnB3Kevy35XCW/F4W0GsKfSKU9yG7bYcVggTPD5yjv
	EXc+EwREPaLX64Pp+uV3qZc9UqnU2nyCcHyAB45mDMvtGfmVJH6h8AkkrusVrfc6ZzPV
	JpzQ==
X-Gm-Message-State: ALoCoQnLkOoplhpv/Ndcp8BzJ+YpKW8LAhFoX0aAN2eYuv7y73O+R8wStBvZSy5SLSTVqIvah/PJ
X-Received: by 10.152.115.139 with SMTP id jo11mr440368lab.24.1423686904034;
	Wed, 11 Feb 2015 12:35:04 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	rv1sm361520lbb.25.2015.02.11.12.35.03 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Feb 2015 12:35:03 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 11 Feb 2015 21:34:56 +0100
Message-Id: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
Subject: [meta-raspberrypi][PATCH 1/3] userland: Fix build for armv7
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
X-List-Received-Date: Wed, 11 Feb 2015 20:35:13 -0000

[Bug #49]

Change-Id: I340b4134ae4227f315c1c3df1345b04ebd4b874b
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi2.conf            | 5 -----
 recipes-graphics/userland/userland_git.bb | 1 +
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 778f5a6..30edae3 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -2,11 +2,6 @@
 #@NAME: RaspberryPi 2 Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi 2
 
-# userland is not compiling on RPI 2
-# https://github.com/raspberrypi/userland/issues/214
-PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
-
 DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 
 require conf/machine/include/tune-cortexa7.inc
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 77c98d7..ddca36e 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -22,6 +22,7 @@ S = "${WORKDIR}/git"
 inherit cmake
 
 EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
+CFLAGS_append = " -fPIC"
 
 # The compiled binaries don't provide sonames.
 SOLIBS = "${SOLIBSDEV}"
-- 
2.1.0


