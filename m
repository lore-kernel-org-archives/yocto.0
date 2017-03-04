Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5640DE00AE0; Sat,  4 Mar 2017 00:55:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2585FE00ABE
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 00:55:34 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 67so7761833pfg.2
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 00:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=5U5UcR/QgFb6SPr9Y/3FFqKvVILNYzvu2VH1XkkqZMQ=;
	b=L0sOmmTT6G3riIiLC+JjiwllY+TiNpBePbdrZfiOP5Ib3MvbayyTdaoHFMM4pET++q
	8PhIfuojdnkWA3ljCOWuY0tQfVP750wUftEKy213STi6CgW07DYfY7HHEDne1QUceU+t
	PqP4wkDWuNFQC4xSiWFksxGlZlC99LMk15fRt4bETF7MPesXfOnJld3FWoCKk1uYGk5j
	daVsp4mkKztx3ueUBVAMnOvWPr/0EX7j+DYGF2wkmJq/l26LgaBOmq/rudWZD3c72Eqp
	sw65IC2O+HBWZ7O1RPkoEbR6FjFRHduSfAj3n2kn3kjtYG9LMKlAIR+/K3n4ZL35l2L4
	IRDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5U5UcR/QgFb6SPr9Y/3FFqKvVILNYzvu2VH1XkkqZMQ=;
	b=QlPZNtM3Jp9ofCqA9YgWOJ2xNBKbJ9Vl/90quMPNoRB64eAooRFzswWmO1UfBmo+PB
	Pjxd22k7LhocIe00C3UGhwhB9Jtc9OZ4Mejv/aI1EJTdHPkcz8i3NlePWBSMag5Yvwsa
	c71uiqVmsqH7mmy7jbR1m47hBehQa+LPNtvBdQDpu/Hf0Gp2N7w2WduPLgl+MdGp2Xpb
	JrkWau0fNeW/GV7B98Yc4Tn81pVUtpa80gEtDQwcdHrKvYCJg6YW3ku08j/cxXdrp5Y5
	m0mu7lnvpcCJsel6ap0Sv4DphatPk8vtguXFYQScGUjYJoKCupOveIDDYmKPRIXuM7h5
	vTug==
X-Gm-Message-State: AMke39n2DhuIB3qw+cK7f7Kv9HO10r5nKqq/B5f3X7YI8mBFxdZrl/fv7N3iEoOH3JboVQ==
X-Received: by 10.98.100.88 with SMTP id y85mr8508630pfb.112.1488617733732;
	Sat, 04 Mar 2017 00:55:33 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t133sm28065892pgc.24.2017.03.04.00.55.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 Mar 2017 00:55:33 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Mar 2017 00:55:23 -0800
Message-Id: <20170304085524.17066-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.0
Subject: [meta-raspberrypi][PATCH 1/2] userland: Update to latest
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
X-List-Received-Date: Sat, 04 Mar 2017 08:55:37 -0000

Forward port the patches

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...01-Allow-applications-to-set-next-resource-handle.patch |  6 +++---
 .../0002-wayland-Add-support-for-the-Wayland-winsys.patch  | 14 +++++++-------
 .../userland/0003-wayland-Add-Wayland-example.patch        |  6 +++---
 .../0004-wayland-egl-Add-bcm_host-to-dependencies.patch    |  6 +++---
 ...erface-remove-faulty-assert-to-make-weston-happy-.patch |  6 +++---
 .../0006-zero-out-wl-buffers-in-egl_surface_free.patch     |  6 +++---
 .../0007-initialize-front-back-wayland-buffers.patch       |  6 +++---
 .../userland/userland/0008-Remove-RPC_FLUSH.patch          |  6 +++---
 .../userland/userland/0009-fix-cmake-dependency-race.patch |  8 ++++----
 .../0010-Fix-for-framerate-with-nested-composition.patch   |  6 +++---
 .../userland/0011-build-shared-library-for-vchostif.patch  |  8 ++++----
 ...-implement-buffer-wrapping-interface-for-dispmanx.patch |  6 +++---
 .../0013-Implement-triple-buffering-for-wayland.patch      | 11 ++++++++---
 recipes-graphics/userland/userland_git.bb                  |  2 +-
 14 files changed, 51 insertions(+), 46 deletions(-)

diff --git a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
index 4f72845..d622157 100644
--- a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
+++ b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
@@ -1,7 +1,7 @@
-From 4b68419e58ef31e72abab688d0c7cc5db80efc13 Mon Sep 17 00:00:00 2001
+From f6540119d5b064361ffcb370373794932f97bfdd Mon Sep 17 00:00:00 2001
 From: Dom Cobley <dc4@broadcom.com>
 Date: Tue, 9 Jul 2013 09:26:26 -0400
-Subject: [PATCH 01/12] Allow applications to set next resource handle
+Subject: [PATCH 01/13] Allow applications to set next resource handle
 
 This patch adds provisions in userland to
 let apps callers set the next rendereing dispmanx resource.
@@ -204,5 +204,5 @@ index 8a5734c..51b3580 100644
  
  FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
index 6cc8ea8..324fa91 100644
--- a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,7 +1,7 @@
-From e3d2d0007e1c6c32ab7d9a28f1e399d42b511333 Mon Sep 17 00:00:00 2001
+From 5f9e011a6c15b3a05b3be412d7ba5c1077ececf1 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 02/12] wayland: Add support for the Wayland winsys
+Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
 
 * Adds EGL_WL_bind_wayland_display extension
 * Adds wayland-egl library
@@ -68,7 +68,7 @@ index 4a88665..5da71a9 100644
 +
 +*~
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 98252c3..d6ae907 100644
+index cfc8ae5..673a5ad 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
 @@ -24,6 +24,17 @@ include(makefiles/cmake/global_settings.cmake)
@@ -1542,7 +1542,7 @@ index 0000000..8bafc15
 +Libs: -L${libdir} -lwayland-egl
 +Cflags: -I${includedir}
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index 0b3adc9..f44d01f 100755
+index fde18da..6718215 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -9,13 +9,24 @@ add_definitions(-fno-strict-aliasing)
@@ -1551,12 +1551,12 @@ index 0b3adc9..f44d01f 100755
  
 -add_library(vchostif
 -            ${VMCS_TARGET}/vcfilesys.c ${VMCS_TARGET}/vcmisc.c
--            vc_vchi_gencmd.c vc_vchi_filesys.c
+-            vc_vchi_gencmd.c vc_vchi_filesys.c vc_vchi_gpuserv.c
 -            vc_vchi_tvservice.c vc_vchi_cecservice.c
 -            vc_vchi_dispmanx.c vc_service_common.c)
 +set(VCHOSTIF_SOURCE
 +    ${VMCS_TARGET}/vcfilesys.c ${VMCS_TARGET}/vcmisc.c
-+    vc_vchi_gencmd.c vc_vchi_filesys.c
++    vc_vchi_gencmd.c vc_vchi_filesys.c vc_vchi_gpuserv.c
 +    vc_vchi_tvservice.c vc_vchi_cecservice.c
 +    vc_vchi_dispmanx.c vc_service_common.c)
  #            ${VMCS_TARGET}/vmcs_main.c
@@ -1885,5 +1885,5 @@ index 0000000..ad90d30
 +    set(${_sources} ${${_sources}} PARENT_SCOPE)
 +endfunction()
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
index bbd9727..f888533 100644
--- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
@@ -1,7 +1,7 @@
-From 8a4b3ea902bbcc08452e13a61ffbdc834bc13ea3 Mon Sep 17 00:00:00 2001
+From 08679675740d92f022e0fd46207a42589c9f6c51 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 03/12] wayland: Add Wayland example
+Subject: [PATCH 03/13] wayland: Add Wayland example
 
 ---
  .../linux/apps/hello_pi/CMakeLists.txt             |   1 +
@@ -862,5 +862,5 @@ index 8225dd5..0be6ce7 100755
 -
 +make -C hello_wayland
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
index 752b61a..f9c0b7b 100644
--- a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
+++ b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -1,7 +1,7 @@
-From 718402e1be80ff9fb9863e847e31072ec735a5eb Mon Sep 17 00:00:00 2001
+From eb9d0eb386b9b3df519a299887b45962c03e732c Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Mon, 10 Aug 2015 02:38:27 -0700
-Subject: [PATCH 04/12] wayland-egl: Add bcm_host to dependencies
+Subject: [PATCH 04/13] wayland-egl: Add bcm_host to dependencies
 
 It uses headers like vcos_platform_types.h but does not
 depend on module which should add the required include paths
@@ -24,5 +24,5 @@ index 8bafc15..fd259c9 100644
  Libs: -L${libdir} -lwayland-egl
  Cflags: -I${includedir}
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
index 05b0dfa..f69bade 100644
--- a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
+++ b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
@@ -1,7 +1,7 @@
-From 2a6e3d53a75fe44ec6fa3ae64c8ca5664b614979 Mon Sep 17 00:00:00 2001
+From ef3162e061a3231fbf836208f98c38c7c5581a9e Mon Sep 17 00:00:00 2001
 From: "Yann E. MORIN" <yann.morin.1998@free.fr>
 Date: Sat, 24 Jan 2015 22:07:19 +0100
-Subject: [PATCH 05/12] interface: remove faulty assert() to make weston happy
+Subject: [PATCH 05/13] interface: remove faulty assert() to make weston happy
  at runtime
 
 This was removed after a discussion on IRC with the weston guys
@@ -25,5 +25,5 @@ index 45f4cff..5d0368c 100755
              }
           } else {
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
index f4da1c1..196b20b 100644
--- a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
+++ b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
@@ -1,7 +1,7 @@
-From a3d43c1b754fc0576b428d36a877b9b50dd5d1ce Mon Sep 17 00:00:00 2001
+From 846e9271cf6a264e7e1f4e33be64df990ff39a74 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:10:47 -0800
-Subject: [PATCH 06/12] zero-out wl buffers in egl_surface_free
+Subject: [PATCH 06/13] zero-out wl buffers in egl_surface_free
 
 origins from buildroot
 
@@ -29,5 +29,5 @@ index 42350bf..1f923d9 100644
  #endif
     }
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
index 47f633a..0754921 100644
--- a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
+++ b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
@@ -1,7 +1,7 @@
-From 5b37f53cff07f37b281c25f987b9dbdacc264bf6 Mon Sep 17 00:00:00 2001
+From 15510fdf1c753c967b509046616b1e1a11b5b772 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:11:41 -0800
-Subject: [PATCH 07/12] initialize front back wayland buffers
+Subject: [PATCH 07/13] initialize front back wayland buffers
 
 origins from metrological wayland support
 
@@ -30,5 +30,5 @@ index 1f923d9..9a9582c 100644
     }
  #endif
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
index 7491842..287e96a 100644
--- a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
+++ b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
@@ -1,7 +1,7 @@
-From 14a749a3f840e93db548373b907a7a0e664dcfdb Mon Sep 17 00:00:00 2001
+From 1df080ab9528b82321cf87d71927314294ef7121 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:09:18 -0800
-Subject: [PATCH 08/12] Remove RPC_FLUSH
+Subject: [PATCH 08/13] Remove RPC_FLUSH
 
 Origins from buildroot
 
@@ -23,5 +23,5 @@ index f9b7287..b04ffef 100644
        }
  #endif
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
index 3f57d1e..53ccb71 100644
--- a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
+++ b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
@@ -1,7 +1,7 @@
-From b5392c39d7407a5226c9314bc01ed82877ff0539 Mon Sep 17 00:00:00 2001
+From 11842307cc0e32bac6ef7622e7791ca7a0e9fa61 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 13:12:47 -0800
-Subject: [PATCH 09/12] fix cmake dependency race
+Subject: [PATCH 09/13] fix cmake dependency race
 
 Fixes errors like
 
@@ -42,7 +42,7 @@ index 1d81ca3..d6cd415 100644
     add_library (vcos SHARED ${SOURCES})
     target_link_libraries (vcos pthread dl rt)
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index f44d01f..9bcc2c3 100755
+index 6718215..c415176 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -17,14 +17,6 @@ set(VCHOSTIF_SOURCE
@@ -74,5 +74,5 @@ index f0bae30..8c44c58 100644
  	struct wl_resource *resource;
  	struct wl_dispmanx *dispmanx;
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch
index 8a34f3f..80e65d5 100644
--- a/recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch
+++ b/recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch
@@ -1,7 +1,7 @@
-From 098faed5e7035b51f14700fdf4cf5875aa7af97e Mon Sep 17 00:00:00 2001
+From 532dc7dc11877a9dae0f3d101c9bfdacc50840ca Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Tue, 29 Mar 2016 20:38:30 -0700
-Subject: [PATCH 10/12] Fix for framerate with nested composition
+Subject: [PATCH 10/13] Fix for framerate with nested composition
 
 frame rate appears irregular and lower than expected when using nested composition.
 
@@ -56,5 +56,5 @@ index 03fe67b..13a110c 100644
  #ifdef ANDROID
                 CLIENT_UNLOCK();
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch
index f2455e5..3a35613 100644
--- a/recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch
+++ b/recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch
@@ -1,7 +1,7 @@
-From b533d784484caead1dc84c766127e1d3854d2aad Mon Sep 17 00:00:00 2001
+From 37ff90075102407d3abb3899b8c6ef64f6230207 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:37:24 -0700
-Subject: [PATCH 11/12] build shared library for vchostif
+Subject: [PATCH 11/13] build shared library for vchostif
 
 Fixes #149
 
@@ -11,7 +11,7 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index 9bcc2c3..0ef753f 100755
+index c415176..d0cca1a 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
@@ -24,5 +24,5 @@ index 9bcc2c3..0ef753f 100755
  #add_library(bufman            vc_vchi_bufman.c            )
  
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch b/recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch
index aa3e0ef..c12876b 100644
--- a/recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch
+++ b/recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch
@@ -1,7 +1,7 @@
-From ee5ebfcf0e030efed17f2a45fbb018a02dd421b3 Mon Sep 17 00:00:00 2001
+From ce130bff946c3b78fc4dbbf98d9b16b5152f2e85 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:54:59 -0700
-Subject: [PATCH 12/12] implement buffer wrapping interface for dispmanx
+Subject: [PATCH 12/13] implement buffer wrapping interface for dispmanx
 
 Courtesy: Zan Dobersek
 
@@ -88,5 +88,5 @@ index c18626d..11ed1ef 100644
  
  </protocol>
 -- 
-2.10.2
+2.12.0
 
diff --git a/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch b/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch
index 8703296..da50ffd 100644
--- a/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch
+++ b/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch
@@ -1,11 +1,16 @@
-From 81f421b051c726bbe180ee5f7d93cf13a3935904 Mon Sep 17 00:00:00 2001
+From 14d915a63a4e69290966543ce12edd615bfa9a25 Mon Sep 17 00:00:00 2001
 From: Jeff Wannamaker <jeff_wannamaker@cable.comcast.com>
 Date: Thu, 19 Jan 2017 18:56:07 +0000
 Subject: [PATCH 13/13] Implement triple buffering for wayland
 
-Change from double to triple buffering for wayland.  This enables higher frame rates without tearing artifacts by allowing both the glFinish and the buffer release interlock to operate without pushing the frame period to two vertical intervals
+Change from double to triple buffering for wayland.
+This enables higher frame rates without tearing artifacts
+by allowing both the glFinish and the buffer release
+interlock to operate without pushing the frame period
+to two vertical intervals
 
 Signed-off-by: Jeff Wannamaker <jeff_wannamaker@cable.comcast.com>
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
  interface/khronos/egl/egl_client.c         |  3 ++-
  interface/khronos/egl/egl_client_surface.c |  8 ++++++++
@@ -81,5 +86,5 @@ index e328b77..58a3184 100644
  
        Validity:
 -- 
-2.7.1
+2.12.0
 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 5344dc3..2348c56 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "338428cf852c658e39987c06b845cb6332394109"
+SRCREV = "f410ec051a3724934e3671315474d4b81424b0ef"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.12.0


