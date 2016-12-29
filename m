Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E102E0071C; Thu, 29 Dec 2016 10:49:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f196.google.com (mail-wj0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CCFE006E3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:49:00 -0800 (PST)
Received: by mail-wj0-f196.google.com with SMTP id hb5so25348156wjc.2
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=f+8DUMQa8SDa72PTMDvyITm18M05HpAA1/Bk51oEd4Q=;
	b=XqlQZ5VV3Rmc5WZHYcSuuMQtsUFQUiEqMgWd3N7wuuZIGhWRU+LeysmDfiL+LfS8jd
	wneun1sQ2eJzN5SspDSVuGCggxKCYyr1LRv4IyPNK8/CVeofBImz0HNzYEN8zkTKKd4/
	HwAfrMb3ecKMpKH4GlP30vfOSFlW4uGdqBXzH0Fv01vExZQG72PNP0tictFhQy8XpBWB
	bAVHhDe4OtXTQRrZs4P/4mjH689/o6q9sH7ytG4mdH9zTsDvffyBxolvWGxl47A4itvl
	j2Ex2KRctXeaoNrDIn81jeyOqny5nMbuJ+37lasN9B+cDf7YlM1poED5YDFX4sjhJ4HB
	7T+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=f+8DUMQa8SDa72PTMDvyITm18M05HpAA1/Bk51oEd4Q=;
	b=D7peDJ0Cj1Hqj5POqEp3AfvFNG3p2kRI3XmPh+u2B7O46+GZ2GOdOBm0WVeFWHM2ip
	ZjgT+Iy8mO39krryPlnwXFHgdTn9XDSdi/I3lEKOf3Em4BcKV2smspArGKF2QOxUBp9c
	kW7fh/0d/z8nO1Vb6LSJ98hwF84MnAPrOjTJeVvB2FmpxuGmHivtpyku2OFvo0sNHk0p
	r/Dw1zEHef5t7V1VrKCP6Q9usZVmlrTC1KbqLmvU3Q7plj/z9whiiNMJLn70k6i78weW
	+P3CwTpNi9JJtyU+rY7L3XAiCVi6vd/M3bM4k/ajSFJINKeqPKaAcketac/ly44or5uG
	qoCA==
X-Gm-Message-State: AIkVDXINiJRs5QQnkdyj6UAjfJmNuWPrYQZcI8axY3Rm3TQQXHiLCXQKSI3KwVzXR9sLJA==
X-Received: by 10.194.238.163 with SMTP id vl3mr36624484wjc.169.1483037339603; 
	Thu, 29 Dec 2016 10:48:59 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	wp2sm32150447wjc.35.2016.12.29.10.48.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Dec 2016 10:48:59 -0800 (PST)
Date: Thu, 29 Dec 2016 18:48:56 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161229184856.GG26059@carbonA>
References: <20161215023444.15092-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161215023444.15092-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/3] userland: Update to latest
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
X-List-Received-Date: Thu, 29 Dec 2016 18:49:04 -0000
X-Groupsio-MsgNum: 33598
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EDJsL2R9iCFAt7IV"
Content-Disposition: inline

--EDJsL2R9iCFAt7IV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 14, 2016 at 06:34:42PM -0800, Khem Raj wrote:
> * Regenerate forward patches
> * Remove upstreamed ones
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...-applications-to-set-next-resource-handle.patch |  6 +-
>  ...ayland-Add-support-for-the-Wayland-winsys.patch | 36 ++++----
>  .../0003-wayland-Add-Wayland-example.patch         |  4 +-
>  ...-wayland-egl-Add-bcm_host-to-dependencies.patch |  6 +-
>  ...emove-faulty-assert-to-make-weston-happy-.patch |  6 +-
>  ...6-zero-out-wl-buffers-in-egl_surface_free.patch |  6 +-
>  ...007-initialize-front-back-wayland-buffers.patch |  6 +-
>  .../userland/userland/0008-Remove-RPC_FLUSH.patch  |  6 +-
>  .../userland/0009-fix-cmake-dependency-race.patch  |  6 +-
>  .../0010-Fix-enum-conversion-warnings.patch        | 99 ----------------------
>  ...ix-for-framerate-with-nested-composition.patch} |  6 +-
>  ...> 0011-build-shared-library-for-vchostif.patch} |  6 +-
>  ...t-buffer-wrapping-interface-for-dispmanx.patch} |  6 +-
>  recipes-graphics/userland/userland_git.bb          |  9 +-
>  14 files changed, 55 insertions(+), 153 deletions(-)
>  delete mode 100644 recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
>  rename recipes-graphics/userland/userland/{0011-Fix-for-framerate-with-nested-composition.patch => 0010-Fix-for-framerate-with-nested-composition.patch} (94%)
>  rename recipes-graphics/userland/userland/{0012-build-shared-library-for-vchostif.patch => 0011-build-shared-library-for-vchostif.patch} (84%)
>  rename recipes-graphics/userland/userland/{0013-implement-buffer-wrapping-interface-for-dispmanx.patch => 0012-implement-buffer-wrapping-interface-for-dispmanx.patch} (95%)
>
> diff --git a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
> index b5bf461..4f72845 100644
> --- a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
> +++ b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
> @@ -1,7 +1,7 @@
> -From 2b87c1271a5b2fc60a7bcfcaf902f3ef69ccad24 Mon Sep 17 00:00:00 2001
> +From 4b68419e58ef31e72abab688d0c7cc5db80efc13 Mon Sep 17 00:00:00 2001
>  From: Dom Cobley <dc4@broadcom.com>
>  Date: Tue, 9 Jul 2013 09:26:26 -0400
> -Subject: [PATCH 01/13] Allow applications to set next resource handle
> +Subject: [PATCH 01/12] Allow applications to set next resource handle
>
>  This patch adds provisions in userland to
>  let apps callers set the next rendereing dispmanx resource.
> @@ -204,5 +204,5 @@ index 8a5734c..51b3580 100644
>
>   FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
> index 2abe5ce..6cc8ea8 100644
> --- a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
> +++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
> @@ -1,7 +1,7 @@
> -From 3a0e094a6aac53c9ddc4b28feb77cfc1a319880d Mon Sep 17 00:00:00 2001
> +From e3d2d0007e1c6c32ab7d9a28f1e399d42b511333 Mon Sep 17 00:00:00 2001
>  From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>  Date: Tue, 1 Oct 2013 13:19:20 +0200
> -Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
> +Subject: [PATCH 02/12] wayland: Add support for the Wayland winsys
>
>  * Adds EGL_WL_bind_wayland_display extension
>  * Adds wayland-egl library
> @@ -22,7 +22,7 @@ vc_vchi_dispmanx.h
>   README.md                                          |   4 +
>   buildme                                            |  10 +-
>   .../linux/apps/raspicam/CMakeLists.txt             |   2 +-
> - interface/khronos/CMakeLists.txt                   |  52 ++++-
> + interface/khronos/CMakeLists.txt                   |  53 ++++-
>   interface/khronos/common/khrn_client.c             |  15 ++
>   interface/khronos/common/khrn_client.h             |  10 +
>   interface/khronos/common/khrn_client_mangle.h      |   3 +
> @@ -47,7 +47,7 @@ vc_vchi_dispmanx.h
>   interface/vmcs_host/vc_vchi_dispmanx.h             |  15 ++
>   interface/wayland/dispmanx.xml                     | 123 +++++++++++
>   makefiles/cmake/Wayland.cmake                      |  72 ++++++
> - 30 files changed, 1258 insertions(+), 97 deletions(-)
> + 30 files changed, 1258 insertions(+), 98 deletions(-)
>   create mode 100644 interface/khronos/common/linux/khrn_wayland.c
>   copy interface/{vmcs_host/vc_vchi_dispmanx.h => khronos/common/linux/khrn_wayland.h} (56%)
>   create mode 100644 interface/khronos/ext/egl_wayland.c
> @@ -68,10 +68,10 @@ index 4a88665..5da71a9 100644
>  +
>  +*~
>  diff --git a/CMakeLists.txt b/CMakeLists.txt
> -index d3159c7..58eb8f7 100644
> +index 98252c3..d6ae907 100644
>  --- a/CMakeLists.txt
>  +++ b/CMakeLists.txt
> -@@ -19,6 +19,17 @@ include(makefiles/cmake/global_settings.cmake)
> +@@ -24,6 +24,17 @@ include(makefiles/cmake/global_settings.cmake)
>   include(makefiles/cmake/arm-linux.cmake)
>   include(makefiles/cmake/vmcs.cmake)
>
> @@ -102,7 +102,7 @@ index 358d2b4..4da4448 100644
>  +
>  +$ BUILD_WAYLAND=1 ./buildme.
>  diff --git a/buildme b/buildme
> -index d778276..f509864 100755
> +index 1061745..d0e6e54 100755
>  --- a/buildme
>  +++ b/buildme
>  @@ -8,6 +8,10 @@ fi
> @@ -132,10 +132,10 @@ index d778276..f509864 100755
>
>   	if [ "$1" != "" ]; then
>  diff --git a/host_applications/linux/apps/raspicam/CMakeLists.txt b/host_applications/linux/apps/raspicam/CMakeLists.txt
> -index 2afc145..126211f 100644
> +index e6aa6b8..69059cb 100644
>  --- a/host_applications/linux/apps/raspicam/CMakeLists.txt
>  +++ b/host_applications/linux/apps/raspicam/CMakeLists.txt
> -@@ -26,7 +26,7 @@ add_executable(raspividyuv  ${COMMON_SOURCES} RaspiVidYUV.c)
> +@@ -28,7 +28,7 @@ add_executable(raspividyuv  ${COMMON_SOURCES} RaspiVidYUV.c)
>
>   set (MMAL_LIBS mmal_core mmal_util mmal_vc_client)
>
> @@ -145,7 +145,7 @@ index 2afc145..126211f 100644
>   target_link_libraries(raspivid   ${MMAL_LIBS} vcos bcm_host)
>   target_link_libraries(raspividyuv   ${MMAL_LIBS} vcos bcm_host)
>  diff --git a/interface/khronos/CMakeLists.txt b/interface/khronos/CMakeLists.txt
> -index 4231af4..7506e5c 100644
> +index 9ad615b..3d3571a 100644
>  --- a/interface/khronos/CMakeLists.txt
>  +++ b/interface/khronos/CMakeLists.txt
>  @@ -6,6 +6,12 @@
> @@ -161,7 +161,7 @@ index 4231af4..7506e5c 100644
>   set(EGL_SOURCE
>      egl/egl_client_config.c
>      egl/egl_client_context.c
> -@@ -55,19 +61,63 @@ set(CLIENT_SOURCE
> +@@ -55,12 +61,56 @@ set(CLIENT_SOURCE
>      common/khrn_int_hash_asm.s
>      common/khrn_client_cache.c)
>
> @@ -218,11 +218,13 @@ index 4231af4..7506e5c 100644
>   # TODO do we need EGL_static and GLESv2_static now that khrn_static exists?
>   add_library(EGL_static STATIC ${EGL_SOURCE})
>   add_library(GLESv2_static STATIC ${GLES_SOURCE})
> - add_library(khrn_static STATIC
> -    ${EGL_SOURCE} ${GLES_SOURCE} ${VG_SOURCE} ${WFC_SOURCE} ${CLIENT_SOURCE})
> -
> --target_link_libraries(EGL khrn_client vchiq_arm vcos bcm_host -lm)
> -+target_link_libraries(EGL ${EGL_LIBS})
> +@@ -72,8 +122,7 @@ include_directories (../../host_applications/linux/libs/sm )
> + set(VCSM_LIBS vcsm)
> + add_definitions(-DKHRONOS_HAVE_VCSM)
> + endif()
> +-
> +-target_link_libraries(EGL khrn_client vchiq_arm vcos bcm_host ${VCSM_LIBS} -lm)
> ++target_link_libraries(EGL ${EGL_LIBS} ${VCSM_LIBS})
>   target_link_libraries(GLESv2 EGL khrn_client vcos)
>   target_link_libraries(WFC EGL)
>   target_link_libraries(OpenVG EGL)
> @@ -1883,5 +1885,5 @@ index 0000000..ad90d30
>  +    set(${_sources} ${${_sources}} PARENT_SCOPE)
>  +endfunction()
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> index 98f18c8..bbd9727 100644
> --- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> +++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> @@ -1,7 +1,7 @@
> -From 6ee44bd040bf8e8abf9c5a7be7f6ea4b82d5671a Mon Sep 17 00:00:00 2001
> +From 8a4b3ea902bbcc08452e13a61ffbdc834bc13ea3 Mon Sep 17 00:00:00 2001
>  From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>  Date: Tue, 1 Oct 2013 13:19:20 +0200
> -Subject: [PATCH 03/13] wayland: Add Wayland example
> +Subject: [PATCH 03/12] wayland: Add Wayland example
>
>  ---
>   .../linux/apps/hello_pi/CMakeLists.txt             |   1 +
> diff --git a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
> index 0f9e528..752b61a 100644
> --- a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
> +++ b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
> @@ -1,7 +1,7 @@
> -From 5f01581e1288040507154ccc38d8bd99b13ed855 Mon Sep 17 00:00:00 2001
> +From 718402e1be80ff9fb9863e847e31072ec735a5eb Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Mon, 10 Aug 2015 02:38:27 -0700
> -Subject: [PATCH 04/13] wayland-egl: Add bcm_host to dependencies
> +Subject: [PATCH 04/12] wayland-egl: Add bcm_host to dependencies
>
>  It uses headers like vcos_platform_types.h but does not
>  depend on module which should add the required include paths
> @@ -24,5 +24,5 @@ index 8bafc15..fd259c9 100644
>   Libs: -L${libdir} -lwayland-egl
>   Cflags: -I${includedir}
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
> index 9a3aa46..05b0dfa 100644
> --- a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
> +++ b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
> @@ -1,7 +1,7 @@
> -From 6e333fef608c5738d2d9a812de29fc8b1edd24cc Mon Sep 17 00:00:00 2001
> +From 2a6e3d53a75fe44ec6fa3ae64c8ca5664b614979 Mon Sep 17 00:00:00 2001
>  From: "Yann E. MORIN" <yann.morin.1998@free.fr>
>  Date: Sat, 24 Jan 2015 22:07:19 +0100
> -Subject: [PATCH 05/13] interface: remove faulty assert() to make weston happy
> +Subject: [PATCH 05/12] interface: remove faulty assert() to make weston happy
>   at runtime
>
>  This was removed after a discussion on IRC with the weston guys
> @@ -25,5 +25,5 @@ index 45f4cff..5d0368c 100755
>               }
>            } else {
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
> index 5ec459e..f4da1c1 100644
> --- a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
> +++ b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
> @@ -1,7 +1,7 @@
> -From 16b837f5d6e8a62ba11029c005488880d02befbf Mon Sep 17 00:00:00 2001
> +From a3d43c1b754fc0576b428d36a877b9b50dd5d1ce Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Sat, 6 Feb 2016 11:10:47 -0800
> -Subject: [PATCH 06/13] zero-out wl buffers in egl_surface_free
> +Subject: [PATCH 06/12] zero-out wl buffers in egl_surface_free
>
>  origins from buildroot
>
> @@ -29,5 +29,5 @@ index 42350bf..1f923d9 100644
>   #endif
>      }
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
> index 90f4a84..47f633a 100644
> --- a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
> +++ b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
> @@ -1,7 +1,7 @@
> -From efe05f6bdb77da027ddc2384e9a9043655a2a03b Mon Sep 17 00:00:00 2001
> +From 5b37f53cff07f37b281c25f987b9dbdacc264bf6 Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Sat, 6 Feb 2016 11:11:41 -0800
> -Subject: [PATCH 07/13] initialize front back wayland buffers
> +Subject: [PATCH 07/12] initialize front back wayland buffers
>
>  origins from metrological wayland support
>
> @@ -30,5 +30,5 @@ index 1f923d9..9a9582c 100644
>      }
>   #endif
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
> index a5c2ed1..7491842 100644
> --- a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
> +++ b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
> @@ -1,7 +1,7 @@
> -From bf98ea35dcbf86e7b422c8706efcbc01ddb2f6b9 Mon Sep 17 00:00:00 2001
> +From 14a749a3f840e93db548373b907a7a0e664dcfdb Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Sat, 6 Feb 2016 11:09:18 -0800
> -Subject: [PATCH 08/13] Remove RPC_FLUSH
> +Subject: [PATCH 08/12] Remove RPC_FLUSH
>
>  Origins from buildroot
>
> @@ -23,5 +23,5 @@ index f9b7287..b04ffef 100644
>         }
>   #endif
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
> index 3e5cce8..3f57d1e 100644
> --- a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
> +++ b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
> @@ -1,7 +1,7 @@
> -From 028957cc519abf5e52d22966d219973294112e54 Mon Sep 17 00:00:00 2001
> +From b5392c39d7407a5226c9314bc01ed82877ff0539 Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Sat, 6 Feb 2016 13:12:47 -0800
> -Subject: [PATCH 09/13] fix cmake dependency race
> +Subject: [PATCH 09/12] fix cmake dependency race
>
>  Fixes errors like
>
> @@ -74,5 +74,5 @@ index f0bae30..8c44c58 100644
>   	struct wl_resource *resource;
>   	struct wl_dispmanx *dispmanx;
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
> deleted file mode 100644
> index 0b03aed..0000000
> --- a/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
> +++ /dev/null
> @@ -1,99 +0,0 @@
> -From 67b00c2b44cec5a7519acfdde43d5ea27c5ff6a8 Mon Sep 17 00:00:00 2001
> -From: Khem Raj <raj.khem@gmail.com>
> -Date: Thu, 18 Feb 2016 09:04:46 +0000
> -Subject: [PATCH 10/13] Fix enum conversion warnings
> -
> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ----
> - interface/mmal/openmaxil/mmalomx_core.c              | 4 ++--
> - interface/mmal/openmaxil/mmalomx_parameters.c        | 6 +++---
> - interface/mmal/openmaxil/mmalomx_util_params_video.c | 8 ++++----
> - 3 files changed, 9 insertions(+), 9 deletions(-)
> -
> -diff --git a/interface/mmal/openmaxil/mmalomx_core.c b/interface/mmal/openmaxil/mmalomx_core.c
> -index 9bc632b..20d4fc7 100644
> ---- a/interface/mmal/openmaxil/mmalomx_core.c
> -+++ b/interface/mmal/openmaxil/mmalomx_core.c
> -@@ -281,7 +281,7 @@ static OMX_ERRORTYPE mmalomx_ComponentGetParameter(
> -       {
> -          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
> -          PARAM_GET_PORT(port, component, param->nPortIndex);
> --         return mmalil_error_to_mmal(mmalomx_get_port_settings(port, param));
> -+         return mmalil_error_to_omx(mmalomx_get_port_settings(port, param));
> -       }
> -       return OMX_ErrorNone;
> -       break;
> -@@ -475,7 +475,7 @@ static OMX_ERRORTYPE mmalomx_ComponentSetParameter(
> -       {
> -          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
> -          PARAM_GET_PORT(port, component, param->nPortIndex);
> --         return mmalil_error_to_mmal(mmalomx_set_port_settings(port, param));
> -+         return mmalil_error_to_omx(mmalomx_set_port_settings(port, param));
> -       }
> -       return OMX_ErrorNone;
> -       break;
> -diff --git a/interface/mmal/openmaxil/mmalomx_parameters.c b/interface/mmal/openmaxil/mmalomx_parameters.c
> -index a20a5bd..c4f97d4 100644
> ---- a/interface/mmal/openmaxil/mmalomx_parameters.c
> -+++ b/interface/mmal/openmaxil/mmalomx_parameters.c
> -@@ -170,7 +170,7 @@ static OMX_ERRORTYPE mmalomx_parameter_get_xlat(MMALOMX_COMPONENT_T *component,
> -
> -    if (xlat->fn.custom)
> -    {
> --      return mmalil_error_to_mmal(xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
> -+      return mmalil_error_to_omx(xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
> -          pParam, mmal_port));
> -    }
> -
> -@@ -554,14 +554,14 @@ OMX_ERRORTYPE mmalomx_parameter_set(MMALOMX_COMPONENT_T *component,
> -          port->mmal->format->es->video.par.num = param->nX;
> -          port->mmal->format->es->video.par.den = param->nY;
> -          mmal_rational_simplify(&port->mmal->format->es->video.par);
> --         return mmalil_error_to_mmal(mmal_port_format_commit(port->mmal));
> -+         return mmalil_error_to_omx(mmal_port_format_commit(port->mmal));
> -       }
> -    case OMX_IndexParamColorSpace:
> -       {
> -          OMX_PARAM_COLORSPACETYPE *param = (OMX_PARAM_COLORSPACETYPE *)pParam;
> -          PARAM_GET_PORT(port, component, param->nPortIndex);
> -          port->mmal->format->es->video.color_space = mmalil_omx_color_space_to_mmal(param->eColorSpace);
> --         return mmalil_error_to_mmal(mmal_port_format_commit(port->mmal));
> -+         return mmalil_error_to_omx(mmal_port_format_commit(port->mmal));
> -       }
> -    case OMX_IndexParamBrcmVideoCroppingDisable:
> -       {
> -diff --git a/interface/mmal/openmaxil/mmalomx_util_params_video.c b/interface/mmal/openmaxil/mmalomx_util_params_video.c
> -index f088296..83e3724 100644
> ---- a/interface/mmal/openmaxil/mmalomx_util_params_video.c
> -+++ b/interface/mmal/openmaxil/mmalomx_util_params_video.c
> -@@ -56,11 +56,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
> -       mmal->set = omx->set;
> -       mmal->display_num = omx->num;
> -       mmal->fullscreen = omx->fullscreen;
> --      mmal->transform = omx->transform;
> -+      mmal->transform = (MMAL_DISPLAYTRANSFORM_T)omx->transform;
> -       rect_to_mmal(&mmal->dest_rect, &omx->dest_rect);
> -       rect_to_mmal(&mmal->src_rect, &omx->src_rect);
> -       mmal->noaspect = omx->noaspect;
> --      mmal->mode = omx->mode;
> -+      mmal->mode = (MMAL_DISPLAYMODE_T)omx->mode;
> -       mmal->pixel_x = omx->pixel_x;
> -       mmal->pixel_y = omx->pixel_y;
> -       mmal->layer = omx->layer;
> -@@ -72,11 +72,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
> -       omx->set        = mmal->set;
> -       omx->num        = mmal->display_num;
> -       omx->fullscreen = mmal->fullscreen;
> --      omx->transform  = mmal->transform;
> -+      omx->transform  = (OMX_DISPLAYTRANSFORMTYPE)mmal->transform;
> -       rect_to_omx(&omx->dest_rect, &mmal->dest_rect);
> -       rect_to_omx(&omx->src_rect, &mmal->src_rect);
> -       omx->noaspect   = mmal->noaspect;
> --      omx->mode       = mmal->mode;
> -+      omx->mode       = (OMX_DISPLAYMODETYPE)mmal->mode;
> -       omx->pixel_x    = mmal->pixel_x;
> -       omx->pixel_y    = mmal->pixel_y;
> -       omx->layer      = mmal->layer;
> ---
> -2.10.0
> -
> diff --git a/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch
> similarity index 94%
> rename from recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
> rename to recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch
> index 9d4b930..8a34f3f 100644
> --- a/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
> +++ b/recipes-graphics/userland/userland/0010-Fix-for-framerate-with-nested-composition.patch
> @@ -1,7 +1,7 @@
> -From 497637d8eff4e83b5ede26733c4f36371b1d2f07 Mon Sep 17 00:00:00 2001
> +From 098faed5e7035b51f14700fdf4cf5875aa7af97e Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Tue, 29 Mar 2016 20:38:30 -0700
> -Subject: [PATCH 11/13] Fix for framerate with nested composition
> +Subject: [PATCH 10/12] Fix for framerate with nested composition
>
>  frame rate appears irregular and lower than expected when using nested composition.
>
> @@ -56,5 +56,5 @@ index 03fe67b..13a110c 100644
>   #ifdef ANDROID
>                  CLIENT_UNLOCK();
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch
> similarity index 84%
> rename from recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
> rename to recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch
> index 3e3a7f9..f2455e5 100644
> --- a/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
> +++ b/recipes-graphics/userland/userland/0011-build-shared-library-for-vchostif.patch
> @@ -1,7 +1,7 @@
> -From 18f5ef775b4a367bf7fe972c9a2b4cd29f2f1043 Mon Sep 17 00:00:00 2001
> +From b533d784484caead1dc84c766127e1d3854d2aad Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Sat, 2 Apr 2016 10:37:24 -0700
> -Subject: [PATCH 12/13] build shared library for vchostif
> +Subject: [PATCH 11/12] build shared library for vchostif
>
>  Fixes #149
>
> @@ -24,5 +24,5 @@ index 9bcc2c3..0ef753f 100755
>   #add_library(bufman            vc_vchi_bufman.c            )
>
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch b/recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch
> similarity index 95%
> rename from recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
> rename to recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch
> index 8b5c6b5..aa3e0ef 100644
> --- a/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
> +++ b/recipes-graphics/userland/userland/0012-implement-buffer-wrapping-interface-for-dispmanx.patch
> @@ -1,7 +1,7 @@
> -From d692c61077235e7b791f115b3140680580903c95 Mon Sep 17 00:00:00 2001
> +From ee5ebfcf0e030efed17f2a45fbb018a02dd421b3 Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Sat, 2 Apr 2016 10:54:59 -0700
> -Subject: [PATCH 13/13] implement buffer wrapping interface for dispmanx
> +Subject: [PATCH 12/12] implement buffer wrapping interface for dispmanx
>
>  Courtesy: Zan Dobersek
>
> @@ -88,5 +88,5 @@ index c18626d..11ed1ef 100644
>
>   </protocol>
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 84d6854..bba7541 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "100f8bb3e74e29d04fb99857183cc34aaa712e3f"
> +SRCREV = "7ade0399c4e46fb6277e3e0ec400711ab54ab504"
>
>  SRC_URI = "\
>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> @@ -29,10 +29,9 @@ SRC_URI = "\
>      file://0007-initialize-front-back-wayland-buffers.patch \
>      file://0008-Remove-RPC_FLUSH.patch \
>      file://0009-fix-cmake-dependency-race.patch \
> -    file://0010-Fix-enum-conversion-warnings.patch \
> -    file://0011-Fix-for-framerate-with-nested-composition.patch \
> -    file://0012-build-shared-library-for-vchostif.patch \
> -    file://0013-implement-buffer-wrapping-interface-for-dispmanx.patch \
> +    file://0010-Fix-for-framerate-with-nested-composition.patch \
> +    file://0011-build-shared-library-for-vchostif.patch \
> +    file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
>  "
>  S = "${WORKDIR}/git"
>
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

All 3 patches merged to master.

--
Andrei Gherzan

--EDJsL2R9iCFAt7IV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYZVqYAAoJEHO76Gt+erfP77AP/2cp0JZkU+ANRJK1IS1XzAo7
qww2xskimdQ9Lo+i/E27mNvf7Ca7RPA5HDyPk1B0S9PFbIMdLbpAkzPrjmX2UI28
6p6h/8XcClxtBpJ65/NoopFFr0X4gmJ80CRjBp9KNvuGcGhwxciQ3nOpneNw33Ej
0dl0CKoq5UlN9GDzFnx6gdry64ypyKz3C+MG6svvG/KfWKZEOQxL67+RI+Dt4w+F
h7jlkDeStG5MLnPXRXFACjeUv4GIva8WBSp0bFyA420rpb8roIJfXDuBRHd6/QZc
bVVAUCQ/qB44vJQjpe/YQNwZnwEpqmYzmfxN5KqCp5LoqNLOSGfFcZIM+Qs5/4KW
MzdzErZxZ/Raa7/0+4pQuw/0NC+wYALxPzMI8F3NP53CzLcCCuwUKZt/LV+MeP1c
LiyZwJMuDjRJJvbMmkRCOYsv3LT3mYSTyYnUrAV9dMGRE/d+DERqmYtEfdTiP89s
E9XZMOQ60donFvbFSk/HRafpwNLuER1Yg98CwhSpAmPu6UD1qFAXbkfZTJXsXZ1b
W82yA+DB+u+QDGKUAG95ZRB6kOpRXOGOB2KneybeWiHcB5TTa5ckWfL0ySkD865V
+d7QmQjOjs8S0Cxc6HHyhZI25+5pBH8GcvyzYsetdmwHelYmFV5Djjnzh+SPI1vB
g22ceMG41CHY4+Qj9U1S
=868Y
-----END PGP SIGNATURE-----

--EDJsL2R9iCFAt7IV--
