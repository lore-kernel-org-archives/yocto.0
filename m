Return-Path: <staticd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB80C433F5
	for <webhook@archiver.kernel.org>; Mon,  3 Jan 2022 21:55:17 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web08.35780.1641246916263420424
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jan 2022 13:55:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MRqzrEAI;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: staticd@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id 196so30490622pfw.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jan 2022 13:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e1HqhtDVWGNVJqab7EUJLbEVlbBZswvaY8LG16mhtMg=;
        b=MRqzrEAIeR6pnQkPOcuCTgBwIoz1RPqNzJ67xBzVGkytMyHlHQcftyCtye+laAJzFG
         Wp2f/uoSPgWAPp4VZoq/gl4iS/wKhmptEOSYEBdJfLZA4frwPsxqytby+aRy2o1LRO2X
         zAHmOQDxhq/1E9UMK83BasDZchCRO3XkGgSInoTI5na8HScCa8Y5LnTrqU+qO5H8IxI8
         W6LL1hXMFeYbEhH2Fl0umQ1KOdDpHEg+1C2tCC51POih3O8r2ntCaSfssOdFHb2pw4q7
         GaTF7zu4y9vLrYSAgNeNz+lXGu5luWu7M4EEdRLo9TzejP0EvBu0Ahf6f4Pt216gscKt
         +3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e1HqhtDVWGNVJqab7EUJLbEVlbBZswvaY8LG16mhtMg=;
        b=pAnQ+HACDYmOScHobhxSK7QGyDhdBKzRDBhHWsObCloZDbU0TizvMMer4nXLcdYtHe
         /FLm4taEA19pco/2JYrhfMag274zcmmOJ27edso9DiSBk3bZJPbB8bIBv5wo9h6x5OrA
         +QSlbLJ4bk/BHjRscFw74KaF1MioWHybAo03Iqp9OY86/A0wM/QpHDP5yQXvZPEZvqfv
         xuROtMoQdfa2nbzt7fG5NdWUM6JR4dGhFWD0/W8faBFPYQL0mjbJns7iQgZVqy+P1omi
         FiH/9PRQeHIbK4qoFxn/FaPlF25ziL3gaTR38FdBGTJviqgHtk7i3G+eq5PXvVFXLIJl
         DtCQ==
X-Gm-Message-State: AOAM530p831FVnd7nz3ZACEB7ZTDcf/n4KuZMvC8NXieEnooCBlxx8mP
	/OfWyfbpTO+T+bhwYeB/4Ls5WjLFKFgwOJZ07UI=
X-Google-Smtp-Source: 
 ABdhPJxmw5Obpnn3pLsnKHuHlEBRte0kbX0N+9o/3wJWY8CmAmkVMyx4scNK/xYjJIj0oUx41Z5lMzPPx9m6D1iNVcM=
X-Received: by 2002:aa7:904e:0:b0:4bc:bdd5:f3d with SMTP id
 n14-20020aa7904e000000b004bcbdd50f3dmr3217836pfo.9.1641246915688; Mon, 03 Jan
 2022 13:55:15 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
 <AM9PR09MB464282949C9AB4859002D0BFA8489@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <16C68A3757A696DC.7129@lists.yoctoproject.org>
 <16C693CC9204E930.9481@lists.yoctoproject.org>
In-Reply-To: <16C693CC9204E930.9481@lists.yoctoproject.org>
From: staticd <staticd@gmail.com>
Date: Mon, 3 Jan 2022 16:55:04 -0500
Message-ID: 
 <CAFC2zY17A-Om6hp0C--MEqp7HU8UAPsmOsgqnnJtV0odLxqzUA@mail.gmail.com>
Subject: Re: [yocto] libquadmath
To: Static D <staticd@gmail.com>
Cc: Konrad Weihmann <kweihmann@outlook.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000065fb5c05d4b493a9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jan 2022 21:55:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55708

--00000000000065fb5c05d4b493a9
Content-Type: text/plain; charset="UTF-8"

I made some progress...

It turns out that libquadmath is failing to build.

When I goto the
`build/tmp/work/...../gcc-runtime/9.2.0-r0/gcc-9.2.0/build.arm-oe-linux-gnueabi.arm-oe-linux-gnueabi/arm-oe-linux-gnueabi/libquadmath`
directory, the only files that are there are:
```
libquadmath  ] ls -l
total 476
-rw-r--r--. 1 2017 oe-builder   4433 Jan  3 16:17 config.h
-rw-r--r--. 1 2017 oe-builder  69297 Jan  3 16:17 config.log
-rwxr-xr-x. 1 2017 oe-builder  77122 Jan  3 16:17 config.status
-rwxr-xr-x. 1 2017 oe-builder 267083 Jan  3 16:17 libtool
-rw-r--r--. 1 2017 oe-builder  57241 Jan  3 16:17 Makefile
-rw-r--r--. 1 2017 oe-builder     23 Jan  3 16:17 stamp-h1
```
In the config.log, there are errors, some of which are expected, but still:
```
libquadmath  ] grep -i error config.log
arm-oe-linux-gnueabi-gcc: error: unrecognized command line option '-V'
arm-oe-linux-gnueabi-gcc: fatal error: no input files
arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
'-qversion'; did you mean '--version'?
arm-oe-linux-gnueabi-gcc: fatal error: no input files
conftest.c:11:10: fatal error: ac_nonexistent.h: No such file or directory
arm-oe-linux-gnueabi-gcc: error: unrecognized command line option '-V'
arm-oe-linux-gnueabi-gcc: fatal error: no input files
arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
'-qversion'; did you mean '--version'?
arm-oe-linux-gnueabi-gcc: fatal error: no input files
conftest.c:28:10: fatal error: ac_nonexistent.h: No such file or directory
configure:12551: arm-oe-linux-gnueabi-gcc  -mthumb -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a9
--sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot
-c  -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot=

 -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot-native=

 -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0=/usr/src/debug/gcc-runtime/9.2.0-r0

 -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0/include=/usr/src/debug/gcc-runtime/9.2.0-r0/libstdc++-v3/../include

 -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0/libiberty=/usr/src/debug/gcc-runtime/9.2.0-r0/libstdc++-v3/../libiberty

 -fdebug-prefix-map=/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/gcc-9.2.0/build.arm-oe-linux-gnueabi.arm-oe-linux-gnueabi=/usr/src/debug/gcc-runtime/9.2.0-r0
    -Werror  conftest.c >&5
glibcxx_cv_system_error10=yes
glibcxx_cv_system_error11=yes
glibcxx_cv_system_error12=yes
glibcxx_cv_system_error13=yes
glibcxx_cv_system_error14=yes
glibcxx_cv_system_error15=yes
glibcxx_cv_system_error16=yes
glibcxx_cv_system_error17=yes
glibcxx_cv_system_error18=yes
glibcxx_cv_system_error19=yes
glibcxx_cv_system_error1=yes
glibcxx_cv_system_error2=yes
glibcxx_cv_system_error3=yes
glibcxx_cv_system_error4=yes
glibcxx_cv_system_error5=yes
glibcxx_cv_system_error6=yes
glibcxx_cv_system_error7=yes
glibcxx_cv_system_error8=yes
glibcxx_cv_system_error9=yes
```
If I check out another library that I expect to get, like, `libitm`, I see:
```
libquadmath  ] ls -trl ../libitm/
total 2872
-rwxr-xr-x. 1 2017 oe-builder  97435 Jan  3 16:17 config.status
-rw-r--r--. 1 2017 oe-builder  47665 Jan  3 16:17 Makefile
drwxr-xr-x. 2 2017 oe-builder     22 Jan  3 16:17 testsuite
-rw-r--r--. 1 2017 oe-builder    162 Jan  3 16:17 libitm.spec
-rw-r--r--. 1 2017 oe-builder   5251 Jan  3 16:17 config.h
-rw-r--r--. 1 2017 oe-builder     23 Jan  3 16:17 stamp-h1
-rwxr-xr-x. 1 2017 oe-builder 274850 Jan  3 16:17 libtool
-rw-r--r--. 1 2017 oe-builder    868 Jan  3 16:17 gstdint.h
-rw-r--r--. 1 2017 oe-builder 119521 Jan  3 16:17 config.log
-rw-r--r--. 1 2017 oe-builder  50080 Jan  3 16:18 alloc_c.o
...
-rw-r--r--. 1 2017 oe-builder    931 Jan  3 16:18 libitm.la
```

Have you seen something like this before?  I am not sure how to fix this...

Any help is greatly appreciated.

On Sun, Jan 2, 2022 at 5:13 PM staticd via lists.yoctoproject.org <staticd=
gmail.com@lists.yoctoproject.org> wrote:

> So, I built the latest poky and created the example recipe with the
> `DEPENDS` from my recipe and indeed, I see `libquadmath.so` in
> `sysroots-components/`.
>
> I am really scratching my head now.  I must be missing something silly
> somewhere...
>
> My build environment is running `zeus`  and the latest `poky` I grabbed is
> `honister`  Perhaps something changed that I am just overlooking somehow.
>
> On Sun, Jan 2, 2022 at 2:18 PM staticd via lists.yoctoproject.org
> <staticd=gmail.com@lists.yoctoproject.org> wrote:
>
>> Thank you, Konrad.
>>
>> I have tried both of the approaches (local.conf and
>> gcc-runtime_%.bbappend/gcc_%.bbappend), still `libquadmath.so` is not being
>> built.
>>
>> I will keep fiddling but I think we are onto something.
>>
>> The interesting thing I found is that `libquadmath.so` IS being built for
>> the nativesdk but NOT when I add `DEPENDS =
>> "virtual/${TARGET_PREFIX}compillerlibs"` to my recipe.
>>
>> Perhaps, because `FORTRAN = ""` is in the gcc_%.bb, maybe that should be
>> something less strict?
>>
>> I might be screwing up my bbappend too...
>>
>> My append is in `meta-mylayer/recipes-devtools/gcc/gcc-runtime_%.bbappend`
>>
>> Which is mapped correctly to $BBFILES n my layers `layer.conf`
>>
>> On Sun, Jan 2, 2022 at 2:07 PM Konrad Weihmann <kweihmann@outlook.com>
>> wrote:
>>
>>> The following I just found in local.conf.sample.extended
>>>
>>> # Enabling FORTRAN
>>> # Note this is not officially supported and is just illustrated here to
>>> # show an example of how it can be done
>>> # You'll also need your fortran recipe to depend on libgfortran
>>> FORTRAN:forcevariable = ",fortran"
>>>
>>> guess that will solve your issue without the need for a bbappend.
>>> Just inject that line via distro or local.conf
>>>
>>> On 02.01.22 18:31, staticd wrote:
>>> > I think to clarify...what I need are these files:
>>> >
>>> > --- snipped from gcc-runtime.inc ---
>>> > ```
>>> > FILES_libquadmath = "${libdir}/libquadmath*.so.*"
>>> > SUMMARY_libquadmath = "GNU quad-precision math library"
>>> > FILES_libquadmath-dev = "\
>>> >      ${libdir}/${TARGET_SYS}/${BINV}/include/quadmath* \
>>> >      ${libdir}/libquadmath*.so \
>>> >      ${libdir}/libquadmath.la <http://libquadmath.la> \
>>> > "
>>> > ```
>>> > ---
>>> > to be in my $STAGING_LIBDIR
>>> >
>>> > So far, I have been unable to figure out how to do that, unfortunately.
>>> >
>>> > On Sun, Jan 2, 2022 at 12:23 PM staticd <staticd@gmail.com
>>> > <mailto:staticd@gmail.com>> wrote:
>>> >
>>> >     Thank you, Michael.
>>> >
>>> >     I have `DEPENDS = "virtual/arm-oe-linux-gnueabi-compilerlibs"`
>>> >
>>> >     and `do_compile[depends] +=
>>> >     "virtual/arm-oe-linux-gnueabi-compilerlibs:do_check"`
>>> >
>>> >     However, libquadmath.so is still not present in
>>> `recipe-sysroot/lib`
>>> >
>>> >     I used the `do_check` task from gcc_runtime but that still isn't
>>> >     providing `libquadmath.so` in my $STAGING_LIBDIR, which is where I
>>> >     need it.
>>> >
>>> >     Many thanks.
>>> >
>>> >     On Sun, Jan 2, 2022 at 12:17 PM Michael Ho <michael.ho@ieee.org
>>> >     <mailto:michael.ho@ieee.org>> wrote:
>>> >
>>> >         Not familiar with Fortran but maybe it helps to know that this
>>> >         is normally handled with the DEPENDS mechanism. When you add
>>> >         other recipes as dependencies to your recipe, the task
>>> >         do_prepare_recipe_sysroot (run before do_compile) will make
>>> hard
>>> >         links to the files from those dependency recipes into that
>>> >         recipe-sysroot directory.
>>> >
>>> >         See:
>>> >
>>> https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-sysroot
>>> >         <
>>> https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-sysroot
>>> >
>>> >
>>> >         Kind regards,
>>> >         Michael
>>> >
>>> >         On Sun, 2 Jan 2022, 6:06 pm staticd, <staticd@gmail.com
>>> >         <mailto:staticd@gmail.com>> wrote:
>>> >
>>> >             okay...I think I have a more interesting question now...
>>> >
>>> >             In the package I am building I have some Fortran code that
>>> >             requires `libquadmath`
>>> >
>>> >             I see that `gcc-runtime` provides the library but I need
>>> the
>>> >             library present in `recipe-sysroot/lib` when my
>>> `do_compile`
>>> >             runs
>>> >
>>> >             Is there a way for me to do that?
>>> >
>>> >             My current approach is to build my image, copy the
>>> >             libraries/includes to my recipe and `install` them in
>>> >             `recipe-sysroot` before `do_compile`
>>> >
>>> >             This doesn't seem like the correct approach but I am not
>>> >             sure how else to do it at this point
>>> >
>>> >             Any help would be greatly appreciated.
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>>
>>
>>
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55707):
> https://lists.yoctoproject.org/g/yocto/message/55707
> Mute This Topic: https://lists.yoctoproject.org/mt/88095036/6660187
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> staticd@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000065fb5c05d4b493a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I made some progress...<div><br></div><div>It turns out th=
at libquadmath is failing to build.</div><div><br></div><div>When I goto th=
e `build/tmp/work/...../gcc-runtime/9.2.0-r0/gcc-9.2.0/build.arm-oe-linux-g=
nueabi.arm-oe-linux-gnueabi/arm-oe-linux-gnueabi/libquadmath` directory, th=
e only files that are there are:</div><div>```<br>libquadmath =C2=A0] ls -l=
<br>total 476<br>-rw-r--r--. 1 2017 oe-builder =C2=A0 4433 Jan =C2=A03 16:1=
7 config.h<br>-rw-r--r--. 1 2017 oe-builder =C2=A069297 Jan =C2=A03 16:17 c=
onfig.log<br>-rwxr-xr-x. 1 2017 oe-builder =C2=A077122 Jan =C2=A03 16:17 co=
nfig.status<br>-rwxr-xr-x. 1 2017 oe-builder 267083 Jan =C2=A03 16:17 libto=
ol<br>-rw-r--r--. 1 2017 oe-builder =C2=A057241 Jan =C2=A03 16:17 Makefile<=
br>-rw-r--r--. 1 2017 oe-builder =C2=A0 =C2=A0 23 Jan =C2=A03 16:17 stamp-h=
1<br>```</div><div>In the config.log, there are errors, some of which are e=
xpected, but still:</div><div>```<br>libquadmath =C2=A0] grep -i error conf=
ig.log <br>arm-oe-linux-gnueabi-gcc: error: unrecognized command line optio=
n &#39;-V&#39;<br>arm-oe-linux-gnueabi-gcc: fatal error: no input files<br>=
arm-oe-linux-gnueabi-gcc: error: unrecognized command line option &#39;-qve=
rsion&#39;; did you mean &#39;--version&#39;?<br>arm-oe-linux-gnueabi-gcc: =
fatal error: no input files<br>conftest.c:11:10: fatal error: ac_nonexisten=
t.h: No such file or directory<br>arm-oe-linux-gnueabi-gcc: error: unrecogn=
ized command line option &#39;-V&#39;<br>arm-oe-linux-gnueabi-gcc: fatal er=
ror: no input files<br>arm-oe-linux-gnueabi-gcc: error: unrecognized comman=
d line option &#39;-qversion&#39;; did you mean &#39;--version&#39;?<br>arm=
-oe-linux-gnueabi-gcc: fatal error: no input files<br>conftest.c:28:10: fat=
al error: ac_nonexistent.h: No such file or directory<br>configure:12551: a=
rm-oe-linux-gnueabi-gcc =C2=A0-mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9 --sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf=
-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot -c =C2=A0-O2 -pi=
pe -g -feliminate-unused-debug-types =C2=A0 =C2=A0 -fdebug-prefix-map=3D/ho=
me/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gcc-r=
untime/9.2.0-r0/recipe-sysroot=3D =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/o=
e-builder/build/tmp-glibc/work/cortexa9t2hf-neon-oe-linux-gnueabi/gcc-runti=
me/9.2.0-r0/recipe-sysroot-native=3D =C2=A0 =C2=A0-fdebug-prefix-map=3D/hom=
e/oe-builder/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0=3D/usr/src/=
debug/gcc-runtime/9.2.0-r0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-build=
er/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0/include=3D/usr/src/de=
bug/gcc-runtime/9.2.0-r0/libstdc++-v3/../include =C2=A0 =C2=A0-fdebug-prefi=
x-map=3D/home/oe-builder/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0=
/libiberty=3D/usr/src/debug/gcc-runtime/9.2.0-r0/libstdc++-v3/../libiberty =
=C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cor=
texa9t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/gcc-9.2.0/build.arm-oe=
-linux-gnueabi.arm-oe-linux-gnueabi=3D/usr/src/debug/gcc-runtime/9.2.0-r0 =
=C2=A0 =C2=A0 -Werror =C2=A0conftest.c &gt;&amp;5<br>glibcxx_cv_system_erro=
r10=3Dyes<br>glibcxx_cv_system_error11=3Dyes<br>glibcxx_cv_system_error12=
=3Dyes<br>glibcxx_cv_system_error13=3Dyes<br>glibcxx_cv_system_error14=3Dye=
s<br>glibcxx_cv_system_error15=3Dyes<br>glibcxx_cv_system_error16=3Dyes<br>=
glibcxx_cv_system_error17=3Dyes<br>glibcxx_cv_system_error18=3Dyes<br>glibc=
xx_cv_system_error19=3Dyes<br>glibcxx_cv_system_error1=3Dyes<br>glibcxx_cv_=
system_error2=3Dyes<br>glibcxx_cv_system_error3=3Dyes<br>glibcxx_cv_system_=
error4=3Dyes<br>glibcxx_cv_system_error5=3Dyes<br>glibcxx_cv_system_error6=
=3Dyes<br>glibcxx_cv_system_error7=3Dyes<br>glibcxx_cv_system_error8=3Dyes<=
br>glibcxx_cv_system_error9=3Dyes<br>```</div><div>If I check out another l=
ibrary that I expect to get, like, `libitm`, I see:</div><div>```<br>libqua=
dmath =C2=A0] ls -trl ../libitm/<br>total 2872<br>-rwxr-xr-x. 1 2017 oe-bui=
lder =C2=A097435 Jan =C2=A03 16:17 config.status<br>-rw-r--r--. 1 2017 oe-b=
uilder =C2=A047665 Jan =C2=A03 16:17 Makefile<br>drwxr-xr-x. 2 2017 oe-buil=
der =C2=A0 =C2=A0 22 Jan =C2=A03 16:17 testsuite<br>-rw-r--r--. 1 2017 oe-b=
uilder =C2=A0 =C2=A0162 Jan =C2=A03 16:17 libitm.spec<br>-rw-r--r--. 1 2017=
 oe-builder =C2=A0 5251 Jan =C2=A03 16:17 config.h<br>-rw-r--r--. 1 2017 oe=
-builder =C2=A0 =C2=A0 23 Jan =C2=A03 16:17 stamp-h1<br>-rwxr-xr-x. 1 2017 =
oe-builder 274850 Jan =C2=A03 16:17 libtool<br>-rw-r--r--. 1 2017 oe-builde=
r =C2=A0 =C2=A0868 Jan =C2=A03 16:17 gstdint.h<br>-rw-r--r--. 1 2017 oe-bui=
lder 119521 Jan =C2=A03 16:17 config.log<br>-rw-r--r--. 1 2017 oe-builder =
=C2=A050080 Jan =C2=A03 16:18 alloc_c.o<br>...<br>-rw-r--r--. 1 2017 oe-bui=
lder =C2=A0 =C2=A0931 Jan =C2=A03 16:18 <a href=3D"http://libitm.la">libitm=
.la</a><br></div><div>```</div><div><br></div><div>Have you seen something =
like this before?=C2=A0 I am not sure how to fix this...</div><div><br></di=
v><div>Any help is greatly appreciated.</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 2, 2022 at 5:13 PM=
 staticd via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.o=
rg</a> &lt;staticd=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gm=
ail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">So, I built the latest poky =
and created the example recipe with the `DEPENDS` from my recipe and indeed=
, I see `libquadmath.so` in `sysroots-components/`.<div><br></div><div>I am=
 really scratching my head now.=C2=A0 I must be missing something silly som=
ewhere...</div><div><br></div><div>My build environment=C2=A0is running `ze=
us`=C2=A0 and the latest `poky` I grabbed is `honister`=C2=A0 Perhaps somet=
hing changed that I am just overlooking somehow.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 2, 2022 =
at 2:18 PM staticd via <a href=3D"http://lists.yoctoproject.org" target=3D"=
_blank">lists.yoctoproject.org</a> &lt;staticd=3D<a href=3D"mailto:gmail.co=
m@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Thank you, Konrad.<div><br></div><div>I have tried both o=
f the approaches (local.conf and gcc-runtime_%.bbappend/gcc_%.bbappend), st=
ill `libquadmath.so` is not being built.</div><div><br></div><div>I will ke=
ep fiddling but I think we are onto something.</div><div><br></div><div>The=
 interesting thing I found is that `libquadmath.so` IS being built for the =
nativesdk but NOT when I add `DEPENDS =3D &quot;virtual/${TARGET_PREFIX}com=
pillerlibs&quot;` to my recipe.</div><div><br></div><div>Perhaps, because `=
FORTRAN =3D &quot;&quot;` is in the gcc_%.bb, maybe that should be somethin=
g less strict?</div><div><br></div><div>I might be screwing up my bbappend =
too...</div><div><br></div><div>My append is in `meta-mylayer/recipes-devto=
ols/gcc/gcc-runtime_%.bbappend`</div><div><br></div><div>Which is mapped co=
rrectly to $BBFILES n my layers `layer.conf`</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 2, 2022 at 2:=
07 PM Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com" target=
=3D"_blank">kweihmann@outlook.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">The following I just found in local.conf.s=
ample.extended<br>
<br>
# Enabling FORTRAN<br>
# Note this is not officially supported and is just illustrated here to<br>
# show an example of how it can be done<br>
# You&#39;ll also need your fortran recipe to depend on libgfortran<br>
FORTRAN:forcevariable =3D &quot;,fortran&quot;<br>
<br>
guess that will solve your issue without the need for a bbappend.<br>
Just inject that line via distro or local.conf<br>
<br>
On 02.01.22 18:31, staticd wrote:<br>
&gt; I think to clarify...what I need are these files:<br>
&gt; <br>
&gt; --- snipped from gcc-runtime.inc ---<br>
&gt; ```<br>
&gt; FILES_libquadmath =3D &quot;${libdir}/libquadmath*.so.*&quot;<br>
&gt; SUMMARY_libquadmath =3D &quot;GNU quad-precision math library&quot;<br=
>
&gt; FILES_libquadmath-dev =3D &quot;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${libdir}/${TARGET_SYS}/${BINV}/include/quadmath* =
\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${libdir}/libquadmath*.so \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${libdir}/<a href=3D"http://libquadmath.la" rel=3D=
"noreferrer" target=3D"_blank">libquadmath.la</a> &lt;<a href=3D"http://lib=
quadmath.la" rel=3D"noreferrer" target=3D"_blank">http://libquadmath.la</a>=
&gt; \<br>
&gt; &quot;<br>
&gt; ```<br>
&gt; ---<br>
&gt; to be in my $STAGING_LIBDIR<br>
&gt; <br>
&gt; So far, I have been unable to figure out how to do that, unfortunately=
.<br>
&gt; <br>
&gt; On Sun, Jan 2, 2022 at 12:23 PM staticd &lt;<a href=3D"mailto:staticd@=
gmail.com" target=3D"_blank">staticd@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:staticd@gmail.com" target=3D"_blank">stat=
icd@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thank you, Michael.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I have `DEPENDS =3D &quot;virtual/arm-oe-linux-gnue=
abi-compilerlibs&quot;`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0and `do_compile[depends] +=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;virtual/arm-oe-linux-gnueabi-compilerlibs:do_=
check&quot;`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0However, libquadmath.so is still not present in `re=
cipe-sysroot/lib`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I used the `do_check` task from gcc_runtime but tha=
t still isn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0providing `libquadmath.so` in my $STAGING_LIBDIR, w=
hich is where I<br>
&gt;=C2=A0 =C2=A0 =C2=A0need it.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Many=C2=A0thanks.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Sun, Jan 2, 2022 at 12:17 PM Michael Ho &lt;<a h=
ref=3D"mailto:michael.ho@ieee.org" target=3D"_blank">michael.ho@ieee.org</a=
><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:michael.ho@ieee.org" t=
arget=3D"_blank">michael.ho@ieee.org</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not familiar with Fortran but maybe i=
t helps to know that this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0is normally handled with the DEPENDS =
mechanism. When you add<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0other recipes as dependencies to your=
 recipe, the task<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_prepare_recipe_sysroot (run before=
 do_compile) will make hard<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0links to the files from those depende=
ncy recipes into that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recipe-sysroot directory.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0See:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://docs.yoctoproject.=
org/singleindex.html#do-prepare-recipe-sysroot" rel=3D"noreferrer" target=
=3D"_blank">https://docs.yoctoproject.org/singleindex.html#do-prepare-recip=
e-sysroot</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://docs.yoctoproj=
ect.org/singleindex.html#do-prepare-recipe-sysroot" rel=3D"noreferrer" targ=
et=3D"_blank">https://docs.yoctoproject.org/singleindex.html#do-prepare-rec=
ipe-sysroot</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Kind regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Michael<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 2 Jan 2022, 6:06 pm staticd, =
&lt;<a href=3D"mailto:staticd@gmail.com" target=3D"_blank">staticd@gmail.co=
m</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:staticd@=
gmail.com" target=3D"_blank">staticd@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0okay...I think I have a=
 more interesting question now...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0In the package I am bui=
lding I have some Fortran code that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0requires `libquadmath`<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I see that `gcc-runtime=
` provides the library but I need the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0library present in `rec=
ipe-sysroot/lib` when my `do_compile`<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0runs<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Is there a way for me t=
o do that?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0My current approach is =
to build my image, copy the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libraries/includes to m=
y recipe and `install` them in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`recipe-sysroot` before=
 `do_compile`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This doesn&#39;t seem l=
ike the correct approach but I am not<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sure how else to do it =
at this point<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Any help would be great=
ly appreciated.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55707): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55707" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55707</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88095036/6660=
187" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88095036/6660187</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:staticd@gmail.com" target=3D"_blank">staticd@gma=
il.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000065fb5c05d4b493a9--

