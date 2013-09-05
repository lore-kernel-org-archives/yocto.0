Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54DDCE01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 00:41:00 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id g12so1776100oah.20
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 00:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=9wuWXCL2tjxpICpk37qAsqGc+o+XSRtFZmb13C3JGwA=;
	b=sWkrrrOjoo/8gk5ePgCNMPsoTe8HCXinLlESoVl1ByCq/r21EKvnBCXIxx4BIp5Bmb
	q3CF1dHsi6+xNKa6K0+eD1UoA9zgRe81V19A7ScKDFCm6QGb2rSANXnlPRujixOgyNqg
	j8buGwjk1bJExKygJrK+7e9fDKVHhvmQmRUHGFAs+im9SxwAZq1dwbu2cf4twojoLPjX
	8mzyFCjJGSPzjKhhf0ITBIQCnLMBDlUS3droSn2bEoPnpJ8WiRGscsG1zmMDcF6hpikr
	TxUl6nMY6opD2BcMFm53iolv1dPLDbp+FB43757iDQCnxeXPtcANqZ5ZHwrRUNmejQK3
	P2yg==
MIME-Version: 1.0
X-Received: by 10.182.101.198 with SMTP id fi6mr5313594obb.79.1378366859277;
	Thu, 05 Sep 2013 00:40:59 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 5 Sep 2013 00:40:59 -0700 (PDT)
In-Reply-To: <CAFyqS9o+HWcMBBD_=E4Bm-XSO5U0yKmJRtE4RbotiKCdABWO2Q@mail.gmail.com>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
	<CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
	<CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
	<CAFyqS9rQ8vNtCtQO-MYQ2Jbr8xHmH-k1JjS6D__ic6PrOfN5Dg@mail.gmail.com>
	<CAFyqS9o+HWcMBBD_=E4Bm-XSO5U0yKmJRtE4RbotiKCdABWO2Q@mail.gmail.com>
Date: Thu, 5 Sep 2013 09:40:59 +0200
Message-ID: <CAFyqS9rvkdVYnAb2tJdaNaoxav5_5QcPNG0-mxrWN1-qamHcKw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: JC <jc@vtkloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool problem?
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
X-List-Received-Date: Thu, 05 Sep 2013 07:41:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2013 at 6:06 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> On Wed, Sep 4, 2013 at 5:02 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>=
 wrote:
>> On Wed, Sep 4, 2013 at 12:21 PM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m> wrote:
>>> On Wed, Sep 4, 2013 at 12:03 PM, Hans Beck=E9rus <hans.beckerus@gmail.c=
om> wrote:
>>>> On Wed, Sep 4, 2013 at 11:56 AM, Hans Beck=E9rus <hans.beckerus@gmail.=
com> wrote:
>>>>> On Wed, Sep 4, 2013 at 11:36 AM, JC <jc@vtkloud.com> wrote:
>>>>>> On 04/09/2013 11:24, Hans Beck=E9rus wrote:
>>>>>>>
>>>>>>> On Wed, Sep 4, 2013 at 9:53 AM, Hans Beck=E9rus <hans.beckerus@gmai=
l.com>
>>>>>>> wrote:
>>>>>>>>
>>>>>>>> Hi. I recently discovered that our populated SDK can not properly
>>>>>>>> build much at all :(
>>>>>>>> libtool complains about .la files that have been moved and not bei=
ng
>>>>>>>> able to find dito.
>>>>>>>> The rootfs builds fine however. What I did noticed was that in our=
 .la
>>>>>>>> files we get lines like this:
>>>>>>>>
>>>>>>>> dependency_libs=3D' =3D/usr/lib/libxcb.la =3D/usr/lib/libXau.la
>>>>>>>> =3D/usr/lib/libXdmcp.la'
>>>>>>>>
>>>>>>>> Is that '=3D'-sign really supposed to be there? Is that why many b=
uilds
>>>>>>>> fails to properly locate the .la files?
>>>>>>>>
>>>>>>> The '=3D'-sign is still a mystery to me. But it does not seem to ma=
tter
>>>>>>> much.
>>>>>>> If I configure my packages (built from the SDK toolchain) using
>>>>>>>
>>>>>>> '--with-libtool-sysroot=3D/home/toolchain/sysroots/cortexa9-vfp-pok=
y-linux-gnueabi/'
>>>>>>> it works! But should that really be needed? Is the path to be used =
by
>>>>>>> libtool not supposed to be automatically resolved to point at the
>>>>>>> toolchain sysroot in cross-compilation environment?
>>>>>>
>>>>>>
>>>>>> In my case '--with-libtool-sysroot' is correctly resolved by the SDK=
 setup,
>>>>>> but ./configure complains it does not recognize it, so I end up not =
being
>>>>>> able to test generated (dynamically linked) binaries. The common "he=
llo
>>>>>> world" template says it cannot find ld-linux, and indeed it's in the=
 path of
>>>>>> libtool-sysroot.
>>>>>>
>>>>>> Googling it did not helped me to resolve the issue :(
>>>>>>
>>>>> Yes, in my case the script sourced also resolves the path correct to
>>>>> CONFIGURE_FLAGS, but that is not automatically used by a generated
>>>>> configure script is it!? I guess that is why I need to add it manuall=
y
>>>>> each time. You should not to do that, or?
>>>>>
>>>> According to generated 'configure' the option should not be needed.
>>>>
>>>>   --with-libtool-sysroot=3DDIR Search for dependent libraries within D=
IR
>>>>                         (or the compiler's sysroot if not specified).
>>>>
>>>> So, if --with-libtool-sysroot is not set it should pick it up from
>>>> whatever the compiler is using.
>>>> That does not seem to work :(
>>>>
>>> Ah. Is not the problem here that the cross-compiler is broken?
>>>
>>> Configured with:
>>> /home/poky/build/tmp/work-shared/gcc-4.7.2-r20/gcc-4.7.2/configure
>>> --build=3Dx86_64-linux --host=3Dx86_64-pokysdk-linux
>>> --target=3Darm-poky-linux-gnueabi
>>> --prefix=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/u=
sr
>>> --exec_prefix=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-li=
nux/usr
>>> --bindir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/u=
sr/bin/cortexa9-vfp-poky-linux-gnueabi
>>> --sbindir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/=
usr/bin/cortexa9-vfp-poky-linux-gnueabi
>>> --libexecdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/cortexa9-vfp-poky-linux-gnueabi
>>> --datadir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/=
usr/share
>>> --sysconfdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-lin=
ux/etc
>>> --sharedstatedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk=
-linux/com
>>> --localstatedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-=
linux/var
>>> --libdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/u=
sr/lib/cortexa9-vfp-poky-linux-gnueabi
>>> --includedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-lin=
ux/usr/include
>>> --oldincludedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-=
linux/usr/include
>>> --infodir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/=
usr/share/info
>>> --mandir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/u=
sr/share/man
>>> --disable-silent-rules --disable-dependency-tracking
>>> --with-libtool-sysroot=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk=
-pokysdk-linux
>>> --with-gnu-ld --enable-shared --enable-languages=3Dc,c++
>>> --enable-threads=3Dposix --enable-multilib --enable-c99
>>> --enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
>>> --program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
>>> --enable-target-optspace --enable-lto --enable-libssp
>>> --disable-bootstrap --disable-libmudflap --with-system-zlib
>>> --with-linker-hash-style=3Dgnu --enable-linker-build-id --with-ppl=3Dno
>>> --with-cloog=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_glo=
bal
>>> --with-gxx-include-dir=3D/opt/poky-chris/1.4+snapshot/sysroots/cortexa9=
-vfp-poky-linux-gnueabi/usr/include/c++
>>> --with-build-time-tools=3D/home/poky/build/tmp/sysroots/x86_64-linux/us=
r/arm-poky-linux-gnueabi/bin
>>> --with-sysroot=3D/opt/poky-chris/1.4+snapshot/sysroots/cortexa9-vfp-pok=
y-linux-gnueabi
>>> --with-build-sysroot=3D/home/poky/build/tmp/sysroots/zynq-zc706
>>> --disable-libunwind-exceptions --disable-libssp --disable-libgomp
>>> --disable-libmudflap
>>> --with-mpfr=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-li=
nux
>>> --with-mpc=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-lin=
ux
>>> --enable-nls
>>>
>>> There are several hardcoded paths to /opt/...!?
>>> That is not where my toolchain is installed I am afraid :( Have I done
>>> something wrong in my configuration that is causing populate_sdk to
>>> produce a broken toolchain like this?
>>> Also, there are several 'sysroots' pointed to. And one of those is my
>>> actual Yocto build location?
>>> This looks really messed up :(
>>>
>>>
>> Ok. I have done some further tests now and my conclusion is that
>> something is definitely broken in the way the toolchain is prepared.
>> The references to /opt/... in the case above comes due to having the
>> default SDKPATH as set by meta-yocto/conf/distro/poky.conf. Fine. I
>> then changed our distro to override SDKPATH to point to the actual
>> path for which we install the SDK and rebuilt. About an hour later I
>> tried it out just to find that it is still not handling libtool things
>> properly :( I still have to force the use of --with-libtool-sysroot
>> when configuring packages to make the build stage pass without errors!
>> Can someone confirm if this is a bug in libtool, in the way Yocto sets
>> it up, or if I am doing something wrong? As a workaround I guess it is
>> possible to always do "./configure $CONFIGURE_FLAGS <other options>",
>> but surely, this can not be how it was supposed to work?
>>
>> Thanks.
>> Hans
>>
>>
> First of all. I am really sorry for spamming this forum and this
> subject. But I really need to sort this out and I have some new
> information I would like to share. I believe I have found the root
> cause of the problem, at least the one that we have with improper
> resolution of .la files.
> In the generated '<host-target>-libtool' file the variable
> 'lt_sysroot' remains unset unless --with-libtool-sysroot is set to
> something! That I believe is the bug! It should in the case of
> omitting --with-libtool-sysroot be set to the output from e.g. 'gcc
> --print-sysroot'! Or maybe more correctly:
>
>     if test "$GCC" =3D yes; then
>       lt_sysroot=3D`$CC --print-sysroot 2>/dev/null`
>     fi
>
> Also, I now discovered the purpose of prefixing dependency paths in
> .la files with '=3D' ;) It is used to flag the libtool script to replace
> =3D with $lt_sysroot. Never seen that before ;)
>
> Someone that can comment on this? Is this a know bug in our running
> version of Yocto?
> Any clues how this could be fixed otherwise? What is generating the
> actual libtool script?
>
> Build Configuration:
> BB_VERSION        =3D "1.19.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "SUSE-LINUX-11"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "zynq-zc706"
> DISTRO            =3D "poky-chris"
> DISTRO_VERSION    =3D "1.4+snapshot-20130904"
> TUNE_FEATURES     =3D "armv7a vfp cortexa9"
> TARGET_FPU        =3D "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "master:0c0bb02f5104e3856c9d90088e1ece08652cc19f"
> meta-oe           =3D "master:7c292ce28756824b1fa377d516aedd979fa41f19"
>
> Thanks.
> Hans
>
Ok, the problem is in the generated configure script! I saw Khem had a
patch in Yocto to change --with-sysroot to --with-libtool-sysroot, but
there is one more error in the code below

lt_sysroot=3D
case ${with_libtool_sysroot} in #(
 yes)
   if test "$GCC" =3D yes; then
     lt_sysroot=3D`$CC --print-sysroot 2>/dev/null`
   fi
   ;; #(
 /*)
   lt_sysroot=3D`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
   ;; #(
 no|'')
   ;; #(
 *)
   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}=
" >&5
$as_echo "${with_libtool_sysroot}" >&6; }
   as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
   ;;
esac

The yes) and no) switch cases should be swapped! Now if
-with-libtool-sysroot=3Dyes it will pick up lt_sysroot from the
compiler! And not vice versa! This is definitely wrong.
Please advice. Is this something that can be fixed in the scope of
Yocto or must a solution to this come from autotools? Can I patch this
somehow in Yocto? The patch I guess must be in the code that generates
the configure script.

Thanks.
Hans


>>>>>> Jay
>>>>>>
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto

