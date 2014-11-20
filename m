Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39667E008F2; Thu, 20 Nov 2014 07:59:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32DC3E008E3
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 07:59:56 -0800 (PST)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1XrU9D-0006yO-6o from Joe_MacDonald@mentor.com ;
	Thu, 20 Nov 2014 07:59:55 -0800
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.181.6;
	Thu, 20 Nov 2014 07:59:51 -0800
Received: by burninator (Postfix, from userid 1000)	id 1B1A15805EE; Thu, 20
	Nov 2014 10:59:51 -0500 (EST)
Date: Thu, 20 Nov 2014 10:59:51 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20141120155948.GB906@mentor.com>
References: <546BB9EF.4040807@balister.org> <20141120033439.GA906@mentor.com>
	<3780775.YvVDClAEQ0@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <3780775.YvVDClAEQ0@peggleto-mobl5.ger.corp.intel.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Layer model doomed, unless we all work together
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
X-List-Received-Date: Thu, 20 Nov 2014 15:59:59 -0000
X-Groupsio-MsgNum: 22286
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline

--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul,

[Re: [yocto] Layer model doomed, unless we all work together] On 14.11.20 (=
Thu 13:43) Paul Eggleton wrote:

> On Wednesday 19 November 2014 22:34:41 Joe MacDonald wrote:
> > [[yocto] Layer model doomed, unless we all work together] On 14.11.18 (=
Tue=20
> 16:28) Philip Balister wrote:
> > > I see a couple of issues we need to start talking about:
> > >=20
> > > 1) recipes that need to move closer to core because a range of other
> > > packages use them.
> >=20
> > This was actually the only thing I thought needed further discussion
> > (everything else should largely be a nod-in-agreement thing), as in some
> > cases I'm not sure it's always clear what constitutes "closer to the
> > core".  Poky and oe-core layers are pretty clear, but the next step
> > beyond that isn't.  Are all layers hosted on git.yoctoproject.org
> > inherhently "more core" than layers on git.openenbedded.org?  And
> > there's a number of shells when you start including all of the github
> > projects, setting aside other open-source project hosting services.
>=20
> The answer to me there is certainly not. I've said this recently in other=
=20
> discussions, but I'll say it here anyway in case anyone else isn't sure -=
=20
> layers on git.yoctoproject.org should not be considered in any way more o=
fficial=20
> than anywhere else solely based on them being hosted there. Anyone who wa=
nts=20
> to maintain and publish a layer suitable for others to use can get a=20
> repository on git.yoctoproject.org - there's no official review, validati=
on, or=20
> acceptance criteria in the general case just for having a repository ther=
e=20
> (beyond being related to the project, that is).

That certainly makes sense to me, though I can respect if a project
maintainer wanted to try to keep everything they put there contained to
other projects hosted there.  Probably that's not even the case now,
I've not looked, but if I were starting a layer that I wanted to be
dependent only on, say, oe-core, and it was still useful to the
community at large, I would consider git.yoctoproject.org to be the most
sensible place to host it.

Regardless, I think your clarification makes perfect sense.

> To me this isn't so much about "closer to the core", it's about:
>=20
>  1) sensible recipe groupings, e.g. meta-networking rather than a particu=
lar=20
> project's mixed recipes layer
>=20
>  2) good maintenance, i.e. recipes are semi-regularly updated when upstre=
am=20
> releases happen, fixed when needed to accommodate changes that happen in =
other=20
> layers it depends upon such as OE-Core, and the maintainer is reasonably=
=20
> responsive to patches or questions relating to the layer.
>=20
> We need both of those things to encourage re-use, and if we have both the=
n it=20
> doesn't really matter where a layer is hosted as long as it's listed in t=
he=20
> layer index.

Fair enough.  Though I do think that a natural consequence of the
groupings in #1 above would tend to have recipes that appear in multiple
project's mixed recipe layers move toward the core.  But I also agree
that it needs to make sense for the layers involved.

> > Looking at the link you sent out based on Paul's suggestion, I see I'm
> > actually on both sides of this equation, so yay!  And I'll limit the
> > discussion to what's indexed there.
> >=20
> > Here're my examples.
> >=20
> > iscsi-initiator-utils: both in meta-networking nd meta-openstack.  Both
> > at the same version currently but wildly different contents.
> > meta-openstack is a git.yoctoproject.org project, so does that make it
> > closer to the core?  I would think not, but as I recall there had been
> > some comment about the openstack layer intending to limit layer
> > dependencies outside Yocto core when it first appeared, so maybe making
> > meta-networking a dependency is a non-starter for them.
>=20
> So I've talked to Bruce about meta-openstack before, with particular rega=
rd to=20
> the number of python recipes that the layer ships and future overlap with=
=20
> meta-python, and apparently the policy there is not to pull in other laye=
rs=20
> for some dependencies with the aim of avoiding breakage on upgrades. I do=
n't=20
> like that very much at all, to be frank, but I can at least understand it=
=20
> given how huge OpenStack is. It does of course mean that the overlap with=
 that=20
> layer in particular is only going to increase as time goes on.

Hmm.  Okay, I don't want to veer too far off the topic, but what I'm
getting from this is that meta-openstack is a layer usable for building
OpenStack, but otherwise probably isn't an ideal base for other layers.
There's two obvious points of divergence between meta-networking recipes
and meta-openstack ones, both of which have the same priority, and it
sounds like there's going to be an increasing number of these with
meta-python.  I don't know that, given how large OpenStack is, adding
other layer dependencies would amount to more than a drop in the bucket,
but as a philosophical discussion rather than a technical one, I'll
stick to knowing to regularly check the index and time I'm looking at
recipes or working with a new layer.  That's probably really good advice
for anyone, honestly.

That's for the info, Paul.

--=20
-Joe MacDonald.
:wq

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUbg/wAAoJEEn8ffcsOfaWxQsH/i3eOKMzEFYl4jJPsDuuVrpF
TYYZFMlSleEN+xK6eDK/0oaiTF6GJx+17Ls14FOgc7z2p947BDrw0TFUhCHgD7JZ
xZQBsgxhIxyNo5XsvjGCtp+p/M3vYUZ7P3wKcjoe++y23KEpIqvNfFj6TdjAlmSR
Aa2VXS4ryc5BHIWCMg6TX0kzMFc3XDhzqRb+wcTLQIiEpHIe17/ENlrgQK0Nhf9q
eTsU2mtAMNWDX1sDxVQ5cAnup2K/cYs+q7u9qMIIBKCE/ISBlOqVZQdf+swTIZa7
qmrGr4swE7Y5FBmj0hiSWG+5vNfudIzvCbT5F7DSAb18888sgYqwUTdQxFmtF2c=
=IOMx
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
