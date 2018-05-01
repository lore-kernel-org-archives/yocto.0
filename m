Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40FD1E007F2; Tue,  1 May 2018 14:22:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.122 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8259 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 May 2018 14:22:23 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0122.outbound.protection.outlook.com [104.47.1.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAFFCE006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 14:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=6mMjGHTBFL32gDiZtInF/N9OoJtZDtpSq15dh2cHVlk=;
	b=PhXNhkt9z10lryC0geqGePQAUFvZRJXmNYOVje0us26zM1aPktLgCDgvxyownSpBue0ZFE8d7IlQMuKelJ9ZuMn/f4jsa2S5rUDqxpDcvCHGD8qFNPpv1NKfyjB0uVclbU3mSF7btd3XK74OS3boW6TnZXZlEycQ6pwXIYKS/gA=
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com (10.175.40.143) by
	AM5PR0402MB2900.eurprd04.prod.outlook.com (10.175.42.14) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.715.18; Tue, 1 May 2018 18:49:17 +0000
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::64f5:8f9f:ebdd:3f1a]) by
	AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::64f5:8f9f:ebdd:3f1a%6]) with mapi id 15.20.0715.024;
	Tue, 1 May 2018 18:49:17 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: Andrea Galbusera <gizero@gmail.com>
Thread-Topic: [yocto] Recipe availability through eSDK (cppzmq)
Thread-Index: AQHT4LIEwdxy9E4mM0m8F5crslbr8KQa6ckAgABK9ig=
Date: Tue, 1 May 2018 18:49:17 +0000
Message-ID: <AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>,
	<CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>
In-Reply-To: <CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [85.191.189.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0402MB2900;
	7:tgMeF7P3cAWBJ0aAvCsxkGHmsu2yVhx1KpekNBeCYvI+GJHNR84e6tLlYMWTg57w2F2kdxMYfQnbqGGqf6a9/zNQFN7h+I6JukpseX6AqZY91zTnMZSVbRHy+VgyIRyChXRKoynGp0N0nmI7He8RGZuNEJXr8U/Og9zsa0JZbv/R/VEl6kqYkLUFVgvaEB/wSt3qdi/iH6wobUvffUDEeJ347GkIqZYKWmDYO8TiD7h8Qj45T65WIVGp8migHzQ4
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0402MB2900; 
x-ms-traffictypediagnostic: AM5PR0402MB2900:
x-microsoft-antispam-prvs: <AM5PR0402MB2900B4EC9D0E6F1D70E5DD17C4810@AM5PR0402MB2900.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(3231254)(944501410)(52105095)(10201501046)(93006095)(93001095)(6041310)(20161123558120)(20161123564045)(20161123560045)(2016111802025)(20161123562045)(6043046)(6072148)(201708071742011);
	SRVR:AM5PR0402MB2900; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0402MB2900; 
x-forefront-prvs: 06592CCE58
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(396003)(366004)(39840400004)(39380400002)(376002)(199004)(189003)(76176011)(66066001)(8676002)(2906002)(6116002)(3846002)(4326008)(33656002)(14454004)(39060400002)(5250100002)(7696005)(2900100001)(6606003)(81166006)(8936002)(6246003)(19627405001)(59450400001)(316002)(6916009)(478600001)(476003)(105586002)(81156014)(53936002)(966005)(86362001)(6436002)(102836004)(74316002)(229853002)(26005)(99286004)(186003)(5660300001)(106356001)(53546011)(486006)(68736007)(97736004)(6506007)(3660700001)(446003)(1411001)(9686003)(6306002)(54896002)(3280700002)(11346002)(55016002)(7736002)(25786009)(236005)(606006)(42262002)(547064002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0402MB2900;
	H:AM5PR0402MB2721.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 6pQe3kQ0MuCHo6fh1x3JsgNoZZXzuVOxWBrLhY+nWsIBJ4J3EfBPiZxSjBHOQLiXhFx50PzabzFe6Wpw19GokbacqmKjYNdapgIbxIKNXyJFw6uYfHtyZf/xlmqxyIDwiIq0wVgLi8se7yxR5NpLkjHbSM0AIjxVmf6YvGNYHUzx+H19JjL7nTMwiA9rbUcB
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 88bda015-7aed-4ed2-eec9-08d5af943ded
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88bda015-7aed-4ed2-eec9-08d5af943ded
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2018 18:49:17.1192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2900
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
X-List-Received-Date: Tue, 01 May 2018 21:22:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0402MB2721423A92FAD6DD6409AA3EC4810AM5PR0402MB2721_"

--_000_AM5PR0402MB2721423A92FAD6DD6409AA3EC4810AM5PR0402MB2721_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_AM5PR0402MB2721423A92FAD6DD6409AA3EC4810AM5PR0402MB2721_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Andrea,</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Andrea Galbusera &lt;=
gizero@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 16:06<br>
<b>To:</b> Martin Siegumfeldt<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Recipe availability through eSDK (cppzmq)</font=
>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Martin,<br>
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
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">I understand your doubt here. The header file inst=
alled is a wrapper around zeromq and thus&nbsp;DEPENDS/RDEPENDS on this lib=
rary. zeromq is included in the image, for which the SDK is generated, henc=
e I would expect this to be a valid use
 case?</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">Anyhow, I realized that the recipe does not even w=
ork in a BB environment - the following is encountered for an image includi=
ng the package:</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">
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
<div class=3D"PlainText">I wonder why this occurs when the recipe is indeed=
 present:</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">
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
<div class=3D"PlainText">Br,</div>
<div class=3D"PlainText">Martin</div>
<div class=3D"PlainText"><br>
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
99555" class=3D"OWAAutoLink" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_AM5PR0402MB2721423A92FAD6DD6409AA3EC4810AM5PR0402MB2721_--
