Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED4184C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 10:02:40 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk3 with SMTP id 3so5330242pzk.33
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 08:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=8aWJ8toS45o6cxc0HNC9e3ZcbMy53Cni2IZoI5QWovo=;
	b=kKLrJMdk5raXdl4LmqsgQEBrk2NjyuWugjRo/Rkucz3q8Pwv191CqUkACMdGG++cqj
	4A7vW//VJFtx3bDAIeC50MVXEAe/D1srtL6HQNm5J3pO9uqfzG4L1XIz9HWBH7B5p1O9
	q47SALNU3riMhWbNDwsQ/vaex7FGoAeNg9RDU=
Received: by 10.68.35.105 with SMTP id g9mr8407159pbj.479.1311087760312; Tue,
	19 Jul 2011 08:02:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Tue, 19 Jul 2011 08:02:10 -0700 (PDT)
In-Reply-To: <4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com>
	<4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Jul 2011 08:02:10 -0700
Message-ID: <CAMKF1soYf_JNc1nbxoioGmnRFjLYXQ=40rXhPo_7VFgyOr=Upg@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5] gcc: Add gcc configure for PowerPC e500v2/SPE embedded floating point ABI
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
X-List-Received-Date: Tue, 19 Jul 2011 15:02:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 11:47 PM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
>
> On Jul 19, 2011, at 1:04 AM, Khem Raj wrote:
>
>> On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala <galak@kernel.crashing.org>=
 wrote:
>>> The e500v2 core utilizes a unique floating point programming model / AB=
I.
>>> We utilize TARGET_FPU =3D "spe" to distinguish this choice. =C2=A0When =
building
>>> the toolchain for this ABI we need configure gcc with --enable-e500_dou=
ble.
>>>
>>> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
>>> ---
>>> =C2=A0meta/recipes-devtools/gcc/gcc-4.6.inc =C2=A0 =C2=A0| =C2=A0 =C2=
=A02 +-
>>> =C2=A0meta/recipes-devtools/gcc/gcc-common.inc | =C2=A0 =C2=A02 ++
>>> =C2=A02 files changed, 3 insertions(+), 1 deletions(-)
>>>
>>> diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc b/meta/recipes-devto=
ols/gcc/gcc-4.6.inc
>>> index 56064b5..b719155 100644
>>> --- a/meta/recipes-devtools/gcc/gcc-4.6.inc
>>> +++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
>>> @@ -1,6 +1,6 @@
>>> =C2=A0require gcc-common.inc
>>>
>>> -PR =3D "r8"
>>> +PR =3D "r9"
>>>
>>> =C2=A0# Third digit in PV should be incremented after a minor release
>>> =C2=A0# happens from this branch on gcc e.g. currently its 4.6.0
>>> diff --git a/meta/recipes-devtools/gcc/gcc-common.inc b/meta/recipes-de=
vtools/gcc/gcc-common.inc
>>> index 7bf036c..409ad01 100644
>>> --- a/meta/recipes-devtools/gcc/gcc-common.inc
>>> +++ b/meta/recipes-devtools/gcc/gcc-common.inc
>>> @@ -12,6 +12,8 @@ FILESDIR =3D "${@os.path.dirname(bb.data.getVar('FILE=
',d,1))}/gcc-${PV}"
>>> =C2=A0def get_gcc_fpu_setting(bb, d):
>>> =C2=A0 =C2=A0 if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
>>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 return "--with-float=3Dsoft"
>>> + =C2=A0 =C2=A0if bb.data.getVar('TARGET_FPU', d, 1) in [ 'spe' ]:
>>> + =C2=A0 =C2=A0 =C2=A0 =C2=A0return "--enable-e500_double"
>>> =C2=A0 =C2=A0 return ""
>>>
>>
>> this will enable e500_double even for e500v1 which IIRC does not have
>> DFP support
>> have you tried building for e500v1 with this ?
>
> I think you are correct. =C2=A0Any suggestions on how to distinguish e500=
v1 vs e500v2? =C2=A0Utilizing BASE_PACKAGE_ARCH has problems w/native build=
s since it seems to get set to x86_64 at some point.
>
> I could do:
>
> TARGET_FPU =3D "ppc-efs" =C2=A0[Embedded scalar single-precision floating=
-point]
> TARGET_FPU =3D "ppc-efd" =C2=A0[Embedded scalar double-precision floating=
-point]

thats fine. using spfp or dpfp is another option.
however you have to make sure that TARGET_FPU is not checking for spe
anywhere in whole tree

>
> Than meta/recipes-devtools/gcc/gcc-common.inc:
>
> =C2=A0def get_gcc_fpu_setting(bb, d):
> =C2=A0 =C2=A0if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0return "--with-float=3Dsoft"
> + =C2=A0 =C2=A0if bb.data.getVar('TARGET_FPU', d, 1) in [ 'ppc-efd' ]:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0return "--enable-e500_double"
> =C2=A0 =C2=A0return ""
>
> And meta/conf/distro/include/tclibc-*libc.inc:
>
> TARGET_OS_powerpc =3D "linux${@['','-gnuspe'][bb.data.getVar('TARGET_FPU'=
,d,1) in ['ppc-efs', 'ppc-efd']]}"
>
> thoughts?
>
> - k

