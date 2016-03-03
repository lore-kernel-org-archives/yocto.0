Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDC56E00BEA; Thu,  3 Mar 2016 12:44:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB87BE00B97
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 12:44:40 -0800 (PST)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1aba6y-0002Ty-4D from Joe_MacDonald@mentor.com ;
	Thu, 03 Mar 2016 12:44:40 -0800
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 3 Mar 2016 12:44:39 -0800
Received: by burninator (Postfix, from userid 1000)	id A79EC5833BA; Thu,  3
	Mar 2016 15:44:38 -0500 (EST)
Date: Thu, 3 Mar 2016 15:44:38 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20160303204436.GE4671@mentor.com>
References: <33006C99F5A5194A9B7A7715DFA3E383EB84972B@ALA-MBA.corp.ad.wrs.com>
	<56D7B6B4.7060401@twobit.us>
MIME-Version: 1.0
In-Reply-To: <56D7B6B4.7060401@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "Radzykewycz, T \(Radzy\)" <radzy@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 03 Mar 2016 20:44:43 -0000
X-Groupsio-MsgNum: 28844
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Yb+qhiCg54lqZFXW"
Content-Disposition: inline

--Yb+qhiCg54lqZFXW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux] git recipes] On 16.03.02 (Wed 19:59) Philip Tri=
cca wrote:

> On 03/02/2016 07:47 AM, Radzykewycz, T (Radzy) wrote:
> > ________________________________________
> > On 3/1/16 21:40, Philip Tricca wrote:
> >> On 03/01/2016 10:30 AM, Joe MacDonald wrote:
> >>> [Re: [yocto] [meta-selinux] git recipes] On 16.02.29 (Mon 08:06) Mark=
 Hatle wrote:
> >>>
> >>>> On 2/27/16 10:23 PM, Philip Tricca wrote:
> >>>>> Adding a sensible subject.
> >>>>
> >>>> Sorry couldn't reply when I saw this when you first sent it.  Corpor=
ate email
> >>>> server went down for those of us who DON'T use outlook.. argh..
> >>>>
> >>>> Anyway..
> >>>>
> >>>> What I'm generally used to in the Yocto Project work is that the 'gi=
t' version
> >>>> picks a specific git snapshot and makes it a quick operation for som=
eone to
> >>>> arbitrarily change that snapshot by adjusting the SRCREV.
> >>>
> >>> This has been the approach I'd always tried to take with _git recipes=
 as
> >>> well and it tends to work very well for ones that are either the only=
 or
> >>> the preferred recipe.  I think in our case we were always preferring =
the
> >>> released versions for several historical reasons and the _git recipes=
 were
> >>> relegated to the second-tier because of it.  But that means that basi=
cally
> >>> they never got updated.
> >>>
> >>> About a year and a half ago I started seriously talking about dumping=
 the
> >>> userspace tools entirely and only ever working out of the _git recipe=
s.
> >>> Shrikant started doing that work after I discussed it with him but we
> >>> never got beyond the policy recipes.  So if you guys think this is no=
t a
> >>> completely insane thing to do, that's the direction I'd like to go wi=
th
> >>> this.
> >>>
> >>>> We don't use the AUTOREV parameter, because that causes the system t=
o have to do
> >>>> a git pull in order to evaluate the available versions and determine=
 the SRCREV
> >>>> to use.  So it's all down to a parsing and performance issue.
> >>>
> >>> And avoiding surprises on the other side of the bathtub curve, when
> >>> updates pop up that we aren't prepared for.  :-)  But we've been behi=
nd
> >>> on developments aging out, too, so I don't have a strong case to argue
> >>> against AUTOREV.
> >>>
> >>>> What I've done on some of my own projects is have an AUTOREV version=
 (locally),
> >>>> then when it triggers a recipe breakage, I think update the SRCREV a=
nd fix it in
> >>>> the remote tree..  so I get the autorev, the world gets a version of=
 the package
> >>>> that keeps working.  (I also update the SRCREV other times as well..=
 but the
> >>>> autorev breakage is one of the key triggers.)
> >>>>
> >>>> Joe might have some suggestions as well, I'm not against AUTOREV per=
 say, but I
> >>>> am worried about any performance issues during the parse.
> >>>
> >>> I would really rather avoid AUTOREV, but I think the way we would
> >>> accomplish that is to edge away from our current recipes and bring the
> >>> _git ones back to centre stage.  Then we're likely to stay on top of a
> >>> fixed SRCREV anyway.
> >>
> >> I think there's something to be said for a simple approach. For those
> >> showing up and trying to figure out what's going on / how the build
> >> works it would likely ease their entry if we had straight forward
> >> recipes that build from the usptream release tarballs. For those wanti=
ng
> >> to verify hashes published by upstream (and maybe signed) this makes
> >> life easier as well.
> >=20
> > My comments, FWIW:
> >=20
> > I'm not sure I agree that having both recipes is a simple approach.
> >=20
> > If you're getting started, then you may not be aware of how
> > PREFERRED_VERSION works, or even that it is available at all.
> > Depending on your personal inclination, you may assume one way
> > or the other.

I'm somewhat in agreement with Radzy here, though I think the issue may be
a bit more subtle than even this.  I think we're more likely to have
people coming from a place where they're reasonably familiar with bitbake
and Yocto and are thinking they need SELinux to address security issues
than we are to have people familiar with SELinux trying to figure out "all
this Yocto stuff".

But either way I think the point is still valid.  Any time I see multiple
copies of the same recipes in a single layer my first thought is to look
at the with an eye toward "why" and "which one is most likely to work for
me?"  If we can provide one that will work as well as possible out of the
box for the common Yocto-based use-case, I think everyone wins.  I also
think it's easier for someone coming in cold on at least one of the topics
to integrate a tarball-based recipe than one that pulls from git, so as
maintainers I think our time is better spent providing the one that's more
difficult and potentially more broadly applicable.

> > Using a _git recipe as default, where SRCREV points to something
> > similar to the latest release might be a better way than having
> > two recipes.
>=20
> Fair points.
>=20
> >> Mark's point is well taken though and there's lots of value in having
> >> the git recipes for those who want to experiment. I think Marks test /
> >> development setup / tracking AUTOREV behind closed doors is very usefu=
l.
> >>
> >> In the interest of not making too many changes too early on I'd like to
> >> propose the following:
> >> - keep the release-tracking recipes the default, no change in
> >> PREFERRED_VERSIONs etc.
> >> - Keep the git recipes around and still pointing to a static SRCREV
> >> - Update SRCREV to the latest release and keep it up to date as we move
> >> the userspace etc forward
> >> - Do not maintain a patch queue for the git recipes
> >>
> >> I think this last point is likely the only departure from our current
> >> approach (and my 3rd point is just an update). My reason for removing
> >> the patch queue is that if someone wants to experiment with git they'll
> >> likely not want any of those patches. The patch queue will probably ju=
st
> >> get in their way.
> >=20
> > I like the idea of not maintaining a patch queue for git recipes.
> > I'm not sure how well it will work in practice, though.  This
> > policy would assume that all git recipes are for projects that
> > are maintained by reasonable maintainers who accept our input.
> > Maybe that's the case most of the time, but I doubt it's always
> > the case.  A trivial change to "Do not normally maintain...." would
> > sit with me better.
>=20
> Agree.

Here too.

> What I want to avoid is the current situation where people are
> submitting patches that add backport patches to the _git recipes that
> are already in the upstream git repo.

And again, I completely agree.  I think, actually, the first time we see
anyone submitting a backport patch we need to ask if it's a backport from
an in-development version or from a newer version and if it's a newer
released version, that's an indication our versions are too old.

-J.

> Carrying around patches that aren't upstream yet (or as you point out,
> necessary but not accepted upstream) may be necessary.
>=20
> Thanks,
> Philip
>=20
> > Enjoy!
> >=20
> > 				-- radzy
> >=20
> >>> But as I say, maybe I'm completely insane on this point.
> >>
> >> Nothing insane but I'm feeling conservative, maybe just till the dust
> >> settles. Agree / disagree with the above as a first step at least?
> >>
> >> Philip
> >>
> >>>
> >>> -J.
> >>>
> >>>>
> >>>> --Mark
> >>>>
> >>>>> On 02/27/2016 08:17 PM, Philip Tricca wrote:
> >>>>>> While going through the backlog I ran across the 'git' versions of=
 the
> >>>>>> user space. I noticed that a recent contribution was adding a patc=
h to
> >>>>>> the git recipe and I figured that this patch would already be upst=
ream
> >>>>>> and so wouldn't be necessary. Not so. The 'git' versions have SRCR=
EV
> >>>>>> hard wired (SRCREV) to a commit id but it's way back from the end =
of
> >>>>>> 2013. They're also disabled via DEFAULT_PREFERENCE =3D "-1"
> >>>>>>
> >>>>>> These 'git' versions seem super useful for testing bleeding edge s=
tuff
> >>>>>> so IMHO keeping them around would be the right thing to do. Not su=
re how
> >>>>>> I feel about them tracking an ancient commit though. Since they're=
 never
> >>>>>> built by default it seems reasonable to track the master branch.
> >>>>>>
> >>>>>> What's our philosophy w/r to recipes that pull from git? Is there =
some
> >>>>>> history behind this SRCREV?
> >>>>>>
> >>>>>> Thanks,
> >>>>>> Philip
>=20
--=20
-Joe MacDonald.
:wq

--Yb+qhiCg54lqZFXW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJW2KI0AAoJEEn8ffcsOfaWyQsH/2f453LvstxOdVcVrLsb+u5b
37aRKFdWZqTUXWO41Id3xhpLycsPugPPuhVHbi2E0p5aoYFmxX+TbXjZ4BdioUtH
rY4kI1pSTmSYjwoE4PxQkYSYomCADdSHGKiShiFDU3oR4J9uOMf07uIeB1Rr/CsK
UhAwDdY2RxDITET/2/X5C/8ZDFBIK396ywqBYLPkPGEvMUx5YTGlMSFJ+ASpv0Mu
xHIOKWOQTNOIlN9WfGz1ehR01p/zSAOFFodjH3YnNDygwPoNjsXxHMwtKoaTQoq7
lxeSFphkiZ1Zem5EOO1yujnMIcZ3tl2I2D+KhRvjHT8O+IO8YT6Rqv9goTnBlvo=
=bFqa
-----END PGP SIGNATURE-----

--Yb+qhiCg54lqZFXW--
