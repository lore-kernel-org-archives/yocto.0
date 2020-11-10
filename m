Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.27160.1605014181459388147
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 05:16:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6748138C06E0;
	Tue, 10 Nov 2020 05:16:20 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CVpKF2nPRz5tlG;
	Tue, 10 Nov 2020 14:16:16 +0100 (CET)
Date: Tue, 10 Nov 2020 14:16:15 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "ouyangxuan10@163.com" <ouyangxuan10@163.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto-builds-bounces@yoctoproject.org" <yocto-builds-bounces@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Subject: Re: [yocto]: When compiling code, how to make a package not hash checked?
Message-ID: <20201110131615.3zygqndgrdn74ih2@qschulz>
References: <3535c9.4dde.175b2462e71.Coremail.ouyangxuan10@163.com>
MIME-Version: 1.0
In-Reply-To: <3535c9.4dde.175b2462e71.Coremail.ouyangxuan10@163.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Byron,

On Tue, Nov 10, 2020 at 09:09:05PM +0800, ouyangxuan10@163.com wrote:
> Dear all=EF=BC=8C
>=20
>=20
> I would like to ask the reasons for the following problems and how to s=
olve them? When compiling a program, how to make a package not hash check=
ed?
>=20

Did you execute the commands that were suggested in the log you sent?

Can you send us the content of the log of the second command please?

Basically, two possible ways this happens:
 1. you modified the recipe while bitbake was running. Solution =3D> don'=
t
 do that.
 2. bitbake parses tasks multiple times during a run, therefore, if a
 variable changes between parses your task will have a different hash.
 This usually happens with DATETIME. If you don't absolutely need this
 variable, remove it or find a replacement. If you have to, I think the
 vardepsexclude variable flag is the way to do it?

Quentin
