Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 363F6E00EB6; Sun, 26 Jun 2016 21:11:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD064E00E75
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 21:11:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 26 Jun 2016 21:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,535,1459839600"; d="scan'208";a="995581184"
Received: from rvardha1-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.76])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2016 21:11:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego <diego.ml@zoho.com>
Date: Mon, 27 Jun 2016 16:11:30 +1200
Message-ID: <1824740.6PSPzbvYde@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.7-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <2290521.b3EbnYsZ8v@localhost.localdomain>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubKEgaf0+KaVmkUycbqvNUJf69xYTAvhF7S0P2wwUqKvZA@mail.gmail.com>
	<2290521.b3EbnYsZ8v@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Mon, 27 Jun 2016 04:11:41 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Mon, 06 Jun 2016 15:27:17 Diego wrote:
> Hi Oleksandr,
>=20
> In data venerd=C3=AC 3 giugno 2016 20:56:32, Oleksandr Poznyak ha scr=
itto:
> > I found that that=E2=80=99s an issue with rpm packages. I didn't ex=
pect there
> > might
> > be some issue with rpm. If you really don't care which package mana=
gement
> > system to use, switch to deb:
> >=20
> > PACKAGE_CLASSES =3D "package_deb"
>=20
> Thanks for looking at the problem, unfortunately migrating away from =
rpm is
> not an option for me at the moment. Is there a bug report for this rp=
m
> problem? Should I open one?

I'm not aware of one - could you please file a bug? Have you found any =
further=20
information?

Thanks,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

