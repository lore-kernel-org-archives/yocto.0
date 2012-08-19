Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E579E01370
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 23:08:43 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so6880081pbb.35
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 23:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=b22oCBMkLWA8lOhlMIBNWAZyczxNzYDkwAEvTpMDUbI=;
	b=rX8ddJXb34It9MG+dv0Nqz3rAF4ZN7S6qEH7DZfifWxcEzohjPcfFk3aSohX2qngJU
	Pwgkjgl0ZsQDqaAGA6xNDn/1SycVkPBOcQbH7jRV+xK8OUOB5sTQdAIR+NuE0h7bPUdJ
	die4JcS5ikYCHorrPAAhFT87GBYd30H/HnvRGMt/cwwjwrgnPqQ4xsq0jq8Xfk7O1FhM
	GtFUsUYHNYmGO5JnXXNGMclnP4yleFhf2bQhyv553TI+wIMbHavcjZHXs7jr3yH7hbmF
	HNRVkdGyl0Kyl1aT0d6pOB7m1s80HcyjN/byB2h93OGTDg6dmQJk51JKaqWTyAv8ga8h
	a8xQ==
Received: by 10.68.212.161 with SMTP id nl1mr24622088pbc.84.1345356522635;
	Sat, 18 Aug 2012 23:08:42 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id or1sm8436248pbb.10.2012.08.18.23.08.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 18 Aug 2012 23:08:41 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
Date: Sun, 19 Aug 2012 10:08:35 +0400
Message-Id: <AF18A8EF-44E8-4C11-B52B-D5C7E7B7FD85@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
	<4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
	<B3DEA1FA-A170-46D6-9BCA-82555C89523C@gmail.com>
	<4855B040-2194-4E0F-8B88-6C10385DBE8F@gmail.com>
	<CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Sun, 19 Aug 2012 06:08:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Aug 17, 2012, at 9:48 AM, Khem Raj wrote:

> On Tue, Aug 14, 2012 at 7:26 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>> There are differences in eglibc.inc and initrd recipes. Try to see if =
they
>> make difference
>> Also the libgcc one after the above two
>=20
> Elvis
>=20
> Did you try the above ?
> I have pushed a patch into my contrib tree.
>=20
> =
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/mis=
c&id=3D502a61792cdb219c1ee35bb9474b8f0c4b007385
>=20
> can you try that out and see if it helps with gcc 4.7

I had to manually apply the patch to poky/master.

The gcc-4.7 patch alone didn't fix the issue with not getting a bash =
prompt, which makes sense I guess, since the eglibc recipes also need to =
be modified to ensure that the soft-float libraries are also generated =
into the target root filesystem.

I'll now, make the necessary changes to eglibc-2.13, in poky/master, =
with gcc-4.7, and see if it works.

If it does, then I'll adapt the same solution for eglibc-2.15, =
eglibc-2.16, and gcc-4.6 recipes, and sent them across.

Best regards,

Elvis Dowson=

