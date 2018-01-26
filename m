Return-Path: <carlos.bejar-colonia@philips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FD98E00D99; Fri, 26 Jan 2018 12:06:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.99 listed in list.dnswl.org]
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
	(mail-db5eur01on0099.outbound.protection.outlook.com [104.47.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE63BE00D6D
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 12:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=philips.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=V/nRj+Bt8Zu1wC7/cEhc9TI70XyBYv1Xa1CfwRffNXw=;
	b=MA7EuOZXvRDfktiO3z1JnVmHhVyvpoPZCVIqHe9aIDeskvKRkE9Dn+NW7x11wPWqS4vvX2S3GcU8NmwkIOvh+h3dYuWji/PMdHHyyc2Ib1b0aJba3fpblnwYaZN7WQMMzW4W/4Xv5oLut7JAAhkXKHepK4ToKIXEVG3KlAF/pec=
Received: from AM4P122MB0068.EURP122.PROD.OUTLOOK.COM (129.75.167.87) by
	AM4P122MB0068.EURP122.PROD.OUTLOOK.COM (129.75.167.87) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.428.22; Fri, 26 Jan 2018 20:06:21 +0000
Received: from AM4P122MB0068.EURP122.PROD.OUTLOOK.COM
	([fe80::e019:bb93:23dd:9300]) by AM4P122MB0068.EURP122.PROD.OUTLOOK.COM
	([fe80::e019:bb93:23dd:9300%17]) with mapi id 15.20.0428.025;
	Fri, 26 Jan 2018 20:06:21 +0000
From: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Extensible SDK fails to install (build in Ubuntu 16.04 and
	install in Ubuntu 14.04)
Thread-Index: AdOW35YnR83mPqIoRBCqJwPfBJhPow==
Date: Fri, 26 Jan 2018 20:06:21 +0000
Message-ID: <AM4P122MB00689A68360B23261185EE0BD6E00@AM4P122MB0068.EURP122.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=carlos.bejar-colonia@philips.com; 
x-originating-ip: [192.101.81.235]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM4P122MB0068;
	7:4OZws/vm/+KMbF+Cz0RMwbwUQ1JkvL39/EzPPt1iNTQmEmljY6zr2GOeKSjWl8koB+mfDchYFIcWdMByf6U9tL7+Ngy+MMuyoC4aF7NJWuf4zkuKRmdW5Fyc1N07BN0tbG9u6XdYoyg7NEclFxIN/ZpcjDyiqCny/e2VsZw/1unni8iHyXMatQaaN8/gmbNVrjXgOMxLubLKtAO3ab2ILmF2xsHkca8d0WXzQYEcEWdCnL4Ejl9rImvwfhEg9R2j
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c32335aa-64d0-4e50-1755-08d564f84527
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(48565401081)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:AM4P122MB0068; 
x-ms-traffictypediagnostic: AM4P122MB0068:
x-microsoft-antispam-prvs: <AM4P122MB00688FF8689EB2D72DE9F60BD6E00@AM4P122MB0068.EURP122.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3231076)(2400081)(944501161)(3002001)(6055026)(6041288)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(6072148)(201708071742011);
	SRVR:AM4P122MB0068; BCL:0; PCL:0; RULEID:; SRVR:AM4P122MB0068; 
x-forefront-prvs: 05641FD966
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(396003)(366004)(346002)(39860400002)(376002)(199004)(189003)(55904004)(374574003)(85714005)(5640700003)(8936002)(55016002)(68736007)(6306002)(53936002)(54896002)(6436002)(66066001)(9326002)(9686003)(3660700001)(26005)(2351001)(3280700002)(7696005)(102836004)(6506007)(59450400001)(2906002)(3846002)(790700001)(6116002)(106356001)(8676002)(81166006)(81156014)(1730700003)(5660300001)(6916009)(5630700001)(7736002)(74316002)(33656002)(105586002)(14454004)(575784001)(86362001)(316002)(97736004)(25786009)(99286004)(478600001)(5250100002)(186003)(2900100001)(2501003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM4P122MB0068;
	H:AM4P122MB0068.EURP122.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: philips.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: VMkS3vQkGxMnQ9rkj+j0BmSRT26TLStohwiqJf+uvIi5BfRNb5cNOLhk2Jl00cBRJ4vzx3ftSg10KIWwEID2Sg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: philips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c32335aa-64d0-4e50-1755-08d564f84527
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2018 20:06:21.6712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P122MB0068
Subject: Extensible SDK fails to install (build in Ubuntu 16.04 and install in Ubuntu 14.04)
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
X-List-Received-Date: Fri, 26 Jan 2018 20:06:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4P122MB00689A68360B23261185EE0BD6E00AM4P122MB0068EURP_"

--_000_AM4P122MB00689A68360B23261185EE0BD6E00AM4P122MB0068EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am building Yocto using Atmel BSP, Poky and OE version: Morty.
The eSDK installer builds fine (bitbake -c populate_sdk_ext core-image-mini=
mal). Build machine x86_64, Ubuntu 16.04 LTS
If I install the eSDK in the same machine where it was build, it works fine=
.
However, when I try to install the eSDK in a different machine (x86_64, Ubu=
ntu 14.04) I get these errors:

Proceed[Y/n]?
Extracting SDK...................................................done
Setting it up...
Extracting buildtools...
Preparing build system...
Parsing recipes: 100% |####################################################=
####| Time: 0:00:51
Initialising tasks: 100% |#################################################=
####| Time: 0:00:03
ERROR: Sstate artifact unavailable for gettext-minimal-native.do_populate_s=
ysrootETA:  0:00:00
ERROR: Sstate artifact unavailable for quilt-native.do_populate_sysroot    =
    | ETA:  0:00:00
ERROR: Sstate artifact unavailable for u-boot-mkimage-native.do_populate_sy=
sroot ETA:  0:00:00
ERROR: Sstate artifact unavailable for libxml-parser-perl-native.do_populat=
e_sysroot:  0:00:00
ERROR: Sstate artifact unavailable for file-native.do_populate_sysroot     =
    | ETA:  0:00:00

I don't see this behavior if I use Poky Morty, commit: 6da3e0a0abf1251db243=
548639979f8d74e99766
I see this behavior with Poky Morty commit: 759a8085afee51abbe36b0bbfe5bf84=
5f41e0971

Is the install suppose to fail due the lower OS version? I searched in the =
bug tracker, but didn't find anything related to this.
NOTE: I tried the other way: build eSDK in Ubuntu 14.04 and install eSDK in=
 Ubuntu 16.04. This works fine.

Thanks,
Carlos




________________________________
The information contained in this message may be confidential and legally p=
rotected under applicable law. The message is intended solely for the addre=
ssee(s). If you are not the intended recipient, you are hereby notified tha=
t any use, forwarding, dissemination, or reproduction of this message is st=
rictly prohibited and may be unlawful. If you are not the intended recipien=
t, please contact the sender by return e-mail and destroy all copies of the=
 original message.

--_000_AM4P122MB00689A68360B23261185EE0BD6E00AM4P122MB0068EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building Yocto using Atmel BSP, Poky and OE ver=
sion: Morty.<o:p></o:p></p>
<p class=3D"MsoNormal">The eSDK installer builds fine (bitbake &#8211;c pop=
ulate_sdk_ext core-image-minimal). Build machine x86_64, Ubuntu 16.04 LTS<o=
:p></o:p></p>
<p class=3D"MsoNormal">If I install the eSDK in the same machine where it w=
as build, it works fine.<o:p></o:p></p>
<p class=3D"MsoNormal">However, when I try to install the eSDK in a differe=
nt machine (x86_64, Ubuntu 14.04) I get these errors:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Proceed[Y/n]?<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting SDK......................................=
.............done<o:p></o:p></p>
<p class=3D"MsoNormal">Setting it up...<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting buildtools...<o:p></o:p></p>
<p class=3D"MsoNormal">Preparing build system...<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
###########################| Time: 0:00:51<o:p></o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
###########################| Time: 0:00:03<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Sstate artifact unavailable for gettext-minim=
al-native.do_populate_sysrootETA:&nbsp; 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Sstate artifact unavailable for quilt-native.=
do_populate_sysroot&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ETA:&nbsp; =
0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Sstate artifact unavailable for u-boot-mkimag=
e-native.do_populate_sysroot ETA:&nbsp; 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Sstate artifact unavailable for libxml-parser=
-perl-native.do_populate_sysroot:&nbsp; 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Sstate artifact unavailable for file-native.d=
o_populate_sysroot&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ETA:&n=
bsp; 0:00:00<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I don&#8217;t see this behavior if I use Poky Morty,=
 commit: 6da3e0a0abf1251db243548639979f8d74e99766<span style=3D"font-size:1=
0.0pt;font-family:&quot;Lucida Console&quot;;color:#BFBF00"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal">I see this behavior with Poky Morty commit: 759a8085=
afee51abbe36b0bbfe5bf845f41e0971<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is the install suppose to fail due the lower OS vers=
ion? I searched in the bug tracker, but didn&#8217;t find anything related =
to this.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: I tried the other way: build eSDK in Ubuntu 14=
.04 and install eSDK in Ubuntu 16.04. This works fine.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Carlos<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</body>
</html>

--_000_AM4P122MB00689A68360B23261185EE0BD6E00AM4P122MB0068EURP_--
