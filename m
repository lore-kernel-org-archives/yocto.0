Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C1C8E0146A
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 08:42:23 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2043332eek.35
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 08:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=B4Slv3rIelTXlKk/ont6mmTyqOsloimKMRnL1i+YLpg=;
	b=a2fUvWAZeKcRnNqopmBYI3Xub68pVyMLsd7t5QeyAoNhjQp4JzoxW6UwNa38LyS5Zc
	+DzqjNy3FYZfIt4Nnyqz1P8hVW4+Ti1h20++GcM+S9+bBD7pwf5C5gzdwKNMV9ZtndyX
	cXwjpZLheJfpxmGKIKnxXoZO4DKvtY4fWlpBAS+bn6yLnOcMeA6zTRn5iNAc4XJnnloZ
	BIvVdBFZ17PdLV4TY8Fb7+6DFtFHwUSGtZAGX9Vm+J8cjRMonNipInYmenIlX8HbCRJo
	N48nzVbRRkqft0QLZPwpBObRw9KFQDl19RDccLxJA21iVmXkykMjPq7BQ68SBcQMBsDM
	fVEA==
Received: by 10.14.37.206 with SMTP id y54mr1612470eea.218.1341070941855; Sat,
	30 Jun 2012 08:42:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Sat, 30 Jun 2012 08:41:51 -0700 (PDT)
In-Reply-To: <78C7EA88-D00A-45E7-8DB4-038E07A7BCBA@gmail.com>
References: <A44F3AEF-22D3-4C66-A9AC-15DE9D355ECE@gmail.com>
	<78C7EA88-D00A-45E7-8DB4-038E07A7BCBA@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 30 Jun 2012 08:41:51 -0700
Message-ID: <CAMKF1spOYQD1LRK+AbRo-Tes5Ykch3ELJ==6+r7N=igngeBP+Q@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-xilinx: uImage.dtb files not being generated anymore
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
X-List-Received-Date: Sat, 30 Jun 2012 15:42:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 30, 2012 at 4:07 AM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> Hi,
>
> On Jun 30, 2012, at 10:17 AM, Elvis Dowson wrote:
>
>> About a week ago, my linux-xilinx builds used to correctly generate the =
*.dtb files, required for the PowerPC440 processor on my Xilinx ML-507 deve=
lopment board. After having recently updated poky, I find that the required=
 *.dtb files are not generated anymore.
>>
>> Would someone be able to tell me which file I should take a look at to r=
estore this functionality?
>>
>> My build configuration is as follows:
>>
>> Build Configuration:
>> BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.15.2"
>> TARGET_ARCH =C2=A0 =C2=A0 =C2=A0 =3D "powerpc"
>> TARGET_OS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "linux"
>> MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "virtex5"
>> DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
>> DISTRO_VERSION =C2=A0 =C2=A0=3D "1.2+snapshot-20120630"
>> TUNE_FEATURES =C2=A0 =C2=A0 =3D "m32 fpu-soft ppc440"
>> TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "soft"
>> meta
>> meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:4d48398798c898c5db0829=
4ba64d9bfc7daca19c"
>> meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:3eb5f6eecf6faf7b2=
701f94b12cf779350d31acc"
>> meta-xilinx =C2=A0 =C2=A0 =C2=A0 =3D "master:c977270d6f0608cc5fa83f57254=
202713af37be0"
>
> I traced the reason for the dtb file not build due to the following commi=
t:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D8c904eb643ad8=
ca1bc29cb2d870a80b355dcb341
>
> Should I specify DTS_FILE in order to get my recipe to build the *.dtb?
>

you need to define KERNEL_DEVICETREE =3D "<yourdtbfile>

> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

