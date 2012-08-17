Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B943E0027E
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 00:21:31 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so3594717pbb.35
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 00:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=un36h7QKoNG2yDVxl75GCiEQL4JrvuNz5yehpJTe8mc=;
	b=Ycloz5XEZhtbqPgJPsq8jm86FsmKIw9Mvz49RSk8SMp7siuvbLUtHyuJV43whsm7tg
	6xS7vq70bcPO2QhRAO4acCGJ5XzhJD7r134J9VjQfyp5xRx1xDyAf719jUnwlAXdXNRP
	AN7fQG2WKFCi6yyz648r+jhPp2HWGroQYgEavmvKRYN2S6bDrUw5XGRt0whAqQZIrfq3
	MRFbFNZ6kWswgIz71fp8d67S6nUHi33wSONQI94RcuSRaz9oHedMFEfmlcKcojy/kxH6
	1x+krsjWQbOm/X8roCMKFxnusJuK8Bu/E7h7GJKuYuT4eHhjpHFUrBeFQeK/f00eOT+s
	wipw==
Received: by 10.68.213.167 with SMTP id nt7mr9189302pbc.127.1345188090112;
	Fri, 17 Aug 2012 00:21:30 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id uu6sm346967pbc.70.2012.08.17.00.21.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 17 Aug 2012 00:21:29 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
Date: Fri, 17 Aug 2012 11:21:24 +0400
Message-Id: <0D6E7DCB-4EA2-4B9B-A915-5E9CB57E153D@gmail.com>
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
X-List-Received-Date: Fri, 17 Aug 2012 07:21:31 -0000
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
> Did you try the above ?

I took a slight detour, the past 2 days, trying to use icecc, to reduce =
my build time across two quad-core i7 Ubuntu machines, but that didn't =
work for some reason. No workloads got distributed across to the second =
machine.

I'll get back to continuing these tests this weekend.

> I have pushed a patch into my contrib tree.
>=20
> =
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/mis=
c&id=3D502a61792cdb219c1ee35bb9474b8f0c4b007385
>=20
> can you try that out and see if it helps with gcc 4.7

Will do that for sure! :-)

Best regards,

Elvis Dowson=

