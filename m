Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A10CDE007F2; Wed,  2 May 2018 06:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.134 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0134.outbound.protection.outlook.com [104.47.2.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D31AFE007F2
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 06:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=PpLq3ytru49kd2Uc+Q3x3uHOYea/cLftRez/IoxObdA=;
	b=Q2iPPlyYuScHcb8IluGhRAraeQQBTy6k/vvsjnclt+v3iEO/2ZgxAGnZjw3120pMTaXXlG9xjxVVkue5jSsU52CeMDnpafiOg+yTz4PaIiq6CEVMxhOb6thZplatBhI+dG/4pFZmkuX/tOnIFCQ+AGRB1aAk8VvBBP/rBylSgnE=
Received: from DB6PR0402MB2728.eurprd04.prod.outlook.com (10.172.245.18) by
	DB6PR0402MB2935.eurprd04.prod.outlook.com (10.172.248.146) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.715.23;
	Wed, 2 May 2018 12:33:19 +0000
Received: from DB6PR0402MB2728.eurprd04.prod.outlook.com
	([fe80::d42d:945d:3fcb:5d6b]) by
	DB6PR0402MB2728.eurprd04.prod.outlook.com
	([fe80::d42d:945d:3fcb:5d6b%13]) with mapi id 15.20.0715.024;
	Wed, 2 May 2018 12:33:19 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: Andrea Galbusera <gizero@gmail.com>
Thread-Topic: [yocto] Recipe availability through eSDK (cppzmq)
Thread-Index: AQHT4LIEwdxy9E4mM0m8F5crslbr8KQa6ckAgABK9iiAAM18koAAHMoAgAA9KBU=
Date: Wed, 2 May 2018 12:33:19 +0000
Message-ID: <DB6PR0402MB2728A67E8A29394515D90449C4800@DB6PR0402MB2728.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>
	<AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<AM5PR0402MB27213A743A419B0D00E4AD63C4800@AM5PR0402MB2721.eurprd04.prod.outlook.com>,
	<CAC+thW1U42nj0aoDd56Vzi2-1Bpto0JDmtpSx2p8pmDgV7PB-g@mail.gmail.com>
In-Reply-To: <CAC+thW1U42nj0aoDd56Vzi2-1Bpto0JDmtpSx2p8pmDgV7PB-g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0402MB2935;
	7:jL7HRRXm4SG5scI0j6k+jlUImPWNDYDD2fcTsPYIGZCakyxop66GjpZNfJiUtqwL+QCLc5ylNaFEhbGXBco4939SEP+LfUk9iMg01GWWVeia//AD9DYDWB7AJEAvjB/ECC5DKXJ9JIlnKXCPBF5Pujqe/PEoWzkQBmksj1/avYYRoufefPvo6aS64QePNcWoYPtALRnwrDDhYLz69OYbPqgN3jATl8axVPnXebViCnacO2TG+dokBwC//cWQtwMM
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:DB6PR0402MB2935; 
x-ms-traffictypediagnostic: DB6PR0402MB2935:
x-microsoft-antispam-prvs: <DB6PR0402MB2935FF51EE29A567F7FAA2DAC4800@DB6PR0402MB2935.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231254)(944501410)(52105095)(93006095)(93001095)(6041310)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:DB6PR0402MB2935; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0402MB2935; 
x-forefront-prvs: 06607E485E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(366004)(346002)(39380400002)(39840400004)(189003)(199004)(106356001)(33656002)(25786009)(6436002)(5660300001)(93886005)(229853002)(81156014)(39060400002)(7736002)(74316002)(55016002)(5250100002)(6306002)(53936002)(3846002)(6246003)(9686003)(6116002)(446003)(305945005)(476003)(11346002)(8676002)(4326008)(105586002)(486006)(8936002)(6916009)(81166006)(478600001)(97736004)(86362001)(14454004)(76176011)(99286004)(7696005)(26005)(2900100001)(316002)(966005)(68736007)(2906002)(102836004)(3280700002)(53546011)(186003)(66066001)(59450400001)(1411001)(6506007)(3660700001)(547064002)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0402MB2935;
	H:DB6PR0402MB2728.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: wt98o5ghrQNKHfx2TPj8wAWFPAE9S0qDGQqSon+hrAYbR7+MJmchrXqkITMLVLRcajRJnPVfWCzjHP56XRGb8YxHe62hsb2tkbhbhZAdZh7gTbQ1QteI1RI1UxBbdZvCZ7E7yrRurnFKd26OhI63Sr5tqgDneJ01GZ15ElAw+C5ecoNyDXm09BbDHVr/dy7W
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 87e05bb0-b7bd-4f29-75b7-08d5b028e2ff
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e05bb0-b7bd-4f29-75b7-08d5b028e2ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2018 12:33:19.4960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2935
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Wed, 02 May 2018 13:05:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Andrea,

You are right, the recipe works-as-is, when adding 'cppzmq-dev' to the imag=
e rather than just 'cppzmq' - I was not aware of this. From an eSDK perspec=
tive it seems to work when the package is installed according to

devtool sdk-install -s cppzmq

and then adding 'IMAGE_INSTALL +=3D "cppzmq-dev"' to local.conf.

On the variables passed in from the shell, can you refer to the location of=
 this whitelist - for future reference?

Thanks for your support - highly appreciated.
Martin


From: Andrea Galbusera <gizero@gmail.com>
Sent: Wednesday, May 2, 2018 10:33
To: Martin Siegumfeldt
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
=A0=20

On Wed, May 2, 2018 at 9:52 AM, Martin Siegumfeldt <mns@gomspace.com> wrote=
:
> Hi,
>
>
> Hacking the recipe according to:
>
>
> martin@dell:~/work/z7000-distro-zcu102/meta-openembedded$ git diff
> diff --git a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> index a64745c94..aba1d6edb 100644
> --- a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> +++ b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> @@ -13,9 +13,11 @@ S =3D "${WORKDIR}/git"
>
>=A0 do_install () {
>=A0=A0=A0=A0=A0=A0=A0=A0=A0 install -d ${D}/usr/include
> +=A0=A0=A0=A0=A0=A0=A0 install -d ${D}/etc
>=A0=A0=A0=A0=A0=A0=A0=A0=A0 install -m 0755 ${S}/zmq.hpp ${D}/usr/include/
> +=A0=A0=A0=A0=A0=A0=A0 install -m 0755 ${S}/zmq.hpp ${D}/etc
>=A0 }
>
> -PACKAGES =3D "${PN}-dev"
> +PACKAGES =3D "${PN}-dev ${PN}"

If you go down the patch-the-recipe way, you can probably leave
PACKAGES at its default: both ${PN} and ${PN}-dev are there by
default.

> RDEPENDS_${PN}-dev =3D "zeromq-dev"
>
> triggers both ${PN}-dev and ${PN} variants to be packaged and included by
> the image. Leaving out the installation into /etc causes ${PN} package no=
t
> to be generated and the image generation does not pick up the ${PN}-dev
> variant.

Better would be adding:

ALLOW_EMPTY_${PN} =3D "1"

This way it's cleaner and should work as well. However, you'll need to
force your image to depend upon an empty package to be added
(meaningless for the target), for the sake of the corresponding -dev
package to be part of the tailored eSDK... Maybe there's a better way
to achieve this, possibly by adding cppzmq-dev to the SDK explicitly
with something like TOOLCHAIN_TARGET_TASK_append (never used it in
practice though). Hopefully someone can further comment on this to add
some wisdom.

> In essence, it looks like image generation disregards recipes residing
> exclusively in the ${PN}-dev variant - question is whether this is intend=
ed
> or not?

Yes it is. -dev packages are not intended to be installed into target
image by design.

>
>
> Br,
>
> Martin
>
>
> ________________________________
> From: Martin Siegumfeldt
> Sent: Tuesday, May 1, 2018 8:49:17 PM
> To: Andrea Galbusera
>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
>
>
> Hi Andrea,
>
>
>
> ________________________________
> From: Andrea Galbusera <gizero@gmail.com>
> Sent: Tuesday, May 1, 2018 16:06
> To: Martin Siegumfeldt
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
>
> Hi Martin,
>
> On Mon, Apr 30, 2018 at 9:10 PM, Martin Siegumfeldt <mns@gomspace.com>
> wrote:
>> Hi,
>>
>> I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. The
>> search function does not return anything, despite the recipe being avail=
able
>> through local recipe:
>>
>> martin@dell:~/gomspace_sdk$ ls
>> layers/meta-openembedded/meta-oe/recipes-connectivity/zeromq/
>> cppzmq_git.bb=A0 files=A0 zeromq_4.1.6.bb
>>
>> I assume this is expected since it does not come prebuilt as part of the
>> eSDK - is this correct understood?
>>
>> Fortunately, 'devtool modify/build/package' generates the package -
>> unfortunately it is not included in the subsequent image generation:
>>
>> martin@dell:~/gomspace_sdk$ devtool package cppzmq
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with th=
is
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |#######################################################################=
###########################################################################=
######################|
>> Time: 0:00:03
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |#######################################################################=
###########################################################################=
####################|
>> Time: 0:00:01
>> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets=
,
>> 305 skipped, 11 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> Initialising tasks: 100%
>> |#######################################################################=
###########################################################################=
#################|
>> Time: 0:00:00
>> Checking sstate mirror object availability: 100%
>> |#######################################################################=
####################################################################|
>> Time: 0:00:00
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to be
>> rerun and all succeeded.
>>
>> Summary: There was 1 WARNING message shown.
>> NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk
>>
>> martin@dell:~/gomspace_sdk$ devtool build-image
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with th=
is
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |#######################################################################=
###########################################################################=
######################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |#######################################################################=
###########################################################################=
####################|
>> Time: 0:00:02
>> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets=
,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> WARNING: Skipping recipe cppzmq as it doesn't produce a package with the
>> same name
>
> This is the suspicious bit... If you look at the recipe, you'll notice
> it's re-defining the PACKAGES variable. Then, it's not generating a
> package called 'cppzmq', but only one named 'cppzmq-dev'. That said,
> I'm not sure why you'd want to add a package which only provides
> development headers to your target image...
>
> I understand your doubt here. The header file installed is a wrapper arou=
nd
> zeromq and thus DEPENDS/RDEPENDS on this library. zeromq is included in t=
he
> image, for which the SDK is generated, hence I would expect this to be a
> valid use case?
>
> Anyhow, I realized that the recipe does not even work in a BB environment=
 -
> the following is encountered for an image including the package:
>
> ERROR: Nothing RPROVIDES 'cppzmq' (but
> /home/martin/work/z7000-distro-zcu102/poky/meta/recipes-core/images/core-=
image-minimal.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'cppzmq' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['cppzmq']
> ERROR: Required build target 'core-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal',
> 'cppzmq']
>
> I wonder why this occurs when the recipe is indeed present:
>
> martin@dell:~/work/z7000-distro-zcu102/build$ bitbake-layers=A0 show-reci=
pes
> cppzmq
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with thi=
s
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Loading cache: 100%
> |########################################################################=
###########################################################################=
#####################|
> Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100%
> |########################################################################=
###########################################################################=
###################|
> Time: 0:00:01
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
> 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> =3D=3D=3D Matching recipes: =3D=3D=3D
> cppzmq:
>=A0=A0 meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 4.1.5+gitAUTOINC+68a=
7b09cfc
>
> Br,
> Martin
>
>>
>> Inspecting the manifest file confirms that the package is not installed =
-
>> any idea why not? I also tried installing though sdk-install:
>>
>> martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with th=
is
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |#######################################################################=
###########################################################################=
######################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |#######################################################################=
###########################################################################=
####################|
>> Time: 0:00:02
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets=
,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> NOTE: Installing cppzmq...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with th=
is
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |#######################################################################=
###########################################################################=
######################|
>> Time: 0:00:03
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |#######################################################################=
###########################################################################=
####################|
>> Time: 0:00:01
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets=
,
>> 305 skipped, 11 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> Initialising tasks: 100%
>> |#######################################################################=
###########################################################################=
#################|
>> Time: 0:00:00
>> Checking sstate mirror object availability: 100%
>> |#######################################################################=
####################################################################|
>> Time: 0:00:00
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to be
>> rerun and all succeeded.
>>
>> Summary: There was 1 WARNING message shown.
>> NOTE: Successfully installed cppzmq
>>
>> Which also does not pick up the package upon image building:
>>
>> martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append=3D"cppzmq" devtool
>> build-image
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with th=
is
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |#######################################################################=
###########################################################################=
######################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |#######################################################################=
###########################################################################=
####################|
>> Time: 0:00:02
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets=
,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> WARNING: No packages to add, building image nanocom-sdr-image unmodified
>>
>> What am I missing here?
>>
>> Thanks,
>> Martin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
    =

