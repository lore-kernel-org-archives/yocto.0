Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8AF4E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 10:33:51 -0800 (PST)
Received: by mail-ea0-f169.google.com with SMTP id l9so11482909eaj.14
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 10:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=KcgSXkvEb7zuq9Ha2kgkbM1Tv/U7ElE+e+rUWmiA2vw=;
	b=MCKC73FnpSbxQ2UFq20/Tn0W0f1sIMqc4XZsrOwTXHuecpX2tQqfgH3MzFOQYgzKdr
	3A23pDMM+w2DE2a23uhP2d0lsSKYbKWGceD50bXRkFQw+kBgTENNmeS3+fkNunJVb4al
	9DapeUJfg9opfKrjxImFX945OLG+LKTjA1+EHvunzN91t9scNpTSrSPll4qPs+ORo0KX
	Iz1229d9nC0wiJHzvJCceJg8d5MrdQK5TlI0gF7U73JhmEkb55FPvRaj2LbwocP5nuiQ
	IJIR665J8hs1dhhzdobJJB13Eb/O2rMy6Ijki5VLelG7mBUW8ZSTt+CXy1PxC2xPb04r
	EZsQ==
X-Received: by 10.14.179.130 with SMTP id h2mr50082844eem.34.1386268429859;
	Thu, 05 Dec 2013 10:33:49 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id h3sm83845643eem.15.2013.12.05.10.33.48
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Dec 2013 10:33:49 -0800 (PST)
Date: Thu, 5 Dec 2013 19:34:02 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20131205183402.GG3724@jama>
References: <52A0A38E.7020903@gmail.com> <52A0A520.7060103@windriver.com>
	<52A0A974.9080207@gmail.com> <52A0AAF6.2000509@windriver.com>
	<52A0AD72.5080908@gmail.com> <52A0AF06.8050407@windriver.com>
MIME-Version: 1.0
In-Reply-To: <52A0AF06.8050407@windriver.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: Board specific bbappend file
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
X-List-Received-Date: Thu, 05 Dec 2013 18:33:56 -0000
X-Groupsio-MsgNum: 17458
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XRI2XbIfl/05pQwm"
Content-Disposition: inline

--XRI2XbIfl/05pQwm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 05, 2013 at 11:51:18AM -0500, Bruce Ashfield wrote:
> On 13-12-05 11:44 AM, Stefan Roese wrote:
> > On 05.12.2013 17:33, Bruce Ashfield wrote:
> >>>> What exactly are you tried to change on a per-board basis ? Assuming
> >>>> it is variables, you can use the standard OVERRIDES mechanism to
> >>>> have a version specific bbappend, that changes variables on a per
> >>>> board basis.
> >>>>
> >>>> i.e.
> >>>>
> >>>>         FOO_<machine name> =3D "bar"
> >>>>         FOO_<another machine name> =3D "bar2"
> >>>>
> >>>> Assuming the generic recipe uses these variables appropriately, you'=
ll
> >>>> be fine.
> >>>
> >>> Specifically its the SRC_URI / SRC_URI_append variable (e.g. for a li=
nux
> >>> kernel and u-boot etc). And since this one is used in many recipes, I
> >>> can't just put those settings in the machine conf file.
> >>>
> >>> Do you have any recommendations how to change this variable (per reci=
pe)
> >>> without touching the generic bb file?
> >>
> >> You can absolutely change the SRC_URI on a per-board basis. Just use
> >> the technique that I showed above, and do it in a bbappend to your
> >> linux recipe.
> >>
> >> i.e. something like: SRC_URI_qemux86 +=3D "file://myfancypatch.patch"
> >
> > Yes, right. But this would mean doing it in a "generic" bbappend file? =
E.g.
> >
>=20
> Definitions vary. I wouldn't call that generic :)
>=20
> > recipe:
> > linux-xyz_3.12.bb
> >
> > and its "generic" append file:
> > linux-xyz_3.12.bbappend
> >
> > And thinking about for example 20 boards, this would mean to add 20
> > "SRC_URI_fooabc" defines to this bbappend file. Just shifting the
> > changes from the bb file to the "common" bbappend file.
>=20
> Yes that's how variable namespace and override resolution works (at
> a high level).
>=20
> >
> > What I was looking for is more a way to do this on a one-file-per-board
> > basis. Is this possible somehow?
>=20
> There are plenty of things you could do, but I'd think of them more as
> hacks (or maybe someone else reading has a clean suggestion that I'm
> not aware of) with python, etc.
>=20
> You could also have a layer per board, and each layer have a bbappend
> with the boards changes, that's what layers provide already.

Overrides should be used even in cases with separate layer for each
board.

Documentation was improved lately about this problem:
http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#best-practi=
ces-to-follow-when-creating-layers

> On a separate note, if you really are managing this many boards, with
> patches, configs and separate changes you really don't want to spread
> those patches into many layers, files and rcipes. Maintenance becomes
> a big problem, as does patch failures and consistent configuration
> management.
>=20
> Cheers,
>=20
> Bruce
>=20
> >
> > Thanks,
> > Stefan
> >
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--XRI2XbIfl/05pQwm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKgxxoACgkQN1Ujt2V2gBzFPQCdEZd+p94+fjNyXYmFvlq549e9
K58AnivCadPhynr8CpsPcYFzS6mc0i0m
=7PgZ
-----END PGP SIGNATURE-----

--XRI2XbIfl/05pQwm--
