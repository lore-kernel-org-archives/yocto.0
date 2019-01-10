Return-Path: <sergio.paracuellos@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D59E00C77; Thu, 10 Jan 2019 02:39:15 -0800 (PST)
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
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B3C1E008CE
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 02:39:15 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id t5so9527319otk.1
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 02:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Vrz/5NAk2A6FPqRXPBTvEZS74XpyPoEjo0Zzw8h1nP4=;
	b=JXWV/2rmYveXbO20KM489WWlAr+C1PaTugbvkacPw1lJHYEwuXGF8mpSQwRgNmuSCW
	MKzUhFcrJ5B/jpAgJ7OKpq/dgN3H3RbUkODLt0XDbdbTdWU+4cqiSQd0Hg8The0DkQv/
	UxRadoB3H4hf+JGuDdecnwLjRGpTKlyytFw4g1AfYuboQoQeSCHdqtZktqldmI1YMikl
	CV2pU3yWTjffnjmR29lnn/MATH4wgZy79WK00mYAHxfGZIpiTdzs4e7YxigLLDI5iIsT
	RvIC0MU45UhioJDaMWdINrG2oqgMQWvkPEQRkxYY0m9Zk9XRxv56bNA6bh2gRZBMHjDr
	Ml7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Vrz/5NAk2A6FPqRXPBTvEZS74XpyPoEjo0Zzw8h1nP4=;
	b=tnc5M8EXtQBjDeaip9wZCyFWfRZ8MXGzl4D4CFgo2ovMi/JeBwwMigwoR5eiOiumST
	35om5GYFEwBEyhcxscARkJZOgc1fWVh5jBSKIqIW5VNRoCHy5uLvyRz7sM77qmIJ15zq
	68xDOkS3P2jrwdcbs8Kpiz9WPgvYcSVTu1+aqk1NmumfSPoSSwZJcI0qpai5/lewMozg
	iBEQYHSouwNTZhNUnMvYh7wNmilM75cXd8Rly2lqkUQOO+OC1f7x5J+aKk1Gp5FELclr
	EvK60iiO4AzVnmsOtBQVkLX/HH5MuReP//9J3awjHMVdY1h+7aTbxTXMcCNSdkQC7STd
	3fJw==
X-Gm-Message-State: AJcUuke/Amz6JJAsZ7tUxIO4a0TVDaz6D71EsXB4jWJp1QcqwEHkHw0Y
	cA5ZRzzmTrQlv/t8SxoPPVyUW/6H9v1pPUvnN0g=
X-Google-Smtp-Source: ALg8bN7mSHiOhZv7I2cCmkNG3C+6JoNG89PVc6RwrcpFHMUniVc3sInJbV7As0K/ojgYRdK90BzVXNe2IKH/Czq+/MI=
X-Received: by 2002:a9d:1f3:: with SMTP id e106mr6112866ote.369.1547116754505; 
	Thu, 10 Jan 2019 02:39:14 -0800 (PST)
MIME-Version: 1.0
References: <CAMhs-H9iE3-aajmgbJHxKk0=dA0xkkJZjER06jjdCuq_0=PypA@mail.gmail.com>
In-Reply-To: <CAMhs-H9iE3-aajmgbJHxKk0=dA0xkkJZjER06jjdCuq_0=PypA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 10 Jan 2019 11:38:57 +0100
Message-ID: <CAMhs-H8rYqx+-WMu97j9jL5dN7DradzUsKcVDswx2EUPm4gVeQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 Jan 2019 10:39:16 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

A bit more info about this.

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

If instead of this patch I hardcode paths doing something like the
following it seems libgfortran compiles.

diff -Naur gcc-7.3.0/libgfortran/Makefile.am
gcc-7.3.0.modif/libgfortran/Makefile.am
--- gcc-7.3.0/libgfortran/Makefile.am    2017-01-17 10:38:48.048122000 +0100
+++ gcc-7.3.0.modif/libgfortran/Makefile.am    2019-01-10
11:30:55.597424246 +0100
@@ -37,7 +37,7 @@
 toolexeclib_DATA = libgfortran.spec
 libgfortran_la_LINK = $(LINK) $(libgfortran_la_LDFLAGS)
 libgfortran_la_LDFLAGS = -version-info `grep -v '^\#'
$(srcdir)/libtool-version` \
-    $(LTLDFLAGS) $(LIBQUADLIB) ../libbacktrace/libbacktrace.la \
+    $(LTLDFLAGS) $(LIBQUADLIB)
/home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc/7.3.0-r0/gcc-7.3.0/build.aarch64-poky-linux.aarch64-poky-linux/libbacktrace/libbacktrace.la
\
     $(HWCAP_LDFLAGS) \
     -lm $(extra_ldflags_libgfortran) \
     $(version_arg) -Wc,-shared-libgcc
@@ -64,7 +64,7 @@
           -I$(MULTIBUILDTOP)../libgcc \
           -I$(srcdir)/$(MULTISRCTOP)../libbacktrace \
           -I$(MULTIBUILDTOP)../libbacktrace \
-          -I../libbacktrace
+          -I../../libbacktrace

 # Fortran rules for complex multiplication and division
 AM_CFLAGS += -fcx-fortran-rules
diff -Naur gcc-7.3.0/libgfortran/Makefile.in
gcc-7.3.0.modif/libgfortran/Makefile.in
--- gcc-7.3.0/libgfortran/Makefile.in    2018-01-25 09:17:54.059232055 +0100
+++ gcc-7.3.0.modif/libgfortran/Makefile.in    2019-01-10
11:31:11.089394763 +0100
@@ -582,7 +582,7 @@
 toolexeclib_DATA = libgfortran.spec
 libgfortran_la_LINK = $(LINK) $(libgfortran_la_LDFLAGS)
 libgfortran_la_LDFLAGS = -version-info `grep -v '^\#'
$(srcdir)/libtool-version` \
-    $(LTLDFLAGS) $(LIBQUADLIB) ../libbacktrace/libbacktrace.la \
+    $(LTLDFLAGS) $(LIBQUADLIB)
/home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc/7.3.0-r0/gcc-7.3.0/build.aarch64-poky-linux.aarch64-poky-linux/libbacktrace/libbacktrace.la
\
     $(HWCAP_LDFLAGS) \
     -lm $(extra_ldflags_libgfortran) \
     $(version_arg) -Wc,-shared-libgcc
@@ -603,7 +603,7 @@
           -I$(MULTIBUILDTOP)../libgcc \
           -I$(srcdir)/$(MULTISRCTOP)../libbacktrace \
           -I$(MULTIBUILDTOP)../libbacktrace \
-          -I../libbacktrace
+          -I../../libbacktrace

 gfor_io_src = io/size_from_kind.c $(am__append_2)
 gfor_io_headers = \

But task do_package gets QA warnings:

ERROR: gcc-runtime-7.3.0-r0 do_package: QA Issue: gcc-runtime:
Files/directories were installed but not shipped in any package:
  /usr/lib/libgfortran.spec
  /usr/lib/libgfortran.a
  /usr/lib/libgfortran.so.4.0.0
  /usr/lib/libgfortran.so
  /usr/lib/libgfortran.so.4
  /usr/lib/gcc/aarch64-poky-linux/7.3.0/libcaf_single.a
  /usr/lib/gcc/aarch64-poky-linux/7.3.0/finclude
  /usr/lib/gcc/aarch64-poky-linux/7.3.0/finclude/ieee_exceptions.mod
  /usr/lib/gcc/aarch64-poky-linux/7.3.0/finclude/ieee_arithmetic.mod
  /usr/lib/gcc/aarch64-poky-linux/7.3.0/finclude/ieee_features.mod
Please set FILES such that these items are packaged. Alternatively if
they are unneeded, avoid installing them or delete them within
do_install.
gcc-runtime: 10 installed and not shipped files. [installed-vs-shipped]
ERROR: gcc-runtime-7.3.0-r0 do_package: Fatal QA errors found, failing task.
ERROR: gcc-runtime-7.3.0-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in:
/home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/temp/log.do_package.12772
ERROR: Task (/home/sergio/YOCTO/workspace/poky/meta/recipes-devtools/gcc/gcc-runtime_7.3.bb:do_package)
failed with exit code '1'

IS there a clean way of resolv properly all of this? I mean, the
hardcoded PATHS and all of this QA issues.  I don't have problems to
send PATCHES if neccessary.

Thanks in advance.

Best regards,
    Sergio Paracuellos

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

