Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web12.7508.1622125662648230299
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 07:27:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4FrVXD0XCwz5tlB;
	Thu, 27 May 2021 16:27:39 +0200 (CEST)
Date: Thu, 27 May 2021 16:27:38 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: =?utf-8?B?RnJhbsOnb2lz?= GOUDAL <francois.goudal@airmont.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Making a recipe that enables a systemd service it doesn't provide
Message-ID: <20210527142738.qxdauiujayqmlku2@qschulz>
References: <4DC83B72-2CFE-4F0B-B5A8-9100C502535E@airmont.com>
MIME-Version: 1.0
In-Reply-To: <4DC83B72-2CFE-4F0B-B5A8-9100C502535E@airmont.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Fran=C3=A7ois,

On Thu, May 27, 2021 at 02:17:03PM +0000, Fran=C3=A7ois GOUDAL wrote:
> Hello,
>=20
> I am struggling with something I couldn=E2=80=99t find any solution for=
 so far.
>=20
> I am trying to make a very simple recipe that does this:
> - Drop an openvpn configuration file in /etc/openvpn/test.conf
> - Make the systemd service openvpn@test.service enabled by default
>=20
> The recipe itself depends on openvpn, and so, it doesn=E2=80=99t, by it=
self, provide the openvpn@.service , which comes with openvpn.
>=20
> Dropping the openvpn configuration file in the rootfs is easy, but I ca=
n=E2=80=99t manage to make the recipe to enable the service.
> I=E2=80=99ve tried adding this to my recipe:
>=20
> inherit systemd
> SYSTEMD_AUTO_ENABLE =3D "enable"
> SYSTEMD_SERVICE_${PN} =3D "openvpn@test.service"
>=20
> But bitbake fails on this recipe with the message below:
>=20
> ERROR: test-openvpn-config-1.0-r0 do_package: SYSTEMD_SERVICE_test-open=
vpn-config value openvpn@test.service does not exist
>=20
> I believe this is caused by the fact that the service file is not part =
of the files installed by the recipe itself, but it is not meant to be an=
yway.
>=20

Yes that seems like the origin of the error.

Recipe data is local to the recipe. You therefore also cannot modify the
openvpn recipe from another recipe (this includes enabling a service for
example).

The proper way to do it is to create a bbappend for the openvpn recipe
and enable the service from there. SYSTEMD_AUTO_ENABLE =3D "enable" shoul=
d
be enough, though it'll start the loopback client and server unit too.

It is not possible to have different image recipes enable or not the
service, if this is something you want, you need to modify
SYSTEMD_AUTO_ENABLE of the openvpn recipe in a configuration file (and
the proper way is in a distro configuration file).

Cheers,
Quentin
