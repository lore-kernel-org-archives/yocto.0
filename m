Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 809F2E00AD2; Sun, 19 Jun 2016 15:13:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A6F5E009F4
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2016 15:13:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 19 Jun 2016 15:13:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,495,1459839600"; d="scan'208";a="1005489195"
Received: from bkuek-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.177.125])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2016 15:13:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Date: Mon, 20 Jun 2016 10:13:35 +1200
Message-ID: <19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.7-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Sun, 19 Jun 2016 22:13:45 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Monica,

As shown in Khem's original example you need to add this through=20
EXTRA_IMAGE_FEATURES, not IMAGE_INSTALL (since tools-sdk is a feature n=
ame,=20
not a package name).

Cheers,
Paul

On Sun, 19 Jun 2016 20:23:53 Rajasekaran, Monica wrote:
> I added the following line to my recipe file,=20
>=20
> IMAGE_INSTALL +=3D "tools-sdk"
>=20
> But there was the following error with the build:
>=20
> ERROR: Nothing RPROVIDES 'tools-sdk' (but
> /data/users/mrajase/l100_label_based_r100poc/repo/poky/meta-fss-produ=
ct/rec
> ipes-core/images/fss-image-full.bb RDEPENDS on or otherwise requires =
it)
> NOTE: Runtime target 'tools-sdk' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['tools-sdk']
> ERROR: Required build target 'fss-image-full' has no buildable provid=
ers.
> Missing or unbuildable dependency chain was: ['fss-image-full',
> 'tools-sdk']
=20
> Any idea on this?
>=20
> Thanks,
> Monica=20
>=20
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]=20
> Sent: Wednesday, June 15, 2016 3:48 PM
> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>; yocto@yoctoproject=
.org
> Subject: Re: [yocto] autoreconf
>=20
> That might work, however you might need more packages, so adding tool=
s-sdk
> will cover all of them in one go
=20
>=20
> > On Jun 15, 2016, at 1:47 PM, Rajasekaran, Monica
> > <Monica.Rajasekaran@us.fujitsu.com> wrote:
=20
> > Hi Raj,
> >=20
> > Will adding a line in the image's recipe file like this work ?
> >=20
> > IMAGE_INSTALL =3D =E2=80=9Dautoconf=E2=80=9D
> >=20
> > I installed "git" and "resolvconf" in the same way. Just not sure a=
bout
> > the package name this time.
=20
> > Thanks,
> > Monica
> >=20
> >=20
> > -----Original Message-----
> > From: Khem Raj [mailto:raj.khem@gmail.com]
> > Sent: Wednesday, June 15, 2016 3:42 PM
> > To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> > Cc: Paul Eggleton <paul.eggleton@linux.intel.com>; yocto@yoctoproje=
ct.org
> > Subject: Re: [yocto] autoreconf
> >=20
> > You need to add autoconf to your target image, if you do not use On=
line
> > package management
=20
> > EXTRA_IMAGE_FEATURES_append =3D =E2=80=9C tools-sdk=E2=80=9D
> >=20
> > in local.conf might help
> >=20
> >=20
> >=20
> >> On Jun 15, 2016, at 1:35 PM, Rajasekaran, Monica
> >> <Monica.Rajasekaran@us.fujitsu.com> wrote:
=20
> >> Hi Paul,
> >>=20
> >> Thank you. This is in the target.
> >>=20
> >> Thanks,
> >> Monica
> >>=20
> >> -----Original Message-----
> >> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >> Sent: Wednesday, June 15, 2016 3:25 PM
> >> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> >> Cc: yocto@yoctoproject.org
> >> Subject: Re: [yocto] autoreconf
> >>=20
> >> Hi Monica,
> >>=20
> >> On Wed, 15 Jun 2016 20:17:16 Rajasekaran, Monica wrote:
> >>=20
> >>> What is the package to install autoreconf ? (Ubuntu equivalent:
> >>> apt-get install dh-autoreconf )
> >>>=20
> >>> I am getting the following error for one of my applications:
> >>> "autoreconf: command not found"
> >>=20
> >>=20
> >> autoreconf is part of autoconf.
> >>=20
> >> Where is this? On the target or within the build system?
> >>=20
> >> Cheers,
> >> Paul
> >>=20
> >> --
> >>=20
> >> Paul Eggleton
> >> Intel Open Source Technology Centre
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >=20
> >=20
>=20
>=20

--=20

Paul Eggleton
Intel Open Source Technology Centre

