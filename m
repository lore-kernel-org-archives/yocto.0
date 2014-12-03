Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A44B5E0080C; Tue,  2 Dec 2014 18:15:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F5A6E0030B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 18:15:53 -0800 (PST)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1XvzTs-0005AZ-GD from Joe_MacDonald@mentor.com ;
	Tue, 02 Dec 2014 18:15:52 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.181.6; Tue, 2 Dec 2014
	18:15:52 -0800
Received: by burninator (Postfix, from userid 1000)	id EC1EE5814AD; Tue,  2
	Dec 2014 21:15:50 -0500 (EST)
Date: Tue, 2 Dec 2014 21:15:50 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Message-ID: <20141203021550.GA5120@mentor.com>
References: <547E21F0.7060307@windriver.com>
	<1915399171.2453357.1417553309836.JavaMail.yahoo@jws100206.mail.ne1.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <1915399171.2453357.1417553309836.JavaMail.yahoo@jws100206.mail.ne1.yahoo.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add some recipes
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
X-List-Received-Date: Wed, 03 Dec 2014 02:15:56 -0000
X-Groupsio-MsgNum: 22462
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline

--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 20:48) Alexandr=
u Vaduva wrote:

> Guys, lets keep Bian in the loop. though, so he does not loos the thread
> information.
> So to conclude:
> 1.) one of us(or anyone in the community) should find the time to investi=
gate
> if only one multipath tools recipe is applicable and if that is the case =
keep
> one in the meta-oe, eventually update it.
> Since it it related to meta-cgl could take a step forward on this because=
 there
> could be some bbappends applicable for meta-cgl there, but it will take 2=
/3
> weeks until I will be able to do this. So anyone else interested is welco=
med to
> do it if they are in a hurry.

I don't think anyone is in a hurry, but I'll be sure to send out a
heads-up if I find time to start working on this in the next week or so.
I think it's yours, though, Alex, unless Bian is going to follow up on
it again.

> 2.) We kind of torn apart Bian`s patches and maybe he will not be so will=
ing to
> do redo the patch for drdb, Joe will you be able to do the required chang=
es for
> making sure his patch can be integrated inside meta-networking.
>=20
> Thank you for your time and patience.

All things being equal, I would rather integrate a patch from Bian than
do it myself both from a practical point of view and because I always
prefer to have more contributors.  So Bian, this is my saying that if
you're willing to do another version of drbd updated based on the
comments received so far and want to submit it to the meta-networking
tree, I'd be happy to have it.

If not, I understand, and the remainder of us can sort it out, I'm sure,
but my first instinct is to wait to see if the original submitter is
interested in pursuing this.

-J.

>=20
>=20
> Alex Vaduva
>=20
>=20
>=20
> On Tuesday, December 2, 2014 10:33 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>=20
>=20
> On 14-12-02 03:17 PM, Joe MacDonald wrote:
> > [Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:49) Bruce
> Ashfield wrote:
> >
> >> On 14-12-02 02:37 PM, Joe MacDonald wrote:
> >>> [Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:03)
> Alexandru Vaduva wrote:
> >>>
> >>>> Hello Bian,
> >>>>
> >>>> Did you know that the multipath tools recipe was also available insi=
de the
> >>>> meta-oe and meta-virtualization?
> >>>> I do not have any problems with it being available in meta-cgl.  I j=
ust
> wanted
> >>>> to hear other opinions because I would like to make sure we do not g=
et to
> that
> >>>> point where we keep various versions of various recipes in a variety=
 of
> places.
> >>>> It will be a nightmare to work with them in the future.
> >>>
> >>> I completely agree, and I that's mostly the consensus of the communit=
y.
> >>> Since meta-cgl already has dependencies on both meta-virtualization a=
nd
> >>> meta-oe, I think it makes the most sense to try to keep updates for t=
he
> >>> multipath recipes in one or both of those layers.  My recommendation
> >>> would be to update the meta-oe one as it has broader applicability, b=
ut
> >>> of course that's up to the submitter and the layer maintainers to
> >>> decide.  It may be that it's appropriate to maintain a bbappend for t=
he
> >>> recipe in meta-cgl, but I think it'd be good to send it for inclusion=
 in
> >>> meta-oe first.
> >>
> >> I'm with Joe on this one.
> >>
> >> I only did a really quick check on the history of the two copies
> >> that we have, but I see the meta-virt variant was added in January 2013
> >> and what could be the first version in meta-oe in March the same year.
> >
> > I actually intended to say "update the meta-oe one as it has broader
> > applicability and if you're feeling ambitious, send the same update to
> > meta-virtualization" since I thought meta-virt didn't have dependencies
> > on meta-oe and I can see an argument in favour of keeping a separate
> > recipe if you're keeping the layer contained.  But it looks like that's
> > not the case, so consolidation makes sense here.
>=20
> Yep, there are dependencies on meta-oe where it makes sense, or if
> there's a package in meta-virt that isn't particularly twitchy about
> versions and update cadence.
>=20
> >
> >> The layer index may not have been as helpful back then (but honestly
> >> I can't recall) .. either way we failed to coordinate as a wider commu=
nity
> >> and managed to end up with two different recipes in the layers.
> >>
> >> There's no sense making this any worse than it already is, so I'd say
> >> that we could spend the time looking at the two (three?) recipes, and
> >> get a consolidated variant in meta-oe, and I'd be happy to drop the
> >> one in meta-virtualization and bbappend the same way that Joe suggests.
> >>
> >> Thoughts ? We should figure out if someone is going to take a crack
> >> at it, so we don't all go do the same thing :)
> >
> > It's not on my to-do list, so don't worry about me running in parallel.
> > iscsi was (and is again) the only meta-networking one and libcap-ng (as
> > discussed with Armin the other day) and swig are the meta-selinux ones.
> >
>=20
> Sounds good.
>=20
>=20
> Bruce
>=20
> > -J.
> >
> >>
> >> Bruce
> >>
> >>
> >>
> >>>
> >>> Just my thoughts on it.
> >>> -J.
> >>>
> >>>> Once again, just to make it clear. I am ok with the patches, I will =
merge
> all
> >>>> three of them (corosync, multipath and drbd) but I just wanted to ma=
ke
> sure you
> >>>> took this into consideration.
> >>>> Also I like the idea of having drbd recipe inside and the fact that =
you
> like to
> >>>> get involved in this initiative.
> >>>> Hope to hear more from you and also that I will be able to help more.
> >>>>
> >>>>
> >>>> Alex Vaduva
> >>>>
> >>>>
> >>>> On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng <biannm@cn.fujit=
su.com
> >
> >>>> wrote:
> >>>>
> >>>>
> >>>> Bian Naimeng (2):
> >>>>    [meta-cgl] device-mapper-multipath: add recipe
> >>>>    [meta-cgl]drbd: add recipe
> >>>>
> >>>> .../device-mapper-multipath/multipathd.init.patch  | 12 +++++
> >>>> .../device-mapper-multipath_0.5.0.bb              | 53
> ++++++++++++++++++++
> >>>> meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
> >>>> meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb    | 57
> ++++++++++++++++++++++
> >>>> 4 files changed, 134 insertions(+)
> >>>> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipa=
th/
> >>>> device-mapper-multipath/multipathd.init.patch
> >>>> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipa=
th/
> >>>> device-mapper-multipath_0.5.0.bb
> >>>> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
> >>>> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
> >>>>
> >>>> --
> >>>> 1.9.1
> >>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>
> >>>>
> >>>
> >>>
> >>>
> >>
> >
>=20
>=20
>=20

--=20
-Joe MacDonald.
:wq

--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUfnJTAAoJEEn8ffcsOfaWQaEH/jpXy7oiRSDFPU3g45f7PL2v
0h6YuNl9pXhEr6jsD7dhMU948BOBMNOnOS37lRBTHuYipBFVJwWPM2dtLoFptGdH
Cj//h8RTLDLbcOqnE/05QvTEJaNUzH/j8FJTD0Q+jRnUovJ8oBw5VnrXRBLg5F3l
6e+xtpqE+cROrKUpe0wy/P/mjkM9V8D62KnnyCIi/PCjWEghnhg3m96WKFCWT0p2
UiFt6HQv0tjYj1K4r4InjRNfX8D3o+j4P/cWq9Bz1OTKU0fabpI3YcVU9PezogSh
EOTtrX3DcHlwMdDCnlGE4+TWQAwN9s4XJSG/qUf0d9DI4EVRWUqYVR0rGb8ilXQ=
=cpWL
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--
