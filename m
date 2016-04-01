Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3CDE00C9D; Fri,  1 Apr 2016 04:39:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E59E00C9B
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 04:39:06 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id 191so16919963wmq.0
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 04:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vkVQoP7xXbMGkXTM6J2dlVGO0jG6Gpt3+XI2JQbOoZ8=;
	b=xh8RqVPwvUoGPlV2aIxk/rdaYdE+6Sq2/YsZILLYy81A1TSAnt+ovC13zGvqwdd0ID
	rLD820wQTMCHr+SCyBIK6eiBl6M1IUuq6MSzfUuSrBBQtL0NSOZBSUWcvHgzScYpf0Lg
	5P4shdV444/AEh2eDp8gckgad9Pg//Bw4NntzOnIgXL9aO2Bct/vfKI1eENY5Zuj/33U
	MKSF6ayULW+S9wq1EOXCjGv2DQILWW5CbtRl3tmFZcsFdJ3E6SELf0JjJf9TPUsy0WZK
	67qU33DUhq4DFl9TTOXqxxGtjdENZubgeNGadp1KI/hkVWVQuOQvdOGD/oZZIVYyPxGr
	bmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=vkVQoP7xXbMGkXTM6J2dlVGO0jG6Gpt3+XI2JQbOoZ8=;
	b=HG72QVemZZvV/vu9JIDOqrg6UM0wUgXYxlsOp+x0raEmHs1YeZMEILqun5EE2WkfVJ
	yaezfZ9EXeh+79oKRAqkHi8MGVTDZKz7OusXKKjsR7vVDKpwyJbve8KISt49SRpQuVIM
	FnBve8bhUDCeqP6joqBSqiywd8IznUJPkFefC6nMR4qNW86SKaYe86zSdKdItacdaqsS
	AMXIk4csv/zEPSUHNeETd1YM09FWs2Acq2Sv3KlysS0sJshykCUbf9Me4gl1uHX7zWq1
	lzRYbE4+2Nnh0LpUMfyamb5N9/zhFzttUb4qJiTFGBT4oUP2j1Cq+GI9UjwDELyckUpO
	Dcnw==
X-Gm-Message-State: AD7BkJKv0YqcUwU2zBOSJSnd/7+WOzBb9lXIxKL0uLbf6MRxkNa3hCNaLEnl1e1Q7yDNPQ==
X-Received: by 10.194.111.199 with SMTP id ik7mr4625890wjb.150.1459510746249; 
	Fri, 01 Apr 2016 04:39:06 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	138sm14414954wmf.13.2016.04.01.04.39.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Apr 2016 04:39:05 -0700 (PDT)
Date: Fri, 1 Apr 2016 13:39:03 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160401113903.GB10485@resin>
References: <1459309471-13065-1-git-send-email-raj.khem@gmail.com>
	<1459309471-13065-2-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1459309471-13065-2-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Fix tearing effect seen with wayland compositors
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
X-List-Received-Date: Fri, 01 Apr 2016 11:39:10 -0000
X-Groupsio-MsgNum: 29234
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ftEhullJWpWg/VHq"
Content-Disposition: inline

--ftEhullJWpWg/VHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 29, 2016 at 08:44:31PM -0700, Khem Raj wrote:
> Introduce EGL flush in few more places
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...Fix-for-framerate-with-nested-composition.patch | 46 ++++++++++++++++++----
>  1 file changed, 39 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
> index 6377e31..2fa9d66 100644
> --- a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
> +++ b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
> @@ -1,20 +1,39 @@
> -From 7f424ce48f6c14118aea2ab770b3bbf87e1f0393 Mon Sep 17 00:00:00 2001
> +From e5affc4ff145eedf61e2625a8919622c92d0b8ba Mon Sep 17 00:00:00 2001
>  From: Khem Raj <raj.khem@gmail.com>
> -Date: Thu, 24 Mar 2016 14:30:58 -0700
> -Subject: [PATCH 13/13] Fix for framerate with nested composition
> +Date: Tue, 29 Mar 2016 20:38:30 -0700
> +Subject: [PATCH 13/14] Fix for framerate with nested composition
>
>  frame rate appears irregular and lower than expected when using nested composition.
>
>  Signed-off-by: Khem Raj <raj.khem@gmail.com>
>  ---
> - interface/khronos/egl/egl_client.c | 1 +
> - 1 file changed, 1 insertion(+)
> + interface/khronos/egl/egl_client.c | 9 ++++++++-
> + 1 file changed, 8 insertions(+), 1 deletion(-)
>
>  diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
> -index 024f3ed..95bb581 100644
> +index 024f3ed..d8a007c 100644
>  --- a/interface/khronos/egl/egl_client.c
>  +++ b/interface/khronos/egl/egl_client.c
> -@@ -2360,6 +2360,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> +@@ -2342,6 +2342,9 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> +                      surface->back_wl_buffer = buffer;
> +                   }
> +
> ++                  glFlush();
> ++                  glFinish();
> ++
> +                   RPC_CALL7(eglIntSwapBuffers_impl,
> +                         thread,
> +                         EGLINTSWAPBUFFERS_ID_V2,
> +@@ -2353,6 +2356,8 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> +                         RPC_UINT(khrn_platform_get_window_position(surface->win)),
> +                         RPC_INT(surface->back_wl_buffer->resource));
> +
> ++                  RPC_FLUSH(thread);
> ++
> +                   surface->front_wl_buffer->in_use = 1;
> +                   wl_surface_attach(wl_egl_window->wl_surface,
> +                                     surface->front_wl_buffer->wl_buffer,
> +@@ -2360,10 +2365,11 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
>                     wl_surface_damage(wl_egl_window->wl_surface, 0, 0,
>                                       surface->width, surface->height);
>                     wl_surface_commit(wl_egl_window->wl_surface);
> @@ -22,6 +41,19 @@ index 024f3ed..95bb581 100644
>
>                     while(ret != -1 && surface->back_wl_buffer->in_use)
>                        ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
> +-               } else
> ++               } else {
> + #endif
> +                RPC_CALL6(eglIntSwapBuffers_impl,
> +                      thread,
> +@@ -2376,6 +2382,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
> +                      RPC_UINT(khrn_platform_get_window_position(surface->win)));
> +
> +                RPC_FLUSH(thread);
> ++               }
> +
> + #ifdef ANDROID
> +                CLIENT_UNLOCK();
>  --
>  2.7.4
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--ftEhullJWpWg/VHq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW/l3XAAoJEHO76Gt+erfP6E8P/2LgRPr4hgmRFYj0l+1c+wlZ
tTTCUMfMiAvA79OFynop/Jnv/cdm32d0JPWiiCb4U8qSznX+T0vGSu0JH96UtdSD
wTO+Umz4QUhyI7MiNIbyaAiDeKaboCI9yHPveANZXhOvdfd6+Dt4oOBTffFqlSwx
E206fjqotVOL3TlkqU8lsih2ZarUGSUHcliXNUDYWZTvo4SIwVG2pyuZW6GdZTec
ysGeEgraMf1Z8M1FEdoykz+kMyP8NtIqLWw3HucsIFFpUbkWRVpGZ2IjmlBx3PTD
vnHOP9XCqEKEkyk239aX0fn4JnwA7K8LSioeo2gcQCysYY/Rw/XE9LTstumeuxIe
U+5V8QIJuf1853KBgG39DaWxFCkMCk0s9CSaIaNZGoLkUdEUa8R9nF24oYPhOB9w
hHl7n4WQ4c6YwKdjwK+yynK5P1QxOtc740Y57iJccaDrScrzHdWwuLNy2m6VgJ5k
6V4a0DBFCXw5cipIxVCDG1efLTBE3qJtriHLblyjSj4kfGDSxSokshMunkDUxFJc
2SvyqkfccyoN4W3OEtPK6ijInCtIJTcBOFifZMwubxh7hNCP63boA9F/BX67Td8Z
OyqkuPz9vFBUUP9q/4A1u6uH9aYZHEx1YHUZjEvugGgMGm3KtIb05BY+xuD3qiNA
iLxluuFnOcq36LAdtp2d
=ryM3
-----END PGP SIGNATURE-----

--ftEhullJWpWg/VHq--
