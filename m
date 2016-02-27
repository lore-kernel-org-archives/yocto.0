Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD5FBE00DFA; Sat, 27 Feb 2016 07:27:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F67DE00C3D
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:15 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id y9so87796517qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=n5wlNmAWexHj/aIBWyWyBKfeWIBQOQKfx2YzNQvZzWU=;
	b=UIIvVd+twpvcJYWnQe4nUfqalY15j428E6AiDQBlBcsKtLJIfLJCs+Yi+YyeCt1E8A
	He/YQMooPF4Pe8JTk3DftxwGaDfktskdrow2k67qCe6xc9pQEt0iaH/cC/lzlyCVdoT6
	rM7vu8YAm9rvr5Ar50aHsn6ToVESVX8DMbPxXLwys+kJkDaBzvUrDBszTtn71yvfM+/A
	Fd5N34zQKpdzQJQI6YyxetyROcIIxvZxTmaxfNKNyrzb0MRAei+RYz7+1glMtcWRFh17
	5djwnEb0OrkpXIftE1VJBXaax6i/qhXIS0NaU7enBizhGFrly6rxQSu8bJYZRwcnMGIN
	AbQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=n5wlNmAWexHj/aIBWyWyBKfeWIBQOQKfx2YzNQvZzWU=;
	b=dQWmSnkc1a5Gmf7hK4SLmKvDN2MlmU6CNkRj1orlzsdxOEVUToDayC6UH51sjhLYJ2
	nktmuyvG4V7YSgA3jDnh6CN5lqVhwrKMr6lfP+dgX2Zza7iAUpoElE8moRIwEHnfHNTy
	3sSasi5yylQNmY9FVuHc+qHfA9VLvWoCjoLKEFenF+QcnuGwiezZ5jwL9ZM/eOUYYT0C
	UJREH33UfhUJs5SdyJnw7HXJcs05DVtrL12koptY3WFqB5p2Hm+KPIY3hxcDO16EOgsC
	QvtKNj1chuAX8H2aKBjpWAjnYCLnlFxhxx6C0ITf2utpwbUdrNomFtH6vAYWx1hP+jd1
	vekA==
X-Gm-Message-State: AD7BkJL2SEPJm/t2oZBn1yKxi6OkzP/pLLHyNW8Lby+CAyBsUoGAMam7zKxvKdidOd+ZkQ==
X-Received: by 10.140.151.4 with SMTP id 4mr9000538qhx.35.1456586835487;
	Sat, 27 Feb 2016 07:27:15 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:15 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:50 +0000
Message-Id: <28f4de618a6a5a26574db03d0e1fd65401985470.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 11/23] userland: Define PROJECT_APIVER and rprovide libgles2 libgl
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:26 -0000

These are needed for pkgconfig to have correct version number which is
checked by many configure systems e.g. cogl to decide on support for
wayland-egl

rprovides are expected by cogl as well to define runtime deps on
libgles2 and libgl

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../userland/0016-define-PROJECT_APIVER.patch      | 33 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  3 ++
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch

diff --git a/recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch b/recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch
new file mode 100644
index 0000000..63a35eb
--- /dev/null
+++ b/recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch
@@ -0,0 +1,33 @@
+From 56072d7282e7daf65f58fa897f1f76268ae88121 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 6 Feb 2016 11:06:26 -0800
+Subject: [PATCH 16/16] define PROJECT_APIVER
+
+this helps in compiling components which use packageconfig to poke for
+library versions and requiring minimum supported version
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ CMakeLists.txt | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/CMakeLists.txt b/CMakeLists.txt
+index b240ef6..aa5e14f 100644
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -2,6 +2,12 @@ cmake_minimum_required(VERSION 2.8)
+ 
+ project(vmcs_host_apps)
+ 
++SET(PROJECT_VER_MAJOR 1)
++SET(PROJECT_VER_MINOR 0)
++SET(PROJECT_VER_PATCH 0)
++SET(PROJECT_VER "${PROJECT_VER_MAJOR}.${PROJECT_VER_MINOR}.${PROJECT_VER_PATCH}")
++SET(PROJECT_APIVER "${PROJECT_VER}")
++
+ set(BUILD_MMAL TRUE)
+ set(BUILD_MMAL_APPS TRUE)
+ set(vmcs_root ${PROJECT_SOURCE_DIR})
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index d78a7c9..5ea48e1 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -10,6 +10,8 @@ PR = "r5"
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
 
+RPROVIDES_${PN} += "libgles2 libgl"
+
 COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
@@ -33,6 +35,7 @@ SRC_URI = "\
     file://0013-zero-out-wl-buffers-in-egl_surface_free.patch \
     file://0014-initialize-front-back-wayland-buffers.patch \
     file://0015-Remove-RPC_FLUSH.patch \
+    file://0016-define-PROJECT_APIVER.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


