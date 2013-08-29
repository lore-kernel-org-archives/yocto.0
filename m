Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E20AE01570
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 01:58:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Aug 2013 01:58:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,981,1367996400"; d="scan'208";a="393846787"
Received: from unknown (HELO helios.localnet) ([10.252.123.55])
	by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2013 01:58:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
Date: Thu, 29 Aug 2013 09:58:54 +0100
Message-ID: <1530065.yztlOAqnHJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <521E4DFC.2040704@gmail.com>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<68887874.AzlMtbdLCe@helios> <521E4DFC.2040704@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Thu, 29 Aug 2013 08:58:57 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Hans,

On Wednesday 28 August 2013 21:22:36 Hans Beckerus wrote:
> On 2013-08-28 6:06, Paul Eggleton wrote:
> > On Wednesday 28 August 2013 17:08:41 Hans Beck=E9rus wrote:
> >> Hi, I am a little bit confused about how to handle these two and w=
hat
> >> they are supposed to solve. I have so far never used RDEPENDS but =
only
> >> DEPENDS.
> >=20
> > DEPENDS means a build-time dependency i.e. between recipes, RDEPEND=
S means
> > a runtime dependency i.e. between packages. It is worth noting thou=
gh
> > that an explicitly stated RDEPENDS will cause bitbake to actually b=
uild
> > the recipe providing the package named in the RDEPENDS value, just =
at a
> > different time. To explain exactly what each of these do:
> >=20
> > * DEPENDS =3D "b" in recipe "a" will translate to a's do_configure =
task
> > depending on recipe b's do_populate_sysroot task, so that anything =
recipe
> > b puts into the sysroot is available for when a configures itself.
> >=20
> > * RDEPENDS_${PN} =3D "b" in recipe "a" will translate to a's do_bui=
ld task
> > depending on recipe b's do_package_write task, so that the package =
file b
> > is available when the output for a has been completely built (of co=
urse
> > assuming that recipe b produces a package called "b", which it will=
 with
> > the default value of PACKAGES). More importantly it will also ensur=
e that
> > package "a" is marked as depending on "b" in a manner understood by=
 the
> > package manager being used e.g. rpm / opkg / dpkg.
>=20
> Thanks a lot! This was definitely more than I got from the descriptio=
n
> of DEPENDS and RDEPENDS in the manual.
> But I probably just read the wrong one ;)

We probably should explain things to that level, I'm fairly sure we don=
't at=20
the moment. I'll talk to Scott to see if we can work something like the=
 above=20
into the manual.

> > By default, if recipe "foo" changes and it is mentioned in the "som=
eapp"
> > recipe's DEPENDS, then someapp's do_configure and all tasks that de=
pend
> > upon it will be re-executed next time it is called for i.e. you
> > explicitly build someapp or build an image that contains it or some=
 other
> > recipe that depends upon it. The fact that you are getting the beha=
viour
> > described suggests that this is either not happening, or more likel=
y it
> > is not having the desired effect; e.g. if internally someapp's buil=
d
> > system doesn't drop or invalidate all of its  build output when it =
is
> > reconfigured then you will get this kind of behaviour. Setting up B=
 (the
> > directory in which a recipe's source code is built) separate to S (=
the
> > directory in which the recipe's source code has been unpacked to) c=
an
> > help with this since if they are separate, our build system will kn=
ow it
> > can delete B before re-executing do_compile after do_configure and =
you'll
> > never have stale build output. Being able to set this up however is=

> > highly dependent on the software being built by the individual reci=
pe;
> > some lend themselves to this and others don't.
>=20
> Well, I have been struggling before with packages not properly
> supporting different build and source folders so I can definitely rel=
ate
> to what you are saying. But, does that mean I actually *have* to do i=
t
> this way for build dependencies to work correctly?=20

I wouldn't have thought so, to be honest I'm just positing one situatio=
n where=20
I can see how this kind of thing might be able to happen. Either do_con=
figure,=20
do_compile etc. are not re-executing (and by default they should - *if*=
 the=20
build system has a means to know about the change you have made), or th=
ey are=20
re-executing but the re-execution didn't materially change the output,=20=

certainly not to the point where it linked against the new library vers=
ion. It=20
would be pretty easy to figure out which of the two happened by looking=
 at task=20
logs - either you'd see no extra task logs or you'd see in the latest=20=

do_compile/do_configure log that nothing much was being done.

> In my case we are talking two simple autotools enabled packages and I=

> (naively?) assumed this was not something I had to take care of mysel=
f.=20

In the ideal case it should not be.

> What strikes me is that you say ""if recipe "foo" changes"", which is=

> actually not the case here! What is changed is the actual source code=
 only.
> Is that what is going wrong here? If I change my "foo" recipe version=
, would
> that be different than to simply fetch/unpack the "foo" package sourc=
e code?
> Is "someapp" going to become purged differently in such a  scenario?

OK, so just to make sure I understand what changes you are making - are=
 you=20
changing configuration/recipes/files pointed to in SRC_URI at all, or j=
ust=20
modifying the unpacked source in the recipe's work directory?

> What is still somewhat unclear to me is the difference between DEPEND=
S
> and RDEPENDS in a simple case as this. A simple application needing a=

> dynamic library is obviously a subject for DEPENDS but to me that als=
o
> sounds like a typical RDEPENDS?
>
> However, when I build an image and include 'someapp', will 'libfoo.so=
.x'
> automatically be installed or is that what I need to tell it to do us=
ing
> RDEPENDS?

For dynamically linked libraries there is one additional aspect that I =
didn't=20
mention - we have some code in meta/classes/package.bbclass called duri=
ng=20
do_package that looks at the shared libraries that all binaries in a pa=
ckage=20
link to, and automatically adds RDEPENDS for these so that the appropri=
ate=20
libraries always get installed. The subtlety though is that this happen=
s too=20
late for the build system to be able to ensure that the corresponding b=
uild-
time requirements of the recipe are always satisfied; thus, it is possi=
ble if=20
one of the libraries is rebuilding due to some other change and its rec=
ipe is=20
not in your application recipe's DEPENDS, problems can occur. Bottom li=
ne is,=20
if your application needs to link to a library, the recipe that builds =
that=20
library must be in your application recipe's DEPENDS. Because of the au=
tomatic=20
RDEPENDS addition at packaging time you don't need to also add the libr=
ary to=20
RDEPENDS yourself though; the only time you need to add something to RD=
EPENDS=20
is when you know that a runtime dependency exists that the build system=
 can't=20
detect - examples would be packages providing shell commands that your=20=

application relies upon, perl, python and other such module dependencie=
s, etc.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

