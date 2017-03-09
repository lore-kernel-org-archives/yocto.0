Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C279BE009B9; Thu,  9 Mar 2017 07:58:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D54E009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 07:58:09 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id 1so125135208qkl.3
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 07:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5Qahzk9YkDOwPlzTqzKE9aGcG0uKM5PFtDEyq7GxWeQ=;
	b=bG1WPOjNxkbaSLkqNrJdNOOE/ksUYM4IUcK6A1W4PR6dpFXJiy3rRiC3pS+ljeAnNJ
	nLWYaIoUmVqfIru/lk1o48CUc2EJVHuLWFCqjex0SbRPPjgGIplpMtP6RX/BmVgNUP7j
	XE8DgtI3SaPeqlONZbMa8+s1rlXaCfLJVyzfWjxDGNTKi77ibEgdhVy/E8s+If1EY9tE
	uAFNXieg4m41S50A6BNHtUqEngKy5eDWsz4EeT4w2OI8x10NoA8EwbiBpUnQ14XuJwsr
	Dow2o4j0itAExC8Iu+6kBzZSMeR4zf8LtX1yRtHEHuegdACjVYWdkir3KzFpHckwP8PZ
	8vuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5Qahzk9YkDOwPlzTqzKE9aGcG0uKM5PFtDEyq7GxWeQ=;
	b=Qx8XGkPMstc0BJuQxfv0H2qXrV6yD2N4F2Aa99IIq4cTbdrg2dW1I92D596tLFdBAu
	UvENv5rUlYBl1DRDBQlcHKy9J1iME/yCvJlTWOxiW0RQSz382PE8m3v6ZxxF+7uWG7Et
	kdO5T7M2DWs1dFW5u3OTmd0OnaZiDIKwpfW6Fr+BoNoGh94mHSOermfObQB3Pq6rb/gn
	tBhNPxPfMTdFaFUWlXLuM6Hw4tjuVua+iHZnKAguoG8O05kHZHVpLDyqoPhdDDXIvuEt
	zAt+USiH+GubUIkK0/N1l2RZKjZbHLUM9n8yXCyVJHW2OkqeMihABt1xPS1brTOXSyWv
	NExQ==
X-Gm-Message-State: AFeK/H2V0Eq52k2GwylWhY2XQCdZ7F+DIWiL0UeT7k+Gt0cygzm19fjA1oVat8Vr6VHCHSBJRZA+oSuCjFma+w==
X-Received: by 10.55.175.195 with SMTP id y186mr14239913qke.26.1489075088472; 
	Thu, 09 Mar 2017 07:58:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.134.130 with HTTP; Thu, 9 Mar 2017 07:58:07 -0800 (PST)
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
Date: Fri, 10 Mar 2017 01:58:07 +1000
Message-ID: <CA+aJhH3SdjOjKDrDRxMNG_-aJkbJAa8GCciWATisF+qmgsmZ5w@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Alistair Francis <alistai@xilinx.com>
Subject: Re: [meta-mingw][PATCH v2 0/19] Adding support for building QEMU for Windows
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
X-List-Received-Date: Thu, 09 Mar 2017 15:58:10 -0000
Content-Type: text/plain; charset=UTF-8

On 30 January 2017 at 18:44, Nathan Rossi <nathan@nathanrossi.com> wrote:
> This series enables a number of packages and dependencies to be built
> for mingw32. The goal is to enable the building and packaging of QEMU
> targeting mingw32 with support for SDL/VNC enabled as well as being able
> to execute the qemu* machines of oe-core/meta.
>
> The following series fixes a number of issues with compilation of
> certain components that are required to build and distribute QEMU. This
> series includes:
>
>  * Enabling 'secure-api' for mingw-w64-headers
>  * Fix/enable building of shared libraries for gettext
>  * Work around to avoid dependency on bash for glib-2.0, clean up of
>    some glib-2.0 appends which are resolved in oe-core meta
>  * Better packaging of libgcc for easy use on Windows (deploy dll to
>    bindir)
>  * Updating FILES_* to support locations for mingw32 output (bindir
>    contains .dll) for libgcc, expat, libpcre, gettext, glib-2.0, libsdl,
>    libgpg-error and libgcrypt
>  * Addition of PACKAGECONFIG options to libsdl, and configuring of
>    PACKAGECONFIG for libsdl, glib-2.0 and libgcrypt to handle Windows
>    only features and or ability to disable features that do not support
>    mingw32/Windows
>  * Enabling build of libfdt in the dtc recipe, but skipping dtc itself
>  * Fixes for configuring libgpg-error and libgcrypt when targeting
>    mingw32
>
> The intended build execution is to allow for 'buildtools-tarball' (or
> any populate_sdk target with 'nativesdk-qemu' in TOOLCHAIN_HOST_TASK) to
> create an output that includes all dependent nativesdk binaries as well
> as a nativesdk QEMU binaries. This series does not however address
> fixing the environment setup script or self-extracting installer shell
> script that is normally provided by buildtools-tarball.
>
> This series with the multiple oe-core/meta series was tested on the
> following target Windows platforms: Windows 10 (64-bit), Windows 8.1
> (64-bit) and Windows 7 SP1 (64-bit).
>
> The changes were also tested on the following Linux build hosts: Debian
> 8 (64-bit), Ubuntu 16.04 (64-bit), CentOS 7 (64-bit).
>
> For convenience this series is also available in the git repository:
>
>   https://github.com/nathanrossi/meta-mingw nrossi/mingw-qemu-v2
>
> This series partly depends on a set of series for oe-core/meta. The
> following series are required for building of QEMU (but not all parts of
> this series specifically), including dll packaging detection and
> libgcrypt support:
>
>   https://patchwork.openembedded.org/series/5049/
>   https://patchwork.openembedded.org/series/5050/
>   https://patchwork.openembedded.org/series/5051/
>   https://patchwork.openembedded.org/series/5052/
>   https://patchwork.openembedded.org/series/5053/

These patch series have been merged into oe-core. However the
gettext-libintl packaging patch was moved to a change in meta-mingw
layer as of v3 (see below).

I have updated and pushed a v3 branch of this meta-mingw series to the
meta-mingw-contrib repo here:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/log/?h=nrossi/mingw-qemu-v3

    Changes v3:
     * Updated changes to layer on current master of oe/meta
     * Squished the gettext libintl packaging and dll packaging patches
     * Moved the adding of the libintl packaging to meta-mingw

To avoid patch spam, I have skipped sending the v3 patches
individually to the list. Please let me know if patch emails are
desired.

Thanks,
Nathan

