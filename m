Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D6DBE00832
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 06:18:33 -0800 (PST)
Received: by mail-ea0-f172.google.com with SMTP id q10so2387100ead.17
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 06:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=52PP/urdUblTHOuNqtSL8/rODDTSaYRxR0wSUD61DrM=;
	b=wZApLL5K1Kw0vlUOQB4ieM1np96ajYbMA5mtzxRMlN5TH3x2VPbmkuRMeXFazB/0zk
	j2W7mL2iVdngsvxWpNZw0qoJFgdADVFhOX1FFb2qxtWL+Qtj1a5BQJ3NyufZ8qi0o9eo
	cdpaLQZa8gmQsAepdld72BdPDl8eQ3ZurXE0jupxy+w6EwnePGIDiFgHmhAkKlWv5d3K
	WUIe3B7hmafdvG+Jop+b3yRpvOnVOSb35uuUKlNuO9liDpe+m/joU3pash8N02+vuNCF
	rl6xmvbuLcZxFatZcXgggBLvoQnkWey0V/oEikWgzGJST5dkDF6iOrSL1bjeivO5uqNy
	RsTA==
X-Received: by 10.14.114.71 with SMTP id b47mr21982755eeh.26.1389536311507;
	Sun, 12 Jan 2014 06:18:31 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id n7sm31392593eef.5.2014.01.12.06.18.28
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 12 Jan 2014 06:18:28 -0800 (PST)
Date: Sun, 12 Jan 2014 15:18:45 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: =?iso-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>,
	Robert Yang <liezhi.yang@windriver.com>
Message-ID: <20140112141845.GF16995@jama>
References: <2423322.zFb14inlks@koontz> <20140112133857.GE16995@jama>
	<4558388.sNptYpytgT@koontz>
MIME-Version: 1.0
In-Reply-To: <4558388.sNptYpytgT@koontz>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: Constant linux-yocto rebuild
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
X-List-Received-Date: Sun, 12 Jan 2014 14:18:34 -0000
X-Groupsio-MsgNum: 17754
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="V4b9U9vrdWczvw78"
Content-Disposition: inline

--V4b9U9vrdWczvw78
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 12, 2014 at 03:08:10PM +0100, S=F8ren Holm wrote:
>=20
> Wow - that was a quick response.
>=20
> Is it the two by Mike Crowe ?
>=20
> And do they get into dora at some point?

I hope so, adding Robert Yang, dora maintainer

> S=F8ndag den 12. januar 2014 14:38:57 skrev Martin Jansa:
> > On Sun, Jan 12, 2014 at 02:19:51PM +0100, S=F8ren Holm wrote:
> > > Hi
> > >=20
> > > I'm having a weird issue with dora. After having rebuild everything f=
rom
> > > scratch I usually rebuild some of my own applications and rebuild the
> > > image
> > > recipe to create the image. This all works great. But then after some
> > > number of rebuild linux-yoc suddenly gets rebuild every time. Even two
> > > consequtive builds of my image recipe give me two linux-yocto rebuild.
> > >=20
> > > Any hint on what might happen or what I can do to debug it?
> >=20
> > You need patch 3 and 4 from
> > http://lists.openembedded.org/pipermail/openembedded-core/2014-January/=
08807
> > 4.html
>=20
> --=20
> S=F8ren Holm
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--V4b9U9vrdWczvw78
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLSpEUACgkQN1Ujt2V2gBwBDACcC70QKdESEZDXNq6HKwoQLtWL
yEkAoKC+wXPx6niI4HVuJ/4Tqzu22Mz7
=IzUV
-----END PGP SIGNATURE-----

--V4b9U9vrdWczvw78--
