Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48721E00C40; Mon, 30 Apr 2018 14:42:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0133.outbound.protection.outlook.com [104.47.2.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE112E00C22
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2018 14:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=TH9vAZrI/s1+mMItyecyoj1twpR4ySKkjJar1C95Zw8=;
	b=EsiDSs7IZW5oHN4RAESd/IZaNK2rRiBukh9MxhyBoN/oPHYJOJeJxEH7ElTq6RtCye5HNaQ93wRI5iOOXvmZlGaUN17Y3a8qpApHv1f0/TOSL1IIGWtlpRRmbEKecK58y0iQTIWhYbWIbDuYSA9piGG1uM3sx6Kx3I6iv3gPIAA=
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com (10.175.40.143) by
	AM5PR0402MB2849.eurprd04.prod.outlook.com (10.175.41.144) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.715.18; Mon, 30 Apr 2018 19:10:59 +0000
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::64f5:8f9f:ebdd:3f1a]) by
	AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::64f5:8f9f:ebdd:3f1a%6]) with mapi id 15.20.0715.023;
	Mon, 30 Apr 2018 19:10:59 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe availability through eSDK (cppzmq)
Thread-Index: AQHT4LIEwdxy9E4mM0m8F5crslbr8A==
Date: Mon, 30 Apr 2018 19:10:59 +0000
Message-ID: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [85.191.189.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0402MB2849;
	7:m+OPSciGK8Bqs/tQ2k2/A8INI/gRv0s//ndoFPsFSx8s8SjhIUTqP0oGmkQnB6/iwVHbqY6du4vWNUO2hTH6lW6IX8tYzEAtzQkbBNiU/KUOAacEmur+fuixkTJCUKo0OrI5PQiB9JnXcEguJvBRgCgbN7VB9n9bBH89JX11NigCjY29+hpCwHY7sPl2KhvsO0oRFoDnKEQ/0Yc4+gSH/GOijYiDXw5825axK5M/rnpEKjg45fO/qvbm0q5lOB03
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0402MB2849; 
x-ms-traffictypediagnostic: AM5PR0402MB2849:
x-microsoft-antispam-prvs: <AM5PR0402MB2849F0D46437DE654614D117C4820@AM5PR0402MB2849.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231254)(944501410)(52105095)(6041310)(2016111802025)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:AM5PR0402MB2849; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0402MB2849; 
x-forefront-prvs: 0658BAF71F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(39380400002)(366004)(396003)(376002)(346002)(199004)(189003)(476003)(26005)(3660700001)(1730700003)(81156014)(3280700002)(5250100002)(97736004)(14454004)(2351001)(478600001)(86362001)(106356001)(105586002)(316002)(8676002)(6506007)(7696005)(99286004)(7736002)(25786009)(305945005)(33656002)(6916009)(186003)(9686003)(8936002)(68736007)(81166006)(3846002)(55016002)(5660300001)(2906002)(74316002)(59450400001)(2501003)(102836004)(6436002)(66066001)(2900100001)(486006)(5640700003)(6116002)(53936002)(42262002)(547064002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0402MB2849;
	H:AM5PR0402MB2721.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: +KibLfzQUM7eVd2A4lwoDp1bgfBcsiLnMJOn5jOdCB6cRWsC2eIuBGL7DS1MrtJqHIADbfxzIe9hot8vLVMQzPDcjxcqSrSC/DHbk5lu+IHIWTUEpB4B5E+455NpmVmaOuQGfxiTl8VFU64NpvgnZxpKoCClFy5QZZf0VgSF8inD6gWmpSLOeVKUt3ZMElob
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 65850b0b-0ab5-4d07-cdf8-08d5aece1bae
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65850b0b-0ab5-4d07-cdf8-08d5aece1bae
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2018 19:10:59.2792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2849
Subject: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Mon, 30 Apr 2018 21:42:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. The sea=
rch function does not return anything, despite the recipe being available t=
hrough local recipe:

martin@dell:~/gomspace_sdk$ ls layers/meta-openembedded/meta-oe/recipes-con=
nectivity/zeromq/
cppzmq_git.bb  files  zeromq_4.1.6.bb

I assume this is expected since it does not come prebuilt as part of the eS=
DK - is this correct understood?=20

Fortunately, 'devtool modify/build/package' generates the package - unfortu=
nately it is not included in the subsequent image generation:

martin@dell:~/gomspace_sdk$ devtool package cppzmq
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
WARNING: Host distribution "ubuntu-17.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:00:03
Loaded 2773 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 0:00:01
Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets, 3=
05 skipped, 11 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
Initialising tasks: 100% |#################################################=
###########################################################################=
#######################################| Time: 0:00:00
Checking sstate mirror object availability: 100% |#########################=
###########################################################################=
#######################################| Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to be rer=
un and all succeeded.

Summary: There was 1 WARNING message shown.
NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk

martin@dell:~/gomspace_sdk$ devtool build-image
NOTE: Starting bitbake server...
WARNING: Host distribution "ubuntu-17.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:00:00
Loaded 2773 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 0:00:02
Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets, 3=
05 skipped, 11 masked, 0 errors.

Summary: There was 1 WARNING message shown.
WARNING: Skipping recipe cppzmq as it doesn't produce a package with the sa=
me name

Inspecting the manifest file confirms that the package is not installed - a=
ny idea why not? I also tried installing though sdk-install:

martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq                  =
                                                                           =
                                                     =20
NOTE: Starting bitbake server...                                           =
                                                                           =
                                                     =20
WARNING: Host distribution "ubuntu-17.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.                   =
                                                                           =
                                                                           =
                                =20
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:00:00
Loaded 2773 entries from dependency cache.                                 =
                                                                           =
                                                     =20
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 0:00:02
Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 3=
05 skipped, 11 masked, 0 errors.                                           =
                                                     =20
                                                                           =
                                                                           =
                                                     =20
Summary: There was 1 WARNING message shown.                                =
                                                                           =
                                                     =20
NOTE: Installing cppzmq...                                                 =
                                                                           =
                                                     =20
WARNING: Host distribution "ubuntu-17.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.                   =
                                                                           =
                                                                           =
                                =20
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:00:03
Loaded 2773 entries from dependency cache.                                 =
                                                                           =
                                                     =20
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 0:00:01
Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 3=
05 skipped, 11 masked, 0 errors.                                           =
                                                     =20
NOTE: Resolving any missing task queue dependencies                        =
                                                                           =
                                                     =20
Initialising tasks: 100% |#################################################=
###########################################################################=
#######################################| Time: 0:00:00
Checking sstate mirror object availability: 100% |#########################=
###########################################################################=
#######################################| Time: 0:00:00
NOTE: Executing SetScene Tasks                                             =
                                                                           =
                                                     =20
NOTE: Executing RunQueue Tasks                                             =
                                                                           =
                                                     =20
NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to be rer=
un and all succeeded.                                                      =
                                                     =20
                                                                           =
                                                                           =
                                                     =20
Summary: There was 1 WARNING message shown.                                =
                                                                           =
                                                     =20
NOTE: Successfully installed cppzmq

Which also does not pick up the package upon image building:

martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append=3D"cppzmq" devtool build-i=
mage                                                                       =
                                                       =20
NOTE: Starting bitbake server...                  =20
WARNING: Host distribution "ubuntu-17.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.                   =
                             =20
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:00:00
Loaded 2773 entries from dependency cache.        =20
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 0:00:02
Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 3=
05 skipped, 11 masked, 0 errors.                                           =
                                                     =20

Summary: There was 1 WARNING message shown.       =20
WARNING: No packages to add, building image nanocom-sdr-image unmodified   =
                       =20

What am I missing here?

Thanks,
Martin

