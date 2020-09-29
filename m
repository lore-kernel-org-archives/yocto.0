Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web11.1735.1601394768415515468
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 08:52:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4C13n91t8Fz5tlC;
	Tue, 29 Sep 2020 17:52:44 +0200 (CEST)
Date: Tue, 29 Sep 2020 17:52:43 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: steven.monsees@baesystems.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
Message-ID: <20200929155243.rheisspm7ouqfu5j@qschulz>
References: <MADEUP.16390554C73CDE44.27822@lists.yoctoproject.org>
 <12103.1601394356770198635@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <12103.1601394356770198635@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Steve,

On Tue, Sep 29, 2020 at 08:45:56AM -0700, Monsees, Steven C (US) via list=
s.yoctoproject.org wrote:
> I currently have "ntpq" building and installing correctly...
>=20
> Can someone tell me what it takes to get the "timedatectl" command util=
ity built into Yocto kernel image ?
>=20
> I see it referenced in both :
>=20
> openembedded-core/meta/recipes-core/systemd/systemd_234.bb:=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${bindir}/timedatectl \
> poky/meta/recipes-core/systemd/systemd_234.bb:=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 ${bindir}/timedatectl \
>=20

It comes with systemd. Use it as your init system and then you'll have th=
e command.

Quentin
