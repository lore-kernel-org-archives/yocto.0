Received: from mail3.multitech.com (mail3.multitech.com [65.126.90.13])
 by mx.groups.io with SMTP id smtpd.web12.1361.1628553461958491428
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Aug 2021 16:57:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: multitech.com, ip: 65.126.90.13, mailfrom: prvs=1848de5b8c=john.klug@multitech.com)
Received: from mail3.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id D4F8582563_111C0F4B;
	Mon,  9 Aug 2021 23:57:40 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (mtexchange.dc.multitech.prv [192.168.11.6])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "", Issuer "MultiTech Systems Intermediate CA 01" (verified OK))
	by mail3.multitech.com (Sophos Email Appliance) with ESMTPS id 7DD85823DC_111C0F4F;
	Mon,  9 Aug 2021 23:57:40 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (192.168.11.6) by
 EXCHDBPM1.dc.multitech.prv (192.168.11.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 9 Aug 2021 18:57:40 -0500
Received: from EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) by
 EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) with mapi id 15.01.2242.012; Mon,
 9 Aug 2021 18:57:40 -0500
From: "John Klug" <john.klug@multitech.com>
To: Josef Holzmayr <jester@theyoctojester.info>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How does one add do_fetch, do_unpack to an image recipe?
Thread-Topic: [yocto] How does one add do_fetch, do_unpack to an image recipe?
Thread-Index: AQHXiyKqjBpz7Uyd302/imWmmVBJQqtq//4AgAC1SA8=
Date: Mon, 9 Aug 2021 23:57:40 +0000
Message-ID: <40ac28433e4749ab957a1c52d3bbf1fd@multitech.com>
References: <4b07fb124a79466a9e8ee0d138151931@multitech.com>,<2fc610b2-2a45-f41b-cc63-40af68632c66@theyoctojester.info>
In-Reply-To: <2fc610b2-2a45-f41b-cc63-40af68632c66@theyoctojester.info>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.52.101]
MIME-Version: 1.0
X-SASI-RCODE: 200
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Thanks for your great help.  A native recipe is what I needed with data in =
it only.  So my native recipe copies files into ${D}${datadir}/${PN}.

Then my image build uses DEPENDS=3D to bring in the native recipe.

Then my IMAGE_POSTPROCESS_COMMAND can reference ${STAGING_DATADIR_NATIVE}/[=
native recipe name] to find the data it needs.

Then I don't need to patch the bbclass file.


From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Josef Holzmayr <jester@theyoctojester.info>
Sent: Monday, August 9, 2021 12:41 AM
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How does one add do_fetch, do_unpack to an image recip=
e?
=A0  =20
Howdy!

Am 07.08.2021 um 02:25 schrieb John Klug:
> I am using dunfell.
>=20
> In the documentation I see:
>=20
>  http://mail2.multitech.com:32224/?dmVyPTEuMDAxJiYyOTU2NDk0NDY2NmQ1NDQyND=
02MTEwQzAxOF8yMDIxXzcwNzFfMSYmYjc2MzZjMTgxNGE4NTkzPTIzMzMmJnVybD1odHRwcyUzQ=
SUyRiUyRnd3dyUyRXlvY3RvcHJvamVjdCUyRW9yZyUyRmRvY3MlMkZjdXJyZW50JTJGYml0YmFr=
ZS11c2VyLW1hbnVhbCUyRmJpdGJha2UtdXNlci1tYW51YWwlMkVodG1sJTIzdW5zZXR0aW5nLXZ=
hcmlhYmxlcw=3D=3D
>=20
> In case some filter removes the yocto URL, I am referring to:
>=20
>=A0=A0=A0=A0=A0 docs/current/bitbake-user-manual/bitbake-user-manual.html#=
unsetting-variables
>=20
> Which has this example:
>=20
>=A0=A0=A0=A0=A0 unset do_fetch[noexec]
>=20
> If I put this in my image recipe, the do_fetch noexec item still exists.
>=20
> In order to fix this problem I had to patch openembedded-core/meta/classe=
s/image.bbclass, and remove the line setting do_fetch[noexec]=3D"1" and the=
 ones following.
>=20
> I need to do a fetch for my IMAGE_POSTPROCESS_COMMAND.

=A0From first glance, I'd guess that the approach is just not correct. If=20
that thing to be fetched also needs to go *into* the image: make it a=20
recipe on its own. If you only need it during build time, then it should=20
probably be a -native dependency, and therefore again a recipe on its=20
own. Then the image recipe can depend on it and use its contents during=20
the build/postprocess stage.

Greetz

>=20
>=20
> Thanks.
>=20
>=20
>=20
>=20
>=20
     =
