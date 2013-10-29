Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78176E016F2
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 06:42:39 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id l15so2314408eak.6
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 06:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=z42E6ESOWw13uLoDYNQ1QHixpSiI9Wi0gKP5C+Ayygk=;
	b=ojMMWpCColnFPUBUFpJ8V3g+t749dJQ2TbOgVBteFXXtm/s5lbsbETn3PMwwO5mxen
	X0gvJ9ijnO5sGDCFnOhA5WPWSvqYclmx3IDhiDvqozTJ8B5/fIwDqDobFOB4qDf0sR2f
	M+7X3WbwbcUzhu9phLnzN8MuOVwnYsudHJmKWAGoa+yBvK+eNnTq7MUSOYfS95+TYwz5
	TXiz6SmRWTpv1aBwVjKEBhvx+AVHwd2udMYH2uyVWKlU6pNeC8gYJhkJU97w9/hiqkmV
	UQhDqycKXOQYjYdfWO1UBz9XsTuyLjYw2fDPvHcPdR8RcfmrSLNEXkQt/JB2ZL/a5XTI
	58ng==
X-Received: by 10.14.225.66 with SMTP id y42mr27714357eep.2.1383054158007;
	Tue, 29 Oct 2013 06:42:38 -0700 (PDT)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id k7sm70513251eeg.13.2013.10.29.06.42.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Oct 2013 06:42:37 -0700 (PDT)
Date: Tue, 29 Oct 2013 14:42:36 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Hans =?iso-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Message-ID: <20131029134236.GI3697@jama>
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
	<20131029110034.GF3697@jama>
	<CAFyqS9q2aC38neoGDL5s_f3ywV0p8+j0689Xh_DHoHkBwNy0rg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFyqS9q2aC38neoGDL5s_f3ywV0p8+j0689Xh_DHoHkBwNy0rg@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 29 Oct 2013 13:42:40 -0000
X-Groupsio-MsgNum: 16770
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UthUFkbMtH2ceUK2"
Content-Disposition: inline

--UthUFkbMtH2ceUK2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2013 at 02:27:30PM +0100, Hans Beck=E9rus wrote:
> On Tue, Oct 29, 2013 at 12:00 PM, Martin Jansa <martin.jansa@gmail.com> w=
rote:
> > On Tue, Oct 29, 2013 at 12:46:18PM +0100, Hans Beck=E9rus wrote:
> >> Hi. I am wondering if we are using SRCREV wrong somehow.
> >> Is it expected that if we use SRCREV =3D "${AUTOREV}", that any changes
> >> to the remote should be automatically detected and downloaded/fetched?
> >> I can no see that this is actually what happens. Any changes made to
> >> the remote still need to be manually fetched or indirectly by stepping
> >> the recipe revision.
> >> Are we using SRCREV wrong or is this actually the way it is supposed
> >> to work? Also, is there some way to force a download to me made every
> >> single time by a recipe,
> >> irrespective of if the remote changed or not?
> >
> > It's supposed to run git ls-remote while parsing to get latest revision
> > in remote repo and then rebuild the package because of SRCPV change in
> > PV, are you using something like:
> >
> > PV =3D "1.0+git${SRCPV}"
> >
> > ?
> >
> Nope. I did not know we had to use PV. Sounds like we need to in the
> general case. But in this case,

You need to reference it somewhere, if you were using multiple git repos
in SRC_URI you probably need to define SRCREV_foo =3D "${AUTOREV}" for all
of them (where foo is from name=3Dfoo param for each repo).

> we actually do not have versions on the package itself since it is
> simply a container for several other binary packages merged into one
> binary file.
> So our "package" is downloading packages from several git repos,

"package" -> "recipe"

> stored in different folders using 'destsuffix'.
> Would it be ok to simply set PV =3D "${SRCPV}" ? I guess this will

SRCPV is sortable and consistent only with shared persistent PR server is u=
sed
across all builders - if that's not the case it's safer to prefix SRCPV
with some manually maintained version.

> result in a new target folder for each changed remote? And will this
> work when referring to several git repos in SRC_URI?

You'll need to define SRCREV_FORMAT and name parameter for each repo in
SRC_URI.

> Since changes are expected to happen frequently some sort of
> garbage-collection function is needed to get rid of all the obsolete
> package trees. IIRC was there not an option for this somewhere?

Maybe you're talking about rm_work, but I'm not sure what you mean by
package trees.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--UthUFkbMtH2ceUK2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJvu0wACgkQN1Ujt2V2gBzW0ACgoicEoH9qo92B+3ECHNNvKUX2
QIQAoKCaU1Wp/QKo9THssWaV80dxhWnM
=QLkT
-----END PGP SIGNATURE-----

--UthUFkbMtH2ceUK2--
