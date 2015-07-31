Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42D7EE00B7B; Fri, 31 Jul 2015 09:11:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6325E00B6C
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 09:10:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jul 2015 09:10:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,585,1432623600"; d="scan'208";a="775310642"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.23.101])
	by orsmga002.jf.intel.com with ESMTP; 31 Jul 2015 09:10:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 31 Jul 2015 17:10:55 +0100
Message-ID: <1692996.ymRgL7KP11@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55BB96B9.4050605@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
	<1954435.FDO7q63aNY@peggleto-mobl.ger.corp.intel.com>
	<55BB96B9.4050605@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 10/10][auh] upgradehelper: Add support for generate buildhistory recipe diff's
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
X-List-Received-Date: Fri, 31 Jul 2015 16:11:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday 31 July 2015 10:39:37 An=EDbal Lim=F3n wrote:
> Hi Paul,
>=20
> On 31/07/15 10:29, Paul Eggleton wrote:
> > Hi An=EDbal,
> >=20
> > On Wednesday 29 July 2015 15:50:53 An=EDbal Lim=F3n wrote:
> >> Now AUH generates buildhistory diff when recipe was upgraded
> >> successfully.
> >>=20
> >> For enable this feature set into local.conf.
> >>=20
> >> =09INHERIT +=3D "buildhistory"
> >> =09BUILDHISTORY_COMMIT =3D "1"
> >>=20
> >> Summary of the changes,
> >>=20
> >> =09- bitbake.py: Enable environment generation without recipe,
> >> =09
> >>            removes Buildhistory class.
> >> =09
> >> =09- buildhistory.py: Add buildhistory class that generates initia=
l
> >> =09
> >>            buildhistory revision and keeps track of build revision=
s for
> >>            generate diff when build is successful.
> >>         =20
> >>          - upgradehelper.py: Add buildhistory steps for upgrade, a=
dd
> >>         =20
> >>            support for detect when buildhistory is enabled loading=
 the
> >>            environment without recipe.
> >=20
> > So this looks OK, but I can't tell if it ensures you get the differ=
ence
> > between successful builds rather than the difference to the last bu=
ild -
> > we need to ensure that a failed build of a recipe in between isn't
> > considered as part of the comparison. In practice I guess this woul=
d mean
> > storing the buildhistory revision of the last successful build for =
each
> > recipe.
>=20
> I only made a diff if the build success in all machines this guarante=
e
> that only stores good information.

OK, I think I'm following now.

One other thing - I'm not particularly keen on the BB_ENV_EXTRAWHITE th=
ing -=20
can you perhaps query the build system for the path it's using instead?=


CHeers,
Paul

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

