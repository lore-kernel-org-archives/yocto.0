Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A6E3E009A5; Sun,  6 Nov 2016 00:25:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2226CE008CA
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 00:25:22 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 144so4319404pfv.0
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 00:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=H+RqO8MzUFvZeAiHBvlJryBuPG0ms/SerPgprkmv+yA=;
	b=eqYIlwJ3UMIejwbD62JJnnaO0i5GSwDXwuSoH549KtYByuYQp2fl6E98H6dIcEyIbk
	N1wM+h8lbfJa5d7726KNLencWuzea0YFHnu5ilDz7/CWzLoJOCeW9NFrsECkoZZMwhyB
	tmxTNx2X5Wd4cZjpkvw2TONznj/GaW1OyFDyWahqgajrhkJpIFWcXkOsqqyoxOPBIitP
	N5rU83z+rZd31XFzrw8sZCPjCpsnaTNZ0J7wDMSPi1QtxLM5fM/gVzmW2RG3l8otDnxG
	l2TTlMecyoKOKu/mAOkCYXmb+UYUODDN7D4qlE3OW5HBVA3A8+dyYzuZqMqHzdAzpo49
	I4kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=H+RqO8MzUFvZeAiHBvlJryBuPG0ms/SerPgprkmv+yA=;
	b=QvsgN6NAaxr6MMpRcijvMh7fr6gbG1Dy1+ZCugGGpHc+r5OV+u5SUt+/6qfDp1IWw+
	cZ7onT98t/lh8CDURnV72eaEIk8UmnYHAN05K7NaRjORL8MjK3W8BIAoBkLTnzRq+JCx
	amIEtWsuc7+1RhjRC7Uudv8VK2t5FHX8iX9eWnPxbhdF+2922mvKTB4F3MxG/TR/GxvJ
	HabB7f4nOwoVz9+PS+j7Lruo0ksVKAvFQiwwo3VIgw6BwP5m6u8ky9gdEz//AonN9i1p
	M6OpCoGt8LUMbc5Pg/FUzU1nMmEqFBoW1J9U0A2WyNAB7xWBOJMhmtI6rXemAkVZ4+lW
	OaKQ==
X-Gm-Message-State: ABUngvcMRWJ+s9irua2jo3jekjon2jtbdbXlOgZdzYNGsEQu7gTraFFyFVDbMi4aG/pWtQ==
X-Received: by 10.98.66.77 with SMTP id p74mr2661589pfa.15.1478417122062;
	Sun, 06 Nov 2016 00:25:22 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	c2sm31538133pal.42.2016.11.06.00.25.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Nov 2016 00:25:21 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  6 Nov 2016 00:25:15 -0700
Message-Id: <20161106072515.3505-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106072515.3505-1-raj.khem@gmail.com>
References: <20161106072515.3505-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] userland: Bump to latest and add ASNEEDED = ""
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
X-List-Received-Date: Sun, 06 Nov 2016 07:25:26 -0000

ASNEEDED does not work with userland libraries as
noted in see
https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html

Helps with running kodi using gles2

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../userland/0003-wayland-Add-Wayland-example.patch        | 14 +++++++-------
 recipes-graphics/userland/userland_git.bb                  |  4 +++-
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
index 49a7872..98f18c8 100644
--- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
@@ -1,4 +1,4 @@
-From 7f52662a4d1965988ee5ada28ce3525c38ebf164 Mon Sep 17 00:00:00 2001
+From 6ee44bd040bf8e8abf9c5a7be7f6ea4b82d5671a Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
 Subject: [PATCH 03/13] wayland: Add Wayland example
@@ -844,23 +844,23 @@ index 0000000..1a7bfc4
 +}
 +
 diff --git a/host_applications/linux/apps/hello_pi/rebuild.sh b/host_applications/linux/apps/hello_pi/rebuild.sh
-index fa4539e..37120ac 100755
+index 8225dd5..0be6ce7 100755
 --- a/host_applications/linux/apps/hello_pi/rebuild.sh
 +++ b/host_applications/linux/apps/hello_pi/rebuild.sh
-@@ -13,6 +13,7 @@ make -C hello_jpeg clean
- make -C hello_videocube clean
+@@ -14,6 +14,7 @@ make -C hello_videocube clean
  make -C hello_teapot clean
  make -C hello_fft clean
+ make -C hello_mmal_encode clean
 +make -C hello_wayland clean
  
  make -C libs/ilclient
  make -C libs/vgfont
-@@ -29,4 +30,4 @@ make -C hello_jpeg
- make -C hello_videocube
+@@ -31,4 +32,4 @@ make -C hello_videocube
  make -C hello_teapot
  make -C hello_fft
+ make -C hello_mmal_encode
 -
 +make -C hello_wayland
 -- 
-2.10.0
+2.10.2
 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 7558851..84d6854 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "2852d9ff5a9038021f1c22d95e8a9e3aad09893f"
+SRCREV = "100f8bb3e74e29d04fb99857183cc34aaa712e3f"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
@@ -38,6 +38,8 @@ S = "${WORKDIR}/git"
 
 inherit cmake pkgconfig
 
+ASNEEDED = ""
+
 EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
                  -DVMCS_INSTALL_PREFIX=${exec_prefix} \
 "
-- 
2.10.2


