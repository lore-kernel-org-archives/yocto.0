Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD248E00D07; Thu,  1 Dec 2016 10:59:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9199 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Dec 2016 10:59:29 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0095.outbound.protection.outlook.com [104.47.36.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6977DE00CF1
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 10:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=TRguTwZSVqS235vM4b0uPCvxysjf+4amRgHP4Ql6bEA=;
	b=WZWDcToc1xJCp8yD4O1J6v09LcSE2XxQmpqfMPx1vyshfV0ykA7xpdb3rmDKuGVyStcZcMW1VCBui39LtX5xravwiyyJDA23l8bRv3sLz/lOXV9qW6W7BxhWcuEbtjFK3e8F1wIH3CjYPOvH+kAVXVa51lJgY2pvRksR0y2vfsE=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2955.namprd05.prod.outlook.com (10.168.176.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.5; Thu, 1 Dec 2016 16:26:06 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0761.012; Thu, 1 Dec 2016 16:26:06 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can't set march=armv5te
Thread-Index: AdJL7sGDta7Td3odSOG3uI8w7JysXw==
Date: Thu, 1 Dec 2016 16:26:06 +0000
Message-ID: <DM5PR05MB2954A758A4F3A3642281F22FBB8F0@DM5PR05MB2954.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: b2e10d0d-90e6-4517-b156-08d41a06c06e
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2955;
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2955;
	7:EA+XTs12GtoI9TDO55NL1BZ4KryEE6PBoDftsYjjBxKrtuGGSq7LVMe89yGu2RDoGzWgaADQjxhxyxkOmXaSSCjFcZ9nL8Tfm9NgNeWDYnUkanwpBCkTVWYhoC5eWJrTohfjTQyiks6dHUSrZ0jT69PTubdLshNcyBEt4945riH0jr2XMyQzxsdrINDb3uVv90fOdJNXxHO3h5DkFHUda0OMovX0nFlqjZAacUZYcqZdWUhn+lSp6dEEaOKumTSIOupeT2A4lALPR8dmmfN3x+zevQPp/4BcGBpBQBjUJjEiYPL+Y0GBgFjDwxxD/5jwEWE8j162le5YF+We2O2dMGhR+kzqPUq5ZRLyTr8JKYzU3qPKj/QA5Aku9btaOj+/jwUakbH+4htY/xlTLnnovQHi9LvbPCqn1p1/WKgh7FDpeY8CERp9cPXpw/LL4VvZfh37lWvhbm8ihw/2rOIHgg==
x-microsoft-antispam-prvs: <DM5PR05MB2955597F4C33E5E52171C9E6BB8F0@DM5PR05MB2955.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(2016111802025)(6072148)(6043046);
	SRVR:DM5PR05MB2955; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2955; 
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(189002)(6916009)(3660700001)(68736007)(3280700002)(2906002)(122556002)(99286002)(9686002)(81166006)(54356999)(1730700003)(50986999)(8676002)(5640700001)(81156014)(101416001)(8936002)(33656002)(2501003)(105586002)(7736002)(7696004)(7846002)(97736004)(2900100001)(189998001)(450100001)(92566002)(5660300001)(3846002)(110136003)(102836003)(6116002)(106356001)(2351001)(107886002)(76576001)(74316002)(305945005)(39410400001)(39450400002)(77096006)(6506003)(38730400001)(66066001)(86362001)(575784001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2955;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2016 16:26:06.5577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2955
Subject: Can't set march=armv5te
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
X-List-Received-Date: Thu, 01 Dec 2016 18:59:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm in the process of upgrading from the dizzy branch to the fido branch, a=
nd I'm still a little confused about some tune changes that I'm seeing.  I'=
m using an Atmel AT91SAM9G25 processor.  The meta-atmel layer that I am usi=
ng had incorrectly set DEFAULTTUNE =3D "arm926ejs" which had been setting t=
he architecture to "arm926ejste".  They fixed that here: https://github.com=
/linux4sam/meta-atmel/commit/47238062c04ca97c2ea0570576072ad5b46ce261 and a=
ccording to the commit message it should now be building with DEFAULTTUNE (=
and the resulting architecture) set to "armv5te".  However, when I build us=
ing my autobuilder I am getting an architecture of "armv5e".  From my under=
standing, this means the compiler thinks the processor does not have Thumb =
support.  I've tried "arm926ejs" and "armv5te" for DEFAULTTUNE settings and=
 it hasn't made any difference.

I've checked the working directories for a few packages, and previously the=
 relevant gcc options were being set to: "-march=3Darmv5te -marm -mthumb-in=
terwork -mtune=3Darm926ej-s".  Now they are being set to: "-march=3Darmv5e =
-marm  -mthumb-interwork".  How do I get it back to building with march=3Da=
rmv5te?

Here is the autobuilder configuration that I am using:

[nightly-atmel-demo-fido]
builders: 'builder1'
repos: [{'poky':
            {'repourl':'git://git.yoctoproject.org/poky',
                 'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'=
, 'yocto':'meta-yocto', 'poky':'meta-poky'},
             'branch':'fido'}},
        {'meta-atmel':
            {'repourl':'git://github.com/linux4sam/meta-atmel.git',
             'branch':'fido'}},
        {'meta-openembedded':
            {'autoinclude':False, 'repourl':'git://git.openembedded.org/met=
a-openembedded',
             'branch':'fido'}},
        {'meta-qt5':
            {'repourl':'git://github.com/meta-qt5/meta-qt5.git',
             'branch':'fido'}}]
steps: [{'SetDest':{}},
        {'CheckOutLayers': {}},
        {'RunPreamble': {}},
        {'GetDistroVersion' : {'distro': 'poky'}},
        {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE': 'i686'=
, 'distro': 'poky-atmel', 'buildhistory': True, 'packages': 'ipk', 'atextap=
pend': 'EXTRA_IMAGE_FEATURES =3D ""\nDEFAULTTUNE =3D "armv5te"\n'}},
        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
            ['meta-atmel', 'meta-qt5', 'meta-openembedded/meta-oe', 'meta-o=
penembedded/meta-networking', 'meta-openembedded/meta-python']}},
        {'BuildImages': {'images': 'atmel-demo-image'}},
        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
        {'PublishLayerTarballs':{}},
        {'PublishArtifacts': {'artifacts': ['at91sam9x5ek', 'ipk']}}]
scheduler: [{'nightly-scheduler-atmel-fido' :
                {'type':'Nightly',
                 'hour':'1',
                 'minute':'15',}}]

The resulting build configuration:
Build Configuration:
BB_VERSION        =3D "1.26.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "at91sam9x5ek"
DISTRO            =3D "poky-atmel"
DISTRO_VERSION    =3D "1.8.2"
TUNE_FEATURES     =3D "arm armv5 thumb dsp"
TARGET_FPU        =3D "soft"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "fido:c9f0a99050ec0050f0dbcd55d0cd2ab18848113f"
meta-atmel        =3D "fido:dd595e6e8ec7010cf646a9ca356b2e01f10e274c"
meta-qt5          =3D "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
meta-oe          =20
meta-networking  =20
meta-python       =3D "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"

TUNE_FEATURES includes "thumb", but the compiler options aren't set for arm=
v5te.  I've tried changing the DEFAULTTUNE specification in CreateAutoConf =
to "arm926ejs" and I've had the same results.  How do I get the architectur=
e set back correctly for the processor I'm using?

Thanks,
Bryan Evenson

