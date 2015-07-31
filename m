Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 517DBE00B7D; Fri, 31 Jul 2015 09:21:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA5A1E00B6C
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 09:21:47 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 31 Jul 2015 09:21:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,585,1432623600"; d="scan'208";a="616865077"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.23.101])
	by orsmga003.jf.intel.com with ESMTP; 31 Jul 2015 09:21:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 31 Jul 2015 17:21:45 +0100
Message-ID: <1863547.nr2IxiLS9j@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55BB9FF8.7060109@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
	<1692996.ymRgL7KP11@peggleto-mobl.ger.corp.intel.com>
	<55BB9FF8.7060109@linux.intel.com>
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
X-List-Received-Date: Fri, 31 Jul 2015 16:21:51 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday 31 July 2015 11:19:04 An=EDbal Lim=F3n wrote:
> On 31/07/15 11:10, Paul Eggleton wrote:
> > On Friday 31 July 2015 10:39:37 An=EDbal Lim=F3n wrote:
> >> Hi Paul,
> >>=20
> >> On 31/07/15 10:29, Paul Eggleton wrote:
> >>> Hi An=EDbal,
> >>>=20
> >>> On Wednesday 29 July 2015 15:50:53 An=EDbal Lim=F3n wrote:
> >>>> Now AUH generates buildhistory diff when recipe was upgraded
> >>>> successfully.
> >>>>=20
> >>>> For enable this feature set into local.conf.
> >>>>=20
> >>>> =09INHERIT +=3D "buildhistory"
> >>>> =09BUILDHISTORY_COMMIT =3D "1"
> >>>>=20
> >>>> Summary of the changes,
> >>>>=20
> >>>> =09- bitbake.py: Enable environment generation without recipe,
> >>>> =09
> >>>>             removes Buildhistory class.
> >>>> =09
> >>>> =09- buildhistory.py: Add buildhistory class that generates init=
ial
> >>>> =09
> >>>>             buildhistory revision and keeps track of build revis=
ions
> >>>>             for
> >>>>             generate diff when build is successful.
> >>>>          =20
> >>>>           - upgradehelper.py: Add buildhistory steps for upgrade=
, add
> >>>>          =20
> >>>>             support for detect when buildhistory is enabled load=
ing the
> >>>>             environment without recipe.
> >>>=20
> >>> So this looks OK, but I can't tell if it ensures you get the diff=
erence
> >>> between successful builds rather than the difference to the last =
build -
> >>> we need to ensure that a failed build of a recipe in between isn'=
t
> >>> considered as part of the comparison. In practice I guess this wo=
uld
> >>> mean
> >>> storing the buildhistory revision of the last successful build fo=
r each
> >>> recipe.
> >>=20
> >> I only made a diff if the build success in all machines this guara=
ntee
> >> that only stores good information.
> >=20
> > OK, I think I'm following now.
> >=20
> > One other thing - I'm not particularly keen on the BB_ENV_EXTRAWHIT=
E thing
> > - can you perhaps query the build system for the path it's using in=
stead?
> I modified this env var to pass BUILDHISTORY_DIR variable per recipe
> this enables
> to save buildhistory into AUH workdir
> (build/upgrade-helper/work/recipe/buildhistory).

Yes, I understand that, I just think using BB_ENV_EXTRAWHITE to pass th=
is in=20
is a horrible hack and I'd rather not do it that way.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

