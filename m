Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C032E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:00:38 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id kl13so2298365pab.18
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=SMv1FlGHkzGwYB8fyWYb8CPL0M5ieOWnMvF8cjPXFGw=;
	b=TRijd63XoHWAcsGURzcLt8kFo+2QOLV/UEw0xTBOo+yyZ/Ki9SUF5tYZYyStTGlxcY
	/kDrBtz6QDtQzjOjM4nlEgHNhYCCCF3k+6HCJyoyPlUAghDm+51+d8hn17OcPWkVW3MA
	rTiY3ZVl7DxkXlfNJzpp+47PSTjtRC9AsVq0Vl481pUNCGAGtwKodoMTgLvhCqzHoPw0
	z/1sJ8vII7EW5lPqcq7b3y0Ct1MDhQGXiAiGEjZsSFWtOICyMNN1O4yPuK1WqCOatIe5
	BaNctpV39CvhArc8nbNkn9SmNLq27QO1LDrEGOFkmHTVnWJqcp7LcmTaGl7onvUut1TT
	L2bQ==
X-Received: by 10.69.3.4 with SMTP id bs4mr19564897pbd.5.1366380038234;
	Fri, 19 Apr 2013 07:00:38 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id ef4sm13508329pbd.38.2013.04.19.07.00.35
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 19 Apr 2013 07:00:37 -0700 (PDT)
Date: Fri, 19 Apr 2013 16:00:38 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20130419140038.GI2489@jama>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1304190945410.5102@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any point in a single machine recipe using a machine-specific file?
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
X-List-Received-Date: Fri, 19 Apr 2013 14:00:38 -0000
X-Groupsio-MsgNum: 13279
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CxDuMX1Cv2n9FQfo"
Content-Disposition: inline

--CxDuMX1Cv2n9FQfo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2013 at 09:49:56AM -0400, Robert P. J. Day wrote:
>=20
>   using the example i patched earlier, here's the file hierarchy for
> raspberry pi's netbase recipe:
>=20
> ./netbase_5.0.bbappend
> ./netbase-5.0
> ./netbase-5.0/raspberrypi
> ./netbase-5.0/raspberrypi/interfaces
> ./netbase-5.0/raspberrypi/hosts
>=20
>   i understand the notion of a machine-specific subdirectory for
> files, such as what you'd find under a layer like meta-ti which
> defines multiple machines, so this is understandable for meta-ti:
>=20
> .
> ./netbase_5.0.bbappend
> ./netbase-5.0
> ./netbase-5.0/beagleboard
> ./netbase-5.0/beagleboard/interfaces
>=20
>   but in the case of the rpi, is there any value in putting the files
> under a machine-named subdirectory? of course it won't hurt, but is
> there any point to it?

Yes, meta-rpi layer can be included when doing builds for different
MACHINEs, raspberrypi subdirectory makes sure that their interfaces,
hosts files are not used accidentaly

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--CxDuMX1Cv2n9FQfo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFxTgYACgkQN1Ujt2V2gBxWpgCfeISJ8KpBZD8qnk+fp4DhIKHP
u64An146AKIoxKbw/Oc1KfOQ/K+XV59F
=zziH
-----END PGP SIGNATURE-----

--CxDuMX1Cv2n9FQfo--
