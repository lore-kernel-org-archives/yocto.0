Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D548E00B51; Tue, 16 May 2017 04:54:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FE3AE00B05
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 04:54:43 -0700 (PDT)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1dAb3q-0002Et-9j from Joe_MacDonald@mentor.com ;
	Tue, 16 May 2017 04:54:42 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 16 May 2017 04:54:41 -0700
Received: by burninator (Postfix, from userid 1000)	id 08B14580256; Tue, 16
	May 2017 07:54:41 -0400 (EDT)
Date: Tue, 16 May 2017 07:54:41 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
Message-ID: <20170516115440.GE3941@mentor.com>
References: <20170222064446.13162-1-jackie.huang@windriver.com>
	<20170502131344.GD10652@mentor.com>
	<1B858668EC6A94408DCA5225FDFA85AA014B76380D@ALA-MBC.corp.ad.wrs.com>
MIME-Version: 1.0
In-Reply-To: <1B858668EC6A94408DCA5225FDFA85AA014B76380D@ALA-MBC.corp.ad.wrs.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] systemd: no need to inherit enable-selinux
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
X-List-Received-Date: Tue, 16 May 2017 11:54:45 -0000
X-Groupsio-MsgNum: 36023
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YkJPYEFdoxh/AXLE"
Content-Disposition: inline

--YkJPYEFdoxh/AXLE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[RE: [yocto] [meta-selinux][PATCH] systemd: no need to inherit enable-selin=
ux] On 17.05.08 (Mon 01:40) Huang, Jie (Jackie) wrote:

>=20
>=20
> > -----Original Message-----
> > From: Joe MacDonald [mailto:Joe_MacDonald@mentor.com]
> > Sent: Tuesday, May 02, 2017 21:14
> > To: Huang, Jie (Jackie)
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] [meta-selinux][PATCH] systemd: no need to inherit =
enable-
> > selinux
> >=20
> > [[yocto] [meta-selinux][PATCH] systemd: no need to inherit enable-selin=
ux] On
> > 17.02.22 (Wed 14:44) jackie.huang@windriver.com wrote:
> >=20
> > > From: Jackie Huang <jackie.huang@windriver.com>
> > >
> > > The selinux PACKAGECONFIG is properly handled in
> > > the recipe in oe-core, no need to inherit the
> > > enable-selinux bbclass.
> >=20
> > That might be true, but other than belt-and-suspenders, what's the
> > harm in this being in the recipe?  I don't necessarily think it's an
> > invalid change but my quick count shows ~44 instances of 'inherit
> > enable-selinux' and 'inherit with-selinux' in meta-selinux, why's this
> > one significant?
>=20
> That's because I have a patch to change the PACKAGECONFIG for selinux
> in oe-core to fix a dependency issue:
>=20
> -PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinu=
x"
> +PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinu=
x,initscripts-sushell"
>=20
> But it would be overrode by the one in enable-selinux.bbclass:
> $ grep PACKAGECONFIG enable-selinux.bbclass
> PACKAGECONFIG_append =3D " ${@target_selinux(d)}"
> PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinux=
,"
>=20
> So I need to remove the inherit here in meta-selinux.

Sorry, this fell between the cracks.

So, let me make sure I understand what you're saying.  This oe-core
commit:

commit 1881c5e0c426a193630e5eed5b629b69ff3741d5
Author: Kai Kang <kai.kang@windriver.com>
Date:   Wed Jul 8 14:26:01 2015 +0800

    systemd: add PACKAGECONFIG selinux
   =20
    Add PACKAGECONFIG 'selinux' for systemd. debug-shell.service starts
    different shell according whether selinux is enabled.
   =20
    (From OE-Core rev: 3d1aa27191fe4c21428eaf4ae036acb1496b7df7)
   =20
    Signed-off-by: Kai Kang <kai.kang@windriver.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

conflicts with the --enable/--disable settings in meta-selinux and  you
want to remove the setting in meta-selinux?  Again, I don't specifically
object to this, but I'd like to understand the why of it.  Is there a
valid scenario to include meta-selinux in your project but have selinux
disabled?  If so, I would think the settings in meta-selinux should
still take precedence.  Otherwise, I'm confused why the other 40-ish
cases aren't also covered.  I haven't investigated, but are all the
others in non-oe-core layers, maybe?

Thanks,
-J.

>=20
> Thanks,
> Jackie
>=20
> >=20
> > -J.
> >=20
> > >
> > > Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> > > ---
> > >  recipes-core/systemd/systemd_%.bbappend | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-
> > core/systemd/systemd_%.bbappend
> > > index 8d9029b..f1bdaf8 100644
> > > --- a/recipes-core/systemd/systemd_%.bbappend
> > > +++ b/recipes-core/systemd/systemd_%.bbappend
> > > @@ -1,2 +1 @@
> > >  inherit enable-audit
> > > -inherit enable-selinux
> > > --
> > > 2.8.3
> > >
> > --
> > -Joe MacDonald.
> > :wq

--=20
-Joe MacDonald.
:wq

--YkJPYEFdoxh/AXLE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJZGuiAAAoJEEn8ffcsOfaWrqMH/j2RgoqqVSaJe3CTJQun6SKX
62+5Re+p9McQNduY0UyvCZg3ltghnyqpGoxojEXte+xTETt9Cur7A0N7/ml9aRVp
Idlws0VXsl8cMhLAlEciD9RLOO6tPGC/Nxk04FJCKX6apm3Mtu2lL3H1r55kQ9wK
aHyJJvtXZp657lIE5hxcHkad1QPhppbz3UWhy2PNtv4Ho/pkXrRpyrjemNCASICX
6in9Sh7C4VPJ1p5xIwBzng0OGOzDJ8b/6eW8bnXpqZNmo5V7gdz7w48xPNEUUAjY
fw+0zal+6GRXAfpoWOo6i13ZvYnVF8o3pbfKxcq9ciVyg0JSpXSGJVg9BqmxqJo=
=e10P
-----END PGP SIGNATURE-----

--YkJPYEFdoxh/AXLE--
