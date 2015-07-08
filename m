Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42EB6E00978; Wed,  8 Jul 2015 07:27:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0054.outbound.protection.outlook.com [65.55.169.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1097E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 07:27:08 -0700 (PDT)
Received: from BY2PR02CA0088.namprd02.prod.outlook.com (10.242.32.46) by
	CY1PR0201MB1610.namprd02.prod.outlook.com (10.163.140.145) with
	Microsoft
	SMTP Server (TLS) id 15.1.207.19; Wed, 8 Jul 2015 14:27:06 +0000
Received: from BL2FFO11FD028.protection.gbl (2a01:111:f400:7c09::113) by
	BY2PR02CA0088.outlook.office365.com (2a01:111:e400:2c2a::46) with
	Microsoft
	SMTP Server (TLS) id 15.1.207.19 via Frontend Transport; Wed, 8 Jul 2015
	14:27:05 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BL2FFO11FD028.mail.protection.outlook.com (10.173.161.107) with
	Microsoft
	SMTP Server (TLS) id 15.1.201.10 via Frontend Transport; Wed, 8 Jul 2015
	14:27:05 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Wed, 8 Jul 2015
	07:27:04 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 8 Jul 2015 07:27:02 -0700
Thread-Topic: do_make_scripts race condition with externalsrc
Thread-Index: AdCuAxOE985FKIEJRkaKtARFlUcuigLhkjvg
Message-ID: <8F90F944E50427428C60E12A34A309D2459F358B20@carmd-exchmb01.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D2459F124C2C@carmd-exchmb01.sierrawireless.local>
In-Reply-To: <8F90F944E50427428C60E12A34A309D2459F124C2C@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11FD028;
	1:ddC3w2QFxoagVOjY9i9adOT1yGEnnT3QhNLUutQc28wKliLM4eI+OGPCKy8kanycuV7FCXUkJDUFDNwn8EnquegbLXd7gh6lDvEyzg4+fG3KXAhbfFcgDMb/C2LKc20dRJVy+t05Fkzz4aKwJmRDfn/xmAgPYjYw0WaAai0XlRvkCwHxZPy6ZpmLwWaZ1vUrhBllLPOtkhQ7FbMzG8vvCQDdby1tXo3eREGBjBLpARrtbTayPaQpDwxjcUxJscRvbvvINXmGKtpGdufR9bpW7A==
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(2980300002)(438002)(377454003)(199003)(189002)(86362001)(15974865002)(106466001)(2920100001)(2950100001)(19580405001)(2940100001)(110136002)(2351001)(54356999)(189998001)(15975445007)(77096005)(2656002)(6806004)(50986999)(107886002)(76176999)(2900100001)(5003600100002)(102836002)(19300405004)(512954002)(87936001)(19580395003)(2501003)(19625215002)(92566002)(450100001)(19617315012)(104016003)(16236675004)(5001970100001)(84326002)(55846006)(62966003)(77156002)(46102003)(98436002)(2910100002)(33656002)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0201MB1610;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1610;
	2:wgl1+Q+9CkYAxI8wy2VwEJcSmCsj9MLYwhBbwrQNahHY0TLPBqjV4KvVqtj8GCjP;
	3:vz6IYZs4bO853i1eYP2G/QZDbgTiHAfCyuqxbOHurAdbhKqxOnMtbtqxGzRgfEPZ29DF8Dg2FmTRw9G2EihzNkFRiOYzsvTS0Q2yLEDOaVU45EiIMOXtHY55p5UgOYdJQ+TMk6U+zN/47E/UQVQV/DkKIBgheyoLPP7J6jJjRQOm8z6CIovk7+GfFL5mL+Gw7p6GEoX7NPoIZY38BIoILaZB8jSwnPmdHKE0KDBIDYQ=;
	25:jeMxtlttEWvvtKm5S8/sbCvOrmZiERv2c88HcYrsw/mH8wmwQGI8WCxUare15ORpoHxFqSbnr5mOmJO1KKWZImGvuxGMAy4jlnz/1doA6dXoOZj+kqSrWFq8RIogLtt3J5/jB+l6W2QS1Yncylr7h6LCiZnipyTprzpwjTxwrC3ggTkvEQ0zeNWx7kZhv5dMROne2tDMxnYwxE7+CYbvaSl6nqIPlj8PwWEeAeRivLcWI+hXnBS5gDM5fh+hvo0yKbkxLftscdgkZINng6X1BQ==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0201MB1610;
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1610;
	20:2fTcP/KXWBN3ik7YTEMo5twcTKalYubAcHfr4TPknOUh7U4nrpoY2eizPIIp0Y0G92almiKxW7AENB9y04qXvK5C9nuhKnhGNSltjQkOjU/TUyphkprBLBubD08+qejJ872oesB0uV1k+iA+fLRH0XxY8j+N4zdWWqvCuXHhecW9J6gE8HMOQnwxkYG2/pKX1dr8R9cxbpzfBpo5pK5MArT0FhLJ5ghwdvhjMQqGBnC1XSAjSqg9l2PT513lNoLNSWt3Ay8GIZj7f+u56sma3zAlGuxNpmESyv5LV4a5WDbYsSxBmIHMyqM/M5tsV9/Yvoi+MSmQMuKD+m1UH33+5LzFBV+a4MHVkRbLF7f1UhlE12b4jfXtc/SYsNFWsxmG2iaxr4u23WQ95KJHngwKMI1176J3k1npa5XMlQQEl2sRK8vMRwZhKmGZmNYveE5XCOEPXU+hOZe9GKOI0fEn1MpG82ZEREZlZJ67hw32+bC5WEmqlSHblswYn6aAx9JF;
	4:yyKQ9XRhpLYnP9DYBOiUVHPZSVbhWQrnRdBYUCC1Il/hI/bU6L8KMXUtgB17ZQ8Tu8voeiJZvxP1hnHW0cCxjJ8nSxXOEOoYk/hvxdr86/OXdiE1gwx/TZPExmJN1B6BhBMwt/UYSJJvjCOejrJ4ExiqyWHy7r5iPiISdIaKrgOpN17q8ZI5Cqz6QGBdXqrcrNLteMfx8rZBF+v2T7kmN0ucnVCwvQQcVwxsgOtvRijKJaehx6XraR+dvhHuGsOuMoUSxIhsZwRmJ++mCP5Z5u0AKjoIElPhYLln8L1dVIw=
X-Microsoft-Antispam-PRVS: <CY1PR0201MB1610C93C08051108049BAC46B2910@CY1PR0201MB1610.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(108003899814671);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:CY1PR0201MB1610; BCL:0;
	PCL:0; RULEID:; SRVR:CY1PR0201MB1610; 
X-Forefront-PRVS: 0631F0BC3D
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR0201MB1610;
	23:0BStg4dCa9ePUBLaWMH+GHIA4305Md8oZZE15SU?=
	=?us-ascii?Q?gcmuogNZfcr7Hu5zrSFOEal0BBHse+SUHAKLNRG4a5NJl+t7eCFLwo74qTct?=
	=?us-ascii?Q?FolTlOLisAjigi7ZOBh0W7x1vJnSQsScUw0xGCBqn9PPdZIzGNYkywL5PEoa?=
	=?us-ascii?Q?lcjMImGtAHc2q9Jl0ilFFK6uhT+8cfrpMjeJib0jhzTAo9GTQIL6Y9VBtH62?=
	=?us-ascii?Q?SdmK3dgnGVPM5rgP9FF/bfFmFdN7/L+euNJQ/npuUr16/DMxALXa9dmTm/39?=
	=?us-ascii?Q?bH1hYzqxUdY3N5IZCnAK4X4OKpbeEV6tLdouzlVZX49W5Io1tmK6h346AXd4?=
	=?us-ascii?Q?VO1KYRe+x7mduS0gugG1OqNEhas6IY8i+OCLVWr1oTKjiAku0apzoguc9yP1?=
	=?us-ascii?Q?osY8UZEXh59zco9wPVX86i6IQD7pmkYd2ItXv8o+sWvcz6QxLyfqP/sSP/jj?=
	=?us-ascii?Q?7Te6Lu7nl8z883HYfT6yvydp3xZnss7Hxlkfn/naTfG62NwPlF4e/48XgwCZ?=
	=?us-ascii?Q?26Y25iJHuoWrMEw2s6WXblAlwphPeK6V4CrgYzGVM1kSmi5bTY2bhyauM+r3?=
	=?us-ascii?Q?dN1GgfxCxki9ELhDGcyOwYUFv3nQ5RsLm5A9xP7q67Qrho/ZmaoZcZAPDP7m?=
	=?us-ascii?Q?liwR8v4MvzByZqdUEI927hxTuVfK/xElg0j66qt8ykjcqYEAJX27GpEyS3rg?=
	=?us-ascii?Q?rQqS1jUZodGWnN7/f5s7nGiuSXSfeccQdWzjTSvroBe8fk8rKDnNzb7ANW12?=
	=?us-ascii?Q?l1hpPuN+yUeuEeO9JrqHkt/MH9DjRIUSLEoA/cBDY6AE1Y2eQvtTm7ZkAAXo?=
	=?us-ascii?Q?SpVQDZusinu+vEWS0A18qUVzplOMaQSQmGOMFa4Lo1maW0j2P7fRUXjfGE4w?=
	=?us-ascii?Q?4exbHWLZlLAbh5CMn8tqM1VqXhfwezLklgzk5j4q03T4kGYTbO2pfl4YG4G4?=
	=?us-ascii?Q?K9r3NWcTf8vSaowISUWxpf+mRT8SYcuk1RIjUrCUl4VtAeTGbv/eG2xace1G?=
	=?us-ascii?Q?ZkWGZnktxeseJRpbgprpu20Q85sbFy5cnOoGvBtQWxyAZxV3O26rPuFC0poy?=
	=?us-ascii?Q?7CxstR6/3WxfDaZCNJFItdEo6zl6sLRHaaxrEzasDXjiWci8INCmsoHgij0G?=
	=?us-ascii?Q?pAVYGcexpuaZZZJ1LXph8my/NJB2UWlSBAx3E0QPfjze/FwFUs+jAY4ShGHT?=
	=?us-ascii?Q?4g5GHuTWOvUkGnO+bWtsNqUUCCTslJIaBxcGwqqG5TF7wj1li3zAqtvxvpA?=
	=?us-ascii?Q?=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0201MB1610;
	5:wlW3ZMvvag/H/uMwDxUt9F5rAh1n9siDHhw+RY20KhPvVeHVVf0YNG4MPTe1fGsUn+QYE3kSON3aEcwjGMVhs1MJjzJC80xcIErNvijBx5+Wwj2eAr9Nyixu9F4XGNbSmTvpyI/02/awczFd1CvGYA==;
	24:kntSyahFHBXp9tEe8pdKd0/C1jaQXHSqqU7KOC5n9Z+gB2sYjMzu94cMj1/PgNF2qVqzMKTqYNK9und8agg+D4BhbsCFhIoxvrq/8OjqiSI=;
	20:ViRqo589Bie3y+q/j3zrJUgeVycmdUdiZqBqoJbdlggZ7pxkU6YcJSBrnwrdzjK/1UZX2hrV0PZ0P78Lf1ydjw==
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2015 14:27:05.1795 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0201MB1610
Subject: Re: do_make_scripts race condition with externalsrc
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
X-List-Received-Date: Wed, 08 Jul 2015 14:27:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8F90F944E50427428C60E12A34A309D2459F358B20carmdexchmb01_"

--_000_8F90F944E50427428C60E12A34A309D2459F358B20carmdexchmb01_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I believe that recent commit to poky master branch dated June 16, 2015 by P=
aul Eggleton touching

      meta/classes/externalsrc.bbclass

with comment "classes/externalsrc: handle tasks with existing lockfile"

Resolves this issue.

Are there any plans to retro merge it to previous releases such as 'daisy'?

Thanks!



Regards,

Darcy

Darcy Watkins ::  Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[P2]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/> :: www.inmotiontechnology.co=
m<http://www.inmotiontechnology.com/>

From: Darcy Watkins
Sent: June-23-15 3:40 PM
To: yocto@yoctoproject.org
Subject: do_make_scripts race condition with externalsrc

Hello,

I encountered the same error as described by Mikhail Zakharov last November=
 in...

https://lists.yoctoproject.org/pipermail/yocto/2014-November/022151.html

My output was nearly identical to that reported (the only thing different b=
eing a different recipe that builds out-of-tree kernel modules as externals=
rc).

Like the other case reported, I am using 1.6 (actually a Freescale QorIQ SD=
K 1.7 snapshot).

I also noticed on a number of occasions the build/tmp/kernel-scripts.lock i=
s a directory, when I think it is supposed to be just a file.  Whenever it =
is created as a directory and it doesn't get properly cleaned up, attemptin=
g to build anything kernel related thereafter potentially hangs those bitba=
ke tasks indefinitely.  You have to Ctrl-C twice and then delete the build/=
tmp/kernel-scripts.lock directory that was left there.  Then things work ba=
ck to normal (until the next time).

My understanding is that the externalsrc bbclass excludes a number of tasks=
 that aren't relevant to external source (such as fetch, unpack and patch).=
  Is it possible that one of the excluded tasks is needed to ensure the pro=
per handling of the kernel-scripts.lock when building kernel modules?


--_000_8F90F944E50427428C60E12A34A309D2459F358B20carmdexchmb01_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-CA link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal><span st=
yle=3D'color:#1F497D'>Hello,<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span style=3D'color:#1F497D'>I believe that recent commit to poky master b=
ranch dated June 16, 2015 by Paul Eggleton touching<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; meta/classes/externalsrc.bbclass<o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'>with comment &#8220;classes/exte=
rnalsrc: handle tasks with existing lockfile&#8221;<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span style=3D'color:#1F497D'>Resolves this issue.<o=
:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>=
Are there any plans to retro merge it to previous releases such as &#8216;d=
aisy&#8217;?<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color=
:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Thanks!<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNorma=
l style=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial",sans-serif;color:#656565;mso-fareast-language:EN-C=
A'><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoNormal style=3D'text-autos=
pace:none'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al",sans-serif;color:#656565;mso-fareast-language:EN-CA'>Regards,<o:p></o:p=
></span></b></p><p class=3DMsoNormal style=3D'text-autospace:none'><b><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;colo=
r:#656565;mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b></p><p cl=
ass=3DMsoNormal style=3D'text-autospace:none'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#656565;mso-farea=
st-language:EN-CA'>Darcy<o:p></o:p></span></b></p><p class=3DMsoNormal styl=
e=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial",sans-serif;color:#656565;mso-fareast-language:EN-CA'><o:=
p>&nbsp;</o:p></span></b></p><p class=3DMsoNormal style=3D'text-autospace:n=
one'><b><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",san=
s-serif;color:#656565;mso-fareast-language:EN-CA'>Darcy Watkins ::&nbsp;&nb=
sp;Staff Engineer, Firmware<o:p></o:p></span></b></p><p class=3DMsoNormal s=
tyle=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font-size:7.5pt=
;font-family:"Arial",sans-serif;color:#E33A2F;mso-fareast-language:EN-CA'><=
o:p>&nbsp;</o:p></span></b></p><p class=3DMsoNormal style=3D'text-autospace=
:none'><b><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",s=
ans-serif;color:#E33A2F;mso-fareast-language:EN-CA'>SIERRA WIRELESS<o:p></o=
:p></span></b></p><p class=3DMsoNormal style=3D'text-autospace:none'><span =
lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:=
#E33A2F;mso-fareast-language:EN-CA'>Direct</span><span lang=3DEN-US style=
=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#656565;mso-fareas=
t-language:EN-CA'>&nbsp; +1 604 233 7989&nbsp; &nbsp;::&nbsp; </span><span =
lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:=
#E33A2F;mso-fareast-language:EN-CA'>Fax&nbsp; </span><span lang=3DEN-US sty=
le=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#656565;mso-fare=
ast-language:EN-CA'>+1 604 231 1109&nbsp; ::&nbsp; </span><span lang=3DEN-U=
S style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#C00000;mso=
-fareast-language:EN-CA'>Main</span><span lang=3DEN-US style=3D'font-size:7=
.5pt;font-family:"Arial",sans-serif;color:#1F497D;mso-fareast-language:EN-C=
A'>&nbsp; </span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"A=
rial",sans-serif;color:#656565;mso-fareast-language:EN-CA'>+1 604 231 1100<=
/span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-=
serif;color:#1F497D;mso-fareast-language:EN-CA'><o:p></o:p></span></p><p cl=
ass=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'f=
ont-size:7.5pt;font-family:"Arial",sans-serif;color:#656565;mso-fareast-lan=
guage:EN-CA'>13811 Wireless Way&nbsp; ::&nbsp;Richmond, BC Canada V6V 3A4<o=
:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><spa=
n lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;colo=
r:#656565;mso-fareast-language:EN-CA'>[P2]<o:p></o:p></span></p><p class=3D=
MsoNormal style=3D'text-autospace:none'><u><span lang=3DEN-US style=3D'font=
-size:7.5pt;font-family:"Arial",sans-serif;color:blue;mso-fareast-language:=
EN-CA'><a href=3D"mailto:dwatkins@sierrawireless.com"><span style=3D'color:=
blue'>dwatkins@sierrawireless.com</span></a></span></u><span lang=3DEN-US s=
tyle=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#E43B30;mso-fa=
reast-language:EN-CA'> :: <a href=3D"http://www.sierrawireless.com/"><span =
style=3D'color:blue'>www.sierrawireless.com</span></a> :: <a href=3D"http:/=
/www.inmotiontechnology.com/"><span style=3D'color:blue'>www.inmotiontechno=
logy.com</span></a> <o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'bord=
er:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=
=3DMsoNormal><b><span lang=3DEN-US style=3D'mso-fareast-language:EN-CA'>Fro=
m:</span></b><span lang=3DEN-US style=3D'mso-fareast-language:EN-CA'> Darcy=
 Watkins <br><b>Sent:</b> June-23-15 3:40 PM<br><b>To:</b> yocto@yoctoproje=
ct.org<br><b>Subject:</b> do_make_scripts race condition with externalsrc<o=
:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p class=3DMsoNormal>Hello,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal>I encountered the same error as described by M=
ikhail Zakharov last November in&#8230;<o:p></o:p></p><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal><a href=3D"https://lists.yoctopro=
ject.org/pipermail/yocto/2014-November/022151.html">https://lists.yoctoproj=
ect.org/pipermail/yocto/2014-November/022151.html</a><o:p></o:p></p><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>My output was nearl=
y identical to that reported (the only thing different being a different re=
cipe that builds out-of-tree kernel modules as externalsrc).<o:p></o:p></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Like the oth=
er case reported, I am using 1.6 (actually a Freescale QorIQ SDK 1.7 snapsh=
ot).<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>I also noticed on a number of occasions the build/tmp/kernel-scripts=
.lock is a directory, when I think it is supposed to be just a file.&nbsp; =
Whenever it is created as a directory and it doesn&#8217;t get properly cle=
aned up, attempting to build anything kernel related thereafter potentially=
 hangs those bitbake tasks indefinitely.&nbsp; You have to Ctrl-C twice and=
 then delete the build/tmp/kernel-scripts.lock directory that was left ther=
e.&nbsp; Then things work back to normal (until the next time).<o:p></o:p><=
/p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>My unders=
tanding is that the externalsrc bbclass excludes a number of tasks that are=
n&#8217;t relevant to external source (such as fetch, unpack and patch).&nb=
sp; Is it possible that one of the excluded tasks is needed to ensure the p=
roper handling of the kernel-scripts.lock when building kernel modules?<o:p=
></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_8F90F944E50427428C60E12A34A309D2459F358B20carmdexchmb01_--
