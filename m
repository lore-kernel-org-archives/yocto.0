Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 706454C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 17:13:21 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6FMDDYf021224;
	Fri, 15 Jul 2011 17:13:14 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1so4JT25VeLRRGG3gHKYdHdH7DhnPa2oc8NGDa3hy3ft5g@mail.gmail.com>
Date: Fri, 15 Jul 2011 17:13:14 -0500
Message-Id: <561EAC85-BC60-4271-A7F1-69CB1B769A12@kernel.crashing.org>
References: <2CA74704-73F9-4900-82C0-68A64AA6ED35@kernel.crashing.org>
	<CAMKF1sqpLHzFZrheWXiNzKRZuqfRA9Wbn760tRTomsxHt=LrqA@mail.gmail.com>
	<B9F1B427-1BBA-46BD-B13D-E9403449B3DF@kernel.crashing.org>
	<CAMKF1so4JT25VeLRRGG3gHKYdHdH7DhnPa2oc8NGDa3hy3ft5g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1084)
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
X-List-Received-Date: Fri, 15 Jul 2011 22:13:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 15, 2011, at 5:04 PM, Khem Raj wrote:

> On Fri, Jul 15, 2011 at 2:57 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>>=20
>> On Jul 15, 2011, at 4:29 PM, Khem Raj wrote:
>>=20
>>> On Fri, Jul 15, 2011 at 2:10 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>>>> In my attempts to get an e500v2/gnuspe toolchain working I was able =
to get core-image-minimal working.  However when I try the =
'meta-toolchain' I run into the following below.  I believe this is =
because of TARGET_OS being 'linux-gnuspe'.
>>>>=20
>>>> Any ideas ?
>>>>=20
>>>> - k
>>>>=20
>>>> [kumar@right build-p2020]$ bitbake meta-toolchain
>>>>=20
>>>> OE Build Configuration:
>>>> BB_VERSION        =3D "1.13.2"
>>>> TARGET_ARCH       =3D "powerpc"
>>>> TARGET_OS         =3D "linux-gnuspe"
>>>> MACHINE           =3D "p2020-ds"
>>>> DISTRO            =3D "poky"
>>>> DISTRO_VERSION    =3D "1.0+snapshot-20110715"
>>>> TARGET_FPU        =3D "spe"
>>>> meta
>>>> meta-yocto        =3D =
"master:068839698fe192d8846c0ed4db65861448e8e524"
>>>>=20
>>>> NOTE: Resolving any missing task queue dependencies
>>>> ERROR: Nothing PROVIDES 'virtual/powerpc-poky-linux-libc-for-gcc'
>>>=20
>>> here is the problem. This should have been called
>>> virtual/powerpc-poky-linux-gnuspe-libc-for-gcc
>>>=20
>>> so TARGET_PREFIX is not being set correctly which means TARGET_SYS =
is
>>> not being set correctly
>>>=20
>>> and
>>>=20
>>> TARGET_SYS =3D "${TARGET_ARCH}${TARGET_VENDOR}${@['-' +
>>> bb.data.getVar('TARGET_OS', d, 1), ''][bb.data.getVar('TARGET_OS', =
d,
>>> 1) =3D=3D ('' or 'custom')]}"
>>>=20
>>> so it should be ok if TARGET_OS is set
>>>=20
>>> can you pastebin output of
>>>=20
>>> bitbake -e meta-toolchain
>>>=20
>>> somewhere
>>=20
>> Are you sure that is what you want?  It looks the same
>>=20
>> http://pastebin.com/FuNFCxLQ
>=20
> heh thats not enought info in there. But again the problem seems to be
> that TARGET_OS is not being set to linux-gnuspe and
> virtual/${TARGET_PREFIX}libc-for-gcc
>=20
> is being expanded to use default value which is 'powerpc-poky-linux-'
> in your case
>=20
> how/where are you setting TARGET_OS

Guessing:

meta/conf/distro/include/tclibc-eglibc.inc:TARGET_OS_powerpc =3D =
"linux${@['','-gnuspe'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in =
['ppce500', 'ppce500v2']]}"

- k=

