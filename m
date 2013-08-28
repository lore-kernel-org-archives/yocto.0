Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C1DE0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:06:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 28 Aug 2013 09:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,976,1367996400"; d="scan'208";a="387764469"
Received: from unknown (HELO helios.localnet) ([10.252.123.7])
	by fmsmga001.fm.intel.com with ESMTP; 28 Aug 2013 09:06:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Wed, 28 Aug 2013 17:06:11 +0100
Message-ID: <68887874.AzlMtbdLCe@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Aug 2013 16:06:26 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Hans,

On Wednesday 28 August 2013 17:08:41 Hans Beck=E9rus wrote:
> Hi, I am a little bit confused about how to handle these two and what=

> they are supposed to solve. I have so far never used RDEPENDS but onl=
y
> DEPENDS.

DEPENDS means a build-time dependency i.e. between recipes, RDEPENDS me=
ans a=20
runtime dependency i.e. between packages. It is worth noting though tha=
t an=20
explicitly stated RDEPENDS will cause bitbake to actually build the rec=
ipe=20
providing the package named in the RDEPENDS value, just at a different =
time. To=20
explain exactly what each of these do:

* DEPENDS =3D "b" in recipe "a" will translate to a's do_configure task=
 depending=20
on recipe b's do_populate_sysroot task, so that anything recipe b puts =
into=20
the sysroot is available for when a configures itself.

* RDEPENDS_${PN} =3D "b" in recipe "a" will translate to a's do_build t=
ask=20
depending on recipe b's do_package_write task, so that the package file=
 b is=20
available when the output for a has been completely built (of course as=
suming=20
that recipe b produces a package called "b", which it will with the def=
ault=20
value of PACKAGES). More importantly it will also ensure that package "=
a" is=20
marked as depending on "b" in a manner understood by the package manage=
r being=20
used e.g. rpm / opkg / dpkg.

> But I am also having severe problems when building a rootfs image whe=
n
> one of my user space libraries are changed from eg. libfoo.so.1 to
> libfoo.so.3. Even though all my packages that have dependencies to it=

> includes it in a DEPENDS.
>=20
> The error I get during rootfs build is:
> | Computing transaction...error: Can't install
>=20
> someapp-1.0-r0@cortexa9_vfp: no package provides libfoo.so.1
>=20
> But there is no libfoo.so.1 in my sysroot, it has been replaced by
> libfoo.so.3. I know for sure that 'someapp' was rebuilt, but still I =
got
> the error message. What do seem to help is to force a fetch of 'somea=
pp'
> and then rebuild which sort of indicates that some garbage was left b=
ehind.
> But having a package listed in DEPENDS will not force a new fetch if =
I am
> not mistaken.

By default, if recipe "foo" changes and it is mentioned in the "someapp=
"=20
recipe's DEPENDS, then someapp's do_configure and all tasks that depend=
 upon it=20
will be re-executed next time it is called for i.e. you explicitly buil=
d=20
someapp or build an image that contains it or some other recipe that de=
pends=20
upon it. The fact that you are getting the behaviour described suggests=
 that=20
this is either not happening, or more likely it is not having the desir=
ed=20
effect; e.g. if internally someapp's build system doesn't drop or inval=
idate=20
all of its  build output when it is reconfigured then you will get this=
 kind of=20
behaviour. Setting up B (the directory in which a recipe's source code =
is=20
built) separate to S (the directory in which the recipe's source code h=
as been=20
unpacked to) can help with this since if they are separate, our build s=
ystem=20
will know it can delete B before re-executing do_compile after do_confi=
gure and=20
you'll never have stale build output. Being able to set this up however=
 is=20
highly dependent on the software being built by the individual recipe; =
some=20
lend themselves to this and others don't.
=20
> Have I been using the DEPENDS variable incorrectly? Would it make a
> difference if I used RDEPENDS instead?

RDEPENDS would not be appropriate in this situation, since we're talkin=
g about=20
a build-time dependency.

Hope that helps.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

