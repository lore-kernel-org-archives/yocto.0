Return-Path: <richard.schmitt@freescale.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0237.outbound.protection.outlook.com [207.46.163.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA91FE00404
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 14:22:38 -0800 (PST)
Received: from BL2PR03MB210.namprd03.prod.outlook.com (10.255.230.144) by
	BL2PR03MB211.namprd03.prod.outlook.com (10.255.230.146) with Microsoft
	SMTP Server (TLS) id 15.0.873.15; Thu, 13 Feb 2014 22:22:35 +0000
Received: from BL2PR03MB210.namprd03.prod.outlook.com ([169.254.1.31]) by
	BL2PR03MB210.namprd03.prod.outlook.com ([169.254.1.31]) with mapi id
	15.00.0873.009; Thu, 13 Feb 2014 22:22:34 +0000
From: Richard Schmitt <richard.schmitt@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem with 'reconfigure project' in Eclipse with ADT Yocto
	Plugin
Thread-Index: Ac8pChdIhyiuIa/nRW2Sr0qvwZkt7A==
Date: Thu, 13 Feb 2014 22:22:34 +0000
Message-ID: <34bdcfa1e05446b2b71074d6044452ef@BL2PR03MB210.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.168.49]
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(199002)(189002)(76176001)(76576001)(19609705001)(90146001)(18717965001)(85852003)(83072002)(15975445006)(54316002)(76786001)(94946001)(86362001)(94316002)(76796001)(63696002)(65816001)(95416001)(56776001)(81816001)(93516002)(77096001)(2656002)(85806002)(85306002)(15202345003)(87936001)(95666001)(81686001)(80022001)(92566001)(93136001)(56816005)(80976001)(83322001)(87266001)(33646001)(19580395003)(69226001)(16236675002)(66066001)(47736001)(50986001)(49866001)(81542001)(47976001)(74316001)(81342001)(19300405004)(4396001)(46102001)(53806001)(51856001)(79102001)(74706001)(74876001)(54356001)(59766001)(76482001)(77982001)(74662001)(31966008)(74366001)(74502001)(47446002)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR03MB211;
	H:BL2PR03MB210.namprd03.prod.outlook.com; CLIP:192.88.168.49;
	FPR:4EB8F116.2E28DDEB.B8F4917B.48EFF941.2020B; InfoNoRecordsA:1;
	MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Problem with 'reconfigure project' in Eclipse with ADT Yocto Plugin
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
X-List-Received-Date: Thu, 13 Feb 2014 22:22:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_34bdcfa1e05446b2b71074d6044452efBL2PR03MB210namprd03pro_"

--_000_34bdcfa1e05446b2b71074d6044452efBL2PR03MB210namprd03pro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have been trying to follow the ADT user guide for setting up a sample pro=
ject using Eclipse and the Yocto ADT Plugin.

I am running into issues that I have narrowed down to the fact that when se=
lecting 'reconfigure project' from the right menu button on a Yocto autotoo=
ls project, it does not seem to initialize the PATH to the configured toolc=
hain.  So when it tries to configure the project, it can't find i586-poky-l=
inux-gcc.  When  I actually configure the Yocto project settings, and hit a=
pply, the dialog says that the project was configured successfully

The Yocto Project ADT has been successfully set up for this project.
To see the environment variables created during setup,
go to Project > Properties > C/C++ Build > Environment.

If I look in the environment as suggested, the build path is set up fine an=
d the ./configure script should find the compiler fine.  But it doesn't.

If I manually source the environment-setup-i586-poky-linux from the toolcha=
in build and run the configure script from a command shell, it works fine. =
 If after manually running configure at the command line with the Yocto env=
ironment settings, I can go back into eclipse and build the project.  It fi=
nds the correct toolchain at that step, just not during the configure.

Is this a known issue?

Rich


--_000_34bdcfa1e05446b2b71074d6044452efBL2PR03MB210namprd03pro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have been trying to follow the ADT user guide for =
setting up a sample project using Eclipse and the Yocto ADT Plugin.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running into issues that I have narrowed down t=
o the fact that when selecting &#8216;reconfigure project&#8217; from the r=
ight menu button on a Yocto autotools project, it does not seem to initiali=
ze the PATH to the configured toolchain.&nbsp; So when
 it tries to configure the project, it can&#8217;t find i586-poky-linux-gcc=
.&nbsp; When &nbsp;I actually configure the Yocto project settings, and hit=
 apply, the dialog says that the project was configured successfully<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Yocto Project ADT has been successfully set up f=
or this project.<o:p></o:p></p>
<p class=3D"MsoNormal">To see the environment variables created during setu=
p,<o:p></o:p></p>
<p class=3D"MsoNormal">go to Project &gt; Properties &gt; C/C&#43;&#43; Bui=
ld &gt; Environment.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I look in the environment as suggested, the build=
 path is set up fine and the ./configure script should find the compiler fi=
ne.&nbsp; But it doesn&#8217;t.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I manually source the environment-setup-i586-poky=
-linux from the toolchain build and run the configure script from a command=
 shell, it works fine.&nbsp; If after manually running configure at the com=
mand line with the Yocto environment settings,
 I can go back into eclipse and build the project.&nbsp; It finds the corre=
ct toolchain at that step, just not during the configure.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this a known issue?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Rich<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_34bdcfa1e05446b2b71074d6044452efBL2PR03MB210namprd03pro_--
