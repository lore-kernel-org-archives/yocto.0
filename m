Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7356FE0052B
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 11:16:35 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id l15so2147798eak.20
	for <yocto@yoctoproject.org>; Sat, 02 Nov 2013 11:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=R2RtVruQoysMoRW+h5qeD3RQjkfptwocVxmk3r2Ajrc=;
	b=qyrujN9DN04k/OkObwG8m+oEVKGOs3/JWOrtZ5govz+XQaZevU4PBmmQ1eKfrfD7Gq
	bqXj39p8CPp+PmUBnZDr2BKck7ctAar1zKvvy2XsTjhbCTXzMmSMmDP3aHJwd+wbx8jJ
	M0KAP41riJmP2MhlJKpWnhcQeNNl1hf1a4e5vuTiJ1cxPHv6AyA5+BFqgwyiIinMk4Ji
	LoiRLVFxVT7wW0bmoX8llX/6V7kyeLfL2Wc1Bm8uBlI8Jz/iAuNJJtVosqReVnMtgqJh
	Ph16uvG+WMNId6anGnMgXGai86ps0EUE8zpvE7hwiYDIC6EeXeBf1aaQAqFP3hD3XADJ
	6SQQ==
X-Received: by 10.15.45.135 with SMTP id b7mr607071eew.135.1383416194298;
	Sat, 02 Nov 2013 11:16:34 -0700 (PDT)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id m54sm23447588eex.2.2013.11.02.11.16.33
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 02 Nov 2013 11:16:33 -0700 (PDT)
Date: Sat, 2 Nov 2013 19:16:38 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20131102181638.GC5768@jama>
References: <alpine.DEB.2.02.1311021306510.26003@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1311021306510.26003@oneiric>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: so how does PACKAGECONFIG really work?
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
X-List-Received-Date: Sat, 02 Nov 2013 18:16:36 -0000
X-Groupsio-MsgNum: 16909
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline

--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 02, 2013 at 01:15:04PM -0400, Robert P. J. Day wrote:
>=20
>   most of the way thru the variable glossary and this one confuses me.
> from here:
>=20
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PA=
CKAGECONFIG
>=20
> we have:
>=20
> "This variable provides a means of enabling or disabling features of a
> recipe on a per-recipe basis. PACKAGECONFIG blocks are defined in
> recipes when you specify features and then arguments that define
> feature behaviors. Here is the basic block structure:
>=20
>      PACKAGECONFIG ??=3D "f1 f2 f3 ..."
>      PACKAGECONFIG[f1] =3D "--with-f1,--without-f1,build-deps-f1,rt-deps-=
f1"
>      PACKAGECONFIG[f2] =3D "--with-f2,--without-f2,build-deps-f2,rt-deps-=
f2"
>      PACKAGECONFIG[f3] =3D "--with-f3,--without-f3,build-deps-f3,rt-deps-=
f3"
>=20
> which *seems* to suggest that you must first set PACKAGECONFIG to the
> list of features, but i see numerous examples that don't seem to obey
> that condition.

Not all features, but *enabled* features.

>  from meta-oe/recipes-extended, this looks good:
>=20
> gnuplot/gnuplot.inc:PACKAGECONFIG ??=3D "cairo"
> gnuplot/gnuplot.inc:PACKAGECONFIG[cairo] =3D "--with-cairo,--without-cair=
o,cairo pango"
>=20
>  this looks like it's missing a reference to "ftdi":
>=20
> lcdproc/lcdproc5.inc:PACKAGECONFIG ??=3D "usb"
> lcdproc/lcdproc5.inc:PACKAGECONFIG[usb] =3D "--enable-libusb,--disable-li=
busb,virtual/libusb0"
> lcdproc/lcdproc5.inc:PACKAGECONFIG[ftdi] =3D "--enable-libftdi,--disable-=
libftdi,libftdi"

It's quite simple, usb is by default enabled, ftdi is by default
disabled.

If you want to enable ftdi in your .bbappend or through local.conf you
need to add ftdi to PACKAGECONFIG variable.

>  and this looks, well, totally wrong (at least according to the
> explanation in the manual):
>=20
> collectd/collectd_5.2.2.bb:PACKAGECONFIG ??=3D ""
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[snmp] =3D "--enable-snmp,--disab=
le-snmp --with-libnetsnmp=3Dno,net-snmp"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[libmemcached] =3D "--with-libmem=
cached,--without-libmemcached,libmemcached"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[iptables] =3D "--enable-iptables=
,--disable-iptables,iptables"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[postgresql] =3D "--enable-postgr=
esql,--disable-postgresql,postgresql"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[dbi] =3D "--enable-dbi,--disable=
-dbi,libdbi"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[modbus] =3D "--enable-modbus,--d=
isable-modbus,libmodbus"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[libowcapi] =3D "--with-libowcapi=
,--without-libowcapi,owfs"
> collectd/collectd_5.2.2.bb:PACKAGECONFIG[sensors] =3D "--enable-sensors,-=
-disable-sensors,lmsensors"
>=20
>  so ... clarification? oh, and while i'm here, it's easy enough to use
> the "bb" utility to print PACKAGECONFIG:
>=20
> $ bb show -r gnuplot PACKAGECONFIG
> Parsing recipes..done.
> PACKAGECONFIG=3D"cairo"
> $
>=20
> but is there a way to display the value of PACKAGECONFIG[cairo]? "bb"
> doesn't seem prepared to do something like that.
>=20
> rday
>=20
> --=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJ1QYYACgkQN1Ujt2V2gBzIhQCffcH/NHnhWJE6GFc8Y/Wy+It5
pNgAnjQmoRNKuKUKQiuajyj7pFyFyS2Q
=2Ngg
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--
