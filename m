Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32BEFE009F4; Thu, 10 May 2018 15:36:21 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D13E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:36:19 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id x9-v6so1741964pfm.2
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=w0yebqyJ0MODMK6bqPzqMqpIQydAxPj6Y1MfcYSkjT0=;
	b=VF4lJQX1IIaFLQ9bzrTEDq6Izwe0uCkfSblfhyxHh2NcuusLxtwRmKN1JZLTMwGyFv
	DWsKx/iew3vJvYICpyZLnuc2+kAvXjHSET9qzu+TWj5YxfmVvFeACWpOgVYKAAybqfG/
	nRlEWGR3BvjP4rC+Qp56bNk9FKeScdT7fKGgYSk9xs8/fk4R2yFrkVcgDCaaE4Svt7wH
	GxVj3/J5rbE7AUNFY8ISs+6nn8u+tEWXz2/WdDwbR+vDErxDCVKsFuKjghcO/3Tb6wxi
	iopYeRYPLseH3ynQ3omILerOEsjIsYzs3FlHlGoFsMrVb+bZgVOh/yAitypmus0a+7yn
	2low==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=w0yebqyJ0MODMK6bqPzqMqpIQydAxPj6Y1MfcYSkjT0=;
	b=iYy2SP7WbP69LGlXTOAbHOgXBgVF8GrZbxl5kZjryNdgTeDvoya59IEQkyuZswTXxG
	jGaWbsjGKq+lNQ0cxIf+JLeiAqhQ3TwYc7g/MzzPiF9CIFq6RH/O54z6q4S0+t277VFz
	0i2L+nx1nj7ZQvSmRYi+ISW3+wF4HJh5EAa4BFYBR31hgYZYmBVvA1MDestYpoUYqaXO
	RDFwKRw3tRRpY8KgzyxLDJzjlzsmkzp4bfwQcbpmGY1lEgdoik6twyNsC4s2GZlzfNVQ
	A2qZJanhRdGCW/uP9l5IAfDauVbVhxKpPOBaZVKVkKXrhfRJT2R2/Vk7Aa4J0SstC86y
	+9pg==
X-Gm-Message-State: ALKqPwfgztZQb6u8jDC0Qup2xht4S9vaskNmXEG9LotbBDI1PwxADEId
	oasPf1iRpoLEGFO8Tq+UySHMeYVCszO3gzcYZck=
X-Google-Smtp-Source: AB8JxZrker9ItgxcYFvDDlZc76EB6nLDjzhAc+nCdLUQ61UenEqowfZVPE7WzAbrOPCeLOFtGWDcb+uxlHuiQ2024rk=
X-Received: by 2002:a62:5b02:: with SMTP id p2-v6mr3000687pfb.96.1525991778866;
	Thu, 10 May 2018 15:36:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.139.145 with HTTP; Thu, 10 May 2018 15:35:48 -0700 (PDT)
In-Reply-To: <20180510220735.GD1954@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2018 15:35:48 -0700
Message-ID: <CAMKF1so=HTEHvLxjV81rTgwAGmT_pZSfX5ae3Oe2odDeZzd3sw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 22:36:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2018 at 3:07 PM, Martin Jansa <martin.jansa@gmail.com> wrot=
e:
> On Thu, May 10, 2018 at 11:43:25PM +0200, Martin Jansa wrote:
>> On Thu, May 10, 2018 at 12:27:50PM -0700, Andre McCurdy wrote:
>> > On Thu, May 10, 2018 at 12:11 PM, Martin Jansa <martin.jansa@gmail.com=
> wrote:
>> > > On Thu, May 10, 2018 at 11:50:02AM -0700, Khem Raj wrote:
>> > >> Hi Martin
>> > >>
>> > >> Thanks for testing and reporting back
>> > >>
>> > >> On 5/9/18 2:38 AM, Martin Jansa wrote:
>> > >> > My initial tests show couple issues, but usually caused by other =
changes
>> > >> > in that branch, not the gcc-8 itself.
>> > >> >
>> > >> > 1) strace-4.22 from
>> > >> > http://git.openembedded.org/openembedded-core-contrib/commit/?h=
=3Dkraj/gcc-8&id=3Daf33a8b721cc9caebd3f5226b4c5903f666ab654
>> > >> > fails to build with ptest enabled (it builds with 4.20 version if=
 I
>> > >> > revert this change)
>> > >> > ../../strace-4.22/tests/inject-nf.c: In function 'main':
>> > >> > ../../strace-4.22/tests/inject-nf.c:86:1: error: r7 cannot be use=
d in
>> > >> > asm here
>> > >> >   }
>> > >> >   ^
>> > >>
>> > >> are you targeting thumb1 ? how can I reproduce it ?
>> > >
>> > > I'm trying to find out what's different in the builds where it was
>> > > failing, will provide more info later.
>> >
>> > This is probably due to making an inline syscall from Thumb (doesn't a
>> > matter Thumb1 or Thumb2) with frame pointers enabled.
>> >
>> > Does adding -fomit-frame-pointer to CFLAGS fix it?
>>
>> It was with raspberrypi3, thumb (Thumb2) enabled in DISTRO, there is
>> already -fno-omit-frame-pointer in the default command line for it,
>> adding -fomit-frame-pointer at the end fixes it:
>>
>> docker-lge @ ~/build/build-webos-master/BUILD/work/raspberrypi3-webos-li=
nux-gnueabi/strace/4.22-r0/build/tests $ arm-webos-linux-gnueabi-gcc  -marc=
h=3Darmv7ve -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=
 --sysroot=3D/OE/webos/build/build-webos-master/BUILD/work/raspberrypi3-web=
os-linux-gnueabi/strace/4.22-r0/recipe-sysroot -DHAVE_CONFIG_H    -I. -I../=
linux/arm -I../../strace-4.22/linux/arm -I../linux -I../../strace-4.22/linu=
x -I.. -I../../strace-4.22 -DTESTS_SIZEOF_KERNEL_LONG_T=3D4 -DTESTS_SIZEOF_=
LONG=3D4  -Wall -Wempty-body -Wformat-security -Wignored-qualifiers -Wimpli=
cit-fallthrough=3D5 -Winit-self -Wlogical-op -Wmissing-parameter-type -Wnes=
ted-externs -Wold-style-declaration -Wold-style-definition -Wsign-compare -=
Wtype-limits -Wwrite-strings -O -fno-omit-frame-pointer -g -feliminate-unus=
ed-debug-types -fdebug-prefix-map=3D/OE/webos/build/build-webos-master/BUIL=
D/work/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0=3D/usr/src/debug/str=
ace/4.22-r0 -fdebug-prefix-map=3D/OE/webos/build/build-webos-master/BUILD/w=
ork/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot=3D -fdeb=
ug-prefix-map=3D/OE/webos/build/build-webos-master/BUILD/work/raspberrypi3-=
webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot-native=3D  -pipe  -c -o i=
nject-nf.o ../../strace-4.22/tests/inject-nf.c -fomit-frame-pointer
>>
>> This might come from:
>> meta/conf/bitbake.conf:DEBUG_OPTIMIZATION =3D "-O -fno-omit-frame-pointe=
r ${DEBUG_FLAGS} -pipe"
>> because in this build I had DEBUG_BUILD enabled.
>>
>> Will retest with 4.20 version + DEBUG_BUILD to see if it fails there as =
well now.
>
> 4.20 doesn't fail with DEBUG_BUILD, because inject-nf.c test is new in
> 4.22:
>
> https://github.com/strace/strace/commit/58598cd7f6e23e531d71bfe5a4e35f898=
a4f3b2d#diff-dc01d20c1e55f8adf7536cb46d4481e1
>
> What is preferred fix for this? Is adding -fomit-frame-pointer to CFLAGS
> when ptest is in DISTRO_FEATURES acceptable solution?

you might want to _remove operation for -fno-omit-frame-pointer for
SELECTED_OPTIMIZATION variable.

