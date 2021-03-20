Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web08.2529.1616239848541179442
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Mar 2021 04:30:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230, mailfrom: foss@0leil.net)
Received: from [127.0.0.1] (80-110-100-75.cgn.dynamic.surfer.at [80.110.100.75])
	(Authenticated sender: foss@0leil.net)
	by relay10.mail.gandi.net (Postfix) with ESMTPSA id F1B37240005;
	Sat, 20 Mar 2021 11:30:45 +0000 (UTC)
Date: Sat, 20 Mar 2021 11:30:42 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] is there a recent explanation of tricks you can play with MACHINEOVERRIDES?
In-Reply-To: <e4d0c7a6-bbbd-2652-49ca-a929e5d948b0@crashcourse.ca>
References: <e4d0c7a6-bbbd-2652-49ca-a929e5d948b0@crashcourse.ca>
Message-ID: <862E0A68-D800-44A2-8A39-E614D803BCA8@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Robert,

On March 19, 2021 9:54:34 AM UTC, "Robert P=2E J=2E Day" <rpjday@crashcour=
se=2Eca> wrote:
>
>  years ago, i asked about how to support a small set of
>closely-related targets using MACHINEOVERRIDES to define how to apply
>patches in a (somewhat) hierarchical fashion:
>
>https://www=2Eyoctoproject=2Eorg/pipermail/yocto/2016-March/028922=2Ehtml
>
>  is there any current BSP that does something like that? and is this
>sort of thing worth expanding on and adding to one of the manuals?
>

Don't use _prepend but =3D=2E BEFORE the other includes in your machine co=
nfiguration files otherwise the order in MACHINEOVERRIDES is incorrect=2E D=
o NOT use append, or =2E=3D, they result in incorrect order too=2E

I do use this mechanism because we kind of use Yocto machines the wrong wa=
y (basically using machines instead of distros or more complex images)=2E

I think NXP is making extensive use of this variable by defining a MACHINE=
OVERRIDES per SoC families (e=2Eg=2E imx:imx8:imx8mm)=2E

I'm not sure we need to explain all possible uses of OVERRIDES variables, =
just how to set it and how it works=2E

Hope this helps,
Quentin

>rday
>
>--=20
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P=2E J=2E Day                                 Ottawa, Ontario, CAN=
ADA
>                         http://crashcourse=2Eca
>
>LinkedIn:                               http://ca=2Elinkedin=2Ecom/in/rpj=
day
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
