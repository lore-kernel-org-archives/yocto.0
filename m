Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E64C2E00B72; Fri, 31 Jul 2015 08:29:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696BFE009E5
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 08:29:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 31 Jul 2015 08:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,585,1432623600"; d="scan'208";a="759270708"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.23.101])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2015 08:29:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 31 Jul 2015 16:29:41 +0100
Message-ID: <1954435.FDO7q63aNY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.8-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1438203053-7909-11-git-send-email-anibal.limon@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
	<1438203053-7909-11-git-send-email-anibal.limon@linux.intel.com>
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
X-List-Received-Date: Fri, 31 Jul 2015 15:29:47 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi An=EDbal,

On Wednesday 29 July 2015 15:50:53 An=EDbal Lim=F3n wrote:
> Now AUH generates buildhistory diff when recipe was upgraded
> successfully.
>=20
> For enable this feature set into local.conf.
>=20
> =09INHERIT +=3D "buildhistory"
> =09BUILDHISTORY_COMMIT =3D "1"
>=20
> Summary of the changes,
>=20
> =09- bitbake.py: Enable environment generation without recipe,
>           removes Buildhistory class.
> =09- buildhistory.py: Add buildhistory class that generates initial
>           buildhistory revision and keeps track of build revisions fo=
r
>           generate diff when build is successful.
>         - upgradehelper.py: Add buildhistory steps for upgrade, add
>           support for detect when buildhistory is enabled loading the=

>           environment without recipe.

So this looks OK, but I can't tell if it ensures you get the difference=
 between=20
successful builds rather than the difference to the last build - we nee=
d to=20
ensure that a failed build of a recipe in between isn't considered as p=
art of=20
the comparison. In practice I guess this would mean storing the buildhi=
story=20
revision of the last successful build for each recipe.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

