Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2DA3E0091A; Tue, 25 Nov 2014 03:56:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50003E008E2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 03:56:04 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2014 03:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,455,1413270000"; d="scan'208";a="637740978"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2014 03:56:01 -0800
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.144]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.18]) with mapi id
	14.03.0195.001; Tue, 25 Nov 2014 11:56:00 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Nishanth S
	<Nishanth.S@altiux.com>
Thread-Topic: [yocto] [bitbake-devel] how to update a package on yocto project
Thread-Index: AQHQB2jFTicI7alinkq+GZivd1400JxvRvxwgAADKICAAeqiAIAACaUg
Date: Tue, 25 Nov 2014 11:55:59 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB2F3BE87D@IRSMSX105.ger.corp.intel.com>
References: <546AE780.7070208@altiux.com>
	<969F26A8BAB325438E7EB80D3C3134FB2F3BE196@IRSMSX105.ger.corp.intel.com>
	<5472CA61.7020303@altiux.com>
	<4588822.SDbnQVoq17@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4588822.SDbnQVoq17@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bitbake-devel] how to update a package on yocto project
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
X-List-Received-Date: Tue, 25 Nov 2014 11:56:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Nishanth, I am assuming you are using the meta-java layer, right?
If so, have you tried my suggestions?
/Cristian


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Tuesday, November 25, 2014 1:20 PM
To: Nishanth S
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [bitbake-devel] how to update a package on yocto proje=
ct

Hi Nishanth,

On Monday 24 November 2014 11:34:17 Nishanth S wrote:
> board : Intel Galileo Gen 1
>=20
> I use yocto project for build image/tarball for the board.
>=20
> How to update a existing package???
>=20
> I mean, I use openjdk-6 on my board.
>=20
> But I need to change it to openjdk-7.
>=20
> I edited local.conf by adding following line.
>=20
> preferred_version_openjdkXXXX =3D XXXX
>=20
>=20
>=20
>=20
> I tried this but the resulting image.tar had only openjdk-6.
>=20
> How do I include openjdk-7 with core-image???

There needs to be a recipe to actually provide that - PREFERRED_VERSION onl=
y selects between available versioned recipes. Is there an openjdk-7 recipe=
 in your configuration? If not, you will need to add one.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

