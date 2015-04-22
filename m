Return-Path: <briank@RUSSOUND.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA175E00998; Wed, 22 Apr 2015 10:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3656 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Apr 2015 10:07:16 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0108.outbound.protection.outlook.com [157.56.110.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2FE3E0098D
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 10:07:16 -0700 (PDT)
Received: from BLUPR0501MB1028.namprd05.prod.outlook.com (25.160.35.139) by
	BLUPR0501MB1028.namprd05.prod.outlook.com (25.160.35.139) with
	Microsoft SMTP
	Server (TLS) id 15.1.136.25; Wed, 22 Apr 2015 15:32:07 +0000
Received: from BLUPR0501MB1028.namprd05.prod.outlook.com ([25.160.35.139]) by
	BLUPR0501MB1028.namprd05.prod.outlook.com ([25.160.35.139]) with
	mapi id 15.01.0136.026; Wed, 22 Apr 2015 15:32:07 +0000
From: Brian Karcz <briank@RUSSOUND.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: creating images which include actively developed applications
Thread-Index: AdB9C6Xg2AUJ1s8lR+6w/hRPMmncvQ==
Date: Wed, 22 Apr 2015 15:32:06 +0000
Message-ID: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [64.223.142.66]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0501MB1028;
x-microsoft-antispam-prvs: <BLUPR0501MB10284A7A0C0FDC6E51017FA6BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(54356999)(2656002)(99286002)(19580395003)(74316001)(122556002)(40100003)(50986999)(19625215002)(87936001)(86362001)(62966003)(77156002)(19300405004)(92566002)(110136001)(450100001)(76576001)(102836002)(15975445007)(16236675004)(66066001)(33656002)(46102003)(2900100001)(229853001)(107886001)(2351001)(2501003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR0501MB1028;
	H:BLUPR0501MB1028.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:BLUPR0501MB1028; BCL:0;
	PCL:0; RULEID:; SRVR:BLUPR0501MB1028; 
x-forefront-prvs: 0554B1F54F
MIME-Version: 1.0
X-OriginatorOrg: russound.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2015 15:32:06.7414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0a73fa72-2b76-4a4d-8e8c-f8bb38fc0fb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0501MB1028
Subject: creating images which include actively developed applications
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
X-List-Received-Date: Wed, 22 Apr 2015 17:07:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0501MB1028D6037F60D05E868A5F15BFEE0BLUPR0501MB1028_"

--_000_BLUPR0501MB1028D6037F60D05E868A5F15BFEE0BLUPR0501MB1028_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm attempting to create a recipe for some custom applications that we want=
 to include in our target image. The applications are actively developed an=
d it's often desired to generate images without versioning the application =
code. It's also desired to be able to work in a source tree that is externa=
l to the build tree. I'm trying to determine if Yocto has a mechanism simil=
ar to the "source directory override" in Buildroot that allows you to point=
 a package/recipe at an external directory to locate the source code.

We have been using Poky for a couple years, but so far, have had to build t=
he applications externally and use some magic in the image recipes to bring=
 in the pre-built executables explicitly. We accomplished this by using som=
e relative pathing in the SRC_URI and then placing the files in the rootfs =
by adding some commands to the image preprocess command.

Is there a way to create a recipe to build actively developed code located =
in an external source directory? Basically skip the fetch and unpack steps =
and always execute the compile and populate steps each time and image is bu=
ilt?
Thanks,
Brian



--_000_BLUPR0501MB1028D6037F60D05E868A5F15BFEE0BLUPR0501MB1028_
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
	font-family:"Lucida Console";
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">I&#8217;m attempting to create a recipe for some custom=
 applications that we want to include in our target image. The applications=
 are actively developed and it&#8217;s often desired to generate
 images without versioning the application code. It&#8217;s also desired to=
 be able to work in a source tree that is external to the build tree. I&#82=
17;m trying to determine if Yocto has a mechanism similar to the &#8220;sou=
rce directory override&#8221; in Buildroot that allows you
 to point a package/recipe at an external directory to locate the source co=
de.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">We have been using Poky for a couple years, but so far,=
 have had to build the applications externally and use some magic in the im=
age recipes to bring in the pre-built executables
 explicitly. We accomplished this by using some relative pathing in the SRC=
_URI and then placing the files in the rootfs by adding some commands to th=
e image preprocess command.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Is there a way to create a recipe to build actively dev=
eloped code located in an external source directory? Basically skip the fet=
ch and unpack steps and always execute the compile
 and populate steps each time and image is built?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Brian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BLUPR0501MB1028D6037F60D05E868A5F15BFEE0BLUPR0501MB1028_--
