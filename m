Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04EDEE002AC
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 22:43:54 -0700 (PDT)
Received: by ggke5 with SMTP id e5so11691ggk.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 22:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=Wx0PFEYCcDsfhwsHFM6beTZAVZK+l8tY4jQIz09kA3Y=;
	b=uvQVR3lcyJOaXWLQOTEMiZmY2PGrSR+RCe7TLbabsddGXMKgddKdHaZ807QoWhW7JQ
	jWbyiKYIJHm8J5TcICBEB/y0EoB5K+ie1KGhnRFJRCT+ZvIq5pKYvWcqauw6TE6KuKjn
	BQWGwowYd04iXj62ucmGwxkeSTgb715AowGUX9jc28U70hvAO3qKkVJ1kT2nSdfSuGzj
	dAyU2/cA23DoiloNPHahKPvcDlZHVYf6xgDxNa8vBWkrlwlBIzJUn65O//te1HFAf6ZE
	3D1dkiup1bUoUwosLe611NobfNQT/rSjRW3OtWLdy1V139sv+LkY9/AuIk8Y0frP64/v
	R2FA==
Received: by 10.66.85.70 with SMTP id f6mr14903171paz.7.1344923033964;
	Mon, 13 Aug 2012 22:43:53 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id uq5sm288240pbc.29.2012.08.13.22.43.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 22:43:53 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
Date: Tue, 14 Aug 2012 09:43:46 +0400
Message-Id: <588CEA1E-5BD5-41BE-AA2C-0E40352F171D@gmail.com>
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
X-List-Received-Date: Tue, 14 Aug 2012 05:43:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Aug 14, 2012, at 7:52 AM, Khem Raj wrote:

> On Mon, Aug 13, 2012 at 8:24 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>=20
>> I tried eglibc-2.13 with the current gcc-4.7 recipe, and that =
combination doesn't work.
>>=20
>> I do know that the Denx ELDK used eglibc-2.13 and the gcc-4.6 recipe. =
The ELDK
>> is based off poky/denzil branch. Only the poky/master branch contains =
the updated
>> gcc-4.7 & eglibc-2.15 & 2.16 recipes, which are right now broken for =
powerpc440
>> soft float.
>=20
> and how about gcc 4.5 + eglibc 2.16 did you try that ?
> I am not yet sure if we have narrowed it down to one component.

Yes, I tried gcc-4.5.1 and eglibc-2.16, it didn't work.

The following combinations didn't work:
gcc-4.5.1, eglibc-2.15, binutils-2.22
gcc-4.5.1, eglibc-2.16, binutils-2.22
gcc-4.7.2, eglibc-2.13, binutils-2.22

The combinations that worked are
gcc-4.5.1, eglibc-2.13, binutils-2.22
gcc-4.6.3, eglibc-2.13, binutils-2.22 (from the Denx ELDK 5.2.1 =
release.)

I am going to re-verify with the current poky, =
meta-openembedded/toolchain-layer to ensure that it too builds and =
works, with gcc-4.6.3 and eglibc-2.13.

We can't narrow it down to one component because
gcc-4.7.1 + eglibc-2.13 doesnt work, and
gcc-4.5.1 + eglibc-2.15 & egblic-2.16 don't work.

We've got two variables here, that are causing a failure in dynamic =
linking (probably).

Elvis Dowson=

