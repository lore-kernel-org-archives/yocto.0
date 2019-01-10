Return-Path: <sergio.paracuellos@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03878E00C5F; Thu, 10 Jan 2019 05:28:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sergio.paracuellos[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8387E008F1
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 05:28:10 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id u16so9895592otk.8
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 05:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dCivjOWAX8Keofk/uABZ4bxE9IsMKPjW0xPU34z16Q4=;
	b=qmhgF3sTIgMxFMJjqamGqOKulWd5KNaEr7f7FBVMVkIxkoxT/EktuHn0oP7+pIhSwt
	/C1VyAKmRJ5VBQf2vh4G0+tcdtPtQzPTICp0JZXV8AE4XkTFezZVY0qEWXfSywvl+XgV
	DSgtzR5/fpvEMDzVU2sqjd56JBpWmyd8S6KLGL2+4+dJCPF2VFMv9NFVa2FgEEafCBho
	JkZp3I2JBFqoz2FW3fnOvA8L6LsZHpTGyN5BFadGKqnM7FuxuEMYoQyaA7f4qxG8y38D
	ACQl5iLjjpv9Za32QYBRJM+vaavu1n5wWP52nYCbiRoOABuSVdi46yrrKkHKoSpqQpkb
	Lpqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dCivjOWAX8Keofk/uABZ4bxE9IsMKPjW0xPU34z16Q4=;
	b=S9TnO2Emhc/R3WFnxwEONDHvTmaRdtPrzur33E+CUaan0v4S0lszBs2soIXVWaNbf7
	eotks3P6KGoG+zmh5hkVvytiG33DBgUsKrx/k6uXSF/G+0vyXUJ1lVAKW/Ld+lL+6gR8
	vwGHHvDCKiWu7rLPlxyC78JUKU6uOB+yXFQsZX/LcnAS/eYofXxxA2UypI3B4HgVTizL
	x4amP6Pi4xxzrudbJxYRiOHXxx2xU4zzkKb/r1cEacDghNUwcM5bwGHdltGndIzOYFRD
	6RQJT3Kkcc5iQ6XA6qzCCI2x4sc2zTtDm/7F3BnAIcs/Sr85SZ8HjuYZ1uQaXDJRdDtf
	urSg==
X-Gm-Message-State: AJcUukcSKsZLi/Ow1XOjZPS5mgQJrbpB+q1cMixhtV/RquITlho4M4eA
	lHzWPcSHqBvKGJMCZrJfKlcg8PSGqIsGicFpa04=
X-Google-Smtp-Source: ALg8bN5RcwUZE1B0zyj1e5PAkh64XJHPmw93wz2zgSZjr3RcEl72CKaFf53h/0ktumjQC9WNbcZfzMJdy0OgAAtU+bU=
X-Received: by 2002:a9d:2ae2:: with SMTP id e89mr7098451otb.290.1547126889813; 
	Thu, 10 Jan 2019 05:28:09 -0800 (PST)
MIME-Version: 1.0
References: <CAMhs-H9iE3-aajmgbJHxKk0=dA0xkkJZjER06jjdCuq_0=PypA@mail.gmail.com>
In-Reply-To: <CAMhs-H9iE3-aajmgbJHxKk0=dA0xkkJZjER06jjdCuq_0=PypA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 10 Jan 2019 14:27:58 +0100
Message-ID: <CAMhs-H_HoneeQYsWf2xq_9yaxoGZ34uLBGT7hjBg1WsMzfhXhQ@mail.gmail.com>
To: akuster808@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Unable to cross compile libgfortran for arm64
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
X-List-Received-Date: Thu, 10 Jan 2019 13:28:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 9, 2019 at 8:17 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi all,
>
> I am trying to compile a complete system with fortran support using
> yocto and I am having problems cross compiling libgfortran. The target
> architecture is arm64 because the system will run in a xilinx mpsoc
> based board. I need fortran support to compile lapack, openblas, scipy
> and other python stuff that seems to need them. The yocto branch I am
> using is the stable 'sumo'. So I do the following for enable fortran
> support:
>
> 1) Add to my local.conf the following line:
> FORTRAN_forcevariable = ",fortran"
> 2) Add a bbappend file for recipes-devtools/gcc/gcc-runtime_7.3.bb with:
> RUNTIMETARGET += "libgfortran"

It seems this RUNTIMETARGET not needed anymore since libgfortran has
now its own recipe.
Setting FORTRAN_forcevariable = ",fortran" in local.conf and adding to the image
the following:
...
FORTRAN_TOOLS = " \
    gfortran \
    gfortran-symlinks \
    libgfortran \
    libgfortran-dev \
 "
...
IMAGE_INSTALL += " \
    ...
    ${FORTRAN_TOOLS} \
    ...
 "

seems to work as it is without any patches. Sorry for the noise.

Best regards,
    Sergio Paracuellos

>
> With the branch as it is when gcc-runtime is being build I end up with
> an error because libbacktrace headers can't be found so I have to
> apply the following PATCH to solve this first issue:
>
> diff -Naur gcc-7.3.0/libgfortran/Makefile.in
> gcc-7.3.0.modif/libgfortran/Makefile.in
> --- gcc-7.3.0/libgfortran/Makefile.in 2018-01-25 09:17:54.059232055 +0100
> +++ gcc-7.3.0.modif/libgfortran/Makefile.in 2019-01-08 12:42:00.583138367 +0100
> @@ -582,7 +582,7 @@
>  toolexeclib_DATA = libgfortran.spec
>  libgfortran_la_LINK = $(LINK) $(libgfortran_la_LDFLAGS)
>  libgfortran_la_LDFLAGS = -version-info `grep -v '^\#'
> $(srcdir)/libtool-version` \
> - $(LTLDFLAGS) $(LIBQUADLIB) ../libbacktrace/libbacktrace.la \
> + $(LTLDFLAGS) $(LIBQUADLIB) ../../libbacktrace/libbacktrace.la \
>   $(HWCAP_LDFLAGS) \
>   -lm $(extra_ldflags_libgfortran) \
>   $(version_arg) -Wc,-shared-libgcc
> @@ -603,7 +603,7 @@
>        -I$(MULTIBUILDTOP)../libgcc \
>        -I$(srcdir)/$(MULTISRCTOP)../libbacktrace \
>        -I$(MULTIBUILDTOP)../libbacktrace \
> -      -I../libbacktrace
> +      -I../../libbacktrace
>
> But then I get the following error:
>
> | /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in
> generic ELF (EM: 62)
> | /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in
> generic ELF (EM: 62)
> | /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in
> generic ELF (EM: 62)
> | ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): error adding
> symbols: File in wrong format
> | collect2: error: ld returned 1 exit status
> | Makefile:1364: recipe for target 'libgfortran.la' failed
> | make[1]: *** [libgfortran.la] Error 1
> | make[1]: Leaving directory
> '/home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.aarch64-poky-linux.aarch64-poky-linux/aarch64-poky-linux/libgfortran'
> | Makefile:1242: recipe for target 'all' failed
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/temp/log.do_compile.24547)
> ERROR: Task (/home/sergio/YOCTO/workspace/poky/meta/recipes-devtools/gcc/gcc-runtime_7.3.bb:do_compile)
> failed with exit code '1'
>
> So It seems that libbacktrace is always built for my host architecture
> instead of for arm64 bits...
> Is this a known problem? Am I doing something wrong?
>
> Thanks in advance for your time.
>
> Best regards,
>     Sergio Paracuellos
>
> PD: I updated this info also in a bug related here which seems to be
> fixed https://bugzilla.yoctoproject.org/show_bug.cgi?id=12394

