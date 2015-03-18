Return-Path: <EBolton@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3C20E00828; Wed, 18 Mar 2015 13:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.110.143 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 488 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Mar 2015 13:19:46 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0143.outbound.protection.outlook.com [157.56.110.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24251E0034E
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 13:19:46 -0700 (PDT)
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) by
	DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) with
	Microsoft
	SMTP Server (TLS) id 15.1.125.14; Wed, 18 Mar 2015 20:19:41 +0000
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) by
	DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) with
	mapi id 15.01.0125.002; Wed, 18 Mar 2015 20:19:41 +0000
From: Erik Bolton <EBolton@agjunction.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Application Dev & Package Management
Thread-Index: AdBhtdPMgf2s6yxORTW6MGXFwacK3A==
Date: Wed, 18 Mar 2015 20:19:41 +0000
Message-ID: <DM2PR0201MB1087DD784F2B16CF0C347BBECC000@DM2PR0201MB1087.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [208.93.135.69]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0201MB1087;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(53754006)(2351001)(16236675004)(99286002)(2656002)(87936001)(74316001)(76576001)(66066001)(19300405004)(19617315012)(110136001)(19625215002)(107886001)(229853001)(33656002)(122556002)(2900100001)(19580395003)(92566002)(77156002)(450100001)(62966003)(86362001)(50986999)(40100003)(54356999)(15975445007)(102836002)(46102003)(2501003)(80792004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0201MB1087;
	H:DM2PR0201MB1087.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <DM2PR0201MB1087FBC0C1E705A2198E26C4CC000@DM2PR0201MB1087.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:DM2PR0201MB1087; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0201MB1087; 
x-forefront-prvs: 051900244E
MIME-Version: 1.0
X-OriginatorOrg: agjunction.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2015 20:19:41.2342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB1087
Subject: Application Dev & Package Management
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
X-List-Received-Date: Wed, 18 Mar 2015 20:19:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0201MB1087DD784F2B16CF0C347BBECC000DM2PR0201MB1087_"

--_000_DM2PR0201MB1087DD784F2B16CF0C347BBECC000DM2PR0201MB1087_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey All:

I'm trying to switch a large project we've been working on for years from T=
inyCore to yocto.

I've avoided dealing with this up until now, but it can't wait any longer.

I want to keep the yocto SDK that we distribute to our development team as =
lean as possible so that we don't have to send out ~100MB install scripts e=
very week.

We do, however, have a lot of internally developed libraries that change du=
ring each major release, so I need a simple way of installing the packages =
for those libraries and their dependencies to the target sysroot in the SDK=
 dir (/opt/poky/1.7.1/sysroots/<target_arch>).

The documentation covers this scenario briefly here:

http://www.yoctoproject.org/docs/1.7.1/adt-manual/adt-manual.html#configuri=
ng-the-pms

Here's the problem. Yocto sets the default package output type to RPM, but =
the example uses OPKG. So I switched the output to ipk, but OPKG doesn't al=
low capital letters in the package names. I've put together about 40 some r=
ecipes for our libraries and tools, many of which have capital letters.

I've tried to get the rpm command line tool to install packages from the bu=
ild repo to the sysroot directory, but haven't had any luck. After a bit of=
 Googling, I've found most RPM reference for repos will refer to YUM comman=
ds, which isn't much help.

I also tried to use smartpm on my workstation since it's the recommended pa=
ckage manager for runtime (on the target itself), but smart has very little=
 reference so I ran into a wall there as well.

Right now it looks like I have two options:


1)      Bite the bullet and switch all my recipes to use names that don't v=
iolate OPKGs naming rules.

2)      Find a way to make RPM work.

What do you guys recommend? Any suggestions for the RPM route?

Thanks.
-Erik

Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized to read, print, retain, copy, dis=
seminate, distribute, or use this message or any part thereof. If you recei=
ve this message in error, please notify the sender immediately and delete a=
ll copies of this message.

--_000_DM2PR0201MB1087DD784F2B16CF0C347BBECC000DM2PR0201MB1087_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:1555001466;
	mso-list-type:hybrid;
	mso-list-template-ids:1961236382 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hey All:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to switch a large project we&#8217;=
ve been working on for years from TinyCore to yocto.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve avoided dealing with this up until now, b=
ut it can&#8217;t wait any longer.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to keep the yocto SDK that we distribute to o=
ur development team as lean as possible so that we don&#8217;t have to send=
 out ~100MB install scripts every week.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We do, however, have a lot of internally developed l=
ibraries that change during each major release, so I need a simple way of i=
nstalling the packages for those libraries and their dependencies to the ta=
rget sysroot in the SDK dir (/opt/poky/1.7.1/sysroots/&lt;target_arch&gt;).=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The documentation covers this scenario briefly here:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://www.yoctoproject.org/docs/1.7.1/ad=
t-manual/adt-manual.html#configuring-the-pms">http://www.yoctoproject.org/d=
ocs/1.7.1/adt-manual/adt-manual.html#configuring-the-pms</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here&#8217;s the problem. Yocto sets the default pac=
kage output type to RPM, but the example uses OPKG. So I switched the outpu=
t to ipk, but OPKG doesn&#8217;t allow capital letters in the package names=
. I&#8217;ve put together about 40 some recipes for
 our libraries and tools, many of which have capital letters.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tried to get the rpm command line tool to=
 install packages from the build repo to the sysroot directory, but haven&#=
8217;t had any luck. After a bit of Googling, I&#8217;ve found most RPM ref=
erence for repos will refer to YUM commands, which isn&#8217;t
 much help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I also tried to use smartpm on my workstation since =
it&#8217;s the recommended package manager for runtime (on the target itsel=
f), but smart has very little reference so I ran into a wall there as well.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Right now it looks like I have two options:<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Bite the bullet and switch all my recipes to use na=
mes that don&#8217;t violate OPKGs naming rules.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Find a way to make RPM work.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What do you guys recommend? Any suggestions for the =
RPM route?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal">-Erik<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized
 to read, print, retain, copy, disseminate, distribute, or use this message=
 or any part thereof. If you receive this message in error, please notify t=
he sender immediately and delete all copies of this message.
</body>
</html>

--_000_DM2PR0201MB1087DD784F2B16CF0C347BBECC000DM2PR0201MB1087_--
