Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30B6AE00B19; Sun, 16 Apr 2017 18:31:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED6C9E00992
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:30:50 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id z129so4186071wmb.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=W1pQhNxDzkbwkMHcf02vI8IxzSXsV6Y+0PD6CYFIGDo=;
	b=Ed/Axpj4x/YXXhogmCc7o3iDzr/HL+fOzv0Rg/wI6qv3vHA5WQWGDSAcWmEWlVzSoK
	FxgGvzW5b6+YjkB/msH+KYREYQ+/12BIH+3NAYxUrQwiQk6Dkdbn3Gxb7CPIausIJSKb
	4BQVdNUsIIfKi11ZsyfvpqGKMtzYqi0trgyip+kEgbwhdFisFP/NxrCtNXEEdR98Sfcf
	D2r9vRFDOvBoJd1PgDm4RvvZoqxahup8XzJx7rtJq9UuF7zEQJPqkdTVS74YRFVz/4h5
	AuhuCijrycWAAq9DUD5XruNvvdgPUpteiZ5XslVhw44y35/r0bcSVIXFbZR6RSvDioLy
	6nCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=W1pQhNxDzkbwkMHcf02vI8IxzSXsV6Y+0PD6CYFIGDo=;
	b=PlRuviN/A0UiK5n7XRyXsMudZ6E5T8DBuBvuMim4CRqAb7uS6+PsBbLrlcqeeQcx3n
	b1yYLA+kF7ynsSBIMWnFwfdAuEkT2jXej9PoEeKOlCfEjvKKf7RXRe1bMAocq4SHsGlf
	vSDhPqCHd2kAq2Zicty7NA7n5VKmrleMyJyzWKNyKKgADCVqA0BWYpFzO6t15x15CLPK
	8apyW60X1VkF7bvqzCPtK9Yvw9CCrLneECWlgD3E4yRFQRr/YOkBjzNOYmDCdfMUKN5S
	EHZI9vYxDk2lR1O5Ijby2/NiRfcYyfO/VQWm29vc5I4XIsCpH7/kweQKLi93KKcrGRXk
	d12g==
X-Gm-Message-State: AN3rC/5VLFQxNf58i50iUsH4Ndo2fRoDodC3gLjlojuLHBoIbegZwymp
	6rziiI5EW89vHA==
X-Received: by 10.28.9.15 with SMTP id 15mr7368665wmj.83.1492392649863;
	Sun, 16 Apr 2017 18:30:49 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	q131sm8453379wmd.0.2017.04.16.18.30.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:30:49 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:30:47 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417013047.GH16624@carbonA>
References: <20170414162035.23522-1-raj.khem@gmail.com>
	<20170414162035.23522-3-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170414162035.23522-3-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/5] userland: Upgrade to latest
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
X-List-Received-Date: Mon, 17 Apr 2017 01:31:02 -0000
X-Groupsio-MsgNum: 35597
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2xzXx3ruJf7hsAzo"
Content-Disposition: inline

--2xzXx3ruJf7hsAzo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 09:20:33AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../0002-wayland-Add-support-for-the-Wayland-winsys.patch    | 12 ++++++------
>  recipes-graphics/userland/userland_git.bb                    |  2 +-
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
> index 324fa91..c054572 100644
> --- a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
> +++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
> @@ -1,4 +1,4 @@
> -From 5f9e011a6c15b3a05b3be412d7ba5c1077ececf1 Mon Sep 17 00:00:00 2001
> +From 61a9d792ed774af43e592aa8fdb2a18488696d0f Mon Sep 17 00:00:00 2001
>  From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>  Date: Tue, 1 Oct 2013 13:19:20 +0200
>  Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
> @@ -102,7 +102,7 @@ index 358d2b4..4da4448 100644
>  +
>  +$ BUILD_WAYLAND=1 ./buildme.
>  diff --git a/buildme b/buildme
> -index 1061745..d0e6e54 100755
> +index b8fd440..a780bb6 100755
>  --- a/buildme
>  +++ b/buildme
>  @@ -8,6 +8,10 @@ fi
> @@ -117,7 +117,7 @@ index 1061745..d0e6e54 100755
>   	# Native compile on the Raspberry Pi
>   	mkdir -p build/raspberry/$BUILDSUBDIR
>  @@ -32,9 +36,13 @@ elif [ "$1" = "--native" ]; then
> - 	make -j 6 $*
> + 	make -j `nproc` $*
>   else
>   	# Cross compile on a more capable machine
>  +	if [ -n "$BUILD_WAYLAND" ]; then
> @@ -128,7 +128,7 @@ index 1061745..d0e6e54 100755
>   	pushd build/arm-linux/$BUILDSUBDIR
>  -	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=$BUILDTYPE ../../..
>  +	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=$BUILDTYPE $WAYLAND_VARS ../../..
> - 	make -j 6
> + 	make -j `nproc`
>
>   	if [ "$1" != "" ]; then
>  diff --git a/host_applications/linux/apps/raspicam/CMakeLists.txt b/host_applications/linux/apps/raspicam/CMakeLists.txt
> @@ -1604,7 +1604,7 @@ index 37fdae1..fe3619a 100755
>   }
>   #endif
>  diff --git a/interface/vmcs_host/vc_vchi_dispmanx.c b/interface/vmcs_host/vc_vchi_dispmanx.c
> -index 133e86d..45f4cff 100755
> +index 7a6cdcd..eab146e 100755
>  --- a/interface/vmcs_host/vc_vchi_dispmanx.c
>  +++ b/interface/vmcs_host/vc_vchi_dispmanx.c
>  @@ -1319,3 +1319,45 @@ static void *dispmanx_notify_func( void *arg ) {
> @@ -1885,5 +1885,5 @@ index 0000000..ad90d30
>  +    set(${_sources} ${${_sources}} PARENT_SCOPE)
>  +endfunction()
>  --
> -2.12.0
> +2.12.2
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index afbe5ac..9526fae 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "cdb5da59f939eb4078e90ed0e3c231c498ba9957"
> +SRCREV = "f0642e3b58d8a140a3f7621630c15fbfa794b19d"
>
>  SRC_URI = "\
>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks Khem!

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--2xzXx3ruJf7hsAzo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GscACgkQJrqo2vax
FPbxow/+PKkVr8RgkuhbfmAt8vEo+KpJdAvbPCchlyH4UrjZVO8XeOlO3NHdI6jK
981eWxqzM46TkGb+ZgbvN/X+tb2qu/5EufbMf2/9oPmrYj4TFMWpADPQ+gy1CTQS
C7DwhcqwoaeV6jppFtM65r15jg46c0XPGVjXTuek5cFOi8DG3hikB0eVcZ8ndVnD
JQD6+2HLUkEMlnWCrXj94kHQ3TfP7blG7vPEUerc5Zt7g31npsFP7T0fmCweSlIi
SJloLw+UuhP/mA99jzZ78LE1LR/43jIdNgXg3vx2bCTHfS2PWOzhXUjOe89jf+Id
dWYXILi4dEmTtko4VSzaE21gZRYBeERtICd492+xYCR+ApwTwKah7Y9BhspUdei0
lRLzTnQyqd51FsUev2FoSUorpRitn7YtJsdtRpJzmWZLJz9/Twr6KsSVTQDAB9KT
jZtN3wOiEBVM9d3KpetH0WSZJxb8k4r8q7G5fOdeRyKL1sv05Cj2UYjQn3p9locz
48nPw5bHIOtDAIV/xNAJd71I2Z/fAxKBI/4ptw21d5utECFbSFi0Nj5BlD14TYDU
YpAAbOrPgAIwuo7EKmEUB3InTD32ekzy6MTttVewpF3Ax/5+L8Ecp/XDzarBldaa
vhE0SvGPZvoAaDucRa+P0g5x+4oT9N+1NgpMeY9tuMQiXUpccPY=
=Nc+8
-----END PGP SIGNATURE-----

--2xzXx3ruJf7hsAzo--
