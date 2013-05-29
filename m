Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5797CE004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 09:14:47 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id xb12so9389074pbc.0
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 09:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=u+5Az4leubrSLcHubTW8++x545dW5SXWDHpA4ej+xus=;
	b=KjLOu6FIPp0zrLqUlkuTUA5mDyhZr7RRcZhI/uD3jTtBzmWTNxOMlT1EdRRpOjiuHO
	t/5UqeBHnLnn16CRh8naOOWqh5Gebqx0wFZUISHUoLrcDlY3QkFNXtsIlJr8CFtVcKYp
	2k4XRVitqA3YAXEGxFTjTqWARRLcwBzzxQSr6124McjOr2Jw6rsxt3bAuUSaDgmXu/HX
	i3LqRd4W1Z43kL2qNwmskc4PrF1kqUBV5OLzfeS3atd5TsMzXdZmhw5319ZGE6QmSUxs
	1yLbmUWiXKzC1CRfCt+2jl8+OAKNc1zRfRn40d7D24FJ60R9IG0ElYBAkTW1iPkFEfbN
	R3ww==
X-Received: by 10.68.108.196 with SMTP id hm4mr3626957pbb.88.1369844087046;
	Wed, 29 May 2013 09:14:47 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	vz8sm40434693pac.20.2013.05.29.09.14.43 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 29 May 2013 09:14:45 -0700 (PDT)
Date: Wed, 29 May 2013 18:14:47 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20130529161447.GP3192@jama>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
	<51A6200C.6030904@windriver.com>
	<CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 May 2013 16:14:47 -0000
X-Groupsio-MsgNum: 13999
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="H14uD12u8nekTETJ"
Content-Disposition: inline

--H14uD12u8nekTETJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:
> Guys,
> I'm using the gumstix repo
> https://github.com/gumstix/Gumstix-YoctoProject-Repo and I don't have any
> module-split bbclass.
> The module.bbclass inherits module-base.bbclass and module_strip.bbclass,
> but the latest is empty.
> Do you think my problem could be related with that? module_strip is also
> inherited by kernel.bbclass

That looks like danny release, so you don't have this commit
http://git.openembedded.org/openembedded-core/commit/meta/classes/kernel-mo=
dule-split.bbclass?id=3D51928b6b5ca0a46a9dcd754483a19af58b95fa18

You can backport it if you want, but without this module_autoload won't
work for external modules.

> 2013/5/29 Bruce Ashfield <bruce.ashfield@windriver.com>
>=20
> > On 13-05-29 11:32 AM, Katu Txakur wrote:
> >
> >> Martin, Paul, thanks for your help.
> >> Yes, the recipe does inherit module.
> >> Any other problem that you can think off?
> >>
> >
> > Note: if you are on master, Martin said "module-split", not
> > "module".
> >
> > Cheers,
> >
> > Bruce
> >
> >
> >> Thanks a lot in advance,
> >> Katu
> >>
> >>
> >> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
> >> <mailto:paul.eggleton@linux.**intel.com <paul.eggleton@linux.intel.com=
>>>
> >>
> >>
> >>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
> >>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
> >>      > > Hi,
> >>      > > I'm failing to load a kernel module named spike doing this:
> >>      > > 1) add the recipe (inherit module), based in a Makefile with
> >>      > > modules_install:
> >>      > > $(MAKE) INSTALL_MOD_DIR=3Dkernel/**drivers/spike -C $(KERNEL_=
SRC)
> >>     M=3D$(SRC)
> >>      > > modules_install
> >>      > > 2) Add the package to the image with IMAGE_INSTALL +=3D "spik=
e"
> >>     in the
> >>      > > local.conf file
> >>      > > 3) In the machine/mymachine.conf I've added
> >>      > >
> >>      > >         MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS +=3D "spike"
> >>      > >         module_autoload_spike =3D "spike"
> >>      > >
> >>      > > The driver gets added to the image and I can load it with
> >>     insmod spike,
> >>      > > however, I would like to load it at boot time.
> >>      > > A workaround is to create a file with the name spike.conf and
> >>     write spike
> >>      > > inside. Copying that file to /etc/modules-load.d/spike.conf
> >>      > > loads the driver correctly, but I need to do it from a recipe.
> >>      > >
> >>      > > Can anyone spot what am I doing wrong?
> >>      >
> >>      > module_autoload won't work with external module unless you
> >>     inherit also
> >>      > kernel-module-split
> >>
> >>     Note that module.bbclass already does this, so if the external
> >>     module recipe
> >>     already does "inherit module" then that is not the problem.
> >>
> >>     Cheers,
> >>     Paul
> >>
> >>     --
> >>
> >>     Paul Eggleton
> >>     Intel Open Source Technology Centre
> >>
> >>
> >>
> >>
> >> ______________________________**_________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctopro=
ject.org/listinfo/yocto>
> >>
> >>
> >

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--H14uD12u8nekTETJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlGmKXcACgkQN1Ujt2V2gBwHEgCfS0a4dJDOCRCLj7NDhKMMLuVd
VIAAn37OkpIQfFG9TUJ0zEazSomxGCJv
=fAIS
-----END PGP SIGNATURE-----

--H14uD12u8nekTETJ--
