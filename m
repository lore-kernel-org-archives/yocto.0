Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9EB3E00779; Wed, 11 Mar 2015 02:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 132B6E0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 02:43:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Mar 2015 02:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,380,1422950400"; d="scan'208";a="663594607"
Received: from swelch-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.6.120])
	by orsmga001.jf.intel.com with ESMTP; 11 Mar 2015 02:43:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Date: Wed, 11 Mar 2015 09:42:59 +0000
Message-ID: <6369978.lMpxWLROeU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CA+AhUGxB1n2=gOkQ7Xdg+0i2V1c_eS-=G46QCnNzLy0kok8iQA@mail.gmail.com>
References: <95CF81BBD42FB348A182716C4D4310A806904248@G2W2533.americas.hpqcorp.net>
	<CA+AhUGxB1n2=gOkQ7Xdg+0i2V1c_eS-=G46QCnNzLy0kok8iQA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building local sources
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
X-List-Received-Date: Wed, 11 Mar 2015 09:43:05 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

I would advise against simply setting S as the build system normally th=
inks it
is in control of that directory and may under certain circumstances del=
ete it,
which probably won't be what you want.

We do have a proper mechanism for this kind of thing - the externalsrc =
class.
Here is a section of the manual that describes how to use it:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#bui=
lding-software-from-an-external-source

Generally though externalsrc is designed for temporary usage; long term=

I'd recommend you keep your metadata and source code separate and
have the recipe(s) fetch the source in the normal manner.

Cheers,
Paul

On Wednesday 11 March 2015 09:34:30 Erik Bot=F6 wrote:
> I think you should set S to whatever directory that contains your
> source, it has a default to ${WORKDIR}/${PN}-${PV} if I remember
> correctly.
>=20
> So S =3D "${WORKDIR}/${PN}"  should work if the recipe is named the s=
ame
> as the subdir in git, otherwise just set it explicitly using e.g.  S =
=3D
> "${WORKDIR}/module_a"
>=20
> Side note: Your example uses an underscore, which means that a and b
> would be interpreted as versions, which is probably not intended. See=

> http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-r=
ecipe-s
> toring-and-naming-the-recipe
>=20
> Cheers,
> Erik
>=20
> On Mon, Mar 9, 2015 at 4:37 PM, Koehler, Yannick (HP Networking)
>=20
> <yannick.koehler@hp.com> wrote:
> > Hi,
> >=20
> >  I need some help regarding this since I cannot find out how to ach=
ieve this.  I have a git repo with a lot of code splitted in module, su=
ch as:
> >         /.git
> >         /module_a
> >         /module_b
> > =20
> >  Etc...
> > =20
> >   I want to compile those modules using a bitbake recipe within yoc=
to so I created the following tree structure:
> >         /.git
> >         /module_a
> >         /module_b
> >         /poky
> >        =20
> >                 /meta-modules
> >                =20
> >                         /recipes-<category>
> >                        =20
> >                                 /module_a
> >                                =20
> >                                         module_a.bb
> >                        =20
> >                         /recipes-<category>
> >                        =20
> >                                 /module_b
> >                                =20
> >                                         module_b.bb
> >  =20
> >   So far so good, but now I am having issue with unpack/compile ste=
p, my
> >   modules are make-based (not autotools and not CMake).  So I used
> >   EXTRA_OEMAKE to get them to use the proper target toolchain.  Pro=
blem
> >   lies with the SRC_URI, my files from module_a gets copied into $W=
ORKDIR
> >   and not into $S, as such the compile step failed.  I understand t=
hat
> >   SRC_URI is not really the proper usage in such situation, appears=
 to be
> >   meant to retrieve external packages and some files here and there=
,
> >   mostly patches.  Even thought all my modules are within a git rep=
o, I
> >   do not want to extract the full repo for each modules either.
> >  =20
> >   I am now looking into writing my own unpack function to move my c=
ode
> >   under S manually, but I was wondering if yocto had something to s=
upport
> >   this model and I simply missed it or if writing a custom unpack i=
s the
> >   appropriate solution (likely I'll have to create a class so that =
all my
> >   modules use the same unpack behavior).>=20
> > Yannick Koehler
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

--=20

Paul Eggleton
Intel Open Source Technology Centre

