Return-Path: <martin.jansa@gmail.com>
Received: from mail-da0-f45.google.com (mail-da0-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0585E00740
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 08:18:39 -0800 (PST)
Received: by mail-da0-f45.google.com with SMTP id w4so1875723dam.18
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 08:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=r7rEzxKB8myNjEvbzvlh198IOj6kS4h4rvvDod4Wj+g=;
	b=mlPdnbxWhRa5OH9ZpbimtNe8Wd2oTwE0e1dQlHEPgwa6/c92jVXQSLhJNRL6XbhTfy
	DswwG9HmWk9XfvhuFK1cnSMAsB314oxyZ78DTZJM7pbYlXZ93BC5B/cPocCVjwERSpHM
	VUkLH4FfRxy2o66pVO6HSrIzmjXAd7xW/K00TCtEZOA1leIwrgztyRU9nRZgIxaAp28X
	+HCAFPeTdp2qOHjRQquXT5OLyvjrCajS16lOXXdHT+KzlrmfC14Xi6H27VGcUEBBvGCi
	UDvHBR0+22IRQNJ47KNipJE/uQ1MVpPL2ONEU+BgILu18wq8FnGG/ec55CsxUkNlndSI
	ut0Q==
X-Received: by 10.68.203.198 with SMTP id ks6mr255344200pbc.35.1358180319602; 
	Mon, 14 Jan 2013 08:18:39 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id o5sm8989473paz.32.2013.01.14.08.18.36
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 14 Jan 2013 08:18:38 -0800 (PST)
Date: Mon, 14 Jan 2013 17:18:36 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
Message-ID: <20130114161836.GE2992@jama>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D23083@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BDAof70=YAjtkpwH3ZpV5doDiVBuySZyq9YOiuajTQJQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+QkY1BDAof70=YAjtkpwH3ZpV5doDiVBuySZyq9YOiuajTQJQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SRCPV description
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Jan 2013 16:18:40 -0000
X-Groupsio-MsgNum: 11499
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gMR3gsNFwZpnI/Ts"
Content-Disposition: inline

--gMR3gsNFwZpnI/Ts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 14, 2013 at 10:10:58AM -0500, Jerrod Peach wrote:
> On Mon, Jan 14, 2013 at 9:52 AM, Rifenbark, Scott M <
> scott.m.rifenbark@intel.com> wrote:
>=20
> > Hi,
> >
> > I need a description of the SRCPV variable for the YP reference glossar=
y.
> >  I have been told that it is generated and not assigned and that it is =
used
> > to define PV values that include the source revisions from an RCS.  By
> > default it is set to the following in the conf/bitbake.conf file:
> >
> > SRCPV =3D "${@bb.fetch2.get_srcrev(d)}"
> >
> > Can anyone provide more information on this variable?
> >
> > Thanks,
> > Scott
> >
> >
> >
> > Scott Rifenbark
> > Intel Corporation
> > Yocto Project Documentation
> > 503.712.2702
> > 503.341.0418 (cell)
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>=20
> Scott,
>=20
> Off the top of my head, I know SRCPV is a combination of the VCS type and
> revision used in the actual build. Most interestingly, SRCPV will always
> contain the real revision used in the build, even if ${AUTOREV} is
> specified as the SRCREV for a given package. Note that if a package does
> not include SRCPV somewhere within its recipe, I believe setting SRCREV to
> ${AUTOREV} will have no effect, as ${AUTOREV} by itself simply resolves to
> the string "AUTOINC", which does not permute the hash of the recipe.
>=20
> Note that I'm not really a Yocto expert nor am I sitting with the code in
> front of me right now, so someone can jump in if I missed something or got
> a detail incorrect.  I don't remember the exact format of the string, but=
 I
> want to say its a combination of the VCS name, a Yocto-internal VCS
> identification number (just like 1 or 2, not some huge int), and the
> revision (be it a hash it git or an integer in SVN or whatever else is us=
ed
> by a supported VCS).

There isn't VCS type in SRCPV (that's why there is always prefix like
1.0+git${SRCPV}, 1.0+svn${SRCPV}). Some recipes even in oe-core are
using wrong prefix like -git or ~git:
meta/recipes-connectivity/ofono/ofono_git.bb:PV  =3D "0.12-git${SRCPV}"
meta/recipes-extended/libzypp/libzypp_git.bb:PV =3D "0.0-git${SRCPV}"
meta/recipes-extended/sat-solver/sat-solver_git.bb:PV =3D "0.0-git${SRCPV}"
meta/recipes-extended/zypper/zypper_git.bb:PV =3D "1.5.3-git${SRCPV}"
meta/recipes-graphics/mesa/mesa-git.inc:PV =3D "9.1~git${SRCPV}"

And +git/+gitr, +svn/+svnr prefixes are inconsistently used.

AUTOINC is used instead of LOCALCOUNT only after
http://git.openembedded.org/bitbake/commit/?id=3D61cf01c5c236b4218f40cfae7c=
059c2b86765dbd

And AUTOREV should expand to latest revision in SRCREV even without
SRCPV in recipe (SRCPV is already used in bitbake.conf
meta/conf/bitbake.conf:SRCPV =3D "${@bb.fetch2.get_srcrev(d)}").

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--gMR3gsNFwZpnI/Ts
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlD0L9wACgkQN1Ujt2V2gBzOAACglrbbRwqjr+gtIjvQMfm0gf5A
l2YAniag9TbR0ToLNU+75OvhVbPm4Xto
=uONs
-----END PGP SIGNATURE-----

--gMR3gsNFwZpnI/Ts--
