Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B8DE00801
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2013 01:39:17 -0800 (PST)
X-ASG-Debug-ID: 1387532355-0499bf7ce1444500001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id 63BmIXu3NPZl2Fy3; Fri, 20 Dec 2013 02:39:15 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-ODIN.tasernet.com (172.16.1.112) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Fri, 20 Dec 2013 02:39:15 -0700
Received: from TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789]) by
	TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8%20]) with mapi id
	14.02.0347.000; Fri, 20 Dec 2013 02:39:15 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::7c49:ae21:6650:2789
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] Setting PV dynamically in a recipe
X-ASG-Orig-Subj: RE: [yocto] Setting PV dynamically in a recipe
Thread-Index: Ac77ABx4gKdRGDzAQM+tn2QPKyJSdwADABHAABQZYuMAEQsKAP//uBv8gAElHACAAjOEyIAA8KGA//+KzCY=
Date: Fri, 20 Dec 2013 09:39:13 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8D019ADBC1@TI-THOR.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
	<ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
	<E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>
	<14453943.1Qpn4azGq8@helios>
	<E51394554A503C4E852F9BEE46B03E8D019AC9AE@TI-THOR.tasernet.com>
	<20131218093624.GK3706@jama>
	<E51394554A503C4E852F9BEE46B03E8D019ADA5F@TI-THOR.tasernet.com>,
	<20131220093433.GQ3706@jama>
In-Reply-To: <20131220093433.GQ3706@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1387532355
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.143249
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Fri, 20 Dec 2013 09:39:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using it in a task, like this:=0A=
do_install_prepend() {=0A=
    if [ ! -z ${ETM_DEBUG} ]; then=0A=
...        do debugging stuff   ...=0A=
    fi=0A=
}=0A=
=0A=
but having it in a task definition doesn't seem to taint the sstate.  Tryin=
g to figure out what other variables go into it. E.g. does DESCRIPTION get =
included in the sstate? (I'd assume not).  Is there a meta-list somewhere o=
f what goes in the state hash?=0A=
=0A=
 _______________________________________=0A=
From: Martin Jansa [martin.jansa@gmail.com]=0A=
Sent: Friday, December 20, 2013 1:34 AM=0A=
To: Brad Litterell=0A=
Cc: Paul Eggleton; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Setting PV dynamically in a recipe=0A=
=0A=
On Fri, Dec 20, 2013 at 03:09:31AM +0000, Brad Litterell wrote:=0A=
> Hi Martin,=0A=
>=0A=
> I decided just to create my own feature list:=0A=
>=0A=
> MY_FEATURES=3D"debug"=0A=
>=0A=
> and I can happily query it in my custom recipes.=0A=
>=0A=
> However, I haven't quite figured out the best way to taint the status has=
hes for my packages so that changes to this flag force a rebuild.  I origin=
ally tried putting the marking in PR, which works for causing the right thi=
ngs to rebuild, but when I switch from debug to release, I get errors like =
this:=0A=
>=0A=
> ERROR: Package version for package my-config-files went backwards which w=
ould break package feeds from (0:2.0.0.0-r0-debug to 0:2.0.0.0-r0)=0A=
>=0A=
> Is there a way I can taint my recipes so that changing MY_FEATURES causes=
 them all to be evaluated as out of date.  I don't care if that causes some=
 extra rebuilds when I switch MY_FEATURES - I care more about avoiding the =
error message.  Or is there a way I can turn off this particular error mess=
age on specific recipes?=0A=
=0A=
Depends on where you're using MY_FEATURES variable in the recipe, in=0A=
most cases it should be included in sstate signature and rebuilt=0A=
automatically (with the same version) when MY_FEATURES is changes.=0A=
=0A=
If you're using latest oe-core, that error is QA check, which can be=0A=
disabled with SKIP_INSANE (per package) or moved from ERROR_QA to=0A=
WARN_QA in distro config.=0A=
=0A=
> ________________________________________=0A=
> From: Martin Jansa [martin.jansa@gmail.com]=0A=
> Sent: Wednesday, December 18, 2013 1:36 AM=0A=
> To: Brad Litterell=0A=
> Cc: Paul Eggleton; yocto@yoctoproject.org=0A=
> Subject: Re: [yocto] Setting PV dynamically in a recipe=0A=
>=0A=
> On Wed, Dec 18, 2013 at 01:29:25AM +0000, Brad Litterell wrote:=0A=
> > Hi Paul,=0A=
> >=0A=
> > Thanks for that tip.  For my private packages I don't build directly fr=
om git, but from a tarball (in turn created from my working directory) beca=
use I want to be able to build the source I'm working on without committing=
 it to git.=0A=
> >=0A=
> > In an ideal world, I'd like to to be able to build in two modes: dev & =
release.  Release mode would use the git-based solution (and enforce buildi=
ng from git), and in the dev mode, build from something like externalsrc.  =
(The reason I don't use externalsrc directly is because it didn't detect ch=
anges in the underlying external source, so I created a script that does an=
d updates the tarball.)=0A=
> >=0A=
> > What is the best way to switch recipes between dev & test modes like th=
at.  It appears debug-tweaks is only used in image recipes, so I don't know=
 whether I should (or could) use something like this in a package recipe:=
=0A=
> >=0A=
> > SRC_URI +=3D '${@base_contains("EXTRA_IMAGE_FEATURES", "debug-tweaks", =
"...tarball...", "...git..."}'=0A=
> >=0A=
> > or whether something like that is asking for trouble.  My current solut=
ion is manual - edit the recipe, but that feels kinda lame.=0A=
> >=0A=
> > It seems like most of the yocto build tools assume building directly fr=
om git (or with external-src but without dependency checking).=0A=
> >=0A=
> > Any suggestions?=0A=
>=0A=
> Don't use *IMAGE_FEATURES* to in recipe conditionals.=0A=
>=0A=
> When you're building some package you don't know in which image it will=
=0A=
> be included so you cannot know with which *IMAGE_FEATURES* it should be=
=0A=
> built.=0A=
>=0A=
> It's true that EXTRA_IMAGE_FEATURES are often set in DISTRO config, but=
=0A=
> still it's unsafe to assume they are "global". With improved=0A=
> base_contains and sstate interaction, using some flag in DISTRO_FEATURES=
=0A=
> shouldn't cause so many packages to rebuild, so it could be usable for=0A=
> "debug-build" flag.=0A=
>=0A=
> > ________________________________________=0A=
> > From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
> > Sent: Tuesday, December 17, 2013 12:24 PM=0A=
> > To: Brad Litterell=0A=
> > Cc: zhenhua.luo@freescale.com; yocto@yoctoproject.org=0A=
> > Subject: Re: [yocto] Setting PV dynamically in a recipe=0A=
> >=0A=
> > Hi Brad,=0A=
> >=0A=
> > On Tuesday 17 December 2013 19:46:11 Brad Litterell wrote:=0A=
> > > Thank you for the reply.  However, That's not what I'm looking for.  =
I=0A=
> > > already get the latest version of the source code.=0A=
> > >=0A=
> > > What I'm really after is the ability to generate output packages that=
 have=0A=
> > > increasing version numbers so I can use the package manager to update=
 them.=0A=
> > >=0A=
> > > I think Martin's subsequent reply is the secret to use PKGV.  I didn'=
t know=0A=
> > > about that variable.=0A=
> >=0A=
> > You don't need to use any special classes to get this behaviour. Put th=
is in=0A=
> > your recipe (replacing 1.2.3 with the appropriate base version you are=
=0A=
> > building):=0A=
> >=0A=
> > PV =3D "1.2.3+git${SRCPV}"=0A=
> >=0A=
> > and enable the PR service, which will ensure SRCREV changes always incr=
ement=0A=
> > the version properly:=0A=
> >=0A=
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#wor=
king-with-a-pr-service=0A=
> >=0A=
> > Cheers,=0A=
> > Paul=0A=
> >=0A=
> > --=0A=
> >=0A=
> > Paul Eggleton=0A=
> > Intel Open Source Technology Centre=0A=
> > _______________________________________________=0A=
> > yocto mailing list=0A=
> > yocto@yoctoproject.org=0A=
> > https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=
> --=0A=
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com=0A=
=0A=
--=0A=
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com=0A=

