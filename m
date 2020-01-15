Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.1367.1579121429090396512
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 12:50:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 4868540BFE;
	Wed, 15 Jan 2020 20:50:28 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7lWu2Lw4sXc; Wed, 15 Jan 2020 20:50:28 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 2C0594087C;
	Wed, 15 Jan 2020 20:50:27 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 7703B174385; Wed, 15 Jan 2020 15:50:26 -0500 (EST)
Date: Wed, 15 Jan 2020 15:50:26 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Bill.Kulp@azuresummit.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to dynamically set PKGV? #yocto #python
Message-ID: <20200115205026.GU4735@denix.org>
References: <YaI2.1579120699599107204.Yscm@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <YaI2.1579120699599107204.Yscm@lists.yoctoproject.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

https://www.yoctoproject.org/docs/3.0/ref-manual/ref-manual.html#var-AUTORE=
V
https://www.yoctoproject.org/docs/3.0/ref-manual/ref-manual.html#var-SRCPV

--=20
Denys


On Wed, Jan 15, 2020 at 12:38:19PM -0800, Bill.Kulp@azuresummit.com wrote:
> I have a recipe that builds an application from the master branch of a l=
ocal=20
> git repository.=A0 AUTOREV is working, so the recipe automatically rebui=
lds=20
> whenever the repository is updated.=A0 The source code has its own versi=
on=20
> number.=A0 I'm wondering if it is possible to grab that version number d=
uring=20
> the do_compile step, and set the package version based on that?
>=20
> As a first step, I tried to change the value of PKGV from a bitbake task=
.
>=20
> PKGV =3D "BadBad"
> python do_foo ()=A0{
> d.setVar( "PKGV" , "GoodGood" )
> print ( "PKGV=A0set=A0to=A0" +=A0d.getVar( "PKGV" ))
> }
> addtask=A0foo=A0after=A0do_compile=A0before=A0do_package
>=20
> However, this did not work - the resulting RPM packages are named=20
> "my_package-BadBad-r0.noarch.rpm".=A0 Can anyone suggest a fix, or a dif=
ferent=20
> method?
>=20
> Thanks!

>=20

