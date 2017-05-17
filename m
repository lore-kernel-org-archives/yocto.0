Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63433E007BA; Tue, 16 May 2017 18:40:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3EFEE00710
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 18:40:11 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4H1e87w012201
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 16 May 2017 18:40:10 -0700 (PDT)
Received: from ALA-MBC.corp.ad.wrs.com ([fe80::fcbe:9b7:1141:89a1]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Tue, 16 May 2017 18:40:08 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Thread-Topic: [yocto] [meta-selinux][PATCH] systemd: no need to inherit
	enable-selinux
Thread-Index: AQHSw0Xzx7Ty2l5ZNk2Ea0jMA5Lm4aHpr0CQgA2184CAAG0xwA==
Date: Wed, 17 May 2017 01:40:06 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B76F8D4@ALA-MBC.corp.ad.wrs.com>
References: <20170222064446.13162-1-jackie.huang@windriver.com>
	<20170502131344.GD10652@mentor.com>
	<1B858668EC6A94408DCA5225FDFA85AA014B76380D@ALA-MBC.corp.ad.wrs.com>
	<20170516115440.GE3941@mentor.com>
In-Reply-To: <20170516115440.GE3941@mentor.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.98]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 17 May 2017 01:40:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Joe MacDonald [mailto:Joe_MacDonald@mentor.com]
> Sent: Tuesday, May 16, 2017 19:55
> To: Huang, Jie (Jackie)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-selinux][PATCH] systemd: no need to inherit en=
able-
> selinux
>=20
> [RE: [yocto] [meta-selinux][PATCH] systemd: no need to inherit enable-sel=
inux]
> On 17.05.08 (Mon 01:40) Huang, Jie (Jackie) wrote:
>=20
> >
> >
> > > -----Original Message-----
> > > From: Joe MacDonald [mailto:Joe_MacDonald@mentor.com]
> > > Sent: Tuesday, May 02, 2017 21:14
> > > To: Huang, Jie (Jackie)
> > > Cc: yocto@yoctoproject.org
> > > Subject: Re: [yocto] [meta-selinux][PATCH] systemd: no need to inheri=
t
> enable-
> > > selinux
> > >
> > > [[yocto] [meta-selinux][PATCH] systemd: no need to inherit enable-sel=
inux]
> On
> > > 17.02.22 (Wed 14:44) jackie.huang@windriver.com wrote:
> > >
> > > > From: Jackie Huang <jackie.huang@windriver.com>
> > > >
> > > > The selinux PACKAGECONFIG is properly handled in
> > > > the recipe in oe-core, no need to inherit the
> > > > enable-selinux bbclass.
> > >
> > > That might be true, but other than belt-and-suspenders, what's the
> > > harm in this being in the recipe?  I don't necessarily think it's an
> > > invalid change but my quick count shows ~44 instances of 'inherit
> > > enable-selinux' and 'inherit with-selinux' in meta-selinux, why's thi=
s
> > > one significant?
> >
> > That's because I have a patch to change the PACKAGECONFIG for selinux
> > in oe-core to fix a dependency issue:
> >
> > -PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libseli=
nux"
> > +PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-
> selinux,libselinux,initscripts-sushell"
> >
> > But it would be overrode by the one in enable-selinux.bbclass:
> > $ grep PACKAGECONFIG enable-selinux.bbclass
> > PACKAGECONFIG_append =3D " ${@target_selinux(d)}"
> > PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselin=
ux,"
> >
> > So I need to remove the inherit here in meta-selinux.
>=20
> Sorry, this fell between the cracks.
>=20
> So, let me make sure I understand what you're saying.  This oe-core
> commit:
>=20
> commit 1881c5e0c426a193630e5eed5b629b69ff3741d5
> Author: Kai Kang <kai.kang@windriver.com>
> Date:   Wed Jul 8 14:26:01 2015 +0800
>=20
>     systemd: add PACKAGECONFIG selinux
>=20
>     Add PACKAGECONFIG 'selinux' for systemd. debug-shell.service starts
>     different shell according whether selinux is enabled.
>=20
>     (From OE-Core rev: 3d1aa27191fe4c21428eaf4ae036acb1496b7df7)
>=20
>     Signed-off-by: Kai Kang <kai.kang@windriver.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>=20
> conflicts with the --enable/--disable settings in meta-selinux and  you
> want to remove the setting in meta-selinux?  Again, I don't specifically
> object to this, but I'd like to understand the why of it.  Is there a
> valid scenario to include meta-selinux in your project but have selinux
> disabled?  If so, I would think the settings in meta-selinux should

The conflicts is not the --enable/--disable settings, it's the dependency:

oe-core: PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,lib=
selinux,initscripts-sushell"
meta-selinux: PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinu=
x,libselinux,"

There is an extra runtime dependency on initscripts-sushell (which is reaui=
red by debug-shell.service),
so if inheriting the enable-selinux in meta-selinux, the selinux will still=
 be enabled, but the dependency
on initscripts-sushell will be lost.

> still take precedence.  Otherwise, I'm confused why the other 40-ish

Others don't have the extra dependency, the setting in oe-core and
meta-selinux are the same(at least for now), so others aren't covered.

Thanks,
Jackie

> cases aren't also covered.  I haven't investigated, but are all the
> others in non-oe-core layers, maybe?
>=20
> Thanks,
> -J.
>=20
> >
> > Thanks,
> > Jackie
> >
> > >
> > > -J.
> > >
> > > >
> > > > Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> > > > ---
> > > >  recipes-core/systemd/systemd_%.bbappend | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > >
> > > > diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-
> > > core/systemd/systemd_%.bbappend
> > > > index 8d9029b..f1bdaf8 100644
> > > > --- a/recipes-core/systemd/systemd_%.bbappend
> > > > +++ b/recipes-core/systemd/systemd_%.bbappend
> > > > @@ -1,2 +1 @@
> > > >  inherit enable-audit
> > > > -inherit enable-selinux
> > > > --
> > > > 2.8.3
> > > >
> > > --
> > > -Joe MacDonald.
> > > :wq
>=20
> --
> -Joe MacDonald.
> :wq

