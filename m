Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D2EAE00C4C; Tue,  1 Mar 2016 10:30:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A273BE00C3B
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 10:30:31 -0800 (PST)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aap42-0003pG-Lj from Joe_MacDonald@mentor.com ;
	Tue, 01 Mar 2016 10:30:30 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 1 Mar 2016 10:30:30 -0800
Received: by burninator (Postfix, from userid 1000)	id 565E6580523; Tue,  1
	Mar 2016 13:30:29 -0500 (EST)
Date: Tue, 1 Mar 2016 13:30:29 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20160301183028.GB12524@mentor.com>
References: <56D274C6.90607@twobit.us> <56D27649.4040306@twobit.us>
	<56D45073.3050800@windriver.com>
MIME-Version: 1.0
In-Reply-To: <56D45073.3050800@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] git recipes
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
X-List-Received-Date: Tue, 01 Mar 2016 18:30:35 -0000
X-Groupsio-MsgNum: 28783
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cvVnyQ+4j833TQvp"
Content-Disposition: inline

--cvVnyQ+4j833TQvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux] git recipes] On 16.02.29 (Mon 08:06) Mark Hatle=
 wrote:

> On 2/27/16 10:23 PM, Philip Tricca wrote:
> > Adding a sensible subject.
>=20
> Sorry couldn't reply when I saw this when you first sent it.  Corporate e=
mail
> server went down for those of us who DON'T use outlook.. argh..
>=20
> Anyway..
>=20
> What I'm generally used to in the Yocto Project work is that the 'git' ve=
rsion
> picks a specific git snapshot and makes it a quick operation for someone =
to
> arbitrarily change that snapshot by adjusting the SRCREV.

This has been the approach I'd always tried to take with _git recipes as
well and it tends to work very well for ones that are either the only or
the preferred recipe.  I think in our case we were always preferring the
released versions for several historical reasons and the _git recipes were
relegated to the second-tier because of it.  But that means that basically
they never got updated.

About a year and a half ago I started seriously talking about dumping the
userspace tools entirely and only ever working out of the _git recipes.
Shrikant started doing that work after I discussed it with him but we
never got beyond the policy recipes.  So if you guys think this is not a
completely insane thing to do, that's the direction I'd like to go with
this.

> We don't use the AUTOREV parameter, because that causes the system to hav=
e to do
> a git pull in order to evaluate the available versions and determine the =
SRCREV
> to use.  So it's all down to a parsing and performance issue.

And avoiding surprises on the other side of the bathtub curve, when
updates pop up that we aren't prepared for.  :-)  But we've been behind
on developments aging out, too, so I don't have a strong case to argue
against AUTOREV.

> What I've done on some of my own projects is have an AUTOREV version (loc=
ally),
> then when it triggers a recipe breakage, I think update the SRCREV and fi=
x it in
> the remote tree..  so I get the autorev, the world gets a version of the =
package
> that keeps working.  (I also update the SRCREV other times as well.. but =
the
> autorev breakage is one of the key triggers.)
>=20
> Joe might have some suggestions as well, I'm not against AUTOREV per say,=
 but I
> am worried about any performance issues during the parse.

I would really rather avoid AUTOREV, but I think the way we would
accomplish that is to edge away from our current recipes and bring the
_git ones back to centre stage.  Then we're likely to stay on top of a
fixed SRCREV anyway.

But as I say, maybe I'm completely insane on this point.

-J.

>=20
> --Mark
>=20
> > On 02/27/2016 08:17 PM, Philip Tricca wrote:
> >> While going through the backlog I ran across the 'git' versions of the
> >> user space. I noticed that a recent contribution was adding a patch to
> >> the git recipe and I figured that this patch would already be upstream
> >> and so wouldn't be necessary. Not so. The 'git' versions have SRCREV
> >> hard wired (SRCREV) to a commit id but it's way back from the end of
> >> 2013. They're also disabled via DEFAULT_PREFERENCE =3D "-1"
> >>
> >> These 'git' versions seem super useful for testing bleeding edge stuff
> >> so IMHO keeping them around would be the right thing to do. Not sure h=
ow
> >> I feel about them tracking an ancient commit though. Since they're nev=
er
> >> built by default it seems reasonable to track the master branch.
> >>
> >> What's our philosophy w/r to recipes that pull from git? Is there some
> >> history behind this SRCREV?
> >>
> >> Thanks,
> >> Philip
> >>
> >=20
>=20
--=20
-Joe MacDonald.
:wq

--cvVnyQ+4j833TQvp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJW1d/EAAoJEEn8ffcsOfaW1RgH/0XxnLhxwjcax3wzs1P6EgKp
LrfZHOTYhLbYmXRVidA9E+e1c+ei5ET08gJZZS9bY6IiOWOqpVsJjw/JNDOOXQp3
ghwRCAkwr9Np2nsHkBVDPcfGQor4wmU4o77BoWWS0AtD9R7OJeaTfcYVwPMKLIj6
2UIl7Y5pOVbN+5aM5tCfu/sEgRuu91yzBSpKPLLBmd1B5s+zVHa21thLrtRne3aB
LnRatN+1PpAQgqB5lLvgynnZnNV2PIy6rnk7b3NSb7j9n/ApG98xWEjI6dSc073B
qHRrX9F+5JN81T+xpk+9u5TdfyyG5VZIxwLC05+Bj44SuVs0A9YrMgK7U3lcBi4=
=eSaF
-----END PGP SIGNATURE-----

--cvVnyQ+4j833TQvp--
