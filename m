Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.5476.1589289462085459143
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2020 06:17:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 2821140C7E;
	Tue, 12 May 2020 13:17:41 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MmBAbiLsjBNi; Tue, 12 May 2020 13:17:41 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id EA62D40C65;
	Tue, 12 May 2020 13:17:38 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 59D6817314B; Tue, 12 May 2020 09:17:38 -0400 (EDT)
Date: Tue, 12 May 2020 09:17:38 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Paul Barker <pbarker@konsulko.com>
Cc: Zwicker Severin <severin.zwicker@rittmeyer.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
Message-ID: <20200512131738.GQ11927@denix.org>
References: <d23b8000b1134098a15a5e47be20b920@rittmeyer.com>
 <CAM9ZRVuXJhVv6TojXmgmTdD12KzeEacZgYd6gaewtMy16e9s4Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVuXJhVv6TojXmgmTdD12KzeEacZgYd6gaewtMy16e9s4Q@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2020 at 02:03:07PM +0100, Paul Barker wrote:
> On Tue, 12 May 2020 at 13:36, Zwicker Severin
> <severin.zwicker@rittmeyer.com> wrote:
> >
> > I can=E2=80=99t reach http://downloads.yoctoproject.org/ to download =
http://downloads.yoctoproject.org/releases/uninative/2.7/x86_64-nativesdk=
-libc.tar.xz .
> >
> >
> >
> > Did somebody know anything?
>=20
> Yes, it currently appears to be down. The relevant folks will be
> looking at it but it's still early in the US timezones.

Could it be Europe-specific problem?
Seems slow, but still working here in the US:

$ wget http://downloads.yoctoproject.org/releases/uninative/2.7/x86_64-na=
tivesdk-libc.tar.xz
--2020-05-12 09:08:15--  http://downloads.yoctoproject.org/releases/unina=
tive/2.7/x86_64-nativesdk-libc.tar.xz
Resolving downloads.yoctoproject.org... 198.145.29.63
Connecting to downloads.yoctoproject.org|198.145.29.63|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5450224 (5.2M) [application/octet-stream]
Saving to: =E2=80=98x86_64-nativesdk-libc.tar.xz=E2=80=99

x86_64-nativesdk-libc.tar.xz           100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>]   5.20M   540KB/s    in 59s =
   =20

2020-05-12 09:09:27 (89.5 KB/s) - =E2=80=98x86_64-nativesdk-libc.tar.xz=E2=
=80=99 saved [5450224/5450224]
