Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BDEBE00BEB; Fri,  7 Oct 2016 00:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FC60E00A64
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 00:58:17 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id p80so2253055lfp.1
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 00:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=UOypvPjGla1Q8mKHOugOevZoQj49Jzv+JB6jh0rLWVU=;
	b=iwr5ZlTa42IFFjvDeiDrCajywuvmPWLWRqFRA+EXj7zybTeLbre3QcOq33Tm7iyMhs
	bWnzbJ4ztYs/Zo4LSE4lwnnYi4qLV04A5gVlvBZgtCZBhlOieI+oZSngTkSZ+5vb42sn
	RBn0r5s+RuioiyE7ccFIG7ZzD5ht7JSnynaAW5r2yYXS1Qgx8cdJt0EWoNVnCGcj9bfg
	ZCEV43F/7eAD2pd4rgAGw+ZhYX0TuB0gOIyq3GlGBU6cbnqiz99RgADWsp+fb3xVbd6q
	y189bl21Qe0V1mhEE13MKh6nJA9za3WSLbMzJ5gODjEL7crfSVTBAoWD4mIVIFZC8GIN
	x+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=UOypvPjGla1Q8mKHOugOevZoQj49Jzv+JB6jh0rLWVU=;
	b=N+wB/6C1e+kNlTyVhXILf6Su3kE5AGsUgEXNnv/AzZN67BS/Y39p+P/yKISRrGY1rg
	5bt6FWky5LSoXiaPuD+KfvSg3AZH+HXCdxZhbrF87DMFRq4NKtpCyXyzLOP4BRZpsvaB
	hon5tNqMqxJ8a84xmy8kC06wazi4Jz6ODEpmQUzAg7RsRkB5FwEPH4WL1F+76qWcqvL5
	6gw2/N8BI/LaQ1/MMFEorF4DsumDxzapF1ZFkrf3chQC+orG/fc/3a80hciI/MkEDyCS
	GRTUP2dEAbn5Qnlvi/tCawcqRI0FxqGA3fFItMlmoCnY88WSU5PH6hTrNm/1ZtUNTcM7
	0+8g==
X-Gm-Message-State: AA6/9RlKKGysO2Brbw1AL7WjHORzOr0lCJ1AvD+Wcq3cH9co5PH+Q2WAJgcWrIBs5+B/NtL3YuvvMtUutLAyIQ==
X-Received: by 10.25.99.4 with SMTP id x4mr3065262lfb.128.1475827096565; Fri,
	07 Oct 2016 00:58:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.1.18 with HTTP; Fri, 7 Oct 2016 00:58:15 -0700 (PDT)
In-Reply-To: <CABatt_w8ZWSftBqwpfNLHGxNCdWDfocoR0Ao-0n=jWwECh8QgQ@mail.gmail.com>
References: <CABatt_xfx-PXerUpGwk0Ru+wEvLfEgSfY4J9=+qqUg4XjvmFwQ@mail.gmail.com>
	<CABatt_wz7Xrtfd-diTYc+0q9rXcSNJXVK3f5LgmvNN5DMw0FCw@mail.gmail.com>
	<CBF86C33-C5DF-43AD-BC09-7A1D5BD5AD52@gmail.com>
	<CABatt_w8ZWSftBqwpfNLHGxNCdWDfocoR0Ao-0n=jWwECh8QgQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Fri, 7 Oct 2016 08:58:15 +0100
Message-ID: <CABatt_z5wfmK74g9Qz9JHnctHk-DUqTgtFBXdqqyA3RnGX5UYg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: SDK Problems for SuperH 4
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
X-List-Received-Date: Fri, 07 Oct 2016 07:58:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 7, 2016 at 8:46 AM, Martin Townsend <mtownsend1973@gmail.com> w=
rote:
> On Fri, Oct 7, 2016 at 5:32 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Oct 6, 2016, at 12:09 PM, Martin Townsend <mtownsend1973@gmail.com> =
wrote:
>>>
>>> On Thu, Oct 6, 2016 at 7:57 PM, Martin Townsend <mtownsend1973@gmail.co=
m> wrote:
>>>> Hi,
>>>>
>>>> We have a poky sato distributions successfully built and running for
>>>> our SuperH 4 processor board.  The problem is the SDK that is built
>>>> when using -cpopulate_sdk doesn't.
>>>>
>>>> The simple Makefile:
>>>> hellomake: HelloWorld.c
>>>> $(CC) -o HelloWorld HelloWorld.c
>>>
>>> Hit send before I had chance to finish :)
>>>
>>> ignore the missing tab but when trying to compile (after sourcing the
>>> SDK environment) I get
>>> sh4-poky-linux-gcc  -ml -m4
>>> --sysroot=3D/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux -o HelloWorld
>>> HelloWorld.o
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find crt1.o: No such file or directory
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find crti.o: No such file or directory
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find crtbegin.o: No such file or directory
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find -lgcc
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find -lgcc_s
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find -lc
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find -lgcc
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find -lgcc_s
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find crtend.o: No such file or directory
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/real-ld:
>>> cannot find crtn.o: No such file or directory
>>>
>>> So I tried the compiler and sysroot from the build
>>> CC=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/x86_64-linux/us=
r/bin/sh4-poky-linux/sh4-poky-linux-gcc
>>> SYSROOT=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/sh7760
>>>
>>> hellomake: HelloWorld.c
>>> $(CC) --sysroot=3D$(SYSROOT) -o HelloWorld HelloWorld.c
>>>
>>> and it compiles fine.
>>>
>>> So I ran $CC -print-search-dirs
>>> install: /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-p=
oky-linux/gcc/sh4-poky-linux/4.9.3/
>>> programs: =3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libex=
ec/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86=
_64-pokysdk-linux/usr/libexec/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt=
/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux/gcc=
/sh4-poky-linux/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/s=
h4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-=
pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/:/opt/sdk/vms/2.0.2=
/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.=
9.3/../../../../../sh4-poky-linux/bin/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.=
0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux=
/4.9.3/../../../../../sh4-poky-linux/bin/
>>> libraries: =3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/=
sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64=
-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../=
../sh4-poky-linux/lib/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86=
_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../=
../../sh4-poky-linux/lib/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib=
/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/:/=
opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3/:=
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/
>>>
>>> Then I checked that these files exist:
>>> martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-lin=
ux$
>>> find $SDKTARGETSYSROOT -name "crt*"
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crtn.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crti.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crt1.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3=
/crtendS.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3=
/crtend.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3=
/crtbeginT.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3=
/crtbeginS.o
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3=
/crtbegin.o
>>>
>>> Putting the library search directories on a separate line
>>> martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-lin=
ux$
>>> $CC -print-search-dirs | grep "^libraries:" | tr ':' '\n'
>>> libraries
>>> =3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-li=
nux/gcc/sh4-poky-linux/4.9.3/
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/sh4-poky-linux/=
4.9.3/
>>> /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4-poky-linux/4.9.3/
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.=
9.3/
>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/
>>>
>>> So it looks like there is a spurious m4 is the library path.  Anyone
>>> know why this has happened and how I can fix it before I wade into the
>>> populate_sdk task.
>>>
>>
>> Can you pass --disable-multilib to gcc cross canadian configure options =
?
>>
>>> We are using the Jethro branch and we have fixed the GCC version to
>>> 4.9.3 because this version works for SH4.
>>>
>>> Many Thanks,
>>> Martin.
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> Thanks for the swift reply Khem.  I commented out the line from
> gcc-cross-candian.inc
> #GCCMULTILIB =3D "--enable-multilib"
>
> and tried
>  --disable-multilib
> in the EXTRA_OECONF
>
> but I still get the same error when linking.  Let me know if there is
> anything else I could try as I'm stumped.  Is there a workaround just
> so I can get the developers up and running?
>
> Cheers, Martin.

OK I have a workaround I create a symlink in the target sysroot
/opt/vms/sdk/2.0.2/sysroots/sh4-poky-linux/m4 -> .

And everything now compiles fine.
Any ideas on how to fix this in the GCC cross canadian recipe?

Cheers, Martin.

