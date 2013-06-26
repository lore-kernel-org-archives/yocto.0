Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADA7CE013B0
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 09:29:54 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b15so7666472eae.24
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 09:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=kLTTdWM7OjSUq53Uo9wdxwnkN2uMP6DI8UahnxqzIno=;
	b=Afo1r7dGm4SnorAiQMpzsjxOvHSOG2ljmS5Ol5Lo0yUEw6+Wc6gcSTCqDQraqtSakV
	pWRojr8AckaHlxILL5waPmGU/w5mya4KpQU4OJSYACbKMhzwYOfxPBsjvoaXyhtCUZ4E
	HDrn6wLmhjHTywcbOxg0cFOYfQWXvFzcUj6+6UPfjjlXcVMe7CGkyj+A5L102Co7upDp
	OcLQwS2pG6iFDmkdHMmeWqRBd3o4Gz9M/uIvdwCvro/pZgz87NpEHah4lC0vdKF7Z5OR
	sY+aBFazhTj8VQafx8RE2I2Gc0W4hmseM0gMla38/KNPeqNmov9ULvAFBTDxw/YH19rV
	nTJg==
X-Received: by 10.14.95.135 with SMTP id p7mr5023130eef.16.1372264193180;
	Wed, 26 Jun 2013 09:29:53 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	ci50sm43874393eeb.12.2013.06.26.09.29.52 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 26 Jun 2013 09:29:52 -0700 (PDT)
Date: Wed, 26 Jun 2013 18:30:30 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20130626163030.GC3261@jama>
References: <51CB12F8.5090203@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <51CB12F8.5090203@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Strange IPK naming
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
X-List-Received-Date: Wed, 26 Jun 2013 16:29:55 -0000
X-Groupsio-MsgNum: 14667
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2013 at 10:12:40AM -0600, Gary Thomas wrote:
> I have a target machine whose name contains a '-', e.g. MACHINE=3D"xyz-99"
> When I build packages, the tmp/deploy/ipk directory is munged to be
> tmp/deploy/ipk/xyz_99
>=20
> Can someone tell me why this happens (where)? and can I do something
> about it?  It makes it hard to set up the package database (/etc/opkg/bas=
e-feeds.conf)
> automatically in my image.

xyz_99 is MACHINE_ARCH, rpm doesn't like dashes in architectures=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlHLFyYACgkQN1Ujt2V2gBzwMgCggxlIhecyK2RDowY62OvRxjJ1
E+wAoLlY03ScR5vNhOKlrFkEaggPYmge
=CKHJ
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--
