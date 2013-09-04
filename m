Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9367BE003D2
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 08:02:28 -0700 (PDT)
Received: by mail-oa0-f52.google.com with SMTP id f4so530159oah.39
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 08:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=T7Au2aoS3vuOg5CPPGBGP8amrYv+he0jvo67sVEA/cA=;
	b=01llF+fGiQgJ7MWsKL9A2X3mFx75VfcTpJ/mLyooDWR6TjObgQGrZVWp4zW4beVQVQ
	1G+MNZBIahX8e0MrSKo5WECjfQDRi9MDZOoide0KmNtTOfdq3gxuRyX0U98C5v8v08Om
	RCChSU9geZRxweTXYM2Kz2gwYwOVszbyHhSGUFNqwhGUg3ZVQXe4HWQmP0vfSW7at1dp
	XD9SRx3C4Soy2dGuPuH7v8DyoIbDRY/O5M84eY3tfqTz2pJtHI5HDNY9bzVovvW22Uml
	5P0xkSw9agqP/qJM1Rpyaua/2ySKFpa27XzyK/zJifacOBFrzJQ2KFPY9g4pcyFowKTe
	GoTw==
MIME-Version: 1.0
X-Received: by 10.60.76.72 with SMTP id i8mr2531363oew.11.1378306947844; Wed,
	04 Sep 2013 08:02:27 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 4 Sep 2013 08:02:27 -0700 (PDT)
In-Reply-To: <CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
	<CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
	<CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
Date: Wed, 4 Sep 2013 17:02:27 +0200
Message-ID: <CAFyqS9rQ8vNtCtQO-MYQ2Jbr8xHmH-k1JjS6D__ic6PrOfN5Dg@mail.gmail.com>
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
X-List-Received-Date: Wed, 04 Sep 2013 15:02:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2013 at 12:21 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Wed, Sep 4, 2013 at 12:03 PM, Hans Beck=E9rus <hans.beckerus@gmail.com=
> wrote:
>> On Wed, Sep 4, 2013 at 11:56 AM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m> wrote:
>>> On Wed, Sep 4, 2013 at 11:36 AM, JC <jc@vtkloud.com> wrote:
>>>> On 04/09/2013 11:24, Hans Beck=E9rus wrote:
>>>>>
>>>>> On Wed, Sep 4, 2013 at 9:53 AM, Hans Beck=E9rus <hans.beckerus@gmail.=
com>
>>>>> wrote:
>>>>>>
>>>>>> Hi. I recently discovered that our populated SDK can not properly
>>>>>> build much at all :(
>>>>>> libtool complains about .la files that have been moved and not being
>>>>>> able to find dito.
>>>>>> The rootfs builds fine however. What I did noticed was that in our .=
la
>>>>>> files we get lines like this:
>>>>>>
>>>>>> dependency_libs=3D' =3D/usr/lib/libxcb.la =3D/usr/lib/libXau.la
>>>>>> =3D/usr/lib/libXdmcp.la'
>>>>>>
>>>>>> Is that '=3D'-sign really supposed to be there? Is that why many bui=
lds
>>>>>> fails to properly locate the .la files?
>>>>>>
>>>>> The '=3D'-sign is still a mystery to me. But it does not seem to matt=
er
>>>>> much.
>>>>> If I configure my packages (built from the SDK toolchain) using
>>>>>
>>>>> '--with-libtool-sysroot=3D/home/toolchain/sysroots/cortexa9-vfp-poky-=
linux-gnueabi/'
>>>>> it works! But should that really be needed? Is the path to be used by
>>>>> libtool not supposed to be automatically resolved to point at the
>>>>> toolchain sysroot in cross-compilation environment?
>>>>
>>>>
>>>> In my case '--with-libtool-sysroot' is correctly resolved by the SDK s=
etup,
>>>> but ./configure complains it does not recognize it, so I end up not be=
ing
>>>> able to test generated (dynamically linked) binaries. The common "hell=
o
>>>> world" template says it cannot find ld-linux, and indeed it's in the p=
ath of
>>>> libtool-sysroot.
>>>>
>>>> Googling it did not helped me to resolve the issue :(
>>>>
>>> Yes, in my case the script sourced also resolves the path correct to
>>> CONFIGURE_FLAGS, but that is not automatically used by a generated
>>> configure script is it!? I guess that is why I need to add it manually
>>> each time. You should not to do that, or?
>>>
>> According to generated 'configure' the option should not be needed.
>>
>>   --with-libtool-sysroot=3DDIR Search for dependent libraries within DIR
>>                         (or the compiler's sysroot if not specified).
>>
>> So, if --with-libtool-sysroot is not set it should pick it up from
>> whatever the compiler is using.
>> That does not seem to work :(
>>
> Ah. Is not the problem here that the cross-compiler is broken?
>
> Configured with:
> /home/poky/build/tmp/work-shared/gcc-4.7.2-r20/gcc-4.7.2/configure
> --build=3Dx86_64-linux --host=3Dx86_64-pokysdk-linux
> --target=3Darm-poky-linux-gnueabi
> --prefix=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr
> --exec_prefix=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linu=
x/usr
> --bindir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr=
/bin/cortexa9-vfp-poky-linux-gnueabi
> --sbindir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/us=
r/bin/cortexa9-vfp-poky-linux-gnueabi
> --libexecdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux=
/usr/libexec/cortexa9-vfp-poky-linux-gnueabi
> --datadir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/us=
r/share
> --sysconfdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux=
/etc
> --sharedstatedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-l=
inux/com
> --localstatedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-li=
nux/var
> --libdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr=
/lib/cortexa9-vfp-poky-linux-gnueabi
> --includedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux=
/usr/include
> --oldincludedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-li=
nux/usr/include
> --infodir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/us=
r/share/info
> --mandir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr=
/share/man
> --disable-silent-rules --disable-dependency-tracking
> --with-libtool-sysroot=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-p=
okysdk-linux
> --with-gnu-ld --enable-shared --enable-languages=3Dc,c++
> --enable-threads=3Dposix --enable-multilib --enable-c99
> --enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
> --program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
> --enable-target-optspace --enable-lto --enable-libssp
> --disable-bootstrap --disable-libmudflap --with-system-zlib
> --with-linker-hash-style=3Dgnu --enable-linker-build-id --with-ppl=3Dno
> --with-cloog=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_globa=
l
> --with-gxx-include-dir=3D/opt/poky-chris/1.4+snapshot/sysroots/cortexa9-v=
fp-poky-linux-gnueabi/usr/include/c++
> --with-build-time-tools=3D/home/poky/build/tmp/sysroots/x86_64-linux/usr/=
arm-poky-linux-gnueabi/bin
> --with-sysroot=3D/opt/poky-chris/1.4+snapshot/sysroots/cortexa9-vfp-poky-=
linux-gnueabi
> --with-build-sysroot=3D/home/poky/build/tmp/sysroots/zynq-zc706
> --disable-libunwind-exceptions --disable-libssp --disable-libgomp
> --disable-libmudflap
> --with-mpfr=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linu=
x
> --with-mpc=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux
> --enable-nls
>
> There are several hardcoded paths to /opt/...!?
> That is not where my toolchain is installed I am afraid :( Have I done
> something wrong in my configuration that is causing populate_sdk to
> produce a broken toolchain like this?
> Also, there are several 'sysroots' pointed to. And one of those is my
> actual Yocto build location?
> This looks really messed up :(
>
>
Ok. I have done some further tests now and my conclusion is that
something is definitely broken in the way the toolchain is prepared.
The references to /opt/... in the case above comes due to having the
default SDKPATH as set by meta-yocto/conf/distro/poky.conf. Fine. I
then changed our distro to override SDKPATH to point to the actual
path for which we install the SDK and rebuilt. About an hour later I
tried it out just to find that it is still not handling libtool things
properly :( I still have to force the use of --with-libtool-sysroot
when configuring packages to make the build stage pass without errors!
Can someone confirm if this is a bug in libtool, in the way Yocto sets
it up, or if I am doing something wrong? As a workaround I guess it is
possible to always do "./configure $CONFIGURE_FLAGS <other options>",
but surely, this can not be how it was supposed to work?

Thanks.
Hans


>>>> Jay
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto

