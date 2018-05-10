Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 072ACE009BC; Thu, 10 May 2018 15:40:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2223DE009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:40:55 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id f3-v6so2383050uan.9
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lp0jyg32zgHIreJCVBPWf/cP82d7HLaaD8T4CFXMwvc=;
	b=WvBZTiZDl1Ow4d6KHxgA9iEcUJccLMgf+iaxpjL8X97wfNSb3pPif8E53hRPhtbrid
	utYGNCfftNAauSpWrq2y6f8BO5DE7gFyR1kOQvy848BykLQftX/VUTH0OYxKlC+SmV6B
	R2y9PwM/ZV8eC2njCSST39PUw+DyNszpajM4Pr2p2yeeToLb5Vgq+ccHuua+NpBMVqZF
	2ioKUoyYo5W2jSSlGTONPGy8cM3qHP+Y6EN2pXzRUzUTsdt5N9zNfsEdxOivn44HmZ3t
	eJPNBMa+QcWv9ZipcXP9Id3h7o/zwZukoCSPEOUcDr7bzhqe3Y7b1IJj8ck5nu4IK0zc
	vTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lp0jyg32zgHIreJCVBPWf/cP82d7HLaaD8T4CFXMwvc=;
	b=DNvoNDocrC+n/ULyNGixDzzcP+Gb83VQbPu5yzEI+JbgqDFX0zYYMWhhjsuBiiIIO5
	SiELvpuzOOMSU0A4EfDnudHuVzVXO7ZyQBUaH7ulyMIOmmkf+dJqdTXWUycxamrWftKh
	nxGCx6LCtG7KXlntOoXkflXl53FgNs7w5u7xNm92UXnejNxmA1K3YSGQYZGijtX7kUXa
	S8HkeBMdY8M9UBuSRjI7YU/b5djWEHqbrklju/1px4vjN9SWqTr/l0c9gLtGD+F1Kr+/
	qiwsbP9eRcRhD9jYxWA6S5nIlVmCXf5WGgWHyKKJaQ7pKmT8JgAHQ9XTadiw01MFQomR
	KscA==
X-Gm-Message-State: ALKqPwcZ/Y1Mg/exBzqGTYYb03mGtbc3cdwtJLkBZTmv4E1TjhXTzs4b
	Mzw4pXO1Wfnr3tc3I3wSsyTy6gpMqHCsItFlWF0=
X-Google-Smtp-Source: AB8JxZpSe5jEzdQAivarkbVztryCqVqGh7XM8oq5GBiD0XO/wnqsju9925YjI4SPb5kDgIgnsFsrAvjbG7/It5hbwS8=
X-Received: by 2002:ab0:2054:: with SMTP id
	g20-v6mr2608854ual.150.1525992053822; 
	Thu, 10 May 2018 15:40:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Thu, 10 May 2018 15:40:53 -0700 (PDT)
In-Reply-To: <CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 10 May 2018 15:40:53 -0700
Message-ID: <CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembedded-devel <Openembedded-devel@lists.openembedded.org>
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
X-List-Received-Date: Thu, 10 May 2018 22:40:57 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> see
> http://lists.openembedded.org/pipermail/openembedded-core/2018-May/150654.html

Removing -fno-omit-frame-pointer isn't the same as adding
-fomit-frame-pointer. Frame pointers may get enabled depending on the
optimisation level etc (ie not only by -fno-omit-frame-pointer).

> On Fri, May 11, 2018 at 12:38 AM Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>> On Thu, May 10, 2018 at 3:07 PM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>> > On Thu, May 10, 2018 at 11:43:25PM +0200, Martin Jansa wrote:
>> >> On Thu, May 10, 2018 at 12:27:50PM -0700, Andre McCurdy wrote:
>> >> > On Thu, May 10, 2018 at 12:11 PM, Martin Jansa
>> >> > <martin.jansa@gmail.com> wrote:
>> >> > > On Thu, May 10, 2018 at 11:50:02AM -0700, Khem Raj wrote:
>> >> > >> Hi Martin
>> >> > >>
>> >> > >> Thanks for testing and reporting back
>> >> > >>
>> >> > >> On 5/9/18 2:38 AM, Martin Jansa wrote:
>> >> > >> > My initial tests show couple issues, but usually caused by other
>> >> > >> > changes
>> >> > >> > in that branch, not the gcc-8 itself.
>> >> > >> >
>> >> > >> > 1) strace-4.22 from
>> >> > >> >
>> >> > >> > http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/gcc-8&id=af33a8b721cc9caebd3f5226b4c5903f666ab654
>> >> > >> > fails to build with ptest enabled (it builds with 4.20 version
>> >> > >> > if I
>> >> > >> > revert this change)
>> >> > >> > ../../strace-4.22/tests/inject-nf.c: In function 'main':
>> >> > >> > ../../strace-4.22/tests/inject-nf.c:86:1: error: r7 cannot be
>> >> > >> > used in
>> >> > >> > asm here
>> >> > >> >   }
>> >> > >> >   ^
>> >> > >>
>> >> > >> are you targeting thumb1 ? how can I reproduce it ?
>> >> > >
>> >> > > I'm trying to find out what's different in the builds where it was
>> >> > > failing, will provide more info later.
>> >> >
>> >> > This is probably due to making an inline syscall from Thumb (doesn't
>> >> > a
>> >> > matter Thumb1 or Thumb2) with frame pointers enabled.
>> >> >
>> >> > Does adding -fomit-frame-pointer to CFLAGS fix it?
>> >>
>> >> It was with raspberrypi3, thumb (Thumb2) enabled in DISTRO, there is
>> >> already -fno-omit-frame-pointer in the default command line for it,
>> >> adding -fomit-frame-pointer at the end fixes it:
>> >>
>> >> docker-lge @
>> >> ~/build/build-webos-master/BUILD/work/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/build/tests
>> >> $ arm-webos-linux-gnueabi-gcc  -march=armv7ve -mthumb -mfpu=neon-vfpv4
>> >> -mfloat-abi=hard -mcpu=cortex-a7
>> >> --sysroot=/OE/webos/build/build-webos-master/BUILD/work/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot
>> >> -DHAVE_CONFIG_H    -I. -I../linux/arm -I../../strace-4.22/linux/arm
>> >> -I../linux -I../../strace-4.22/linux -I.. -I../../strace-4.22
>> >> -DTESTS_SIZEOF_KERNEL_LONG_T=4 -DTESTS_SIZEOF_LONG=4  -Wall -Wempty-body
>> >> -Wformat-security -Wignored-qualifiers -Wimplicit-fallthrough=5 -Winit-self
>> >> -Wlogical-op -Wmissing-parameter-type -Wnested-externs
>> >> -Wold-style-declaration -Wold-style-definition -Wsign-compare -Wtype-limits
>> >> -Wwrite-strings -O -fno-omit-frame-pointer -g -feliminate-unused-debug-types
>> >> -fdebug-prefix-map=/OE/webos/build/build-webos-master/BUILD/work/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0=/usr/src/debug/strace/4.22-r0
>> >> -fdebug-prefix-map=/OE/webos/build/build-webos-master/BUILD/work/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot=
>> >> -fdebug-prefix-map=/OE/webos/build/build-webos-master/BUILD/work/raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot-native=
>> >> -pipe  -c -o inject-nf.o ../../strace-4.22/tests/inject-nf.c
>> >> -fomit-frame-pointer
>> >>
>> >> This might come from:
>> >> meta/conf/bitbake.conf:DEBUG_OPTIMIZATION = "-O -fno-omit-frame-pointer
>> >> ${DEBUG_FLAGS} -pipe"
>> >> because in this build I had DEBUG_BUILD enabled.
>> >>
>> >> Will retest with 4.20 version + DEBUG_BUILD to see if it fails there as
>> >> well now.
>> >
>> > 4.20 doesn't fail with DEBUG_BUILD, because inject-nf.c test is new in
>> > 4.22:
>> >
>> >
>> > https://github.com/strace/strace/commit/58598cd7f6e23e531d71bfe5a4e35f898a4f3b2d#diff-dc01d20c1e55f8adf7536cb46d4481e1
>> >
>> > What is preferred fix for this? Is adding -fomit-frame-pointer to CFLAGS
>> > when ptest is in DISTRO_FEATURES acceptable solution?
>>
>> I would say unconditionally adding -fomit-frame-pointer to CFLAGS for
>> all builds is OK (strace is a debug tool - not something that
>> generally needs to be debugged and frame pointers aren't essential for
>> debugging anyway).

