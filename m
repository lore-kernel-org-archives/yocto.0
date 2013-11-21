Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E56E0059E
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 02:33:58 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Nov 2013 02:33:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,743,1378882800"; 
	d="scan'208,217";a="437208656"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2013 02:33:46 -0800
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 21 Nov 2013 10:33:45 +0000
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.66]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.215]) with mapi id
	14.03.0123.003; Thu, 21 Nov 2013 10:33:45 +0000
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: Dilip Kumar <008dilip@gmail.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>
Thread-Topic: [yocto] QA Tests in Yocto development environment block diagram
Thread-Index: AQHO4CjIJLjT1lhuR0yH6a2SP7D8cJojgHEAgAlj4wCAApQMwA==
Date: Thu, 21 Nov 2013 10:33:45 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A1BEEB4@IRSMSX103.ger.corp.intel.com>
References: <CABmxB3MGuNu-AppvDGujjgQFU9X5NAu9J2W269DGEK36B8wAeg@mail.gmail.com>
	<1FFB62CE8AEB0D4298B51122D8903E9619F95667@IRSMSX104.ger.corp.intel.com>
	<CABmxB3OHHvD7rf3WNDBLKrEO3OOBu1PNC8bRT1F2FhH_QgxpFA@mail.gmail.com>
In-Reply-To: <CABmxB3OHHvD7rf3WNDBLKrEO3OOBu1PNC8bRT1F2FhH_QgxpFA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Tests in Yocto development environment block diagram
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
X-List-Received-Date: Thu, 21 Nov 2013 10:34:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0A1BEEB4IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0A1BEEB4IRSMSX103gercor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Dilip,

I will try and answer as much as I can on behalf of Alex:

We have 2 types of tests:

1)      Buildtime

2)      Runtime

Each type of test has 2 main categories(from a QA point of view):

-          Automated

-          Manual

Here is where you can find each:


-          Automated Buildtime:

o   Sanity tests(run for every build):

=A7  In the Yocto sources: meta/classes/sanity.bbclass

=A7  In the Yocto sources: meta-yocto/classes/poky-sanity.bbclass

=A7  There are other many various sanity checks done explicitly throughout =
poky. I do not have the knowledge to get in more detail on this though.

o   We are working on a new feature that will add automated "gray box" buil=
dtime tests: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740


-          Automated Runtime:

o   Automated image tests:

=A7  Covers only QEMU(virtual) targets

=A7  After building an image, if the correct configuration is set, it will =
boot up and tests will be run on it consisting of commands sent over ssh

=A7  The tests can be found in the Yocto sources: meta/lib/oeqa/runtime/

=A7  This uses the 'testme.bbclass' from /meta/classes/testme.bbclass

=A7  More documentation on this feature can be found here: https://wiki.yoc=
toproject.org/wiki/Image_tests

=A7  The test cases are also described in Testopia: https://bugzilla.yoctop=
roject.org/tr_show_plan.cgi?plan_id=3D18

=B7         Note that this source contains both manual and automated tests

=A7  We are working on a new feature to expand these tests to BSP(hardware)=
 targets: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1596

o   Package testing

=A7  Documentation: https://wiki.yoctoproject.org/wiki/Ptest


-          Manual Buildtime:

o   Can be found in Testopia: https://bugzilla.yoctoproject.org/tr_show_pro=
duct.cgi

=A7  At the moment the following buildtime products in Testopia contain tes=
ts:

=B7         ADT: https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=
=3D1

=B7         Eclipse Plugin: https://bugzilla.yoctoproject.org/tr_show_plan.=
cgi?plan_id=3D5

=B7         HOB: https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=
=3D8

=B7         OE-CORE: https://bugzilla.yoctoproject.org/tr_show_plan.cgi?pla=
n_id=3D25

=B7         Meta-Yocto: https://bugzilla.yoctoproject.org/tr_show_plan.cgi?=
plan_id=3D26

=B7         Bitbake: https://bugzilla.yoctoproject.org/tr_show_plan.cgi?pla=
n_id=3D9

=B7         Build Appliance: https://bugzilla.yoctoproject.org/tr_show_plan=
.cgi?plan_id=3D28


-          Manual Runtime:

o   Covers BSP(hardware) and QEMU(virtual) targets

o   Can be found in Testopia: https://bugzilla.yoctoproject.org/tr_show_pro=
duct.cgi

=A7  At the moment the following runtime products in Testopia contain tests=
:

=B7         BSP: https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=
=3D18

=B7         Runtime(mostly performance and compliance tests): https://bugzi=
lla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D34

o   Note that this source contains both manual and automated tests

I hope I did not miss anything and that I was clear in my description. If y=
ou need any more information, please don't hesitate to ask!

Regards,
Corneliu
Romania Yocto QA

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dilip Kumar
Sent: Tuesday, November 19, 2013 8:08 PM
To: Georgescu, Alexandru C
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] QA Tests in Yocto development environment block diagra=
m


Dear Alex,

Thank you for your response.

And I need to know one more thing whether these QA tests are done manually =
or it's automated during the build or its done separately by Yocto for part=
icular distribution?

Is there any QA tests done during the build procedure locally?

regards
dilip kumar b
On 14-Nov-2013 12:15 am, "Georgescu, Alexandru C" <alexandru.c.georgescu@in=
tel.com<mailto:alexandru.c.georgescu@intel.com>> wrote:
Hi,
Our overall testing plan is available here: https://wiki.yoctoproject.org/w=
iki/Yocto_1.6_Overall_Test_Plan. Since we are in the last phase of planning=
 for 1.6, this is not the final version yet.

Regarding the test cases, all you have to do is to have an account in our b=
ug tracking website https://bugzilla.yoctoproject.org/ and follow the instr=
uctions in the Testopia wiki, our test case platform management system: htt=
ps://wiki.yoctoproject.org/wiki/Testopia. There you can find the tests perf=
ormed against the Yocto Project components.

Regards,
--
Alexandru Georgescu

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Dilip Kumar
Sent: Wednesday, November 13, 2013 06:27
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] QA Tests in Yocto development environment block diagram


Dear all,

I need know what is QA tests and what all the tests it will do and need to =
know more information about QA please help me out in this.

regards
dilip kumar b

--_000_33115ABC4887814E8A92A08FBC93416B0A1BEEB4IRSMSX103gercor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:89931169;
	mso-list-type:hybrid;
	mso-list-template-ids:63316848 67698705 67698713 67698715 67698703 6769871=
3 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:197360234;
	mso-list-type:hybrid;
	mso-list-template-ids:-334840096 -681178484 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:217014320;
	mso-list-type:hybrid;
	mso-list-template-ids:2114873276 -1608327012 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:23.25pt;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:59.25pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:95.25pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:131.25pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:167.25pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:203.25pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:239.25pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:275.25pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:311.25pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:2024432181;
	mso-list-type:hybrid;
	mso-list-template-ids:-1253405556 -983368560 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello Dilip,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I will try and answer as =
much as I can on behalf of Alex:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">We have 2 types of tests:=
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">1)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Buildtime<o:p></o=
:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-=
list:Ignore">2)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Runtime<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Each type of test has 2 m=
ain categories(from a QA point of view):<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt;text-indent:-.25=
in;mso-list:l2 level1 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Automated<o:p></o=
:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt;text-indent:-.25=
in;mso-list:l2 level1 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Manual<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Here is where you can fin=
d each:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt;text-indent:-.25=
in;mso-list:l2 level1 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Automated Buildti=
me:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Sanity tests(run =
for every build):
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">In the Yocto sour=
ces: meta/classes/sanity.bbclass<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">In the Yocto sour=
ces: meta-yocto/classes/poky-sanity.bbclass<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">There are other m=
any various sanity checks done explicitly throughout poky. I do not have th=
e knowledge to get in more detail on this though.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">We are working on=
 a new feature that will add automated &#8220;gray box&#8221; buildtime tes=
ts:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt;text-indent:-.25=
in;mso-list:l2 level1 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Automated Runtime=
:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Automated image t=
ests:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Covers only QEMU(=
virtual) targets<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">After building an=
 image, if the correct configuration is set, it will boot up and tests will=
 be run on it consisting of commands sent over ssh<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">The tests can be =
found in the Yocto sources: meta/lib/oeqa/runtime/<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">This uses the &#8=
216;testme.bbclass&#8217; from /meta/classes/testme.bbclass<o:p></o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">More documentatio=
n on this feature can be found here:
<a href=3D"https://wiki.yoctoproject.org/wiki/Image_tests">https://wiki.yoc=
toproject.org/wiki/Image_tests</a><o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">The test cases ar=
e also described in Testopia:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18"=
>https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Note that this so=
urce contains both manual and automated tests<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">We are working on=
 a new feature to expand these tests to BSP(hardware) targets:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1596">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D1596</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Package testing<o=
:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Documentation:
<a href=3D"https://wiki.yoctoproject.org/wiki/Ptest">https://wiki.yoctoproj=
ect.org/wiki/Ptest</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt;text-indent:-.25=
in;mso-list:l2 level1 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Manual Buildtime:=
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can be found in T=
estopia:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_product.cgi">https://b=
ugzilla.yoctoproject.org/tr_show_product.cgi</a><o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">At the moment the=
 following buildtime products in Testopia contain tests:<o:p></o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">ADT:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D1">=
https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D1</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Eclipse Plugin:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D5">=
https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D5</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">HOB:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D8">=
https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D8</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">OE-CORE:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D25"=
>https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D25</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Meta-Yocto:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D26"=
>https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D26</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Bitbake:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D9">=
https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D9</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Build Appliance:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D28"=
>https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D28</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt;text-indent:-.25=
in;mso-list:l2 level1 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Manual Runtime:<o=
:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Covers BSP(hardwa=
re) and QEMU(virtual) targets<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:59.25pt;text-indent:-.25=
in;mso-list:l2 level2 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can be found in T=
estopia:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_product.cgi">https://b=
ugzilla.yoctoproject.org/tr_show_product.cgi</a><o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:95.25pt;text-indent:-.25=
in;mso-list:l2 level3 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:#1F497D"><span style=3D"mso-list:Ignore">=A7<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">At the moment the=
 following runtime products in Testopia contain tests:<o:p></o:p></span></p=
>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">BSP:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18"=
>https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:131.25pt;text-indent:-.2=
5in;mso-list:l2 level4 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">=B7<span style=3D"font:7.0pt &q=
uot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Runtime(mostly pe=
rformance and compliance tests):
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D34"=
>https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D34</a>
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:167.25pt;text-indent:-.2=
5in;mso-list:l2 level5 lfo4">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cour=
ier New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Note that this so=
urce contains both manual and automated tests<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I hope I did not miss any=
thing and that I was clear in my description. If you need any more informat=
ion, please don&#8217;t hesitate to ask!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Corneliu<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Romania Yocto QA<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Dilip Kumar<br>
<b>Sent:</b> Tuesday, November 19, 2013 8:08 PM<br>
<b>To:</b> Georgescu, Alexandru C<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] QA Tests in Yocto development environment block=
 diagram<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Dear Alex,<o:p></o:p></p>
<p>Thank you for your response.<o:p></o:p></p>
<p>And I need to know one more thing whether these QA tests are done manual=
ly or it's automated during the build or its done separately by Yocto for p=
articular distribution?<o:p></o:p></p>
<p>Is there any QA tests done during the build procedure locally?<o:p></o:p=
></p>
<p>regards <br>
dilip kumar b<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 14-Nov-2013 12:15 am, &quot;Georgescu, Alexandru =
C&quot; &lt;<a href=3D"mailto:alexandru.c.georgescu@intel.com">alexandru.c.=
georgescu@intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Our overall testing plan is available h=
ere:
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan" =
target=3D"_blank">
https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan</a>. Since w=
e are in the last phase of planning for 1.6, this is not the final version =
yet.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Regarding the test cases, all you have =
to do is to have an account in our bug tracking website
<a href=3D"https://bugzilla.yoctoproject.org/" target=3D"_blank">https://bu=
gzilla.yoctoproject.org/</a> and follow the instructions in the Testopia wi=
ki, our test case platform management system:
<a href=3D"https://wiki.yoctoproject.org/wiki/Testopia" target=3D"_blank">h=
ttps://wiki.yoctoproject.org/wiki/Testopia</a>. There you can find the test=
s performed against the Yocto Project components.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:8.0pt;font-family:&quot;Calibri&quot;,=
&quot;sans-serif&quot;;color:#7F7F7F">--</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:8.0pt;font-family:&quot;Calibri&quot;,=
&quot;sans-serif&quot;;color:#7F7F7F">Alexandru Georgescu</span></b><o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Dilip Kumar<br>
<b>Sent:</b> Wednesday, November 13, 2013 06:27<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] QA Tests in Yocto development environment block dia=
gram</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p>Dear all,<o:p></o:p></p>
<p>I need know what is QA tests and what all the tests it will do and need =
to know more information about QA please help me out in this.<o:p></o:p></p=
>
<p>regards <br>
dilip kumar b<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0A1BEEB4IRSMSX103gercor_--
