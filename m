Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 568A4E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 03:21:10 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so103767obc.27
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=k8eBi2yBSsTSrylB2kClWOeF/sVfFdDqx50WtdjtrDA=;
	b=qqCS7kYIoynI3Ag7tRkQ9omeIcFFb+YobBj7h5yeClr0Wy4ol3lsV5TXJYbp+SwFj/
	a1SfC2BAZEt4YXxZUIQlvqD+eAbZoYlvFYOuUsWecg7rEX6hYrooSKxOFyL5l+bHSmmM
	Vh3ssFaWGKOz1g8snXXoqXUUZyxnEjXoc2zRL7LLWyiet9PHT6gJlsQ27V92J5NX75qq
	DrdSKbJyrgne7vkmyB5NFn/c9w9f842B35mJNYpMn1Bh3gaNphN2Uyq+4xYryQ3neJ2x
	jNfspCWOJoxRmx6YZ/Ne3ENAG6Xv4MvyW2JaM7mwBe3Ya4SxG1KOFBQJ2HqjerQtGjX8
	+CyA==
MIME-Version: 1.0
X-Received: by 10.182.99.231 with SMTP id et7mr1637433obb.10.1378290070132;
	Wed, 04 Sep 2013 03:21:10 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 4 Sep 2013 03:21:10 -0700 (PDT)
In-Reply-To: <CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
	<CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
Date: Wed, 4 Sep 2013 12:21:10 +0200
Message-ID: <CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
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
X-List-Received-Date: Wed, 04 Sep 2013 10:21:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2013 at 12:03 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Wed, Sep 4, 2013 at 11:56 AM, Hans Beck=E9rus <hans.beckerus@gmail.com=
> wrote:
>> On Wed, Sep 4, 2013 at 11:36 AM, JC <jc@vtkloud.com> wrote:
>>> On 04/09/2013 11:24, Hans Beck=E9rus wrote:
>>>>
>>>> On Wed, Sep 4, 2013 at 9:53 AM, Hans Beck=E9rus <hans.beckerus@gmail.c=
om>
>>>> wrote:
>>>>>
>>>>> Hi. I recently discovered that our populated SDK can not properly
>>>>> build much at all :(
>>>>> libtool complains about .la files that have been moved and not being
>>>>> able to find dito.
>>>>> The rootfs builds fine however. What I did noticed was that in our .l=
a
>>>>> files we get lines like this:
>>>>>
>>>>> dependency_libs=3D' =3D/usr/lib/libxcb.la =3D/usr/lib/libXau.la
>>>>> =3D/usr/lib/libXdmcp.la'
>>>>>
>>>>> Is that '=3D'-sign really supposed to be there? Is that why many buil=
ds
>>>>> fails to properly locate the .la files?
>>>>>
>>>> The '=3D'-sign is still a mystery to me. But it does not seem to matte=
r
>>>> much.
>>>> If I configure my packages (built from the SDK toolchain) using
>>>>
>>>> '--with-libtool-sysroot=3D/home/toolchain/sysroots/cortexa9-vfp-poky-l=
inux-gnueabi/'
>>>> it works! But should that really be needed? Is the path to be used by
>>>> libtool not supposed to be automatically resolved to point at the
>>>> toolchain sysroot in cross-compilation environment?
>>>
>>>
>>> In my case '--with-libtool-sysroot' is correctly resolved by the SDK se=
tup,
>>> but ./configure complains it does not recognize it, so I end up not bei=
ng
>>> able to test generated (dynamically linked) binaries. The common "hello
>>> world" template says it cannot find ld-linux, and indeed it's in the pa=
th of
>>> libtool-sysroot.
>>>
>>> Googling it did not helped me to resolve the issue :(
>>>
>> Yes, in my case the script sourced also resolves the path correct to
>> CONFIGURE_FLAGS, but that is not automatically used by a generated
>> configure script is it!? I guess that is why I need to add it manually
>> each time. You should not to do that, or?
>>
> According to generated 'configure' the option should not be needed.
>
>   --with-libtool-sysroot=3DDIR Search for dependent libraries within DIR
>                         (or the compiler's sysroot if not specified).
>
> So, if --with-libtool-sysroot is not set it should pick it up from
> whatever the compiler is using.
> That does not seem to work :(
>
Ah. Is not the problem here that the cross-compiler is broken?

Configured with:
/home/poky/build/tmp/work-shared/gcc-4.7.2-r20/gcc-4.7.2/configure
--build=3Dx86_64-linux --host=3Dx86_64-pokysdk-linux
--target=3Darm-poky-linux-gnueabi
--prefix=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr
--exec_prefix=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/=
usr
--bindir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/b=
in/cortexa9-vfp-poky-linux-gnueabi
--sbindir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/=
bin/cortexa9-vfp-poky-linux-gnueabi
--libexecdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/u=
sr/libexec/cortexa9-vfp-poky-linux-gnueabi
--datadir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/=
share
--sysconfdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/e=
tc
--sharedstatedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-lin=
ux/com
--localstatedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linu=
x/var
--libdir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/l=
ib/cortexa9-vfp-poky-linux-gnueabi
--includedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/u=
sr/include
--oldincludedir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linu=
x/usr/include
--infodir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/=
share/info
--mandir=3D/opt/poky-chris/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/s=
hare/man
--disable-silent-rules --disable-dependency-tracking
--with-libtool-sysroot=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pok=
ysdk-linux
--with-gnu-ld --enable-shared --enable-languages=3Dc,c++
--enable-threads=3Dposix --enable-multilib --enable-c99
--enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
--program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
--enable-target-optspace --enable-lto --enable-libssp
--disable-bootstrap --disable-libmudflap --with-system-zlib
--with-linker-hash-style=3Dgnu --enable-linker-build-id --with-ppl=3Dno
--with-cloog=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_global
--with-gxx-include-dir=3D/opt/poky-chris/1.4+snapshot/sysroots/cortexa9-vfp=
-poky-linux-gnueabi/usr/include/c++
--with-build-time-tools=3D/home/poky/build/tmp/sysroots/x86_64-linux/usr/ar=
m-poky-linux-gnueabi/bin
--with-sysroot=3D/opt/poky-chris/1.4+snapshot/sysroots/cortexa9-vfp-poky-li=
nux-gnueabi
--with-build-sysroot=3D/home/poky/build/tmp/sysroots/zynq-zc706
--disable-libunwind-exceptions --disable-libssp --disable-libgomp
--disable-libmudflap
--with-mpfr=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux
--with-mpc=3D/home/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux
--enable-nls

There are several hardcoded paths to /opt/...!?
That is not where my toolchain is installed I am afraid :( Have I done
something wrong in my configuration that is causing populate_sdk to
produce a broken toolchain like this?
Also, there are several 'sysroots' pointed to. And one of those is my
actual Yocto build location?
This looks really messed up :(


>>> Jay
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

