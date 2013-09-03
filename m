Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E025E0148D
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 05:43:59 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id m14so2986081eaj.34
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 05:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=5JFKeyBXpHioQ6SzsMzEBiYCO3tsZ2VKT9tsmbl6Lto=;
	b=Qez2L7bc/gm1t9hTISu8thMhMkJPk22u8JGyjmbHK2LlP+9M3myh8rTXiY6FLf/BYC
	YAIR5PnqlWjiiAamO1SBgvDe7QBqtgJiQXcFYxC8xodIFjydQOLaTfzSRAQ/YX+YQVxB
	UpNoASxLHR51JiKeVk/jT0nqNnTw8UvNhDEbUKYxqj1brKxooBswdoGG/LtCgR/T2Cb3
	vUE4ilBpnH1ojgjC06uvSLaaRaLKeZETEwNNYWskGdccySx9bD3d/+XKO0SFHKLFA8zR
	EesR6j9di2pxFNhZ9lqaFSHGjWQwpvKVbI/wJUmlAAMK7Q8jw1rd+Z1T3hUG0NBCaW+3
	Dokw==
X-Received: by 10.14.99.193 with SMTP id x41mr4024077eef.52.1378212239059;
	Tue, 03 Sep 2013 05:43:59 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	x47sm31180093eea.16.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 05:43:58 -0700 (PDT)
Date: Tue, 3 Sep 2013 14:45:16 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Andy Ng <andreas2025@gmail.com>
Message-ID: <20130903124516.GD3544@jama>
References: <CAAVaN8x9a3avwfkaUSs72vCpoaxMEsynJqHht8sBUUFCuHrP2A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAVaN8x9a3avwfkaUSs72vCpoaxMEsynJqHht8sBUUFCuHrP2A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Yocto-9.0 Fails to produce lttng-modules package
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
X-List-Received-Date: Tue, 03 Sep 2013 12:44:02 -0000
X-Groupsio-MsgNum: 15816
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="d9BE6hEQsVwTEwBv"
Content-Disposition: inline

--d9BE6hEQsVwTEwBv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 03, 2013 at 12:38:34PM +0100, Andy Ng wrote:
> Hello
>=20
> I try to produce opkg packages for my system, and I have activated the
> lttng-modules for tracing. After the build and I have the following error.
> Does anyone have seen something similar?
>=20
>=20
> ERROR: Error executing a python function in
> /opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/
> lttng-modules_2.1.1.bb:
> OSError: [Errno 2] No such file or directory:
> '/opt/projects/yocto/yocto-9.0/build-6qsabresdrt/tmp/work/imx6qsabresdrt-=
poky-linux-gnueabi/lttng-modules/2.1.1-r1/packages-split/lttng-modules-dbg'

Read
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4102
maybe it's the same cause and find command in last comment will help
you.

>=20
> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "do_package_ipk", line 194, in <module>
> ERROR:
> ERROR:   File "do_package_ipk", line 45, in do_package_ipk
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0190:        bb.utils.unlockfile(lf)
> ERROR:      0191:
> ERROR:      0192:
> ERROR:      0193:
> ERROR:  *** 0194:do_package_ipk(d)
> ERROR:      0195:
> ERROR: [From file: 'do_package_ipk', lineno: 194, function: <module>]
> ERROR:      0041:        basedir =3D os.path.join(os.path.dirname(root))
> ERROR:      0042:        arch =3D localdata.getVar('PACKAGE_ARCH', True)
> ERROR:      0043:        pkgoutdir =3D "%s/%s" % (outdir, arch)
> ERROR:      0044:        bb.mkdirhier(pkgoutdir)
> ERROR:  *** 0045:        os.chdir(root)
> ERROR:      0046:        from glob import glob
> ERROR:      0047:        g =3D glob('*')
> ERROR:      0048:        try:
> ERROR:      0049:            del g[g.index('CONTROL')]
> ERROR: [From file: 'do_package_ipk', lineno: 45, function: do_package_ipk]
> ERROR: Function failed: do_package_ipk
> ERROR: Logfile of failure stored in:
> /opt/projects/yocto/yocto-9.0/build-imx6qsabresdrt/tmp/work/imx6qsabresdr=
t-poky-linux-gnueabi/lttng-modules/2.1.1-r1/temp/log.do_package_write_ipk.2=
6873
> ERROR: Task 13
> (/opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/
> lttng-modules_2.1.1.bb, do_package_write_ipk) failed with exit code '1'
>=20
> Best regards,
> Andreas

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--d9BE6hEQsVwTEwBv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlIl2dwACgkQN1Ujt2V2gBxN5ACfZV5mm6tIwrwDILXnq25MIK+W
6m4AoID0b3lpCYB+rsbERXGaab5oR0aP
=tn/2
-----END PGP SIGNATURE-----

--d9BE6hEQsVwTEwBv--
