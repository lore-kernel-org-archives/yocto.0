Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7951EE00B0B; Mon,  2 Jun 2014 03:38:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C42CE009C1
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:38:02 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id ik5so4667886vcb.19
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=POGMSpuT2zkQSHLjTOdGG3ShwIB33LIF/3yDJXhwDl8=;
	b=d7ya0peBN6b+NaSyKivRUKpxIpUOJ9heJl8bvSF1u9HgJlsB880kLkWHOX+T71FAOF
	dzB965NYhpG5Uvd8FKSV41uXXTrmbd4g+JDo5E2volZE7GX2kMhkWOYA8JJd2tPe2OJA
	wGo8To1RJCIpRBjIxA97+rt5DEttAN7I6dL2zv6pVdBxaVnk434UPN0sK9I1BQ5Zg0bN
	d6qcJLwbE8uRKJDAa7N2hQguHHNlzJtR4em8NOkeBq0PMq+toSbw55nn1x+nkGA8kZ3t
	M6GE3ypMxVxTGxQ8LjIvaxYfWjotivd4+AJo3uHsoeLSWRTWBESezzCcKLDcMjeC8ESU
	NMpw==
X-Received: by 10.220.167.2 with SMTP id o2mr29707021vcy.8.1401705481844; Mon,
	02 Jun 2014 03:38:01 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Mon, 2 Jun 2014 03:37:21 -0700 (PDT)
In-Reply-To: <25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
	<25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 2 Jun 2014 11:37:21 +0100
X-Google-Sender-Auth: PGz72fJF6QSmLi-9al1DlXeNB54
Message-ID: <CANyK_8dKSyo5jWePtapFg9-a5fKxcNtHzCbQivweUiOPV2-YSw@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>, vaduva.jan.alexandru@gmail.com
Subject: Re: [meta-raspberrypi][PATCH 1/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:38:09 -0000
Content-Type: text/plain; charset=UTF-8

Just jumping in to make a couple of minor comments, hope you don't mind.

On 2 June 2014 11:04, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:
> libmmal_vc_client.so makes use of __attribute__(constructor) to ensure that supplier components (e.g. camera) are loaded when the static library is loaded.
>
> raspivid, and possibly other applications, link against libmmal_vc_client.so, causing the ctor to execute, but there is no needed dependency.
>
> Some build environments (e.g. Yocto/OpenEmbedded) pass the '--no-as-needed' linker flag which removes the dependency on libmmal_vc_client and thus components are not r

It looks like this line got cut off.

>
> In this situation raspivid then gives an error of the form
>
>   root@raspberrypi:~# raspivid -o test
>   mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
>   mmal: Failed to create camera component
>   mmal: main: Failed to create camera component
>   mmal: Failed to run camera app. Please check for firmware updates
>
> For further details see: https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html
>
> Change-Id: I7d6b3751d043f2d79ea06f2d1205e7430f6e926d
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  recipes-graphics/userland/userland_git.bb | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index a348090..95e038b 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -11,14 +11,18 @@ PROVIDES = "virtual/libgles2 \
>              virtual/egl"
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> +SRCBRANCH = "master"
> +SRCFORK = "raspberrypi"

It looks like there are some changes here which are unrelated to the
commit message, including the SRC_URI and whitespace changes below.

>  SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
> -SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
> +
> +SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
>            "
> +
>  S = "${WORKDIR}/git"
>
>  inherit cmake
>
> -EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
> +EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
>
>  # The compiled binaries don't provide sonames.
>  SOLIBS = "${SOLIBSDEV}"
> @@ -29,10 +33,10 @@ do_install_append() {
>      rm -rf ${D}/opt
>  }
>
> +
>  FILES_${PN} += "${libdir}/*${SOLIBS}"
>  FILES_${PN}-dev = "${includedir} \
>                     ${prefix}/src"
>  FILES_${PN}-doc += "${datadir}/install"
>
>  PACKAGE_ARCH = "${MACHINE_ARCH}"
> -
> --
> 2.0.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

