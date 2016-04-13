Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DE5AE00CD8; Tue, 12 Apr 2016 20:30:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F18E00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:30:04 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id n3so52954435wmn.0
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Fx2YxPw1wUQ3AEjting7L17+J/HqK2Prao7HgaadP1c=;
	b=IiTl0MnU2Y2zyzvWau+R84fzStwQLs2fZpsl3Ehzq/gGwW1jqZLsWHEANqf04bX6eC
	DNoXFps/gglEyjzq4FV1AuVnO/i5DvwjfVz65ElOmNy5AvrvVGvfYUJN1zX7MVektKrf
	hX/c3U2JkK8T65Jhc/KftiRutkfhcFu6jhP2Kvr2wbi8w7mOkiHM/yMtCXlWj+ohnWzF
	l991p9KjmisyOzbPmQMSGs4Wdh/T/7ZraG7T16cX/wBLGXi1xUo6gBCH1i8PkExj2vmb
	X+u8NXkRoFA9BlNey8Oy/Ru0dU38z7OL1dvBgyEvnmMTURc3sI5lnSe84pOGSJT72E9M
	1BQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Fx2YxPw1wUQ3AEjting7L17+J/HqK2Prao7HgaadP1c=;
	b=G98RWumNLFdTots6GFGlOEVYLNgP2N9QKu7g9OCLmq7oxNQ61vJ18HTO4WHF+cAMK0
	TR5y/oW2akdFgExckx0mk6DPUGEo6Zmymz4lcyRCG8OfBRGJVKs5qcxkQCY2OPaNEs8Q
	Ueog/S+ePVgtdXuikw6wuQAz1mtpOcPrSfh+gntMkrR9nMTohSKBzd1uUJ53hqWbmx6d
	rOInZio+oTOdPI3pFtczcmAqSbJqNt7J1ujlnajnTiqNfvhVeZ3T9LfO4T7yc4R1BR9O
	nYIlSJc68ABVYJpIdsYkn1Tzjre0agUr5P3qrNQ9/a6zZf9QwLPIK4gxU9h76T5eYPQa
	6amg==
X-Gm-Message-State: AOPr4FUfXHgwn9M/NLNSJrwUUkNERx2+2ljWlmS2DM0yJa+Wq7vNKtiSIA7n09Ts7TgEeg==
X-Received: by 10.194.83.42 with SMTP id n10mr7163508wjy.20.1460518203643;
	Tue, 12 Apr 2016 20:30:03 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	w67sm25598175wmd.23.2016.04.12.20.30.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 20:30:03 -0700 (PDT)
Date: Wed, 13 Apr 2016 05:30:00 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160413033000.GK22139@resin>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: Fix a build regression in builds not using wayland
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
X-List-Received-Date: Wed, 13 Apr 2016 03:30:08 -0000
X-Groupsio-MsgNum: 29400
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hl1kWnBARzJiTscN"
Content-Disposition: inline

--hl1kWnBARzJiTscN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 02, 2016 at 10:59:11AM -0700, Khem Raj wrote:
> Update userland to latest
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...Fix-for-framerate-with-nested-composition.patch | 21 ++++++-----
>  ...014-Fix-errors-due-to-ignored-return-code.patch | 43 ----------------------
>  recipes-graphics/userland/userland_git.bb          |  3 +-
>  3 files changed, 12 insertions(+), 55 deletions(-)
>  delete mode 100644 recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
>
> diff --git a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
> index 2fa9d66..ff9ccce 100644
> --- a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
> +++ b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
> @@ -1,17 +1,17 @@
> -From e5affc4ff145eedf61e2625a8919622c92d0b8ba Mon Sep 17 00:00:00 2001
> +From f8779a124fc447b63c1ba1795330bdc2d765dc7a Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
>  Date: Tue, 29 Mar 2016 20:38:30 -0700
> -Subject: [PATCH 13/14] Fix for framerate with nested composition
> +Subject: [PATCH 13/13] Fix for framerate with nested composition
>
>  frame rate appears irregular and lower than expected when using nested composition.
>
>  Signed-off-by: Khem Raj <raj.khem@gmail.com>
>  ---
> - interface/khronos/egl/egl_client.c | 9 ++++++++-
> - 1 file changed, 8 insertions(+), 1 deletion(-)
> + interface/khronos/egl/egl_client.c | 8 ++++++++
> + 1 file changed, 8 insertions(+)
>
>  diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
> -index 024f3ed..d8a007c 100644
> +index 024f3ed..83970ec 100644
>  --- a/interface/khronos/egl/egl_client.c
>  +++ b/interface/khronos/egl/egl_client.c
>  @@ -2342,6 +2342,9 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> @@ -33,7 +33,7 @@ index 024f3ed..d8a007c 100644
>                     surface->front_wl_buffer->in_use = 1;
>                     wl_surface_attach(wl_egl_window->wl_surface,
>                                       surface->front_wl_buffer->wl_buffer,
> -@@ -2360,10 +2365,11 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> +@@ -2360,11 +2365,13 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
>                     wl_surface_damage(wl_egl_window->wl_surface, 0, 0,
>                                       surface->width, surface->height);
>                     wl_surface_commit(wl_egl_window->wl_surface);
> @@ -41,12 +41,13 @@ index 024f3ed..d8a007c 100644
>
>                     while(ret != -1 && surface->back_wl_buffer->in_use)
>                        ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
> --               } else
> -+               } else {
> +                } else
>   #endif
> ++               {
>                  RPC_CALL6(eglIntSwapBuffers_impl,
>                        thread,
> -@@ -2376,6 +2382,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> +                      EGLINTSWAPBUFFERS_ID,
> +@@ -2376,6 +2383,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
>                        RPC_UINT(khrn_platform_get_window_position(surface->win)));
>
>                  RPC_FLUSH(thread);
> @@ -55,5 +56,5 @@ index 024f3ed..d8a007c 100644
>   #ifdef ANDROID
>                  CLIENT_UNLOCK();
>  --
> -2.7.4
> +2.8.0
>
> diff --git a/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch b/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
> deleted file mode 100644
> index 2d11e9b..0000000
> --- a/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -From 8ac57765d8b971aaa5ee5c610d8df25fa2ea36da Mon Sep 17 00:00:00 2001
> -From: Khem Raj <raj.khem@gmail.com>
> -Date: Thu, 24 Mar 2016 15:03:50 -0700
> -Subject: [PATCH 14/14] Fix errors due to ignored return code
> -
> -Clang warns/errors about not checking the return
> -values from chdir() and fread(), here we check
> -for chdir return code and report back using error()
> -API, and second fix to fread is to let compiler
> -ignore the value via assigning it to an unused variable
> -
> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ----
> - host_applications/linux/apps/dtoverlay/dtoverlay_main.c | 6 ++++--
> - 1 file changed, 4 insertions(+), 2 deletions(-)
> -
> -diff --git a/host_applications/linux/apps/dtoverlay/dtoverlay_main.c b/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
> -index 4b33809..fa8324f 100755
> ---- a/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
> -+++ b/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
> -@@ -353,7 +353,8 @@ static int dtoverlay_remove(STATE_T *state, const char *overlay)
> -     int rmpos;
> -     int i;
> -
> --    chdir(work_dir);
> -+    if (chdir(work_dir) != 0)
> -+	return error("chdir to %s failed", work_dir);
> -
> -     overlay_dir = sprintf_dup("%s/%s", dt_overlays_dir, overlay);
> -     if (!dir_exists(overlay_dir))
> -@@ -633,7 +634,8 @@ static int overlay_applied(const char *overlay_dir)
> -     FILE *fp = fopen(status_path, "r");
> -     if (fp)
> -     {
> --	fread(status, sizeof(status), 1, fp);
> -+	int bytes __attribute__((unused));
> -+	bytes = fread(status, sizeof(status), 1, fp);
> - 	fclose(fp);
> -     }
> -     free_string(status_path);
> ---
> -2.7.4
> -
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index ca9123e..efa2128 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "2f56a2943a9eb8420df52ccf91f5a1c5a70e8713"
> +SRCREV = "703a2c4b35e23ee44ad84db6b9c3f89c0a627143"
>
>  SRC_URI = "\
>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> @@ -33,7 +33,6 @@ SRC_URI = "\
>      file://0011-fix-cmake-dependency-race.patch \
>      file://0012-Fix-enum-conversion-warnings.patch \
>      file://0013-Fix-for-framerate-with-nested-composition.patch \
> -    file://0014-Fix-errors-due-to-ignored-return-code.patch \
>      file://0015-wl-dispmanx-buffer-wrapping.patch \
>  "
>  S = "${WORKDIR}/git"
> --
> 2.8.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged both patches. Thanks.

--
Andrei Gherzan

--hl1kWnBARzJiTscN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDb04AAoJEHO76Gt+erfPK3YP/1h773kp6cV6hXrRyEE0wSja
gOUI32Cw4Z7VAArjp5XOzACcgwZrnlH74lyhSXxQ10Afrn6Q5StFLSsFsAczXKWH
VdO4y79QubV83Usb58WakjQAe6itdqeyWct4bTqx7aaTlzE3qPqGXZMNB+asjhbr
ossAfTJYWGPrYrSjvRC2CqFwh0NePBv/g+Uygpm9B5eE95TSOeoSj0B3bCnnwP0w
WQtNEu4n1xkz2W0kj8lbVRHFSR6h5drUHGpvt/3PLINokR3lcb+AdjEnHOQj+CLu
69SgYAhoVJsNwesSeW5WisMB3BPT+5mrX1mls8tuXM/C/x6CWi5FjMRe/I/PbRWf
EugA+6bdaH0mTKA64Sdf6D9MjCuWudr/B8Sc3l/T/DkuQcQYK4kFm8ukeRSwfRrH
g7WU2nb8ge7zYdqEfBMqX29L92gpSJxpUouYKOf6GmKwfEn2qRPhppb3XkdUrZRU
y+Yq46Kh++LTMuYGl3ajKkxMl0zhsvUDtHY5Brk59NQFZI548Gd0ueEwXufbK3rA
GikbDjtUfbxSwrNgOZ8LJr8zIzHmLAz7YXmW9PncrnexCY8p5b9aI55nehhtBEq/
yqf8v5Zu9RYStjACClcI1QIS7o7iIXDXQAZQoBsuT22sqIeIdc5yHW+32ZdGdckq
E9MJ4FzcmDiHlxbMWon7
=Wr/Y
-----END PGP SIGNATURE-----

--hl1kWnBARzJiTscN--
