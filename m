Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562B1E007A9
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 09:24:20 -0800 (PST)
Received: by mail-ee0-f54.google.com with SMTP id e53so2243602eek.41
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 09:24:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=ekRlQCW4POi8fN2BeJUAoY1neUSNA5elRHehU8hR2IM=;
	b=byl8FDFDzdM9pN+Ds2FaIEYfePq/9A857VhGPscthHKgVVvQugeQJcNMH41du0Enuy
	WqRXWxoHMpTBHTnGymDop7nXgXiAJzeW29Y6cQJeze3eHbq+Wp4p0W4+rWEp8WmYySLT
	cQxe+KIiHviaYtkKSZWZo3kDz2THVRFfm7BBWFFt/prhB/5OXKAP4amJLiR7epx1rnUE
	bmJa1NPehKblLej8HrynBqRp2bHd5ZE1+C141OYwr5tCNBvKScPcZ6sNdHfznC9q/oPq
	j/JsqHTPqPLFikwbLsSwBUzQ99qGVUc9ybOyVlzo8cCkkOnQ+MOb2q3fIOPs5Atvf578
	GWag==
X-Gm-Message-State: ALoCoQn2EsbaG8DJU6/5NE4r+evNJQrjR07Qv8M9CwS5QwSWB9+oXCOeIZBja+EToLSQz2h2tjSt
X-Received: by 10.14.104.133 with SMTP id i5mr2327194eeg.16.1390152259361;
	Sun, 19 Jan 2014 09:24:19 -0800 (PST)
Received: from gmail.com ([79.116.111.233])
	by mx.google.com with ESMTPSA id x45sm45257082eee.3.2014.01.19.09.24.17
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 19 Jan 2014 09:24:18 -0800 (PST)
Date: Sun, 19 Jan 2014 19:24:10 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140119172410.GA5660@gmail.com>
References: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-raspberrypi][PATCH 1/4] omxplayer: Update to HEAD and tweak SUMMARY and DESCRIPTION
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
X-List-Received-Date: Sun, 19 Jan 2014 17:24:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 17, 2014 at 04:51:11PM +0200, Andrei Gherzan wrote:
> * Update to current git HEAD commit which includes fix for boost 1.55.
> * Replace tabs by spaces
> * Tweak SUMMARY and DESCRIPTION
> * Add bash to PN RDEPENDS as omxplayer is actually a bash script.
> * omxplayer is a bash script - add RDEPENDS and fix mktemp inside
>
> Change-Id: I5c8a4cf1005ba49f9b01821e3f832d1da49869bc
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  .../omxplayer/mktemp-compatible-with-busybox.patch | 23 ++++++++++++++++
>  recipes-multimedia/omxplayer/omxplayer_git.bb      | 31 ++++++++++++----------
>  2 files changed, 40 insertions(+), 14 deletions(-)
>  create mode 100644 recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch b/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
> new file mode 100644
> index 0000000..4e43c7d
> --- /dev/null
> +++ b/recipes-multimedia/omxplayer/omxplayer/mktemp-compatible-with-busybox.patch
> @@ -0,0 +1,23 @@
> +Busybox has a restriction in temp file name. From documentation:
> +Create a temporary file with name based on TEMPLATE and print its name.
> +TEMPLATE must end with XXXXXX (e.g. [/dir/]nameXXXXXX).
> +
> +Use 6 x 'X' to be busybox compatible too.
> +
> +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> +
> +Index: git/omxplayer
> +===================================================================
> +--- git.orig/omxplayer
> ++++ git/omxplayer
> +@@ -43,8 +43,8 @@ if [ -z $NOREFRESH ] || [ "$NOREFRESH" =
> +     fi
> + fi
> +
> +-OMXPLAYER_DBUS_ADDR=`mktemp -t omxplayer-XXXXX`
> +-OMXPLAYER_DBUS_PID=`mktemp -t omxplayer-XXXXX`
> ++OMXPLAYER_DBUS_ADDR=`mktemp -t omxplayer-XXXXXX`
> ++OMXPLAYER_DBUS_PID=`mktemp -t omxplayer-XXXXXX`
> +
> + exec 5> $OMXPLAYER_DBUS_ADDR
> + exec 6> $OMXPLAYER_DBUS_PID
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index c77f858..8d444fd 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -1,20 +1,21 @@
> -DESCRIPTION = "OMXPlayer is a commandline OMX player for the Raspberry Pi"
> +SUMMARY = "A commandline OMX player for the Raspberry Pi"
> +DESCRIPTION = "This player was developed as a testbed for the XBMC \
> +Raspberry PI implementation and is quite handy to use standalone"
>  HOMEPAGE = "https://github.com/popcornmix/omxplayer"
>  SECTION = "console/utils"
> -LICENSE = "GPLv2"
>
> +LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
>  DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
> +PR = "r2"
>
> -PR = "r1"
> -
> -SRCREV = "c0dd9502ed2c43c487674939195c69680f3d98b0"
> -
> +SRCREV = "74f4be222be05d3ea50be9f5a70846f7c0e9df6e"
>  SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
>             file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
>             file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
> -           file://0003-Remove-strip-step-in-Makefile.patch"
> +           file://0003-Remove-strip-step-in-Makefile.patch \
> +           file://mktemp-compatible-with-busybox.patch"
>  S = "${WORKDIR}/git"
>
>  COMPATIBLE_MACHINE = "raspberrypi"
> @@ -46,17 +47,17 @@ export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
>  export DIST = "${D}"
>
>  do_compile() {
> -	# Needed for compiler test in ffmpeg's configure
> -	mkdir -p tmp
> +    # Needed for compiler test in ffmpeg's configure
> +    mkdir -p tmp
>
> -	oe_runmake ffmpeg
> -	oe_runmake
> +    oe_runmake ffmpeg
> +    oe_runmake
>  }
>
>  do_install() {
> -	oe_runmake dist
> -	mkdir -p ${D}/usr/share/fonts/truetype/freefont/
> -	install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
> +    oe_runmake dist
> +    mkdir -p ${D}/usr/share/fonts/truetype/freefont/
> +    install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
>  }
>
>  FILES_${PN} = "${bindir}/omxplayer* \
> @@ -64,3 +65,5 @@ FILES_${PN} = "${bindir}/omxplayer* \
>                 /usr/share/fonts"
>
>  FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
> +
> +RDEPENDS_${PN} += "bash"
> --
> 1.8.1.4
>

Merged the series.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

