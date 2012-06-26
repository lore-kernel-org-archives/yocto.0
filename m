Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F091E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 08:47:07 -0700 (PDT)
Received: by eaab16 with SMTP id b16so42174eaa.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 08:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Z7poWpgbqPazs1gbUnmvhEw9n/B5sk7TDEoPkF45x7U=;
	b=BYiOk9lAW1MY3KHZdVlVG8F/TC7XKsb/eWqicLJjmPeX8BHz3nhBnJyRITj4GLTXhr
	IYX0ri4OeSmP6HkblkcfBilmHS2Cw3AFnO/5ZnyDFJWCukRCJ2Ke5dkOoeHoN472o+Wm
	ce3LPO1+qSWrnHKjsAxJ8a9eEuXz54UYVVA7X8uwfksCFPYh0XjIxfu7muKXcOqVv17k
	F3dbMCFFqZZf6j0Bxg3oVD4mnGc6Vi7cT0wz93a4gXf7K3TwP23AGMdBHgDdsqPLX0R/
	0L4bD1sVk4PpHhz6OpdQDJ0hdmOnqiihDJFcw86Rqp2G36LXjmmbBggixd9C55dTNdNE
	FXig==
Received: by 10.14.97.16 with SMTP id s16mr3053165eef.117.1340725626058; Tue,
	26 Jun 2012 08:47:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Tue, 26 Jun 2012 08:46:35 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1206260410060.21539@oneiric>
References: <alpine.DEB.2.02.1206260410060.21539@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Jun 2012 08:46:35 -0700
Message-ID: <CAMKF1soE6k2nn1TyTU_z_CZFiU2C-BFb3DQo6NacyHRwELpFtA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how many meta-toolchain-* targets are there?
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
X-List-Received-Date: Tue, 26 Jun 2012 15:47:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 26, 2012 at 1:15 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
>
> =C2=A0something that could be cleared up a bit in the docs ... how many
> toolchain-related targets are there?
>
> =C2=A0for instance, running bitbake suggests that common targets include
> meta-toolchain and meta-toolchain-sdk. =C2=A0on the other hand, the ADT
> manual makes no reference to meta-toolchain-sdk but *does* mention
> meta-toolchain-gmae (without explaining to the reader what that
> represents but nonetheless recommends to the reader that if he needs
> GMAE, he should build that, whereupon the poor reader is left
> wondering what the heck GMAE is and whether it's important).
>
> =C2=A0and a search of the source shows a meta-toolchain-qte, for which i
> can see no mention whatever in *any* of the docs.
>
> =C2=A0thoughts?


they should be documented I agree. meta-toolchain-gmae and
meta-toolchain-sdk are synonymous.


>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ottawa, Ontario, CA=
NADA
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0http://crashcourse.ca
>
> Twitter: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 http:=
//twitter.com/rpjday
> LinkedIn: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

