Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93F37E016E3
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 14:06:30 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id b45so651816eek.37
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 14:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qNObiO3l4WfY9HQ+a0a+mEix/HN29xyAz3PwP452++4=;
	b=QSVaIp7oWY7nvVD1hh7GI+rJMLK/QOMoQHVeya5Jdu0KkOhaHMB51RYIzKshUnWmx/
	yB+7z3DVNezbv/HKmQosIdarfRvPDpWLPi0t2zQqg6je7B0J4lN6s0Ny3JzcUCOMrVlk
	7PJGtrwxFlcVOXYSUn8aOhOQFsVk3cSl+yxcxHDgo5iU8Xion7qLt6m5RfWCE8XwlVDl
	y38gBT4GIEzbm2PZEqNy5Jw/Cp/Qi+Y0KKps3dapzbQTBFUFpV4f4bfHjrXI9nMEBppX
	PVSZbaZquvaBPhlzqOTu6/oZ17NAKmbJ8RVz9cP6ShakY18nKgxLfrKrmfwv8B783Cul
	W68g==
X-Received: by 10.14.174.131 with SMTP id x3mr20723078eel.25.1383602789636;
	Mon, 04 Nov 2013 14:06:29 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id z1sm26022254eeo.14.2013.11.04.14.06.27
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2013 14:06:28 -0800 (PST)
Date: Mon, 4 Nov 2013 23:06:36 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Bernard Mentink <bmentink@gmail.com>
Message-ID: <20131104220636.GH3684@jama>
References: <CALEed8Y_1TgNgF05H+YvJKnMDWhbeOVEb0vTCCdH+LECGzZM9w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALEed8Y_1TgNgF05H+YvJKnMDWhbeOVEb0vTCCdH+LECGzZM9w@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: Module loading issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Nov 2013 22:06:32 -0000
X-Groupsio-MsgNum: 16959
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Hlh2aiwFLCZwGcpw"
Content-Disposition: inline

--Hlh2aiwFLCZwGcpw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 05, 2013 at 10:42:26AM +1300, Bernard Mentink wrote:
> Hi Guys,
>=20
> I am having trouble loading some kernel CAN modules so that they go in my
> image.
>=20
> I have the following lines in my layers .conf file:
>=20
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-module-can-dev"
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-module-c_can"
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-module-c_can_platform"

Try:
s/_/-/g

> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-module-can"
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-module-can-raw"
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-module-mcp2515"
>=20
> all the modules end up in the rootfs except c_can and c_can_platform.
> All modules are built as modules.
>=20
> They end up in the deply/images/modules* tarball, but not in the rootfs ..
>=20
> Hopefully someone can suggest a solution.
>=20
> Cheers,
> Bernie

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Hlh2aiwFLCZwGcpw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJ4GmwACgkQN1Ujt2V2gBw/ugCgj0KbC5ZHzjxekkGwzBLmePst
jNQAnAzHnCw5R6mm4y5mRAhc8EN/jzK7
=4227
-----END PGP SIGNATURE-----

--Hlh2aiwFLCZwGcpw--
