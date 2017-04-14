Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DFF1E00B3F; Fri, 14 Apr 2017 09:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8065E009B2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:01 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 63so3996320pgh.0
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=XlSRjjw8YySKJRsQjA8xb+ga3xu6virVg2ZLzeRORUE=;
	b=JnD19X4rrtEY7CfZZ4z2DqxuxzLEe7BGUzDlKz9Iuk+oD3gx4RMhn/Qxs6dPwmgW54
	PsznmKC14QXlMOyKr83yX0QMaugdtfMJFvfC81tVhey20h+5pD252eXD4znAD6iXa1Ej
	om9KeUOPnId4MrlxVTRKN4f2/qMhXMYdh/rLec290cmh6I25aAIFKz6XfQGZwyWaq606
	v11c12gFtXsSt2+cQJwyNgkDhzfdKGze5aayE4ZjgKeYCvTU6QZ9vLhmGfoLrlx+H9OY
	F3bHc3wCIxYl0Vj2aYYfkp3/OpelrADCGTTn03JDd8riLTvOuiKeZwpLyAJJKcU55q/1
	VJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=XlSRjjw8YySKJRsQjA8xb+ga3xu6virVg2ZLzeRORUE=;
	b=SNw6VfRbZjiqygCCTYLGuZvy0Lb1I0UKvXxxKnLaTMSp7Wnh8hxNIosw5IswG+WVck
	ygkCGiv8+iUQFRyCfTJ1XN/Abt/o2/QV56fYPHnQzyrloXO+TW7HEniH+1tBHrAIHBdi
	421fK6EGqECTvA4+9JKYfOPOaiDzoqDuTUJy8yBqJhx/YeVHhYoDqAUIPbuEtSnPFP4B
	DVdrhwU9bJ5+VgEruT/hvLCihfZm6HJ6+6YHOAHhd72Ft51ic+4vPLivuSv7hrTUsuLM
	m8fwA/fIVaKvqJO1tqQfGooXZRsTyglBAyOvoBLVsMRX2xSG1r9TY6e9+/EH+eWD8U9g
	UArg==
X-Gm-Message-State: AN3rC/4O6AJT7q98uoCeQ9O8Gmv3xSfdHLc9MMJVtUiKo2dNkOy+6iYc
	ij4YThtF58LGArRH
X-Received: by 10.84.228.193 with SMTP id y1mr9859142pli.77.1492186860730;
	Fri, 14 Apr 2017 09:21:00 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z21sm4157245pgc.53.2017.04.14.09.20.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 09:20:59 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 09:20:33 -0700
Message-Id: <20170414162035.23522-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170414162035.23522-1-raj.khem@gmail.com>
References: <20170414162035.23522-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/5] userland: Upgrade to latest
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
X-List-Received-Date: Fri, 14 Apr 2017 16:21:03 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0002-wayland-Add-support-for-the-Wayland-winsys.patch    | 12 ++++++------
 recipes-graphics/userland/userland_git.bb                    |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
index 324fa91..c054572 100644
--- a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,4 +1,4 @@
-From 5f9e011a6c15b3a05b3be412d7ba5c1077ececf1 Mon Sep 17 00:00:00 2001
+From 61a9d792ed774af43e592aa8fdb2a18488696d0f Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
 Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
@@ -102,7 +102,7 @@ index 358d2b4..4da4448 100644
 +
 +$ BUILD_WAYLAND=1 ./buildme.
 diff --git a/buildme b/buildme
-index 1061745..d0e6e54 100755
+index b8fd440..a780bb6 100755
 --- a/buildme
 +++ b/buildme
 @@ -8,6 +8,10 @@ fi
@@ -117,7 +117,7 @@ index 1061745..d0e6e54 100755
  	# Native compile on the Raspberry Pi
  	mkdir -p build/raspberry/$BUILDSUBDIR
 @@ -32,9 +36,13 @@ elif [ "$1" = "--native" ]; then
- 	make -j 6 $*
+ 	make -j `nproc` $*
  else
  	# Cross compile on a more capable machine
 +	if [ -n "$BUILD_WAYLAND" ]; then
@@ -128,7 +128,7 @@ index 1061745..d0e6e54 100755
  	pushd build/arm-linux/$BUILDSUBDIR
 -	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=$BUILDTYPE ../../..
 +	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=$BUILDTYPE $WAYLAND_VARS ../../..
- 	make -j 6
+ 	make -j `nproc`
  
  	if [ "$1" != "" ]; then
 diff --git a/host_applications/linux/apps/raspicam/CMakeLists.txt b/host_applications/linux/apps/raspicam/CMakeLists.txt
@@ -1604,7 +1604,7 @@ index 37fdae1..fe3619a 100755
  }
  #endif
 diff --git a/interface/vmcs_host/vc_vchi_dispmanx.c b/interface/vmcs_host/vc_vchi_dispmanx.c
-index 133e86d..45f4cff 100755
+index 7a6cdcd..eab146e 100755
 --- a/interface/vmcs_host/vc_vchi_dispmanx.c
 +++ b/interface/vmcs_host/vc_vchi_dispmanx.c
 @@ -1319,3 +1319,45 @@ static void *dispmanx_notify_func( void *arg ) {
@@ -1885,5 +1885,5 @@ index 0000000..ad90d30
 +    set(${_sources} ${${_sources}} PARENT_SCOPE)
 +endfunction()
 -- 
-2.12.0
+2.12.2
 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index afbe5ac..9526fae 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "cdb5da59f939eb4078e90ed0e3c231c498ba9957"
+SRCREV = "f0642e3b58d8a140a3f7621630c15fbfa794b19d"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.12.2


