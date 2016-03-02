Return-Path: <radzy@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 102F6E00D6B; Wed,  2 Mar 2016 07:47:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7444E00CA6
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 07:47:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u22FllhY020327
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 2 Mar 2016 07:47:47 -0800 (PST)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.3.21]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0248.002;
	Wed, 2 Mar 2016 07:47:46 -0800
From: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-selinux] git recipes
Thread-Index: AQHRdJniyMHODZb5kkqSxR6aCrsV+w==
Date: Wed, 2 Mar 2016 15:47:45 +0000
Message-ID: <33006C99F5A5194A9B7A7715DFA3E383EB84972B@ALA-MBA.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.216.89]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 02 Mar 2016 15:47:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
On 3/1/16 21:40, Philip Tricca wrote:
> On 03/01/2016 10:30 AM, Joe MacDonald wrote:
> > [Re: [yocto] [meta-selinux] git recipes] On 16.02.29 (Mon 08:06) Mark H=
atle wrote:
> >
> >> On 2/27/16 10:23 PM, Philip Tricca wrote:
> >>> Adding a sensible subject.
> >>
> >> Sorry couldn't reply when I saw this when you first sent it.  Corporat=
e email
> >> server went down for those of us who DON'T use outlook.. argh..
> >>
> >> Anyway..
> >>
> >> What I'm generally used to in the Yocto Project work is that the 'git'=
 version
> >> picks a specific git snapshot and makes it a quick operation for someo=
ne to
> >> arbitrarily change that snapshot by adjusting the SRCREV.
> >
> > This has been the approach I'd always tried to take with _git recipes a=
s
> > well and it tends to work very well for ones that are either the only o=
r
> > the preferred recipe.  I think in our case we were always preferring th=
e
> > released versions for several historical reasons and the _git recipes w=
ere
> > relegated to the second-tier because of it.  But that means that basica=
lly
> > they never got updated.
> >
> > About a year and a half ago I started seriously talking about dumping t=
he
> > userspace tools entirely and only ever working out of the _git recipes.
> > Shrikant started doing that work after I discussed it with him but we
> > never got beyond the policy recipes.  So if you guys think this is not =
a
> > completely insane thing to do, that's the direction I'd like to go with
> > this.
> >
> >> We don't use the AUTOREV parameter, because that causes the system to =
have to do
> >> a git pull in order to evaluate the available versions and determine t=
he SRCREV
> >> to use.  So it's all down to a parsing and performance issue.
> >
> > And avoiding surprises on the other side of the bathtub curve, when
> > updates pop up that we aren't prepared for.  :-)  But we've been behind
> > on developments aging out, too, so I don't have a strong case to argue
> > against AUTOREV.
> >
> >> What I've done on some of my own projects is have an AUTOREV version (=
locally),
> >> then when it triggers a recipe breakage, I think update the SRCREV and=
 fix it in
> >> the remote tree..  so I get the autorev, the world gets a version of t=
he package
> >> that keeps working.  (I also update the SRCREV other times as well.. b=
ut the
> >> autorev breakage is one of the key triggers.)
> >>
> >> Joe might have some suggestions as well, I'm not against AUTOREV per s=
ay, but I
> >> am worried about any performance issues during the parse.
> >
> > I would really rather avoid AUTOREV, but I think the way we would
> > accomplish that is to edge away from our current recipes and bring the
> > _git ones back to centre stage.  Then we're likely to stay on top of a
> > fixed SRCREV anyway.
>=20
> I think there's something to be said for a simple approach. For those
> showing up and trying to figure out what's going on / how the build
> works it would likely ease their entry if we had straight forward
> recipes that build from the usptream release tarballs. For those wanting
> to verify hashes published by upstream (and maybe signed) this makes
> life easier as well.

My comments, FWIW:

I'm not sure I agree that having both recipes is a simple approach.

If you're getting started, then you may not be aware of how
PREFERRED_VERSION works, or even that it is available at all.
Depending on your personal inclination, you may assume one way
or the other.

Using a _git recipe as default, where SRCREV points to something
similar to the latest release might be a better way than having
two recipes.

> Mark's point is well taken though and there's lots of value in having
> the git recipes for those who want to experiment. I think Marks test /
> development setup / tracking AUTOREV behind closed doors is very useful.
>
> In the interest of not making too many changes too early on I'd like to
> propose the following:
> - keep the release-tracking recipes the default, no change in
> PREFERRED_VERSIONs etc.
> - Keep the git recipes around and still pointing to a static SRCREV
> - Update SRCREV to the latest release and keep it up to date as we move
> the userspace etc forward
> - Do not maintain a patch queue for the git recipes
>=20
> I think this last point is likely the only departure from our current
> approach (and my 3rd point is just an update). My reason for removing
> the patch queue is that if someone wants to experiment with git they'll
> likely not want any of those patches. The patch queue will probably just
> get in their way.

I like the idea of not maintaining a patch queue for git recipes.
I'm not sure how well it will work in practice, though.  This
policy would assume that all git recipes are for projects that
are maintained by reasonable maintainers who accept our input.
Maybe that's the case most of the time, but I doubt it's always
the case.  A trivial change to "Do not normally maintain...." would
sit with me better.

Enjoy!

				-- radzy

> > But as I say, maybe I'm completely insane on this point.
>=20
> Nothing insane but I'm feeling conservative, maybe just till the dust
> settles. Agree / disagree with the above as a first step at least?
>=20
> Philip
>=20
> >
> > -J.
> >
> >>
> >> --Mark
> >>
> >>> On 02/27/2016 08:17 PM, Philip Tricca wrote:
> >>>> While going through the backlog I ran across the 'git' versions of t=
he
> >>>> user space. I noticed that a recent contribution was adding a patch =
to
> >>>> the git recipe and I figured that this patch would already be upstre=
am
> >>>> and so wouldn't be necessary. Not so. The 'git' versions have SRCREV
> >>>> hard wired (SRCREV) to a commit id but it's way back from the end of
> >>>> 2013. They're also disabled via DEFAULT_PREFERENCE =3D "-1"
> >>>>
> >>>> These 'git' versions seem super useful for testing bleeding edge stu=
ff
> >>>> so IMHO keeping them around would be the right thing to do. Not sure=
 how
> >>>> I feel about them tracking an ancient commit though. Since they're n=
ever
> >>>> built by default it seems reasonable to track the master branch.
> >>>>
> >>>> What's our philosophy w/r to recipes that pull from git? Is there so=
me
> >>>> history behind this SRCREV?
> >>>>
> >>>> Thanks,
> >>>> Philip

