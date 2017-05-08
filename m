Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C520E009C2; Sun,  7 May 2017 18:40:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7CDDE00524
	for <yocto@yoctoproject.org>; Sun,  7 May 2017 18:40:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v481e8Tj015277
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 7 May 2017 18:40:08 -0700 (PDT)
Received: from ALA-MBC.corp.ad.wrs.com ([fe80::fcbe:9b7:1141:89a1]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Sun, 7 May 2017 18:40:07 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Thread-Topic: [yocto] [meta-selinux][PATCH] systemd: no need to inherit
	enable-selinux
Thread-Index: AQHSw0Xzx7Ty2l5ZNk2Ea0jMA5Lm4aHpr0CQ
Date: Mon, 8 May 2017 01:40:07 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B76380D@ALA-MBC.corp.ad.wrs.com>
References: <20170222064446.13162-1-jackie.huang@windriver.com>
	<20170502131344.GD10652@mentor.com>
In-Reply-To: <20170502131344.GD10652@mentor.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.94]
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
X-List-Received-Date: Mon, 08 May 2017 01:40:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Joe MacDonald [mailto:Joe_MacDonald@mentor.com]
> Sent: Tuesday, May 02, 2017 21:14
> To: Huang, Jie (Jackie)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-selinux][PATCH] systemd: no need to inherit en=
able-
> selinux
>=20
> [[yocto] [meta-selinux][PATCH] systemd: no need to inherit enable-selinux=
] On
> 17.02.22 (Wed 14:44) jackie.huang@windriver.com wrote:
>=20
> > From: Jackie Huang <jackie.huang@windriver.com>
> >
> > The selinux PACKAGECONFIG is properly handled in
> > the recipe in oe-core, no need to inherit the
> > enable-selinux bbclass.
>=20
> That might be true, but other than belt-and-suspenders, what's the
> harm in this being in the recipe?  I don't necessarily think it's an
> invalid change but my quick count shows ~44 instances of 'inherit
> enable-selinux' and 'inherit with-selinux' in meta-selinux, why's this
> one significant?

That's because I have a patch to change the PACKAGECONFIG for selinux
in oe-core to fix a dependency issue:

-PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinux"
+PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinux,=
initscripts-sushell"

But it would be overrode by the one in enable-selinux.bbclass:
$ grep PACKAGECONFIG enable-selinux.bbclass
PACKAGECONFIG_append =3D " ${@target_selinux(d)}"
PACKAGECONFIG[selinux] =3D "--enable-selinux,--disable-selinux,libselinux,"

So I need to remove the inherit here in meta-selinux.

Thanks,
Jackie

>=20
> -J.
>=20
> >
> > Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> > ---
> >  recipes-core/systemd/systemd_%.bbappend | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-
> core/systemd/systemd_%.bbappend
> > index 8d9029b..f1bdaf8 100644
> > --- a/recipes-core/systemd/systemd_%.bbappend
> > +++ b/recipes-core/systemd/systemd_%.bbappend
> > @@ -1,2 +1 @@
> >  inherit enable-audit
> > -inherit enable-selinux
> > --
> > 2.8.3
> >
> --
> -Joe MacDonald.
> :wq

