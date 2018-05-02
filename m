Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E13E007F2; Wed,  2 May 2018 01:25:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0104.outbound.protection.outlook.com [104.47.2.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 747EBE007F2
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 01:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=iqIaSSifKg/E88gPkGuG3UKHdyvUOdRc6sA8XLqFZL4=;
	b=LMCggwy6S6xfhs5fa3kLKmDnq00/t3jXVpWLj8cgcOamlqSZGKOCA4FzykXo50I86gdv+u1jY61TiBjhffq4h6TQKx04zryyuEt1xHPU+TmjfQsH2ED5w4VjxMWYgf0r/hIxE5UaTm+PNeo8YvAXOpDoXZgGC8fHvJV/yVa3l2w=
Received: from DB6PR0402MB2728.eurprd04.prod.outlook.com (10.172.245.18) by
	DB6PR0402MB2790.eurprd04.prod.outlook.com (10.172.246.15) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.24; Wed, 2 May 2018 07:52:01 +0000
Received: from DB6PR0402MB2728.eurprd04.prod.outlook.com
	([fe80::d42d:945d:3fcb:5d6b]) by
	DB6PR0402MB2728.eurprd04.prod.outlook.com
	([fe80::d42d:945d:3fcb:5d6b%13]) with mapi id 15.20.0715.024;
	Wed, 2 May 2018 07:52:01 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: Andrea Galbusera <gizero@gmail.com>
Thread-Topic: [yocto] Recipe availability through eSDK (cppzmq)
Thread-Index: AQHT4LIEwdxy9E4mM0m8F5crslbr8KQa6ckAgABK9iiAAM18kg==
Date: Wed, 2 May 2018 07:52:01 +0000
Message-ID: <AM5PR0402MB27213A743A419B0D00E4AD63C4800@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>,
	<CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>,
	<AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
In-Reply-To: <AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0402MB2790;
	7:cFrgppFDab7dHY/RF3snB8Zd48f/yTt9bmGdkK9Mo92SHrFSuThO2Zfa/q1WJwQ9aLTtonfwmM52hByFLgeyXDHeG6W0/88V1h3SzlccNgWDt/8YwBbUWYvmY1O7YFQgt7kaaYumtAPetE1RkRtCIa4+HOE2sLjZb289bvgkCP6SFXZk/QSuKRoEHE0oZdjOiiRWDXO5kBeoPyPsx0NHgV0ruAC0vk6Rkx64bzYzkzzXEGCrkCRsJp3sZG2xtBl+
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:DB6PR0402MB2790; 
x-ms-traffictypediagnostic: DB6PR0402MB2790:
x-microsoft-antispam-prvs: <DB6PR0402MB2790DEED3A32A2433B620096C4800@DB6PR0402MB2790.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231254)(944501410)(52105095)(93006095)(93001095)(6041310)(20161123564045)(20161123560045)(20161123562045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:DB6PR0402MB2790; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0402MB2790; 
x-forefront-prvs: 06607E485E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(366004)(39840400004)(376002)(396003)(39380400002)(346002)(189003)(199004)(316002)(14454004)(53936002)(9686003)(54896002)(6306002)(6512007)(39060400002)(186003)(97736004)(1411001)(966005)(4326008)(6246003)(26005)(59450400001)(105586002)(6506007)(5660300001)(66066001)(81166006)(8936002)(76176011)(229853002)(53546011)(236005)(81156014)(446003)(106356001)(6436002)(3846002)(8676002)(6116002)(99286004)(33656002)(6486002)(19627405001)(7736002)(486006)(3280700002)(6916009)(86362001)(5250100002)(476003)(11346002)(6606003)(478600001)(606006)(102836004)(2906002)(3660700001)(25786009)(2900100001)(68736007)(74316002)(547064002)(42262002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0402MB2790;
	H:DB6PR0402MB2728.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: UOlQFy6Dx6W3Yz8G3trOL68TUDVxBQkLNMmOa3OD6QY+PTJzopvDPj2Yw6p+JuV5npS50R4U8gCvbjm84777hOgZY40WFxJ/sIQNRpOugLrtlzjlTCeZzBvk1P4lhJu7YzJ8QMQxogrR8022mLrPHLKOJJqDpHDcEEW4YvbGRJ5KqIDy68hiP8SuahAQf0HF
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: b6b1a67b-1b45-45f4-e016-08d5b00196f4
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b1a67b-1b45-45f4-e016-08d5b00196f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2018 07:52:01.4692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2790
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
X-List-Received-Date: Wed, 02 May 2018 08:25:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0402MB27213A743A419B0D00E4AD63C4800AM5PR0402MB2721_"

--_000_AM5PR0402MB27213A743A419B0D00E4AD63C4800AM5PR0402MB2721_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Hacking the recipe according to:


martin@dell:~/work/z7000-distro-zcu102/meta-openembedded$ git diff
diff --git a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb b/meta-oe/re=
cipes-connectivity/zeromq/cppzmq_git.bb
index a64745c94..aba1d6edb 100644
--- a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
+++ b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
@@ -13,9 +13,11 @@ S =3D "${WORKDIR}/git"

 do_install () {
         install -d ${D}/usr/include
+        install -d ${D}/etc
         install -m 0755 ${S}/zmq.hpp ${D}/usr/include/
+        install -m 0755 ${S}/zmq.hpp ${D}/etc
 }

-PACKAGES =3D "${PN}-dev"
+PACKAGES =3D "${PN}-dev ${PN}"

RDEPENDS_${PN}-dev =3D "zeromq-dev"

triggers both ${PN}-dev and ${PN} variants to be packaged and included by t=
he image. Leaving out the installation into /etc causes ${PN} package not t=
o be generated and the image generation does not pick up the ${PN}-dev vari=
ant.


In essence, it looks like image generation disregards recipes residing excl=
usively in the ${PN}-dev variant - question is whether this is intended or =
not?


Br,

Martin


________________________________
From: Martin Siegumfeldt
Sent: Tuesday, May 1, 2018 8:49:17 PM
To: Andrea Galbusera
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)


Hi Andrea,


________________________________
From: Andrea Galbusera <gizero@gmail.com>
Sent: Tuesday, May 1, 2018 16:06
To: Martin Siegumfeldt
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)

Hi Martin,

On Mon, Apr 30, 2018 at 9:10 PM, Martin Siegumfeldt <mns@gomspace.com> wrot=
e:
> Hi,
>
> I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. The s=
earch function does not return anything, despite the recipe being available=
 through local recipe:
>
> martin@dell:~/gomspace_sdk$ ls layers/meta-openembedded/meta-oe/recipes-c=
onnectivity/zeromq/
> cppzmq_git.bb  files  zeromq_4.1.6.bb
>
> I assume this is expected since it does not come prebuilt as part of the =
eSDK - is this correct understood?
>
> Fortunately, 'devtool modify/build/package' generates the package - unfor=
tunately it is not included in the subsequent image generation:
>
> martin@dell:~/gomspace_sdk$ devtool package cppzmq
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Loading cache: 100% |####################################################=
###########################################################################=
#########################################| Time: 0:00:03
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
#########################################| Time: 0:00:01
> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets,=
 305 skipped, 11 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> Initialising tasks: 100% |###############################################=
###########################################################################=
#########################################| Time: 0:00:00
> Checking sstate mirror object availability: 100% |#######################=
###########################################################################=
#########################################| Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to be r=
erun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
> NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk
>
> martin@dell:~/gomspace_sdk$ devtool build-image
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Loading cache: 100% |####################################################=
###########################################################################=
#########################################| Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
#########################################| Time: 0:00:02
> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets,=
 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> WARNING: Skipping recipe cppzmq as it doesn't produce a package with the =
same name

This is the suspicious bit... If you look at the recipe, you'll notice
it's re-defining the PACKAGES variable. Then, it's not generating a
package called 'cppzmq', but only one named 'cppzmq-dev'. That said,
I'm not sure why you'd want to add a package which only provides
development headers to your target image...

I understand your doubt here. The header file installed is a wrapper around=
 zeromq and thus DEPENDS/RDEPENDS on this library. zeromq is included in th=
e image, for which the SDK is generated, hence I would expect this to be a =
valid use case?

Anyhow, I realized that the recipe does not even work in a BB environment -=
 the following is encountered for an image including the package:

ERROR: Nothing RPROVIDES 'cppzmq' (but /home/martin/work/z7000-distro-zcu10=
2/poky/meta/recipes-core/images/core-image-minimal.bb RDEPENDS on or otherw=
ise requires it)
NOTE: Runtime target 'cppzmq' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['cppzmq']
ERROR: Required build target 'core-image-minimal' has no buildable provider=
s.
Missing or unbuildable dependency chain was: ['core-image-minimal', 'cppzmq=
']

I wonder why this occurs when the recipe is indeed present:

martin@dell:~/work/z7000-distro-zcu102/build$ bitbake-layers  show-recipes =
cppzmq
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
#######################################| Time: 0:00:01
Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets, 3=
05 skipped, 11 masked, 0 errors.

Summary: There was 1 WARNING message shown.
=3D=3D=3D Matching recipes: =3D=3D=3D
cppzmq:
  meta-oe              4.1.5+gitAUTOINC+68a7b09cfc

Br,
Martin

>
> Inspecting the manifest file confirms that the package is not installed -=
 any idea why not? I also tried installing though sdk-install:
>
> martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Loading cache: 100% |####################################################=
###########################################################################=
#########################################| Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
#########################################| Time: 0:00:02
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,=
 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> NOTE: Installing cppzmq...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Loading cache: 100% |####################################################=
###########################################################################=
#########################################| Time: 0:00:03
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
#########################################| Time: 0:00:01
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,=
 305 skipped, 11 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> Initialising tasks: 100% |###############################################=
###########################################################################=
#########################################| Time: 0:00:00
> Checking sstate mirror object availability: 100% |#######################=
###########################################################################=
#########################################| Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to be r=
erun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
> NOTE: Successfully installed cppzmq
>
> Which also does not pick up the package upon image building:
>
> martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append=3D"cppzmq" devtool build=
-image
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Loading cache: 100% |####################################################=
###########################################################################=
#########################################| Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
#########################################| Time: 0:00:02
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,=
 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> WARNING: No packages to add, building image nanocom-sdr-image unmodified
>
> What am I missing here?
>
> Thanks,
> Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--_000_AM5PR0402MB27213A743A419B0D00E4AD63C4800AM5PR0402MB2721_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Hacking&nbsp;the recipe according=
 to:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>martin@dell:~/work/z7000-distro-zcu102/meta-openembedded$ git diff</di=
v>
<div>diff --git a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb b/meta-=
oe/recipes-connectivity/zeromq/cppzmq_git.bb</div>
<div>index a64745c94..aba1d6edb 100644</div>
<div>--- a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb</div>
<div>&#43;&#43;&#43; b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb</d=
iv>
<div>@@ -13,9 &#43;13,11 @@ S =3D &quot;${WORKDIR}/git&quot;</div>
<div>&nbsp;</div>
<div>&nbsp;do_install () {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -d ${D}/usr/include</div>
<div>&#43;&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}/etc</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 0755 ${S}/zmq.hpp ${D}/us=
r/include/</div>
<div>&#43;&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 ${S}/zmq.hpp ${D}/etc=
</div>
<div>&nbsp;}</div>
<div>&nbsp;</div>
<div>-PACKAGES =3D &quot;${PN}-dev&quot;</div>
<div>&#43;PACKAGES =3D &quot;${PN}-dev ${PN}&quot;</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN}-dev =3D &quot;zeromq-dev&quot;</div>
<div><br>
</div>
triggers both&nbsp;<span style=3D"font-family: Calibri, Helvetica, sans-ser=
if, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, N=
otoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Emoj=
iSymbols; font-size: 16px;">${PN}-dev and ${PN} variants to be packaged&nbs=
p;and included
 by the image. Leaving out the&nbsp;installation into /etc causes&nbsp;<spa=
n style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16=
px;">${PN}
 package not to be generated and the image generation does not pick up the&=
nbsp;<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">${PN}-dev
 variant.</span></span></span>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"font-fami=
ly: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot=
;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,=
 &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"=
font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color E=
moji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symb=
ol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"font-fami=
ly: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot=
;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,=
 &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"=
font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color E=
moji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symb=
ol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">In
 essence, it looks like image generation disregards recipes residing exclus=
ively in the&nbsp;<span style=3D"font-family: Calibri, Helvetica, sans-seri=
f, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, No=
toColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Emoji=
Symbols; font-size: 16px;">${PN}-dev
 variant - question is whether this is intended or not?</span></span></span=
></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0">Br,</p>
<p style=3D"margin-top:0;margin-bottom:0">Martin</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Martin Siegumfeldt<br=
>
<b>Sent:</b> Tuesday, May 1, 2018 8:49:17 PM<br>
<b>To:</b> Andrea Galbusera<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Recipe availability through eSDK (cppzmq)</font=
>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0">Hi Andrea,</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Andrea Galbusera &l=
t;gizero@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 16:06<br>
<b>To:</b> Martin Siegumfeldt<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Recipe availability through eSDK (cppzmq)</font=
>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">Hi Martin,<br>
<br>
On Mon, Apr 30, 2018 at 9:10 PM, Martin Siegumfeldt &lt;mns@gomspace.com&gt=
; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. Th=
e search function does not return anything, despite the recipe being availa=
ble through local recipe:<br>
&gt;<br>
&gt; martin@dell:~/gomspace_sdk$ ls layers/meta-openembedded/meta-oe/recipe=
s-connectivity/zeromq/<br>
&gt; cppzmq_git.bb&nbsp; files&nbsp; zeromq_4.1.6.bb<br>
&gt;<br>
&gt; I assume this is expected since it does not come prebuilt as part of t=
he eSDK - is this correct understood?<br>
&gt;<br>
&gt; Fortunately, 'devtool modify/build/package' generates the package - un=
fortunately it is not included in the subsequent image generation:<br>
&gt;<br>
&gt; martin@dell:~/gomspace_sdk$ devtool package cppzmq<br>
&gt; NOTE: Starting bitbake server...<br>
&gt; NOTE: Starting bitbake server...<br>
&gt; WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been valid=
ated with this version of the build system; you may possibly experience une=
xpected failures. It is recommended that you use a tested distribution.<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:03<br>
&gt; Loaded 2773 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:01<br>
&gt; Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targe=
ts, 305 skipped, 11 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; Checking sstate mirror object availability: 100% |####################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to b=
e rerun and all succeeded.<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk<br=
>
&gt;<br>
&gt; martin@dell:~/gomspace_sdk$ devtool build-image<br>
&gt; NOTE: Starting bitbake server...<br>
&gt; WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been valid=
ated with this version of the build system; you may possibly experience une=
xpected failures. It is recommended that you use a tested distribution.<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; Loaded 2773 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:02<br>
&gt; Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targe=
ts, 305 skipped, 11 masked, 0 errors.<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; WARNING: Skipping recipe cppzmq as it doesn't produce a package with t=
he same name<br>
<br>
This is the suspicious bit... If you look at the recipe, you'll notice<br>
it's re-defining the PACKAGES variable. Then, it's not generating a<br>
package called 'cppzmq', but only one named 'cppzmq-dev'. That said,<br>
I'm not sure why you'd want to add a package which only provides<br>
development headers to your target image...</div>
<div class=3D"x_PlainText"><br>
</div>
<div class=3D"x_PlainText">I understand your doubt here. The header file in=
stalled is a wrapper around zeromq and thus&nbsp;DEPENDS/RDEPENDS on this l=
ibrary. zeromq is included in the image, for which the SDK is generated, he=
nce I would expect this to be a valid use
 case?</div>
<div class=3D"x_PlainText"><br>
</div>
<div class=3D"x_PlainText">Anyhow, I realized that the recipe does not even=
 work in a BB environment - the following is encountered for an image inclu=
ding the package:</div>
<div class=3D"x_PlainText"><br>
</div>
<div class=3D"x_PlainText">
<div>ERROR: Nothing RPROVIDES 'cppzmq' (but /home/martin/work/z7000-distro-=
zcu102/poky/meta/recipes-core/images/core-image-minimal.bb RDEPENDS on or o=
therwise requires it)</div>
<div>NOTE: Runtime target 'cppzmq' is unbuildable, removing...</div>
<div>Missing or unbuildable dependency chain was: ['cppzmq']</div>
<div>ERROR: Required build target 'core-image-minimal' has no buildable pro=
viders.</div>
<div>Missing or unbuildable dependency chain was: ['core-image-minimal', 'c=
ppzmq']</div>
<div><br>
</div>
<div class=3D"x_PlainText">I wonder why this occurs when the recipe is inde=
ed present:</div>
<div class=3D"x_PlainText"><br>
</div>
<div class=3D"x_PlainText">
<div>martin@dell:~/work/z7000-distro-zcu102/build$ bitbake-layers&nbsp; sho=
w-recipes cppzmq</div>
<div>NOTE: Starting bitbake server...</div>
<div>WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been valid=
ated with this version of the build system; you may possibly experience une=
xpected failures. It is recommended that you use a tested distribution.</di=
v>
<div>Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:00</div>
<div>Loaded 2773 entries from dependency cache.</div>
<div>Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:01</div>
<div>Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targe=
ts, 305 skipped, 11 masked, 0 errors.</div>
<div><br>
</div>
<div>Summary: There was 1 WARNING message shown.</div>
<div>=3D=3D=3D Matching recipes: =3D=3D=3D</div>
<div>cppzmq:</div>
<div>&nbsp; meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.1.5&#=
43;gitAUTOINC&#43;68a7b09cfc</div>
<div><br>
</div>
</div>
<div class=3D"x_PlainText">Br,</div>
<div class=3D"x_PlainText">Martin</div>
<div class=3D"x_PlainText"><br>
</div>
&gt;<br>
&gt; Inspecting the manifest file confirms that the package is not installe=
d - any idea why not? I also tried installing though sdk-install:<br>
&gt;<br>
&gt; martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq<br>
&gt; NOTE: Starting bitbake server...<br>
&gt; WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been valid=
ated with this version of the build system; you may possibly experience une=
xpected failures. It is recommended that you use a tested distribution.<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; Loaded 2773 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:02<br>
&gt; Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targe=
ts, 305 skipped, 11 masked, 0 errors.<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; NOTE: Installing cppzmq...<br>
&gt; WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been valid=
ated with this version of the build system; you may possibly experience une=
xpected failures. It is recommended that you use a tested distribution.<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:03<br>
&gt; Loaded 2773 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:01<br>
&gt; Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targe=
ts, 305 skipped, 11 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; Checking sstate mirror object availability: 100% |####################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to b=
e rerun and all succeeded.<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; NOTE: Successfully installed cppzmq<br>
&gt;<br>
&gt; Which also does not pick up the package upon image building:<br>
&gt;<br>
&gt; martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append=3D&quot;cppzmq&quot; =
devtool build-image<br>
&gt; NOTE: Starting bitbake server...<br>
&gt; WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been valid=
ated with this version of the build system; you may possibly experience une=
xpected failures. It is recommended that you use a tested distribution.<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; Loaded 2773 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:02<br>
&gt; Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targe=
ts, 305 skipped, 11 masked, 0 errors.<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; WARNING: No packages to add, building image nanocom-sdr-image unmodifi=
ed<br>
&gt;<br>
&gt; What am I missing here?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Martin<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk6=
99555" class=3D"x_OWAAutoLink" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AM5PR0402MB27213A743A419B0D00E4AD63C4800AM5PR0402MB2721_--
