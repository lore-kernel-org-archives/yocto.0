Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
 by mx.groups.io with SMTP id smtpd.web09.11083.1608136827181846669
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 08:40:27 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: herbrechtsmeier.net, ip: 85.13.157.12, mailfrom: stefan@herbrechtsmeier.net)
Received: from [192.168.178.45] (unknown [94.134.94.186])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 94D9911A1F5D;
	Wed, 16 Dec 2020 17:40:24 +0100 (CET)
Subject: Re: [yocto] Cross compiler which runs on the target architecture
To: peteasa@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <1419325725.1777.7.camel@linuxfoundation.org>
 <164F0CAF395EE75B.22015@lists.yoctoproject.org>
 <e3b2fe77-585c-51dd-b4df-7265090feb50@herbrechtsmeier.net>
 <CAF+qF8fNJvCRZrjhCwnAzZScGRUSbUarwi7+SYaw7Jc-Dh2W7g@mail.gmail.com>
From: "Stefan Herbrechtsmeier" <stefan@herbrechtsmeier.net>
Message-ID: <a69bd390-aa8c-503f-d767-c21ca9cbeda3@herbrechtsmeier.net>
Date: Wed, 16 Dec 2020 17:40:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAF+qF8fNJvCRZrjhCwnAzZScGRUSbUarwi7+SYaw7Jc-Dh2W7g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Peter,

Am 09.12.20 um 14:32 schrieb Peter Saunderson:
> The proof of concept layer is=20
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-exoti=
c/=20
> - https://github.com/peteasa/meta-exotic/wiki.=C2=A0 I created a set of =
cross=20
> compilers for the Epiphany processor=20
> http://www.adapteva.com/epiphanyiii/ using this layer and the layer=20
> https://github.com/peteasa/meta-epiphany that builds the specific cross=
=20
> compilers for that processor.=C2=A0 It worked quite well with yocto-1.7.=
1 so=20
> it's quite an old bit of code, however the ideas could work in a more=20
> recent versions of Yocto.

Thanks for the links but your solution looks very complex. I will try to=
=20
improve the examples from Richard.

Regards
   Stefan

> On Wed, 9 Dec 2020 at 12:43, Stefan Herbrechtsmeier=20
> <stefan@herbrechtsmeier.net <mailto:stefan@herbrechtsmeier.net>> wrote:
>=20
>     Sorry I have an error in Peter`s mail address.
>=20
>     Am 09.12.2020 um 13:38 schrieb Stefan Herbrechtsmeier:
>      > Hi Peter and Richard,
>      >
>      > does a follow up of this old topic (thread) regarding a cross
>     compiler
>      > which runs on the target architecture exists?
>      >
>     https://www.yoctoproject.org/pipermail/yocto/2014-December/022782.ht=
ml
>      >
>      > Kind regards
>      > =C2=A0 Stefan
>      >
>      >
>      >=20
>      >
>=20

