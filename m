Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E20FE00280
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 23:58:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2012 23:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190602431"
Received: from fmsmsx106.amr.corp.intel.com ([10.19.9.37])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jul 2012 23:58:05 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.19.9.52) by
	FMSMSX106.amr.corp.intel.com (10.19.9.37) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 9 Jul 2012 23:58:05 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	FMSMSX101.amr.corp.intel.com (10.19.9.52) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 9 Jul 2012 23:58:05 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.70]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.62]) with mapi id
	14.01.0355.002; Tue, 10 Jul 2012 14:58:03 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>
Thread-Topic: [yocto] Some questions about the webhob design
Thread-Index: Ac1ZFOdFGM6SyguyTo+eIH9a2sio8AButnyAAAOjafAAFi9XgAANgOmgAA3QgYAAAkr5UP//WMMA//nl1qA=
Date: Tue, 10 Jul 2012 06:58:02 +0000
Message-ID: <40776A41FC278F40B59438AD47D147A90FDDCA8B@SHSMSX102.ccr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<63888840.0N6Y68VfOI@helios>
	<CDED78A957032E45B3239CDDA7642D151C8985E5@ORSMSX105.amr.corp.intel.com>
	<1658624.ZVpO79IcDh@helios>
In-Reply-To: <1658624.ZVpO79IcDh@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some questions about the webhob design
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
X-List-Received-Date: Tue, 10 Jul 2012 06:58:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> Sent: Saturday, July 07, 2012 1:30 AM
> To: Stewart, David C
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Some questions about the webhob design
>=20
> On Friday 06 July 2012 17:13:45 Stewart, David C wrote:
> > > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > > Sent: Friday, July 06, 2012 4:23 AM
> > > To: Stewart, David C
> > >
> > > On Thursday 05 July 2012 23:00:17 Stewart, David C wrote:
> > > > Guys - I'm really struggling with this overall concept of concurren=
cy.
> > > >
> > > > It implies that if Paul and I are sharing the same project and I
> > > > make a change to a .bb file to experiment with something (assuming
> > > > we have the ability to do that, refer to my last email) and my
> > > > change breaks my build, it will break everyone else's build as
> > > > well.  But the beauty thing is that it breaks it silently, because
> > > > the configuration silently changed for everyone on the project.
> > >
> > > The key word there I think is "experiment". Is it reasonable to
> > > expect to handle people making experimental changes to something
> > > that others are relying upon? It seems to me that whether
> > > experimental changes are likely and whether or not it will seriously
> > > impact other users depends on what development stage the particular
> project is at.
> >
> > Whether it is reasonable or not, if it's possible for people to shoot
> > themselves in the foot, they will.  Even with safety guards on a
> > circular saw, I have seen people routinely disable them, so there you g=
o.
>=20
> Right, and the logical extension from this is that no matter what safegua=
rds we
> put in, there will be users that find a way shoot themselves in the foot.=
 Of
> course we should try to make it harder to do the wrong thing, but there's=
 a
> limit to what we can do. Despite this however I'm still convinced it's im=
portant
> to offer the ability for people to work on the same thing.
>=20
> > How about a strongly visible warning on the Projects page that
> > simultaneous user changes will affect all users of the project's
> > files? How about an asynchronous notification to users on the main
> > screen that some files have changed since their last build (and maybe l=
ist
> them).
>=20
> I'm not opposed to a warning, but the thing is the scenario presented ear=
lier
> wasn't strictly speaking a case of simultaneous user changes (which I thi=
nk we
> have pretty well covered in the design in terms of showing real-time warn=
ings
> to go together with real-time changes to the project) - in the scenario o=
ne user
> set up the project, and some time later another user attempted to use tha=
t
> project, and in the mean time someone broke it while neither of the other=
 two
> users were logged in. A warning to help in that case could only be along =
the
> lines of "This project is shared with other users, so please take care wh=
en
> making changes."

Hi Paul,

Today Jessica and PRC team spend some time thinking about the development m=
odel that how people co-work within the webhob project.

Say an architect (his user id is "arch_a") creates a project with certain c=
onfigurations and customizations, and names it as "Project_FRI2", and he in=
vites "arch_b" also as the architect. Besides that, the project recruits "d=
ev_a", "dev_b", and "dev_c" as developers, and "builer_a", "builder_b", and=
 "builder_c" as normal build service users.

According to our discussion, we have some proposal on the permission manage=
ment, and need your comments here.

1) Only "arch_a" and "arch_b" are allowed to change project settings (inclu=
ding configurations, recipes, packages, etc).
2) "dev_a", "dev_b", and "dev_c" have the permission to fork this project. =
If they want to made any change to "Project_FRI2", they firstly need to tun=
e their code/layers under their forked project, and then contribute back to=
 the main "Project_FRI2" (This is something like the git branches and pull =
request we use in Yocto project development ). They are not allowed to modi=
fy project settings directly in "Project_FRI2".
3) "builder_a", "builder_b", and "builder_c" are only allowed to log into t=
he Project_FRI2 project and schedule their build on it, or download images.=
=20

Of course there should be other roles, like program manager, etc.
The overall idea is only very small set of the users could change the proje=
ct setting. This sort of permission management can help to reduce the rate =
of changing project setting at the same time, since we no longer support de=
velopers to change settings in the main project. The developers need to fol=
low the way of "fork project--> development --> contribute back to main pro=
ject".

What's your thought on this?

Thanks,
Dongxiao

>=20
> > Again, writing a user story is what I'm looking for. I would do it
> > myself, but I'm still struggling. :-)
>=20
> I spoke to Jim about this and he's going to put something together, but i=
t's
> likely that if what you're after is a full explanation of the workflow th=
at it's a
> significant exercise.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

