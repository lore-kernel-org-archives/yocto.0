Return-Path: <m.porst@igi-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB54AE00CE5; Tue, 19 Mar 2019 13:51:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.6.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 47949 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Mar 2019 13:50:57 PDT
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
	(mail-eopbgr60132.outbound.protection.outlook.com [40.107.6.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C43E0091D
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 13:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=igi57223.onmicrosoft.com; s=selector1-igisystems-com0i;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=1ZODKThxtyO1bYbBfB5pmaKIH3OV82I1KF3ILpCLEz8=;
	b=jajWWug5iu9PKUVxAAjnwK4bdfvtZFSINYQQKFmdPKdw13CT8FjyCshL5n/C3l4o/4zk8hNeC5pW6u4+dL1t5yjfA4af0zwE6ZVTkxlYzQcs9l7jldOBByqLvStkI8NGp6stDSG2dERVeVDiXI3F1084OhaEnePgETWRS7D+tFE=
Received: from AM6PR04MB5703.eurprd04.prod.outlook.com (20.179.1.77) by
	AM6PR04MB6149.eurprd04.prod.outlook.com (20.179.6.76) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1709.14; Mon, 18 Mar 2019 13:58:41 +0000
Received: from AM6PR04MB5703.eurprd04.prod.outlook.com
	([fe80::4879:3b73:d240:8920]) by
	AM6PR04MB5703.eurprd04.prod.outlook.com
	([fe80::4879:3b73:d240:8920%6]) with mapi id 15.20.1709.015;
	Mon, 18 Mar 2019 13:58:41 +0000
From: IGI - Moritz Porst <m.porst@igi-systems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-mingw] Windows SDK build fails using meta-qt5
Thread-Index: AQHU3ZKwImE0+t0x4UuOhHrljzHdpQ==
Date: Mon, 18 Mar 2019 13:58:41 +0000
Message-ID: <AM6PR04MB5703FAD886539800513EA6CFA0470@AM6PR04MB5703.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=m.porst@igi-systems.com; 
x-originating-ip: [80.152.229.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b736df0-6eb3-4ba6-5d5c-08d6aba9d3d9
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR04MB6149; 
X-MS-TrafficTypeDiagnostic: AM6PR04MB6149:|AM6PR04MB6149:|AM6PR04MB6149:|AM6PR04MB6149:|AM6PR04MB6149:
x-microsoft-antispam-prvs: <AM6PR04MB614978C63C9A4BEA2FB3CF95A0470@AM6PR04MB6149.eurprd04.prod.outlook.com>
x-forefront-prvs: 098076C36C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39830400003)(136003)(396003)(366004)(346002)(376002)(199004)(189003)(38564003)(53754006)(106356001)(54896002)(55016002)(6306002)(99286004)(9686003)(236005)(7696005)(5640700003)(6436002)(105586002)(2351001)(606006)(733005)(53936002)(86362001)(5660300002)(19627405001)(8936002)(97736004)(3846002)(476003)(6116002)(21615005)(2906002)(14454004)(7736002)(486006)(14444005)(52536014)(74316002)(256004)(25786009)(2501003)(6916009)(508600001)(66066001)(861006)(8676002)(1730700003)(81166006)(81156014)(6606003)(68736007)(102836004)(33656002)(4326008)(186003)(26005)(71200400001)(71190400001)(316002)(6506007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR04MB6149;
	H:AM6PR04MB5703.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: igi-systems.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7d7YmYBjSxUFo0/8y5261PxwGg1P4YXT1piWFu3gOlXvtO1n6PenNC81qnfyTHEM2i2HD4xb3u6YN7xrcwE2/m297hw9qbaHzEh6uJkdbYtLCGgE21cfuOxNSYeXQdBT5VrfyInd9i7XxUlKIsccRNm+ogi5w0LkQlOtfF9scnb/FFCRbI70wxWoIe5yWGpEcDc4z0rwN9QqBB4IfKxd4/boitxXLw2nFXh+eDNS7Wk4MLxwuDaxMEoxPr+3wYMtUJhhGmvaMNfWmK2pKL5KURgA8JSrnpOnzXwSAX4psZ2FmMGce6eJeGglDel07TorjdEYHqcICYKOqzXjH/gj9uxjRKU6YUSBhPP+c5cM8tIFBR9HVfjuCQaK3Ii2Qe8fDtyKJUA7HDyqEuYa1HvsReJYOpX1DhGoa4N1qRTH2eM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b736df0-6eb3-4ba6-5d5c-08d6aba9d3d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2019 13:58:41.0753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 21fe3377-79f5-459b-b27a-ab88ac685790
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6149
X-OriginatorOrg: igi-systems.com
Subject: [meta-mingw] Windows SDK build fails using meta-qt5
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
X-List-Received-Date: Tue, 19 Mar 2019 20:51:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR04MB5703FAD886539800513EA6CFA0470AM6PR04MB5703eurp_"

--_000_AM6PR04MB5703FAD886539800513EA6CFA0470AM6PR04MB5703eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am trying to compile a windows sdk for my image. I use meta-mingw and met=
a-qt, the target machine is based on meta-intel (corei7-64) and the distrib=
ution based on poky. My build machine is an ubuntu 16.04. I have checked ou=
t all layers on their thud branch, except for meta-qt (master). I set SDK_M=
ACHINE in local.conf to "x86_64-mingw32" "bitbake core-image-minimal -c pop=
ulate_sdk" results on a clean rebuild (deleted sstate-cache and tmp) in (2 =
errors of this kind):

""" [...] x86_64-nativesdk-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.12.0+=
gitAUTOINC+13ed06640c-r0/git/qmake/library/ioutils.cpp:249:31: error: canno=
t convert 'wchar_t*' to 'LPCSTR' {aka 'const char*'}

[...] | Makefile:213: recipe for target 'ioutils.o' failed [...]
[...] ERROR: Task (/opt/thudPoky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_g=
it.bb:do_configure) failed with exit code '1' [...] """

So I decided to remove sdk tools, hoping to be able to cross compile them l=
ater, by commenting out in my image:  #inherit populate_sdk_qt5

This build also failed because the build system tried to invoke "cmake --in=
stall" on a non-cmake directory. commenting out "inherit cmake" however sol=
ved the problem and the sdk was created (1.1GB .tar.gz file BUT without met=
a-qt sdk tools). I needed cmake only for a previous cross-compilation, thus=
 commenting out was (at least now) no problem.
Is meta-mingw capable of compiling an sdk with meta-qt ? Could this be a bu=
g ? If yes, should I rather refer to the meta-mingw maintainers or the meta=
-qt5 maintainers ?
Best regards
Moritz


________________________________

IGI mbH
Moritz Porst,

Langenauer Str. 46
57223 Kreuztal, Germany

        [IGI Logo] <http://www.igi.eu/news.html>

Tel.:   +49 2732 5525 0
Fax:    +49 2732 5525 25
E-mail: m.porst@igi-systems.com<mailto:m.porst@igi-systems.com>
Web:    www.igi-systems.com<http://www.igi-systems.com/>
Follow us:      [IGI News Feed] <http://www.igi-systems.com/share/igi_news.=
xml>  [IGI at YouTube] <http://www.youtube.com/IGISystems>   [LinkedIn] <ht=
tps://www.linkedin.com/company/igi-systems>

Upcoming Events:
GeoBusiness 2019 London<https://www.igi-systems.com/events/articles/events.=
html>


________________________________

Sitz der Gesellschaft / Company domiciled in: Kreuztal
Handelsregister / Register: Siegen HRB 1975
Ust ID Nr. / VAT Reg. No.: DE 126 580 027
Steuer Nr. / Tax No.: 342 / 5873 / 3332
Geschaeftsfuehrer / Managing Director: Christian GRIMM & Philipp GRIMM

DISCLAIMER
The information sent by means of this e-mail message is intended for the us=
e of the addressee only! Publication, duplication, distribution and/or forw=
arding to third parties of this message, as well as use of the information =
by other persons than the intended recipient, is strictly prohibited. If yo=
u have received this communication in error, please notify the sender immed=
iately by returning it.

--_000_AM6PR04MB5703FAD886539800513EA6CFA0470AM6PR04MB5703eurp_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">Hello everyone,</p>
<p style=3D"margin-top:0; margin-bottom:0">I am trying to compile a windows=
 sdk for my image. I use meta-mingw and meta-qt, the target machine is base=
d on meta-intel (corei7-64) and the distribution based on poky. My build ma=
chine is an ubuntu 16.04. I have checked
 out all layers on their thud branch, except for meta-qt (master). I set SD=
K_MACHINE in local.conf to &quot;x86_64-mingw32&quot; &quot;bitbake core-im=
age-minimal -c populate_sdk&quot; results on a clean rebuild (deleted sstat=
e-cache and tmp) in (2 errors of this kind):</p>
<p style=3D"margin-top:0; margin-bottom:0"><span>&quot;&quot;&quot; [...] x=
86_64-nativesdk-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.12.0&#43;gitAUTO=
INC&#43;13ed06640c-r0/git/qmake/library/ioutils.cpp:249:31: error: cannot c=
onvert 'wchar_t*' to 'LPCSTR' {aka 'const char*'}
<br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>[...] <span>| Makefile:213=
: recipe for target 'ioutils.o' failed</span> [...]<br>
<span>[...]</span> <span>ERROR: Task (/opt/thudPoky/meta-qt5/recipes-qt/qt5=
/nativesdk-qtbase_git.bb:do_configure) failed with exit code '1'</span> [..=
.] &quot;&quot;&quot;<br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>So I decided to remove sdk=
 tools, hoping to be able to cross compile them later, by commenting out in=
 my image:&nbsp;<span> #</span>inherit populate_sdk_qt5<br>
</span></p>
This build also failed because the build system tried to invoke &quot;cmake=
 --install&quot; on a non-cmake directory. commenting out &quot;inherit cma=
ke&quot; however solved the problem and the sdk was created (1.1GB .tar.gz =
file BUT without meta-qt sdk tools). I needed cmake
 only for a previous cross-compilation, thus commenting out was (at least n=
ow) no problem.<br>
<div>Is meta-mingw capable of compiling an sdk with meta-qt ? Could this be=
 a bug ? If yes, should I rather refer to the meta-mingw maintainers or the=
 meta-qt5 maintainers ?</div>
<div>Best regards</div>
<div>Moritz<br>
</div>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
</div>
<p></p>
<hr>
<p></p>
<p></p>
<table style=3D"WIDTH: 100%" cellspacing=3D"0" cellpadding=3D"0" width=3D"1=
00%" background=3D"" border=3D"0">
<tbody>
<tr>
<td valign=3D"top">
<p><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">IGI =
mbH<br>
Moritz Porst, <br>
<br>
Langenauer Str. 46<br>
57223 Kreuztal, Germany</font><br>
&nbsp;<br>
</p>
</td>
<td valign=3D"top" align=3D"right"><font style=3D"FONT-SIZE: 10pt; FONT-FAM=
ILY: Arial; COLOR: #000000"><a href=3D"http://www.igi.eu/news.html"><img st=
yle=3D"HEIGHT: 52px; WIDTH: 128px" border=3D"0" hspace=3D"0" alt=3D"IGI Log=
o" src=3D"http://www.igi.eu/tl_files/IGI/Logos/IGI-logo.jpg" width=3D"128" =
height=3D"52"></a></font>
</td>
</tr>
<tr>
<td>
<table style=3D"WIDTH: 400px" cellspacing=3D"1" cellpadding=3D"0" border=3D=
"0">
<tbody>
<tr>
<td width=3D"70"><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR:=
 #000000">Tel.:</font></td>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">&#4=
3;49 2732 5525 0</font></td>
</tr>
<tr>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">Fax=
:</font></td>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">&#4=
3;49 2732 5525 25</font></td>
</tr>
<tr>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">E-m=
ail:</font></td>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial"><a href=3D"mailto:m=
.porst@igi-systems.com">m.porst@igi-systems.com</a></font></td>
</tr>
<tr>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">Web=
:</font></td>
<td><a href=3D"http://www.igi-systems.com/"><font style=3D"FONT-SIZE: 10pt;=
 FONT-FAMILY: Arial ">www.igi-systems.com</font></a></td>
</tr>
<tr>
<td valign=3D"middle"><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; C=
OLOR: #000000">Follow us:</font></td>
<td valign=3D"middle"><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; C=
OLOR: #000000"><a title=3D"" href=3D"http://www.igi-systems.com/share/igi_n=
ews.xml"><img style=3D"HEIGHT: 24px; WIDTH: 24px" border=3D"0" hspace=3D"1"=
 alt=3D"IGI News Feed" vspace=3D"5" src=3D"http://www.igi-systems.com/files=
/IGI/Logos/rss_logo.png" align=3D"middle"></a>&nbsp;<a title=3D"" href=3D"h=
ttp://www.youtube.com/IGISystems"><img style=3D"HEIGHT: 24px; WIDTH: 24px" =
border=3D"0" hspace=3D"1" alt=3D"IGI at YouTube" vspace=3D"5" src=3D"http:/=
/www.igi-systems.com/files/IGI/Logos/youtube_logo.png" align=3D"middle"></a=
>
 &nbsp;<a title=3D"" href=3D"https://www.linkedin.com/company/igi-systems">=
<img style=3D"HEIGHT: 24px; WIDTH: 24px" border=3D"0" hspace=3D"1" alt=3D"L=
inkedIn" vspace=3D"5" src=3D"http://www.igi-systems.com/files/IGI/Logos/lin=
kedin_logo.png" align=3D"middle"></a>
</font></td>
</tr>
</tbody>
</table>
</td>
<td valign=3D"bottom" align=3D"right">
<table border=3D"0">
<tbody>
<tr>
<td valign=3D"top" align=3D"left"><font style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: Arial; COLOR: #000000">Upcoming Events:<br>
<a href=3D"https://www.igi-systems.com/events/articles/events.html">GeoBusi=
ness 2019 London</a><br>
</font></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<hr>
<p><font style=3D"FONT-SIZE: 7pt; FONT-FAMILY: Arial; COLOR: #a0a0a4">Sitz =
der Gesellschaft / Company domiciled in: Kreuztal<br>
Handelsregister / Register: Siegen HRB 1975<br>
Ust ID Nr. / VAT Reg. No.: DE 126 580 027<br>
Steuer Nr. / Tax No.: 342 / 5873 / 3332<br>
Geschaeftsfuehrer / Managing Director: Christian&nbsp;GRIMM &amp; Philipp G=
RIMM<br>
<br>
<span lang=3D"EN-GB">DISCLAIMER<br>
The information sent by means of this e-mail message is intended for the us=
e of the addressee only! Publication, duplication, distribution and/or forw=
arding to third parties of this message, as well as use of the information =
by other persons than the intended
 recipient, is strictly prohibited. If you have received this communication=
 in error, please notify the sender
</span><span lang=3D"DE">immediately by returning it.</p>
</span></font>
</body>
</html>

--_000_AM6PR04MB5703FAD886539800513EA6CFA0470AM6PR04MB5703eurp_--
