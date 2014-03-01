Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55EEAE009F9
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 14:09:01 -0800 (PST)
Received: by mail-pd0-f171.google.com with SMTP id r10so2199466pdi.30
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 14:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=N7s5Z7V8VjeCZAFCBQZbXXpIylIZBQtOMgjFlfrQ45s=;
	b=uXpXn0HzdTMHv+0iQZ3w4cU5MX8kiRMCSMN1e5r3567+8mMhkeqkLOGfhV8uU2uUwP
	6YL55fG1WfEqkSCWn7ZPvUul5DC+0GsMxLC2jRSerbZnm3vUNE0WvY511Y/b4/+UfNzB
	zkDKQMX4PQBAHgE3yyXiV/yq8NPeniWlgAsfVEgkHuXI9rawrc4qx0wC/pcnNj2hamGm
	MDHQA7PYKBj+a/DWPim42Lx6mOQV4iZq5U26BSmbQmCDlYQxet1FpwqGLXi3B5EMlkwb
	mTZkLs7xytXRDQskDa2KJSxeXstpIyoIMU8wx3zJDWfVHn2k4yPu0P1dziR3FBhO6iYP
	E+ng==
X-Received: by 10.68.96.99 with SMTP id dr3mr11341676pbb.40.1393711740701;
	Sat, 01 Mar 2014 14:09:00 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	pe3sm19684976pbc.23.2014.03.01.14.08.59 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 01 Mar 2014 14:08:59 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAA7h+Er+Y4Jnz5FAiVoVvxKU62rx6y_q7-0SpkRS_HWRFNieBg@mail.gmail.com>
Date: Sat, 1 Mar 2014 14:08:57 -0800
Message-Id: <B9E1ADC5-14DD-47A3-AAF2-595EA52FFB15@gmail.com>
References: <CAA7h+Er+Y4Jnz5FAiVoVvxKU62rx6y_q7-0SpkRS_HWRFNieBg@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
X-Mailer: Apple Mail (2.1874)
Cc: yocto@yoctoproject.org
Subject: Re: Making Modules and Enabling the in the Kernel when doing your own build?
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
X-List-Received-Date: Sat, 01 Mar 2014 22:09:02 -0000
X-Groupsio-MsgNum: 18282
Content-Type: multipart/signed;
	boundary="Apple-Mail=_542B165F-C5CE-4629-A5B4-E6B1C8A940C6";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_542B165F-C5CE-4629-A5B4-E6B1C8A940C6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Mar 1, 2014, at 1:43 PM, Rick Bianchi <bianchirickkutta@gmail.com> =
wrote:

>=20
> I have decided to compile my own poky image. Could someone elaborate =
on where I would set the usbip modules to be built and enabled in the =
kernel if I am doing my own build.
>=20

well you need to enabled usbip in kernel, probably it also means you =
need to enable CONFIG_EXPERIMENTAL
see drivers/staging/usbip/Kconfig it lists

USBIP_CORE
USBIP_VHCI_HCD
USBIP_HOST

Probably enabling these will be enough. Then you have to add the user =
space usbip tools and utils
and you should be set. btw. you might have to add recipes for usbip =
userspace components.



> Thanks,
> Rick
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_542B165F-C5CE-4629-A5B4-E6B1C8A940C6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMSWnkACgkQuwUzVZGdMxQ8VgCfbW0lOVHf6H54DrJEgB7FYX08
KAoAn2Is/dMeAsweRRh5HB+PERuj04Ya
=mB4p
-----END PGP SIGNATURE-----

--Apple-Mail=_542B165F-C5CE-4629-A5B4-E6B1C8A940C6--
