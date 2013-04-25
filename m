Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E870CE014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 01:41:15 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id 10so1681090pdc.0
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 01:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=0wPXye4pPVHNEmJKIeQOLh2XiRj6uIs80LSVFqS5maU=;
	b=Mq+7mdRB/4wGOoHDwS7lf7PezlYkEPVpTrxmNQjQ8yOp5e8CYPMZDu4Yksn9d9buYA
	On9loA1xmL6MO6UTkSaRN49cFiB8NoXu/2iK6X+/LloaSRJyYR31QLcnfYeQrmDjIrDa
	IDxvluGM6XnKViqRQAUXrAiCEfpiHLvax1RU4NElecGYX9HxucrDCSM86c+IIPVefowa
	WC3Ny+ubINgBvQdpD1gCbwTE4DMtk3BlB4BGj75Cs5pthAJVgQccrZ7veLUNronATGBK
	TTWa+A+mEuxtLRczKSAFqU+oDZWpPIkFqz+4CZSqMohA3PEt4mAMPTn4VJCB1jADqKiI
	sDhw==
X-Received: by 10.68.13.4 with SMTP id d4mr51810669pbc.49.1366879275645;
	Thu, 25 Apr 2013 01:41:15 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	at4sm6466149pbc.40.2013.04.25.01.41.12 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 01:41:14 -0700 (PDT)
Date: Thu, 25 Apr 2013 10:41:25 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Francesco Del Degan <f.deldegan@pr0gg3d.net>
Message-ID: <20130425084125.GB5538@jama.dyndns-home.com>
References: <87fvyf5aj2.fsf@pr0gg3d.net>
MIME-Version: 1.0
In-Reply-To: <87fvyf5aj2.fsf@pr0gg3d.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: psplash_git.bb: Error when building with icecc
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
X-List-Received-Date: Thu, 25 Apr 2013 08:41:16 -0000
X-Groupsio-MsgNum: 13423
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Y7xTucakfITjPcLV"
Content-Disposition: inline

--Y7xTucakfITjPcLV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 25, 2013 at 09:34:09AM +0200, Francesco Del Degan wrote:
> Hi all, i just found an error building core-image-basic with icecc
> inherited:

You can send patch extending blacklist defined in icecc.bbclass:
    system_package_blacklist =3D [ "uclibc", "glibc", "gcc", "bind", "u-boo=
t", "dhcp-forwarder", "enchant", "connman", "orbit2" ]
    user_package_blacklist =3D (d.getVar('ICECC_USER_PACKAGE_BL') or "").sp=
lit()

or add psplash to ICECC_USER_PACKAGE_BL

> NameError: global name 'set_icecc_env' is not defined
>=20
> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "do_compile", line 26, in <module>
> ERROR:=20
> ERROR:   File "do_compile", line 3, in do_compile
> ERROR:=20
> ERROR: The code that was being executed was:
> ERROR:      0022:        bb.build.exec_func("oe_runmake", d)
> ERROR:      0023:        shutil.copyfile("psplash", outputfile)
> ERROR:      0024:
> ERROR:      0025:
> ERROR:  *** 0026:do_compile(d)
> ERROR:      0027:
> ERROR: [From file: 'do_compile', lineno: 26, function: <module>]
> ERROR:      0001:
> ERROR:      0002:def do_compile(d):
> ERROR:  *** 0003:    set_icecc_env
> ERROR:      0004:    import shutil, commands
> ERROR:      0005:
> ERROR:      0006:    # Build a separate executable for each splash image
> ERROR:      0007:    convertscript =3D "%s/make-image-header.sh" %
> d.getVar('S', True)
> ERROR: [From file: 'do_compile', lineno: 3, function: do_compile]
> ERROR: Function failed: do_compile
>=20
>=20
>=20
> Seems that icecc compile_prepend (set_icecc_env shell function) gets prep=
ended
> into psplash compile that is written in python. How to deal with it, and
> in general, is that possible to mix languages in prepend/append?
>=20
> I'm using poky master and icecc is working great!
>=20
> Cheers,
>   Francesco
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Y7xTucakfITjPcLV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlF47DUACgkQN1Ujt2V2gBxlSACffxjMm7leRjAMRM5kQRxlBlSy
iBQAoJxhXfIVfBST5We6t4byNFfrVJA+
=VhH6
-----END PGP SIGNATURE-----

--Y7xTucakfITjPcLV--
