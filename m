Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 109DBE00857; Wed,  1 Oct 2014 23:51:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08933E0074B
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 23:51:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Oct 2014 23:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,637,1406617200"; d="scan'208";a="608567069"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2014 23:50:46 -0700
Received: from irsmsx154.ger.corp.intel.com (163.33.192.96) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 2 Oct 2014 07:50:02 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.199]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.124]) with mapi id
	14.03.0195.001; Thu, 2 Oct 2014 07:50:01 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Release Candidate Build for yocto-1.7.rc3 now available.
Thread-Index: AQHP3fO1TJ2xXB7GZEilc7wYoBulvJwcOS4AgAAUVQA=
Date: Thu, 2 Oct 2014 06:50:01 +0000
Message-ID: <55D1DC7E-0685-4D35-BF69-261843F87201@intel.com>
References: <20141002034657.AD3312C01E0@ubuntu1204.osl.yoctoproject.org>
	<542CE48C.1000101@linux.intel.com>
In-Reply-To: <542CE48C.1000101@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.108.78]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: Release Candidate Build for yocto-1.7.rc3 now available.
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
X-List-Received-Date: Thu, 02 Oct 2014 06:51:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <481AC58872FC014894606C15AF74AFC7@intel.com>
Content-Transfer-Encoding: quoted-printable

Wrong CC list:
Hi Saul,
I think the CC is wrong for the Poky automated release build mail that is s=
ent out. Check out the CC displayed (at least for me and Cristi):


CC: @ossystems.com.bryi.zhao, elizabeth.flanagan@intel.comyocto, "@windrive=
r.com, "@yoctoproject.orgalexandru.c.georgescu, =93@intel.comotavio

Regards,
Alex

On 02 Oct 2014, at 08:37, Saul Wold <sgw@linux.intel.com> wrote:

>=20
> Alex,
>=20
> Go ahead with your testing, the failure in the Sanity testing is due to t=
he whitelist of the usbhid issue, I think we need to fine tune that regular=
 expression that are used for the whitelist.
>=20
> I don't see any other obvious issues with this RC3
>=20
>=20
> Sau!
>=20
>=20
> -------- Original Message --------
> Subject: [yocto] Release Candidate Build for yocto-1.7.rc3 now available.
> Date: Thu,  2 Oct 2014 03:46:57 +0000 (UTC)
> From: pokybuild@ubuntu1204.osl.yoctoproject.org (Poky Build User)
> To: yocto@yoctoproject.org
> CC: @ossystems.com.bryi.zhao, elizabeth.flanagan@intel.comyocto, "@windri=
ver.com, "@yoctoproject.orgalexandru.c.georgescu, "@intel.comotavio
>=20
> -e
> A release candidate build for yocto-1.7.rc3 is now available at:
>=20
>=20
> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc3
>=20
>=20
> Please begin QA on this build as soon as possible.
>=20
>=20
> Build hash information:
> meta-intel : 9f815ab761e6b524625e4180397233eeb728f84e
> meta-fsl-arm : 2680f54d02fa6efe4cd2aaef7bda9e46cf3e9672
> meta-minnow : 13a5f2ab84c7284647a3e067a33109c11dae0568
> meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45
> meta-fsl-ppc : deb326df1489d4844f911605a2627f95c89b167f
> poky : 5367855fe56db0c09b8fa7bb423b9de18d11eecc
>=20
>=20
> This is an automated message from
> The Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder
> Email: elizabeth.flanagan@intel.com
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
>=20


