Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0853E0087D; Wed, 19 Nov 2014 19:34:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79599E007B9
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 19:34:46 -0800 (PST)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1XrIW4-0000iD-BZ from Joe_MacDonald@mentor.com ;
	Wed, 19 Nov 2014 19:34:44 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.181.6;
	Wed, 19 Nov 2014 19:34:43 -0800
Received: by burninator (Postfix, from userid 1000)	id 73E715809CE; Wed, 19
	Nov 2014 22:34:41 -0500 (EST)
Date: Wed, 19 Nov 2014 22:34:41 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Balister <philip@balister.org>
Message-ID: <20141120033439.GA906@mentor.com>
References: <546BB9EF.4040807@balister.org>
MIME-Version: 1.0
In-Reply-To: <546BB9EF.4040807@balister.org>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 20 Nov 2014 03:34:52 -0000
X-Groupsio-MsgNum: 22269
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline

--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Philip,

[[yocto] Layer model doomed, unless we all work together] On 14.11.18 (Tue =
16:28) Philip Balister wrote:

> As evidence, please review this list:
>=20
> http://layers.openembedded.org/layerindex/branch/master/duplicates/
>=20
> I mean FOUR recipes for alsa-plugins?
>=20
> I am trying to fix the pyqt recipe in meta-oe, and had th eidea to check
> for it in other layers. This leads me to meta-ivi-demo, which has an
> update for sip-native and another pyqt recipe. To be fair, they are
> using Qt5, so it is a little more complex.
>=20
> At any rate, we need to stop ripping recipes out of layers and maing
> local copies, or worse, updating our local copies and not the primary
> layer. The intent of the layer concept was not to fragment development
> across many separate repositories.

I completely agree and I'm glad you brought it up.  I'm all for doing
what I can to help on this.  I also second Ross' suggestion, perhaps we
could start working on an implementation of RFC5841 as a first phase,
though I'm thinking that may not be the healthiest thing for me.  :-)

> I see a couple of issues we need to start talking about:
>=20
> 1) recipes that need to move closer to core because a range of other
> packages use them.

This was actually the only thing I thought needed further discussion
(everything else should largely be a nod-in-agreement thing), as in some
cases I'm not sure it's always clear what constitutes "closer to the
core".  Poky and oe-core layers are pretty clear, but the next step
beyond that isn't.  Are all layers hosted on git.yoctoproject.org
inherhently "more core" than layers on git.openenbedded.org?  And
there's a number of shells when you start including all of the github
projects, setting aside other open-source project hosting services.

Looking at the link you sent out based on Paul's suggestion, I see I'm
actually on both sides of this equation, so yay!  And I'll limit the
discussion to what's indexed there.

Here're my examples.

iscsi-initiator-utils: both in meta-networking nd meta-openstack.  Both
at the same version currently but wildly different contents.
meta-openstack is a git.yoctoproject.org project, so does that make it
closer to the core?  I would think not, but as I recall there had been
some comment about the openstack layer intending to limit layer
dependencies outside Yocto core when it first appeared, so maybe making
meta-networking a dependency is a non-starter for them.

That said, I feel sorry for Alex's meta-cgl layer since it looks like it
uses both meta-networking and meta-openstack and bbappends to
iscsi-initiator-utils, which have significantly different patch sets.
It hasn't bitten me in any of my testing with meta-cgl yet, but I didn't
even notice this before now and I wasn't testing iscsi.  I would not be
at all surprised if different people have different results using iscsi
with meta-cgl now.

On the other side of the coin is the swig recipe in meta-selinux and
meta-oe.  The selinux build requires swig, so the meta-selinux layer
needs to know it is there.  I was actually gearing up a while back to
ditch the swig recipe in meta-selinux since it was so old and obviously
behind the meta-oe version, but didn't ... for reasons that now escape
me but could have been "because that would make meta-selinux depend on
meta-oe", which isn't necessarily a dependency we wanted to bring in for
meta-selinux.  But I'm highly allergic to duplicating (and inevitably
diverging) data, so I'd still like to kick swig out of meta-selinux.
But I also almost never build meta-selinux projects without some of
meta-oe kicking around too.  Maybe that's everyone who uses
meta-selinux, I don't know.

Anyway, just to keep it really interesting, is meta-selinux and
meta-security, both including recipes for libcap-ng, both at the same
version, both different again (though not nearly so bad as the example
above).  Which of these is more core?  I honestly don't know, since I
have used them together and separately on roughly equal number of
projects and I expect that trend will continue for a good long while for
me.  I think this might be a scenario where meta-selinux and
meta-security could make a case for trying to push this recipe further
toward the core.

Also, in light of this discovery, I'll be sending a patch for
meta-security soon, since the meta-selinux changes for libcap-ng are
almost certainly wanted there too.  But that's neither here nor there.

> 2) people feel they have to remove recipes from layers and make local
> copies.
>=20
> And just so people know what seriously pisses me off :) Copying a recipe
> from a layer, updating it, and not sending the recipe to the layer they
> got the update from.

I don't know if that's what has happened with any of the recipes in the
layers I baby-sit, but if it is, it was absolutely not intentional and
I'll see what I can do about recovering a bit of karma by tidying up
about the place a bit.  :-)

-J.

>=20
> Thanks for letting me vent,
>=20
> Philip
--=20
-Joe MacDonald.
:wq

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUbWFPAAoJEEn8ffcsOfaWbuYH/ihGznR25EScY4UnoeGrobB1
dXyjqAkaH/1zccg8tgU84zDrWCsMKACz2zrh8F4aXgB6Spbvd6LI6mE3OTrKpZG8
8DFzMx2p0kBIRtrzSzL5e3MPGGrED/hmTfY2619CVwK/KaBGRk8Iiox+Ufly0ea/
jlw9IIa088BoilKiZwESqPsLpUMAc1/zSngVqSTr0A/eZpoOoBrCqlNNCKfSVcXH
hvrkDsbOmT9jtMYhdSERetiOAdIq23W8EkFNHbgwoZkSxYHNYSoaFNrK0aCsu80z
/N7PGdIADXuqnuoE6dMuf93xBa1ERgwzjYo6uCRMjcfHT5FqTSV1vOdbHlSBxUg=
=LJjx
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--
