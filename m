Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5BE0E009C8; Tue, 23 Jun 2015 15:54:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 844 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jun 2015 15:54:18 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0069.outbound.protection.outlook.com [65.55.169.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42723E00974
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 15:54:18 -0700 (PDT)
Received: from SN1PR0201MB1616.namprd02.prod.outlook.com (10.163.130.147) by
	SN1PR0201MB1533.namprd02.prod.outlook.com (10.163.129.20) with
	Microsoft SMTP
	Server (TLS) id 15.1.190.14; Tue, 23 Jun 2015 22:40:12 +0000
Received: from BY2PR02CA0058.namprd02.prod.outlook.com (10.141.216.48) by
	SN1PR0201MB1616.namprd02.prod.outlook.com (10.163.130.147) with
	Microsoft
	SMTP Server (TLS) id 15.1.195.15; Tue, 23 Jun 2015 22:40:11 +0000
Received: from BN1BFFO11FD041.protection.gbl (2a01:111:f400:7c10::1:197) by
	BY2PR02CA0058.outlook.office365.com (2a01:111:e400:2c40::48) with
	Microsoft SMTP Server (TLS) id 15.1.195.15 via Frontend Transport;
	Tue, 23 Jun 2015 22:40:11 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1BFFO11FD041.mail.protection.outlook.com (10.58.144.104) with
	Microsoft
	SMTP Server (TLS) id 15.1.190.9 via Frontend Transport; Tue, 23 Jun 2015
	22:40:10 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Tue, 23 Jun 2015
	15:40:09 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 23 Jun 2015 15:40:07 -0700
Thread-Topic: do_make_scripts race condition with externalsrc
Thread-Index: AdCuAxOE985FKIEJRkaKtARFlUcuig==
Message-ID: <8F90F944E50427428C60E12A34A309D2459F124C2C@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD041;
	1:exzQZaNE5QqPaVbWIJktI1V0ZDs+Evv98gEB/bCcDjrEIBPA4RL1P3b6JDYdygstgjfIRJTKNSTcCoWShTueU6VyC1iDTppdn+cqyvuN3vqozPTs8DWNFcY6bqQK0PTerqjsvH2/EypWda52L+5yfS82w35F/wdAfFDp1abCRyJAiNMS8Vow1Q0hYB2GRzncbKSdHukCoBPrGy0ZrydPQ6zjPJ0qdELIIxJjKs65bipKrlda0/7qu5zksPJ4ckE6c0rTeCXkOQnXe0leaCeGgw==
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(2980300002)(438002)(189002)(199003)(54356999)(77156002)(86362001)(6806004)(512954002)(2656002)(46102003)(50986999)(62966003)(19300405004)(450100001)(19580405001)(19580395003)(84326002)(87936001)(55846006)(5003600100002)(92566002)(104016003)(19617315012)(19625215002)(98436002)(33656002)(189998001)(5001920100001)(16236675004)(2501003)(2920100001)(110136002)(229853001)(107886002)(15975445007)(77096005)(102836002)(106466001)(5001970100001)(2351001)(15974865002)(2900100001)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR0201MB1616;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1616;
	2:A3wxTO5rbnbaVwHUvKhcbDgH4DP2gyyeYXCPnN0BNAy+aLtuWr9YQwcSkziu9HZI;
	3:n0fn3Kw1lP5wlRX+g2dCfa+K/pVCBViCXhCuSB7PXRCgRTjTALOfi2v7cTdbbNZ3LYBY0VAjMcB52+cWWLJA2ppeF9/vBAYFj68A2B7A7JtlSbGxM+lDn/o90458TK+vPxlDBKIRDybaptmZrNPvi0cR5XnoqE86eZNON7r5hiuuxHjTndDWSuUHllSoiURQfvpGEPUsaPGKjvFeLIOvF17e81z9nLwjReS46AzySH8=;
	20:6f7ByiAaj0ZO2N5RYXEkPOXpiqWfmH7oFf4mG248gULPTG3CIXXptteL3U3EQuxRT7IyayhmQWbHu0SG2067zs1BvpSvcVm2tuuKMXD7zbokgw614z+E8YYG0ITRxYu9SyV6m9LoOI/LqE8u1Nrjlrm2hgbPO87obIVKxGBpfumtMkMMMMAlCt0tkwcphVDzynUlNJQYn4eDHu2DDvEVxbYsLBJGueVjY5HmNCkKLA8JRMq1S0Y2lLjzjBwIQMSxOtGHt3AHs7fDmp+6pbcMyfWhQRoF/J/88h5uG1khrK0NwfM1gfIBOMaQnc+hAVkLmBNTp+j8YyPRvwfRMw6kkYT6GhqMSd+7RkHIHm8+G8bWr54/WIXF81CZxGLgcfWvyxXhahtxlJ7u7LwImWzF6gz0dptjbCh/KA8vK9fKlcAbmQvbfaZa2wTgQQA8uLbczH+eoBGHoRVIaDg9mmClwsgxDvbfokt6x3/X2OYu3vmRd6GQvpCPUcOKPiAAXkAR
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:; SRVR:SN1PR0201MB1616;
	UriScan:; BCL:0; PCL:0; RULEID:; SRVR:SN1PR0201MB1533; 
X-Microsoft-Antispam-PRVS: <SN1PR0201MB161670EC343A5A93CA4872CDB2A00@SN1PR0201MB1616.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:SN1PR0201MB1616; BCL:0;
	PCL:0; RULEID:; SRVR:SN1PR0201MB1616; 
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1616;
	4:1eRKPFSk3IDGTtgQC3TLaczrgwGbDn6H/VZI/efIJPQxivONoSgzsga0ZC7eEJdPd4plMciFFlotJ0UPkxPxWfVrGfqmoHZBLg/PrfpBuJQzBpvfFeYOe/a302vDSQYReiq86WnfajDgJtzIxbcduAS09iQMt03yn72HC5hdMy9EdHyDdXxjP6bAlpnHXRaiEDnicpiNul/6sd9yk5+hDdP22iIU11A29iLBpyRkWAj6IbWgL7kYkuSPqREud0kOIr9JNtfrvaDsLffs5vE2L9LIEf4i7nkN5VjiETTLViU=
X-Forefront-PRVS: 06167FAD59
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SN1PR0201MB1616;
	23:x4KkxNi0MdGX5C1Svw34K+00ZC2gNoJLMfu7+XJ?=
	=?us-ascii?Q?lViHHeom3Y5wgiESW1chY+Tyozvt2guEk81Ckb7WlAz+7njFz0ThU+y2Ue7I?=
	=?us-ascii?Q?c109uBG8nnjeSwzAYhIG8MFkjdc5coNMysIFw5PLCA3vYCKMrbgRY5NLwBHi?=
	=?us-ascii?Q?kGHu5FYJ/YteNKl/zyI5FVAOIfMG63QwhWZZwJhrr7nuhwlvtTJBaw/9JKd7?=
	=?us-ascii?Q?WckZHisgHGwYEdZbAWB32AMWGVSfOkghVAg6kdaO0bMoxTCUOO10m7gBB26d?=
	=?us-ascii?Q?WwF6/sttZ7CGcjHy8ZVz5Pf0R27cIuORt1XOoAOMWqrth6AP/h7hyElZ88fY?=
	=?us-ascii?Q?HQ0JL9HZ8PnVC66WOZ+mzf44IAAaGANTH8UXkdYuCmxBD69bzXP0CAr9UbNi?=
	=?us-ascii?Q?v1xxJsfoW1PEm6A4scACKzWLiv6U9QRdWYvTQ29dyQo1eyan8VH7rjhcy8Z9?=
	=?us-ascii?Q?4oPeDe3O/VLPTCSR1HHotSLpkLM29PWHlXcrb4IFEd95BKmkkphWG4V0m1v9?=
	=?us-ascii?Q?QH/pfoT0fk/aKCZdRGAN7pqH8XAbtn1j2rCVOB1DCH+jJv8l37csMZj0F1DJ?=
	=?us-ascii?Q?Lks1B6F4Bc8y3flI4co1XefMyRqLkgytqXGfLID61a3He8s06+wklqLmP4V4?=
	=?us-ascii?Q?Mk3Cg/O/WxteDMxgaIuyoQedjGVUHUn3GhnKeOgFLysed/97rkPhRVIB2Y+t?=
	=?us-ascii?Q?tzYBIWFb/gAw4PJqXLo9dazwq7RiuYY3Ge0q6bYDgu7zTSTxYZlN3C5uZbP3?=
	=?us-ascii?Q?A6/VvheLD85qjVn9eO6Cy+Dr6Y1zTyC9i61KN/d7z2yKCrTQ4B7Wacwx/vBx?=
	=?us-ascii?Q?nuFoEoBIT5S8NvH+hV4I8CVmsXYsNs8F2EiFipr8MXdOTyTdYHSEENchM5VB?=
	=?us-ascii?Q?k5CUY38IjodfYyz7cLJdNgzXRyH9O0g6xJ3adqCV5Nz/Lv6zs78S5+u0O+xn?=
	=?us-ascii?Q?jiiwxMQDqEMBf5MexhKhy/49KB1YizO19qRJBw5u+g98b4QzE4zuD5PhIdrE?=
	=?us-ascii?Q?A4RaZUIjlx2B2rlXXr+OlSCd7sz3jBxQ/uej2yad6Q3t4okvUSHCKaOG8vAj?=
	=?us-ascii?Q?nuY4AmjqxJLU1bZD/y3yuduZjKwMxaG9HtwtzxGT3kJwTod49TKRkOp9bBjI?=
	=?us-ascii?Q?+TuXnKO+jj5ZWecjJrVnvQ9M2QNVC9VIeyKRT+nYYulhxQKlQqIpWCQ=3D?=
	=?us-ascii?Q?=3D?=
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1616;
	5:p+1KcUgnoFDuubNkQrvyTj70F9CSVb7hOwXLsGPDa0rVZ6CT/4pP+0OgjbTJKDQF/kPcKY/q8DUdctGsPpqh3BKhDO4RCQ4yCJDeavsB0DI0+X4hF1QSOjVK7sla6o20kXyxJrN/WuQ8jegZTSOU8w==;
	24:XiE8LkWQ+2W2WLu88wxh3z9c/Jvsov4f7+UgHf8pNStn12aR6kiNBgtosM+KDd5QQxKeZ9kO9xQP4AFKXo+hZZnPg9iSx0GBt4zY5f3wGow=;
	20:aKF3zqJA7otAlDhDJ/1vHoiXwaHrLqeyrY6dER1jXNWZNnoSVso6iADAMU5VOYfikxfKuDWtvqAJb2Uq8Kd9wQ==
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2015 22:40:10.7715 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0201MB1616
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1533;
	2:zrzqT8vPgj3SnatZMBFN/0Ht3NDpZAlbH2VEhVXVZZKVKcct7YDrRCHV0idhhRvY;
	2:kiQWPeBXnH+/gD8BYK/BGbXZD6hlQx162Ti4hpLTJFciDkG10Py+37xPqCLJquqcLOyh2TmIjFOFbSadTsbywlMmJVoEveiFNXwuf0FlZhfz6fzBvNzVavd6K7U9+B5GOHUNOJ2Q0VdiHUadJZ78AQzLPkvV4XHp4nYsH278fMeZfjnYQX0NM6PW9spfu/aVd+WtU5jwnNiFTVUo3LQCLmGAuf00eOBXZ0lpGeVqiyo=;
	9:tgI0FnKWCRTmbKznsJMrlVoq4gxKWTIJKc7IwixeeKCe2BNs+MKjAOPQuVmCkcp/y+lwDwO3rVHUVjcsSX0v4UvK3ocF6JCg0iIJEOZ4SgGl7+BVdlAafY+eK4SoaEonSFhnaHR1tqx4H4PsK/FuBg==
X-OriginatorOrg: sierrawireless.com
Subject: do_make_scripts race condition with externalsrc
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
X-List-Received-Date: Tue, 23 Jun 2015 22:54:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8F90F944E50427428C60E12A34A309D2459F124C2Ccarmdexchmb01_"

--_000_8F90F944E50427428C60E12A34A309D2459F124C2Ccarmdexchmb01_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


--_000_8F90F944E50427428C60E12A34A309D2459F124C2Ccarmdexchmb01_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
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
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal>Hello,<o=
:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal=
>I encountered the same error as described by Mikhail Zakharov last Novembe=
r in&#8230;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p clas=
s=3DMsoNormal>https://lists.yoctoproject.org/pipermail/yocto/2014-November/=
022151.html<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p clas=
s=3DMsoNormal>My output was nearly identical to that reported (the only thi=
ng different being a different recipe that builds out-of-tree kernel module=
s as externalsrc).<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
<p class=3DMsoNormal>Like the other case reported, I am using 1.6 (actually=
 a Freescale QorIQ SDK 1.7 snapshot).<o:p></o:p></p><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p><p class=3DMsoNormal>I also noticed on a number of occas=
ions the build/tmp/kernel-scripts.lock is a directory, when I think it is s=
upposed to be just a file.&nbsp; Whenever it is created as a directory and =
it doesn&#8217;t get properly cleaned up, attempting to build anything kern=
el related thereafter potentially hangs those bitbake tasks indefinitely.&n=
bsp; You have to Ctrl-C twice and then delete the build/tmp/kernel-scripts.=
lock directory that was left there.&nbsp; Then things work back to normal (=
until the next time).<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p><=
/p><p class=3DMsoNormal>My understanding is that the externalsrc bbclass ex=
cludes a number of tasks that aren&#8217;t relevant to external source (suc=
h as fetch, unpack and patch).&nbsp; Is it possible that one of the exclude=
d tasks is needed to ensure the proper handling of the kernel-scripts.lock =
when building kernel modules?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp=
;</o:p></p><p class=3DMsoNormal style=3D'text-autospace:none'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#65=
6565;mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b></p><p class=
=3DMsoNormal style=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial",sans-serif;color:#656565;mso-fareast-la=
nguage:EN-CA'>Regards,<o:p></o:p></span></b></p><p class=3DMsoNormal style=
=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial",sans-serif;color:#656565;mso-fareast-language:EN-CA'><o:p=
>&nbsp;</o:p></span></b></p><p class=3DMsoNormal style=3D'text-autospace:no=
ne'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",san=
s-serif;color:#656565;mso-fareast-language:EN-CA'>Darcy<o:p></o:p></span></=
b></p><p class=3DMsoNormal style=3D'text-autospace:none'><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#656565;=
mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoN=
ormal style=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font-siz=
e:7.5pt;font-family:"Arial",sans-serif;color:#656565;mso-fareast-language:E=
N-CA'>Darcy Watkins ::&nbsp;&nbsp;Staff Engineer, Firmware<o:p></o:p></span=
></b></p><p class=3DMsoNormal style=3D'text-autospace:none'><b><span lang=
=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#E33=
A2F;mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b></p><p class=3D=
MsoNormal style=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font=
-size:7.5pt;font-family:"Arial",sans-serif;color:#E33A2F;mso-fareast-langua=
ge:EN-CA'>SIERRA WIRELESS<o:p></o:p></span></b></p><p class=3DMsoNormal sty=
le=3D'text-autospace:none'><span lang=3DEN-US style=3D'font-size:7.5pt;font=
-family:"Arial",sans-serif;color:#E33A2F;mso-fareast-language:EN-CA'>Direct=
</span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans=
-serif;color:#656565;mso-fareast-language:EN-CA'>&nbsp; +1 604 233 7989&nbs=
p; &nbsp;::&nbsp; </span><span lang=3DEN-US style=3D'font-size:7.5pt;font-f=
amily:"Arial",sans-serif;color:#E33A2F;mso-fareast-language:EN-CA'>Fax&nbsp=
; </span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sa=
ns-serif;color:#656565;mso-fareast-language:EN-CA'>+1 604 231 1109&nbsp; ::=
&nbsp; </span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Aria=
l",sans-serif;color:#C00000;mso-fareast-language:EN-CA'>Main</span><span la=
ng=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;mso-fare=
ast-language:EN-CA'>&nbsp; <span style=3D'color:#656565'>+1 604 231 1100</s=
pan><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none=
'><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-seri=
f;color:#656565;mso-fareast-language:EN-CA'>13811 Wireless Way&nbsp; ::&nbs=
p;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p><p class=3DMsoNormal sty=
le=3D'text-autospace:none'><span lang=3DEN-US style=3D'font-size:7.5pt;font=
-family:"Arial",sans-serif;color:#656565;mso-fareast-language:EN-CA'>[P2]<o=
:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><u><=
span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;c=
olor:blue;mso-fareast-language:EN-CA'><a href=3D"mailto:dwatkins@sierrawire=
less.com"><span style=3D'color:blue'>dwatkins@sierrawireless.com</span></a>=
</span></u><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",=
sans-serif;color:#E43B30;mso-fareast-language:EN-CA'> :: <a href=3D"http://=
www.sierrawireless.com/"><span style=3D'color:blue'>www.sierrawireless.com<=
/span></a> :: <a href=3D"http://www.inmotiontechnology.com/"><span style=3D=
'color:blue'>www.inmotiontechnology.com</span></a> <o:p></o:p></span></p><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_8F90F944E50427428C60E12A34A309D2459F124C2Ccarmdexchmb01_--
