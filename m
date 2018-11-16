Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B010E00A4F; Thu, 15 Nov 2018 19:36:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CD24E0095C
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 19:36:03 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id y139so3340703wmc.5
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 19:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ond9s4QQnl4WRghuPUayMaJpmC99HrLPs/VeIvFHaWE=;
	b=Fjt/zu3C2gmLUqgprb6KrVLi2wB3nMwPh70KlNDyAWT2tdsSa6XcSyKc3/JJwlCp+M
	zOYqz0E5ioCJWuPhQ8gVqK9YhxBZnKnT3EsYrIpFUjLO5RgMDj/0Afrx4mqGcBHGrwWQ
	ACFbeQ133odX/MRgmqtBWGq2asj2HXDcJGcliKNjbZ1xwETMlYp8/gQzRsvOtxE+f3NQ
	QDDOUINFs6+ibyFrLoUKtm666gG9l+d3jkJ2yNAlAvzNxkMVcsHl0OrCUNTRaWENXwzc
	uis/11aK3TVP+iHwhQN0ovE2hX6WinHMT9T2rz70KPlWzbywccowwfuL/LsLPh/QAnWi
	YWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ond9s4QQnl4WRghuPUayMaJpmC99HrLPs/VeIvFHaWE=;
	b=rfU+L/u9eLyVQDy4BUyc7lAoZbWeVOqQj/4zQ9m71zR/YgXdl7StopwgagFCFkvaYY
	9FCohwpAFtUW3ffd49iX1UMmfVJ6E9ymvSoY5JwfMf/AlET4scb0eGALTkmBYPTNRhqP
	IGBzEESbqOaNC6RHfHfei1+jkUUVDZVUa2x2g//W/PeS3DCeW97RYKz2T1rlj0bmQyrn
	cGBMKg1h9FVUsHAz5oOJEqy27aD6MqCaqoSvg5rc22JFQMHd1lRu5qsZAfSbcmF1keXx
	FzW2eaMiRbc4KQSoInd8YSgpzVfV2xiAyec4NZQ3mMmaaQVVo+tdv59zTte9sgMIxOGl
	KjEQ==
X-Gm-Message-State: AGRZ1gKMuJ/KGFRb2jnAe93nikdZUv1emDROcexx8qdWIpe+/3N1o61X
	A4eKU2D/ANbImbOAwlR7ptFbdwYiricshhJw95CT5CA3fWc=
X-Google-Smtp-Source: AJdET5ewCag1jYWtBEZ4RGJWMEhPftFLE+Jzzt2QvrVdGTJfLHfR8A3hrYqEnK/ARVfpCUg8OBTLACs5rZ4FRPrP7wM=
X-Received: by 2002:a1c:b513:: with SMTP id
	e19-v6mr6946816wmf.114.1542339362318; 
	Thu, 15 Nov 2018 19:36:02 -0800 (PST)
MIME-Version: 1.0
References: <20181115092658.29152-1-samuli.piippo@qt.io>
	<20181115092658.29152-2-samuli.piippo@qt.io>
In-Reply-To: <20181115092658.29152-2-samuli.piippo@qt.io>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 15 Nov 2018 21:35:50 -0600
Message-ID: <CAJdd5GawDQsC9nfKxqEUWEMWoDw8ZbrMy-3xdF17=C_Z=Hk5Sw@mail.gmail.com>
To: samuli.piippo@qt.io
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 2/2] cmake: add support for building nativesdk-cmake
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
X-List-Received-Date: Fri, 16 Nov 2018 03:36:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 7:22 PM Samuli Piippo <samuli.piippo@qt.io> wrote:
>
> Build nativesdk-cmake and dependency libs without without openssl.
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  .../nativesdk-packagegroup-sdk-host.bbappend              | 1 +
>  recipes-devtools/cmake/cmake_%.bbappend                   | 8 ++++++++
>  recipes-extended/libarchive/libarchive_%.bbappend         | 1 +
>  recipes-support/curl/curl_%.bbappend                      | 2 ++
>  4 files changed, 12 insertions(+)
>  create mode 100644 recipes-devtools/cmake/cmake_%.bbappend
>  create mode 100644 recipes-extended/libarchive/libarchive_%.bbappend
>  create mode 100644 recipes-support/curl/curl_%.bbappend
>
> diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> index ad69b13..9544ffb 100644
> --- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> +++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> @@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 = "\
>      nativesdk-pkgconfig \
>      nativesdk-libtool \
>      nativesdk-qemu \
> +    nativesdk-cmake \

Have you been successful at getting cmake to work properly in MinGW?
I've been working on automated tests for the SDK, and for kicks I
pulled in your changes and tried to write a test for cmake (heavily
borrowed from the cmake/assimp test in oe-core). When I ran the test,
I got the following:

--- snip ---

-- Building for: NMake Makefiles
-- The C compiler identification is GNU 8.2.0
CMake Error at Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/CMakeCCompiler.cmake:2
(set):
  Syntax error in cmake code at

    Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/CMakeCCompiler.cmake:2

  when parsing string

      -m32 -march=i586
--sysroot=Z:\projects\poky\build\tmp\work\QEMU~ELC\CORE~B5D\1~~~~N25.0-R\TEST~Y0Z\\sysroots\i586-poky-linux

  Invalid escape sequence \p
Call Stack (most recent call first):
  CMakeLists.txt:38 (PROJECT)

--- snip ---

It looks like cmake doesn't like the Windows style slashes in CFLAGS.

You can see my test branch at jpew/oeqa in meta-mingw-contrib... it's
still in progress so it might be a bit of work if you want to try it
yourself.

>      "
> diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/cmake/cmake_%.bbappend
> new file mode 100644
> index 0000000..f76cd82
> --- /dev/null
> +++ b/recipes-devtools/cmake/cmake_%.bbappend
> @@ -0,0 +1,8 @@
> +DEPENDS_remove_mingw32 = "ncurses"
> +
> +cmake_do_generate_toolchain_file_append_mingw32() {
> +    cat >> ${WORKDIR}/toolchain.cmake <<EOF
> +set( CMAKE_SYSTEM_NAME Windows )
> +EOF
> +}
> +
> diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recipes-extended/libarchive/libarchive_%.bbappend
> new file mode 100644
> index 0000000..a411b40
> --- /dev/null
> +++ b/recipes-extended/libarchive/libarchive_%.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF_append_mingw32 = " --without-cng"
> diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/curl/curl_%.bbappend
> new file mode 100644
> index 0000000..7865b46
> --- /dev/null
> +++ b/recipes-support/curl/curl_%.bbappend
> @@ -0,0 +1,2 @@
> +PACKAGECONFIG_remove_class-nativesdk_mingw32 = "ssl"
> +RRECOMMENDS_lib${BPN}_remove_mingw32 = "ca-certificates"
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

