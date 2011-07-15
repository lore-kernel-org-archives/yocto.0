Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35DDF4C80A8C
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 17:04:36 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk3 with SMTP id 3so2162276pzk.33
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 15:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=fhoaL7GK68IUdNu1nGKCHnGMndW6Oeuw3u5OyozsoHY=;
	b=amup+hNg7foFfANnFFFTW8z0myPDjo7Z/1xFy/BVSD0NXm7Mu//avB2/HRnJ+lEDj2
	1t/daY7gS4ugNWC1JqofGIdZh80i2jLh/puRbndH3mdKOYo8JnLVPDmhI8BuFClpkdgx
	W15pzvWIB4hjVPWYj2L1SYSjmdpwPvNapryrQ=
Received: by 10.68.28.1 with SMTP id x1mr3762930pbg.77.1310767474254; Fri, 15
	Jul 2011 15:04:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Fri, 15 Jul 2011 15:04:04 -0700 (PDT)
In-Reply-To: <B9F1B427-1BBA-46BD-B13D-E9403449B3DF@kernel.crashing.org>
References: <2CA74704-73F9-4900-82C0-68A64AA6ED35@kernel.crashing.org>
	<CAMKF1sqpLHzFZrheWXiNzKRZuqfRA9Wbn760tRTomsxHt=LrqA@mail.gmail.com>
	<B9F1B427-1BBA-46BD-B13D-E9403449B3DF@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jul 2011 15:04:04 -0700
Message-ID: <CAMKF1so4JT25VeLRRGG3gHKYdHdH7DhnPa2oc8NGDa3hy3ft5g@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: TARGET_OS issues with linux-gnuspe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jul 2011 22:04:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2011 at 2:57 PM, Kumar Gala <galak@kernel.crashing.org> wro=
te:
>
> On Jul 15, 2011, at 4:29 PM, Khem Raj wrote:
>
>> On Fri, Jul 15, 2011 at 2:10 PM, Kumar Gala <galak@kernel.crashing.org> =
wrote:
>>> In my attempts to get an e500v2/gnuspe toolchain working I was able to =
get core-image-minimal working. =C2=A0However when I try the 'meta-toolchai=
n' I run into the following below. =C2=A0I believe this is because of TARGE=
T_OS being 'linux-gnuspe'.
>>>
>>> Any ideas ?
>>>
>>> - k
>>>
>>> [kumar@right build-p2020]$ bitbake meta-toolchain
>>>
>>> OE Build Configuration:
>>> BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.13.2"
>>> TARGET_ARCH =C2=A0 =C2=A0 =C2=A0 =3D "powerpc"
>>> TARGET_OS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "linux-gnuspe"
>>> MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "p2020-ds"
>>> DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
>>> DISTRO_VERSION =C2=A0 =C2=A0=3D "1.0+snapshot-20110715"
>>> TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "spe"
>>> meta
>>> meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:068839698fe192d8846c0=
ed4db65861448e8e524"
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> ERROR: Nothing PROVIDES 'virtual/powerpc-poky-linux-libc-for-gcc'
>>
>> here is the problem. This should have been called
>> virtual/powerpc-poky-linux-gnuspe-libc-for-gcc
>>
>> so TARGET_PREFIX is not being set correctly which means TARGET_SYS is
>> not being set correctly
>>
>> and
>>
>> TARGET_SYS =3D "${TARGET_ARCH}${TARGET_VENDOR}${@['-' +
>> bb.data.getVar('TARGET_OS', d, 1), ''][bb.data.getVar('TARGET_OS', d,
>> 1) =3D=3D ('' or 'custom')]}"
>>
>> so it should be ok if TARGET_OS is set
>>
>> can you pastebin output of
>>
>> bitbake -e meta-toolchain
>>
>> somewhere
>
> Are you sure that is what you want? =C2=A0It looks the same
>
> http://pastebin.com/FuNFCxLQ

heh thats not enought info in there. But again the problem seems to be
that TARGET_OS is not being set to linux-gnuspe and
virtual/${TARGET_PREFIX}libc-for-gcc

is being expanded to use default value which is 'powerpc-poky-linux-'
in your case

how/where are you setting TARGET_OS


>
> - k

