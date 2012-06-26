Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9182EE00746
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 23:00:08 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1911117eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 23:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=cGaPpXaG/VVZB+rc+gmBME2GytfEZf4oqVo5F1r4pw4=;
	b=XrfllM+3foXxLihMBzVTPoN3I00e1cM37guE7Tz/JLyowRBM6/e6Nj7QS2q7ZYQ6AS
	Q2Oax+oPZhFdxsByTbgPd+rSQyf89mrJ05HS+34Ht0C0yoPWqjO4vDvuC5Id0uzohUIY
	nX304FjUZvhKaFztf3CN9FjWaSeCVoEGpdG6WLHCyH6D0oYknYHs8+lH+fhKfrnOeMZ9
	/QNymXumg4DCRCnPpSe4NP3LYY7wpw0usnyHZpVECi9XlljC1VpxniHl0e5FmYSAMRew
	CRI+v02VQ+FryF+x64ZhNb4GY5Naasoj9g10LaUMxcwIEQeuOu5PPuU4J1L1PG/RMxi5
	2bkA==
Received: by 10.14.53.4 with SMTP id f4mr2961214eec.93.1340690407186; Mon, 25
	Jun 2012 23:00:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 22:59:36 -0700 (PDT)
In-Reply-To: <CAKPsnf3YG1uRHgD9uE0NMP39hQJ4CsXZZAHffPdzBcTXWHMBdQ@mail.gmail.com>
References: <CAKPsnf3YG1uRHgD9uE0NMP39hQJ4CsXZZAHffPdzBcTXWHMBdQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 22:59:36 -0700
Message-ID: <CAMKF1sp-vF62xkrWkQ9FOk_M2gvMQUGWUZugCX0xK9uM2yBUdg@mail.gmail.com>
To: Bongseo Jang <graycells@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: possible to replace octeon mips64 SDK with yocto mips64 SDK?
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
X-List-Received-Date: Tue, 26 Jun 2012 06:00:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 25, 2012 at 9:48 PM, Bongseo Jang <graycells@gmail.com> wrote:
> Hi, All.
>
> I've=C2=A0built several yocto meta-toolchain's so far and now working on
> replacing Cavium's official octeon mips64=C2=A0SDK with yocto/oe mips64 S=
DK.
> I really want to replace=C2=A0the Cavium-provided one because that is old=
 and
> drags product's development.
>
> It seems possible because I think
> =C2=A0 1) mips64 ISA is well-defined(and assuming=C2=A0Cavium never added=
 extension)
> =C2=A0 2) mips64-linux ABI is well-defined(and assuming Cavium never twea=
ked it)
> =C2=A0 3) kernel will deal with everything about hardware, and we have th=
e kernel
> which Cavium provided to us
>
> I started with copying qemumips.conf to qemumips64.conf, changed it like
> below
> and... 'bitbake meta-toolchain' has just=C2=A0finished.
>
> =C2=A0require conf/machine/include/qemu.inc
> -require conf/machine/include/tune-mips32.inc
> +require conf/machine/include/tune-mips64.inc
>
> Do=C2=A0you think I've got a=C2=A0right=C2=A0SDK which replace the offici=
al SDK?=C2=A0And how
> can I=C2=A0assure it?
> (I have no idea about what the company like Cavium or=C2=A0other embedded=
 product
> companys do to their SDK)
> I fear that my assumptions=C2=A0are questinable and misleading.

well we did mips64 work recently
but there is no sample machine for mips64 yet. what you did is fine
otherwise you can also see the patch

http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/misc=
&id=3D5d9d9798133d27169c7251639cdf7a2ff97a9d30

and this will add a qemumips64 machine and then you can do

MACHINE=3Dqemumips64 bitbake meta-toolchain

to generate mips64 SDK

Be aware that mips64 support N64 ABI only at the moment in OE-Core


>
> Thaks
>
> --
> Regards,
> Jang.
>
> =C2=A0a sound mind in a sound body
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

