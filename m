Return-Path: <thomas.kaufmann@duagon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50627E0071E; Wed, 10 Feb 2016 08:01:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.12.170.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 71 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Feb 2016 08:01:03 PST
Received: from antispamrelay01.bull-services.ch
	(antispamrelay01.bull-services.ch [62.12.170.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C449FE00404
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 08:01:02 -0800 (PST)
Received: from 220.158.14.46.static.wline.lns.sme.cust.swisscom.ch
	([46.14.158.220]) by mx-gate01-zrh.antispameurope.com; 
	Wed, 10 Feb 2016 16:59:51 +0100
Received: from chdua14.duagon.ads (192.168.0.83) by chdua14.duagon.ads
	(192.168.0.83) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Wed, 10 Feb 2016 16:59:48 +0100
Received: from chdua14.duagon.ads ([fe80::11cc:5f18:bf89:c528]) by
	chdua14.duagon.ads ([fe80::11cc:5f18:bf89:c528%12]) with mapi id
	15.00.1104.000; Wed, 10 Feb 2016 16:59:48 +0100
From: Thomas Kaufmann <Thomas.Kaufmann@duagon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto/Poky with external linaro toolchain
Thread-Index: AdFkGlKY/vS2K/4nSeKxYNgybgJa4g==
Date: Wed, 10 Feb 2016 15:59:48 +0000
Message-ID: <c0fe5ddbf4bb4b3491dcc6e92bb88602@chdua14.duagon.ads>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.0.189]
MIME-Version: 1.0
X-cloud-security-sender: thomas.kaufmann@duagon.com
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-gate01-zrh with D0A72395C079
X-cloud-security-connect: 220.158.14.46.static.wline.lns.sme.cust.swisscom.ch[46.14.158.220],
	TLS=1, IP=46.14.158.220
X-cloud-security: scantime:.6666
Subject: Yocto/Poky with external linaro toolchain
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
X-List-Received-Date: Wed, 10 Feb 2016 16:01:06 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_c0fe5ddbf4bb4b3491dcc6e92bb88602chdua14duagonads_"

--_000_c0fe5ddbf4bb4b3491dcc6e92bb88602chdua14duagonads_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I started porting an existing linux system to the latest yocto base. The ha=
rdware TI am 335x based.
I want to use the external linaro toolchains. Since I use an existing 3.2 l=
inux kernel as well as an older u-boot, I created a own machine and distro =
configuration. I succeed to build and run the target, so far so good.

To incorporate the external toolchains I added

TCMODE =3D "external-linaro"
EXTERNAL_TOOLCHAIN =3D "/<homedir>/gcc-linaro-5.1-2015.08-x86_64_arm-linux-=
gnueabihf"

to the local.conf file and

meta-linaro/meta-linaro-toolchain

to the BBLAYERS in bblayers.conf. meta-linaro was cloned using git.
For my "legacy" packages I adjust "EXTERNAL_TOOLCHAIN" to a gcc-4.9 version=
, this seems to work and everything compiles.

Now my next step is to create an SDK distribution.
When I do do_populate_sdk with bitbake for my image, however the process se=
ems to compile a new cross compiler for the target as well as various qemu =
things and also newer kernel releases.

Is this the preferred way to integrate the linaro toolchain into poky? Can =
anybody share their experience? I find various presentations and snippets a=
bout this topic, but nothing is complete.
How do I create a SDK distribution which does not feature any QEMU (I want =
to deploy to target hardware) and uses the existing prebuilt toolchain? Bui=
ld host and target sdk host would be x86_64.

Any recommendations are welcome.

regards Thomas Kaufmann

--_000_c0fe5ddbf4bb4b3491dcc6e92bb88602chdua14duagonads_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I started porting an existing linux system to the la=
test yocto base. The hardware TI am 335x based.<o:p></o:p></p>
<p class=3D"MsoNormal">I want to use the external linaro toolchains. Since =
I use an existing 3.2 linux kernel as well as an older u-boot, I created a =
own machine and distro configuration. I succeed to build and run the target=
, so far so good.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To incorporate the external toolchains I added<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">TCMODE =3D &quot;external-linaro&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">EXTERNAL_TOOLCHAIN =3D &quot;/&lt;homedir&gt;/gcc-li=
naro-5.1-2015.08-x86_64_arm-linux-gnueabihf&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">to the local.conf file and <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">meta-linaro/meta-linaro-toolchain<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">to the BBLAYERS in bblayers.conf. meta-linaro was cl=
oned using git.<o:p></o:p></p>
<p class=3D"MsoNormal">For my &quot;legacy&quot; packages I adjust &quot;EX=
TERNAL_TOOLCHAIN&quot; to a gcc-4.9 version, this seems to work and everyth=
ing compiles.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now my next step is to create an SDK distribution.<o=
:p></o:p></p>
<p class=3D"MsoNormal">When I do do_populate_sdk with bitbake for my image,=
 however the process seems to compile a new cross compiler for the target a=
s well as various qemu things and also newer kernel releases.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this the preferred way to integrate the linaro to=
olchain into poky? Can anybody share their experience? I find various prese=
ntations and snippets about this topic, but nothing is complete.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">How do I create a SDK distribution which does not fe=
ature any QEMU (I want to deploy to target hardware) and uses the existing =
prebuilt toolchain? Build host and target sdk host would be x86_64.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any recommendations are welcome.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">regards Thomas Kaufmann<o:p></o:p></p>
</div>
</body>
</html>

--_000_c0fe5ddbf4bb4b3491dcc6e92bb88602chdua14duagonads_--
