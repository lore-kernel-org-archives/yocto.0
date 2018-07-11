Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C808E00D0E; Wed, 11 Jul 2018 13:35:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD579E00C99
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 13:35:21 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id y8-v6so17033424uan.3
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 13:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MgJvJn4Z+PXBAtuH5DMp60GAwtvQwUs6Z75XGV846Hc=;
	b=bRcUjbQ9rQWD7b7yLz8AwpnlWmluzJ8+Lwul3zbJgOlq1nF+IrtlzviGtyoOv1nICQ
	uvXHvflkek0dK+Ve02c11VuCklG4pMaOtN9ef1fvgEN81ogFVKhVNitsF6FOOtv8LJip
	S4uD8jKrzQtdp0TPAKd/lBE0FhgOCdf5werXePYgeO2eG/dE5/NXqsr8+CJR86oEzlNj
	Ravw9BRGRcqPMFtYaYxs+p7nKxaorlz2ury09r62fiy0NQaBRg0DP720MZlMG7a79yJ4
	ySCrd+BlhOJhgGqMYoRTh8zurNGb2/vQ9ZPsX/b/P2zEAAb0YiOX0aGenlHfDZ1rPXiJ
	CkXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MgJvJn4Z+PXBAtuH5DMp60GAwtvQwUs6Z75XGV846Hc=;
	b=oIePA8udZF6GFz60RAOHm2CfozAIALhhCfEpe5HeiVQEewrwVSvceDLyN6b5LwPDyd
	XN91uApYsQS/obCG/C0+glTI0J/iq2sliobX3ZFbH4M+q0niJzhF6K0Wpu0aMdLCvy71
	TTHY8AOSvojZLqMrFitXFpVOzcbheBg99PgF9zXX7xIlNkav9sIbquccxHftONFzW3kk
	40jJGkcazgxTbw5NselnEkL+rcA0vM2XrvHR0l6ygED6se8B4l/mzMYHl1S6CrAAoZ6V
	cJptUWOSkDVjCLPCWxGzCdY6DQms4qq83i8OLr26AkCIuD7lLzNmCgJFc0KJwxHb5wIT
	QXKg==
X-Gm-Message-State: AOUpUlHzqyBmpIZQEaQ41M53UEIELFy7WC4n60wbZf5gUF5+c1qKcyZq
	a5eRXD083PmOab7rnbsnbpLMQPsDz6A+7T+DedI=
X-Google-Smtp-Source: AAOMgpes8/gSZAfkStdsasAkdPqsJMr/W1zRKF1at3YdqXiCHocurJ9OAKc68Er+Qudxnpkkt+qXAVj0t2tOHKyHPUs=
X-Received: by 2002:ab0:7296:: with SMTP id
	w22-v6mr110840uao.184.1531341320841; 
	Wed, 11 Jul 2018 13:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
In-Reply-To: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jul 2018 14:34:54 -0600
Message-ID: <CAMKF1soVjuxqEv0YECuAAxcWm7kWpm5k3Yo_ognnJo5eUhaXGQ@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: LLVM: error adding symbols: File in wrong format
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
X-List-Received-Date: Wed, 11 Jul 2018 20:35:22 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Giordon

On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark <kratsg@gmail.com> wrote:
>
> Hi all,
>
> | /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a: error adding symbols: File in wrong format
> | clang-5.0: error: linker command failed with exit code 1 (use -v to see invocation)
> | interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/build.make:95: recipe for target 'interpreter/llvm/src/bin/clang-tblgen' failed
> | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1
> | make[2]: Leaving directory '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/build'
> | CMakeFiles/Makefile2:791: recipe for target 'interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all' failed
> | make[1]: *** [interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all] Error 2
> | make[1]: *** Waiting for unfinished jobs....
>
> Here's the full log: https://gist.github.com/3403addf74b5e902adec93b75fb0e138
>
> Any ideas how to get a more verbose invocation if needed? I suspect the error is due to some pre-built libraries being shipped in this recipe, but I'm not sure what's causing the error in the first place.
>

it seems to be linking with native llvm libraries which might not be intended.

> Note: I am using meta-clang. The recipe I'm using looks like:
>
> SUMMARY = "Numerical data analysis framework (OO)"
> DESCRIPTION = "Object oriented framework for large scale data analysis"
> HOMEPAGE = "http://root.cern.ch"
> LICENSE = "LGPLv2.1"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=5ec773ab82cbea1f17ec5b98e8ce60cf"
> SRC_URI = "https://root.cern.ch/download/root_v${PV}.source.tar.gz"
>
> S = "${WORKDIR}/${BPN}-${PV}"
>
> TOOLCHAIN = "clang"
> #TARGET_CXXFLAGS_append_toolchain-clang = " -stdlib=libc++ "
>
> DEPENDS += "llvm-native libpcre lz4 libx11 libxpm libxft gsl fftw libatomic-ops freetype glew xrootd"
>

it seems you really need llvm for target in dependencies so please
remove llvm-native from DEPENDS
and add clang to it.

> inherit cmake pkgconfig pythonnative
>
>
> do_configure_prepend(){
> export FC=${GFORTRAN}
> }
>
> EXTRA_OECMAKE = "\
>     -Drootfit=ON \
>     -Dminuit2=ON \
>     -Dpython=ON \
>     -Dssl=ON \
>     -Dxrootd=ON \
>     -Dbuiltin_freetype=OFF \
>     -Dbuiltin_llvm=OFF \
>     -Dbuiltin_glew=OFF \
>     -Dastiff=OFF \
>     -Dasimage=OFF \
>     -Dbuiltin_afterimage=OFF \
>     -Dalien=OFF \
>     -Dvdt=OFF \
> "
>
> --
> Giordon Stark
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

