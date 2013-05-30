Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3B7E01482
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 04:34:03 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id 14so186403pdc.39
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 04:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=OgdNAKbu63iv0pxr0IRobBjaOo1LCwL4W27kCG8+F8Q=;
	b=VrKFHFQbc9TbyQrR5+L4ejnIpkrjGw56KNF/XdcvcryFL7f7LbRAJ7m4mjXUqqZY57
	QOjk3e1hQ8XGg1n2xJB3cDY2+Q51drxpmF8vnkwMMXTfiKD2oi883q+GY39wQ0LaBrZj
	kcYD/giJSEmjQ9vX37pnmwKUe4iDy9ohTEZRJxq39rbd1lqbmVOOH89p0iBtWy2AOwk0
	S+yDcaakaOXxzR3lR2PRXwFcU5taYCdw0gF6UYK/ywfuDnX9pnvdiA9BRqHKczAX6jbo
	rpGDMuu8GgX2l78gDF2oKkU6q89hkJQYr2jCxm/yqeme74h0qkAVl2h4MmOqaTY//J+k
	Pj6w==
X-Received: by 10.66.248.228 with SMTP id yp4mr7941040pac.158.1369913643754;
	Thu, 30 May 2013 04:34:03 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	sg4sm41661111pbc.7.2013.05.30.04.34.00 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 30 May 2013 04:34:02 -0700 (PDT)
Date: Thu, 30 May 2013 13:34:05 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20130530113405.GA24725@jama>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
	<51A6200C.6030904@windriver.com>
	<CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
	<20130529161447.GP3192@jama>
	<CAM1ZcoU5-YGrxQnYZQLHS7Ej-7t0C0yTuOYj-BCPDYd=H4FU_w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1ZcoU5-YGrxQnYZQLHS7Ej-7t0C0yTuOYj-BCPDYd=H4FU_w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using module_autoload
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
X-List-Received-Date: Thu, 30 May 2013 11:34:04 -0000
X-Groupsio-MsgNum: 14022
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline

--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2013 at 09:49:13AM +0100, Katu Txakur wrote:
> Thanks again Martin,
> I tried with that kernel-module-split.bbclass but although I got no error=
s,
> it didn't work :(

Did you just copy that file from master/dylan to danny? It wont work,
because it depends also on other changes, e.g.

http://git.openembedded.org/openembedded-core/commit/meta/classes/package.b=
bclass?id=3D5aa52c6882d2929b2e530c4fa297c6d3e97d4f9f

This version of that class is compatible with danny:
https://github.com/openwebos/meta-webos/commit/c5a3676e69ab54d62f29d7bbeb6a=
4ac517eb1c33

and this is the usage:
https://github.com/openwebos/meta-webos/commit/c9f91ecf31ebb602a8a86c8e2017=
ca431e2623e8

> Can I create the file spike.conf and tell the recipe or the Makefile to
> copy it to /etc/modules-load.d ?
> how can I do that?

Yes you can do the same in recipe as what that bbclass does in more
generic way, depends on how many modules you need to fix..


>=20
> Thanks again, I would be completely stuck without your help
> Katu
>=20
>=20
> 2013/5/29 Martin Jansa <martin.jansa@gmail.com>
>=20
> > On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:
> > > Guys,
> > > I'm using the gumstix repo
> > > https://github.com/gumstix/Gumstix-YoctoProject-Repo and I don't have
> > any
> > > module-split bbclass.
> > > The module.bbclass inherits module-base.bbclass and module_strip.bbcl=
ass,
> > > but the latest is empty.
> > > Do you think my problem could be related with that? module_strip is a=
lso
> > > inherited by kernel.bbclass
> >
> > That looks like danny release, so you don't have this commit
> >
> > http://git.openembedded.org/openembedded-core/commit/meta/classes/kerne=
l-module-split.bbclass?id=3D51928b6b5ca0a46a9dcd754483a19af58b95fa18
> >
> > You can backport it if you want, but without this module_autoload won't
> > work for external modules.
> >
> > > 2013/5/29 Bruce Ashfield <bruce.ashfield@windriver.com>
> > >
> > > > On 13-05-29 11:32 AM, Katu Txakur wrote:
> > > >
> > > >> Martin, Paul, thanks for your help.
> > > >> Yes, the recipe does inherit module.
> > > >> Any other problem that you can think off?
> > > >>
> > > >
> > > > Note: if you are on master, Martin said "module-split", not
> > > > "module".
> > > >
> > > > Cheers,
> > > >
> > > > Bruce
> > > >
> > > >
> > > >> Thanks a lot in advance,
> > > >> Katu
> > > >>
> > > >>
> > > >> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
> > > >> <mailto:paul.eggleton@linux.**intel.com <
> > paul.eggleton@linux.intel.com>>>
> > > >>
> > > >>
> > > >>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
> > > >>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
> > > >>      > > Hi,
> > > >>      > > I'm failing to load a kernel module named spike doing thi=
s:
> > > >>      > > 1) add the recipe (inherit module), based in a Makefile w=
ith
> > > >>      > > modules_install:
> > > >>      > > $(MAKE) INSTALL_MOD_DIR=3Dkernel/**drivers/spike -C
> > $(KERNEL_SRC)
> > > >>     M=3D$(SRC)
> > > >>      > > modules_install
> > > >>      > > 2) Add the package to the image with IMAGE_INSTALL +=3D "=
spike"
> > > >>     in the
> > > >>      > > local.conf file
> > > >>      > > 3) In the machine/mymachine.conf I've added
> > > >>      > >
> > > >>      > >         MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS +=3D "spike"
> > > >>      > >         module_autoload_spike =3D "spike"
> > > >>      > >
> > > >>      > > The driver gets added to the image and I can load it with
> > > >>     insmod spike,
> > > >>      > > however, I would like to load it at boot time.
> > > >>      > > A workaround is to create a file with the name spike.conf=
 and
> > > >>     write spike
> > > >>      > > inside. Copying that file to /etc/modules-load.d/spike.co=
nf
> > > >>      > > loads the driver correctly, but I need to do it from a
> > recipe.
> > > >>      > >
> > > >>      > > Can anyone spot what am I doing wrong?
> > > >>      >
> > > >>      > module_autoload won't work with external module unless you
> > > >>     inherit also
> > > >>      > kernel-module-split
> > > >>
> > > >>     Note that module.bbclass already does this, so if the external
> > > >>     module recipe
> > > >>     already does "inherit module" then that is not the problem.
> > > >>
> > > >>     Cheers,
> > > >>     Paul
> > > >>
> > > >>     --
> > > >>
> > > >>     Paul Eggleton
> > > >>     Intel Open Source Technology Centre
> > > >>
> > > >>
> > > >>
> > > >>
> > > >> ______________________________**_________________
> > > >> yocto mailing list
> > > >> yocto@yoctoproject.org
> > > >> https://lists.yoctoproject.**org/listinfo/yocto<
> > https://lists.yoctoproject.org/listinfo/yocto>
> > > >>
> > > >>
> > > >
> >
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlGnOS0ACgkQN1Ujt2V2gBys+wCeOT0aP2jDpAtr5uO6mC7/Dt5F
UQoAn1L5EjqK8uZ8uTqy+KNSwZ1IXApa
=O0fH
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--
