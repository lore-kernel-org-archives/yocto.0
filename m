Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02424E009C8; Tue, 23 Jun 2015 16:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.111.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1112 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jun 2015 16:34:26 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0093.outbound.protection.outlook.com [157.56.111.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64DD1E00974
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 16:34:26 -0700 (PDT)
Received: from BLUPR0201CA0027.namprd02.prod.outlook.com (10.163.116.37) by
	SN1PR02MB1423.namprd02.prod.outlook.com (10.162.0.27) with Microsoft
	SMTP Server (TLS) id 15.1.195.15; Tue, 23 Jun 2015 23:00:44 +0000
Received: from BY2FFO11FD049.protection.gbl (2a01:111:f400:7c0c::175) by
	BLUPR0201CA0027.outlook.office365.com (2a01:111:e400:52e7::37) with
	Microsoft SMTP Server (TLS) id 15.1.195.15 via Frontend Transport;
	Tue, 23 Jun 2015 23:00:43 +0000
Authentication-Results: spf=none (sender IP is 208.81.121.47)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: None (protection.outlook.com: sierrawireless.com does not
	designate permitted sender hosts)
Received: from mail.sierrawireless.com (208.81.121.47) by
	BY2FFO11FD049.mail.protection.outlook.com (10.1.15.186) with Microsoft
	SMTP Server (TLS) id 15.1.190.9 via Frontend Transport;
	Tue, 23 Jun 2015 23:00:43 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Tue, 23 Jun 2015
	16:00:42 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 23 Jun 2015 16:00:40 -0700
Thread-Topic: Kernel driver backports
Thread-Index: AdCuBeEr7optdb6KTLGa6BbzBnXdVA==
Message-ID: <8F90F944E50427428C60E12A34A309D2459F124C56@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11FD049;
	1:Gs/YV3rTTT+egWn3/bw5AmUDHz53f170VqbGPXoLTI2i0lxDzkHyCYZV49jHONGNmtmGST6Mkw8af6gpDHHQxfBU1akz4gW2x//Y/Vbeuvd7ZG8r8bMuE7WGfWCAt0vvZ3nC4u29itwEQ3loRq8d8KEipridJb9nOM3uZUjX+YlM58X0R15htXj+So0bPL2K0Dwo3tbRn2Er8NObkFVvWlkuIQgM1bTlTNEKvRCAX886qX4eZz7BV2vq3n21p9Oz5ocwUBdCQ1u1yjGEgBBpSA==
X-Forefront-Antispam-Report: CIP:208.81.121.47; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(2980300002)(428002)(51444003)(189002)(57704003)(199003)(107886002)(189998001)(110136002)(84326002)(5001970100001)(87936001)(2656002)(512954002)(86362001)(2501003)(77156002)(55846006)(450100001)(62966003)(19580395003)(105586002)(19580405001)(101416001)(16236675004)(77096005)(92566002)(54356999)(15974865002)(6806004)(50986999)(33656002)(46102003)(19300405004)(106466001)(19617315012)(104016003)(2351001)(98436002)(2920100001)(2900100001)(19625215002)(15975445007)(102836002)(2930100002)(5003600100002)(229853001)(7099028)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR02MB1423;
	H:mail.sierrawireless.com; FPR:; SPF:None; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1PR02MB1423;
	2:SGHZg/ND0FhFCfjVSYGsql0tyXkEuHtU43jyIc4wTrVjNrD+xHEs3Um83HZLQs9t;
	3:bQUly1ZEcnB7Z1llYqz8OhYxuZP+GjDz0sVZcMXCy6Cwa4AZaLut3pAlhwgFWQIDOrDFq4OLAomVMmbPJuS/7tbBCoiLQlMpj+j2tQxLUzpqM5FBR7xm6pQ7C7U4O5DUFSzKrkjfDir2OJRir9ycbZj0dUdkWy3C4M7CMYxanFyYp4eCEnk1HkwPNjhPCyfdX6Q5UMnJBf/meHjFqWXZy/ioBO4DAWWBOalk02n78yI=;
	20:lhv8eOT9r/iXvJWDToLPRd6WBXDvMgNjhFS1BKFcXrxGmJKeHywEi06LmmDaFuh7S52dsy1A9R8x/JfsJV0Un81/6GD2yPaiWyO6fCus8lfcGoqoCzTpwip+VR98lHZoXDuq3Qi0cbsJ7wyYCFE26yKiJTZJp6PgNF3n7WXYzYRuFo7v/dqqTKevMM8ERZTBqt07PZq5H7M66TSwu6AFlN1gnJuVA4D8b7hWLrX7aXweTdS1WVW9mSs0OrXR0Vr+cfKuRDX3KXpPlFykvQorI9txz5Z/pYWyCLbh5UfmK0CaEdtG7BM+cY+n8WXGC9vj+Bvb2Dfkfbs33vlZjw/g7JjwXxvK4D183aV0afSrenJ+3vv7mxsnkiwlkcDz0BxxD1CIVR4ZfSTYb461m/+VSEWqNPI0Pgi/BZS5P2mDODRSG452DUu1TEmOFKqrq4g344pfLHWR2RcBmQfsnU9QR4JL31eBF4p6Lx/J5VpcTVUHjfJWMr5ShgQvvs1ioiz1
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SN1PR02MB1423;
X-Microsoft-Antispam-PRVS: <SN1PR02MB1423B0F6688E949870F1AAFAB2A00@SN1PR02MB1423.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:SN1PR02MB1423; BCL:0;
	PCL:0; RULEID:; SRVR:SN1PR02MB1423; 
X-Microsoft-Exchange-Diagnostics: 1; SN1PR02MB1423;
	4:Aq2x2AUt1XnWqe2YiabPX81mqWUwaW/VSG50VZ7zbPWnFiLyjL82RvgkcS1NDg1buI5BAWs8x023YUyGdmqazG/euTCeuvcqeHq+LshWNlq8RUV2Smo5vYFxw0X+DrjFL56D1VyBdAga5y+gzqTs0m6gboW2amvZ9CJY5BSzFbpsBYaDDSNjF9fHDeg3rbBsDpSDpa5yKDQaLY1IvUiLzAsiS250re3rGeKPHPVvGSuP8+BxdL5FZfEshN66rvXSv0vaiwxIkEjfFEwzb7IpKF4nEXHYHn367llrYBeKcPE=
X-Forefront-PRVS: 06167FAD59
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SN1PR02MB1423;
	23:YDxude+raPwernvFYFgjU0LNNplbIkVEfkT+Zi7ya?=
	=?us-ascii?Q?7VnCvl/RDi/Y+ngi6TqPzx+TfXC49DV9xzuTaMyBGoQR4ThWDbInOhacLOeF?=
	=?us-ascii?Q?ZBL/iymjfrn9yKbnkuRWz24TJWLj0xqt4WrBs6l5olZDOih2kjorptrDvVgl?=
	=?us-ascii?Q?FWhKmsnL4fGy0N+FChk5TfpPhxAZU1JMUes+BSa6ZiB6TFXyLq7dmj/2rlzv?=
	=?us-ascii?Q?TzBBI9FZLt1/O0DzBKfVz0uaTlCFOgAWV80OaO4VqGXGejO1Vw6oIOFXxwvr?=
	=?us-ascii?Q?DLjU1kPhFUhOBrRqdjWfRsFxvqTMXZ6/6czKyK3//4wreA+6NgM3KXMZ/dlZ?=
	=?us-ascii?Q?acdPqWrap2RPMvcSm/TeNwLDG7EJAjQUuJzB45i0zOpcffyYTZKBN1bkIyEG?=
	=?us-ascii?Q?I02qkhR3ivr8V7ux69uekADTlcXQU5S8uCeoBNNaUDxhj09vXwqur2V2zPdY?=
	=?us-ascii?Q?PlOCwl1oSOKEsV3oi+lmIvmNCz0F9W7hvygFktHp4NW0Uet0+c33Ak+0Ctgb?=
	=?us-ascii?Q?Y55bYwfGiN8x57dfNaUMMOib8WcLtVE85kn7oIiyzGX24OE+iX32BVhXtbkt?=
	=?us-ascii?Q?GBF2kXMBZnzV/e1OP9wT9VQgfoEmexcxMZrAdDVGWl//ZsNbA22KKHgCkW20?=
	=?us-ascii?Q?aP4U5mi+ZzqjLuicBQHyZgQrqpA2w6FOd51X8Jkt6FgVzgel0lM2M71+HAJR?=
	=?us-ascii?Q?9bizMj7QMtQ3hcByB8l4jogL6/+tOLMsVW673/e3P7/I97tgqv4hkARs1MR2?=
	=?us-ascii?Q?xfkY6BOeOoee1s8Pm0dfHOhPrr0nfIyMW+fAWvruwO0Cj3uWM7RbauX94Wns?=
	=?us-ascii?Q?4IH6yRpYWmK0dx3wdyXRxs+52KBJta5zQyzlPLsiouSbln/N+VJCy5ah9bW4?=
	=?us-ascii?Q?j0RzmdEE7xgWcNWouzokSNHj0ZdRqZEkqNoNhHfT1StUa4hYTpyse+WeKHOH?=
	=?us-ascii?Q?lbbYUcuQLrjk2FiQofANUS17U7pRPeT2m9ZLsQdFg4kRwo7F6fxPgHTSjaaN?=
	=?us-ascii?Q?xQWsUyxt9T4Z++FGj0yxj5rVFW5CqpMDj4uGngd3D29eoarM5edeWDa0azIw?=
	=?us-ascii?Q?iw1ww2a9q9+Wo1Dmtf/aGe7OmbhwhKvKuVdib1Zny8D9fHzC2CEL+EGAzmXP?=
	=?us-ascii?Q?JnX/IRkb+m1H9gQx2awh/2SEUP1gFegl3FdYE69y+TpqwYz+smj7pCzHGE0B?=
	=?us-ascii?Q?i7Slo3OBE/CUK+uAjs3Qt1KEU3SDpeyiHtwp5ufQmZeZxNWqwdVra+9w0R+6?=
	=?us-ascii?Q?c4zXIq5KQRhi6aOYtsvz9F92rxMVIZo7WO7s0jg?=
X-Microsoft-Exchange-Diagnostics: 1; SN1PR02MB1423;
	5:Fhg3/rhF75EUs1ecTwZ4MKN/hn+gdJsgu+vXmbrdRb7VPnsTB75NZj8q73G3+EfavqmbvipVjhJF4f7SZXi9sGynChs3WznGMHXffQ0g+zUsyXRFtiNZeT0OdagJFn1H8wYlXT3jejba06aCS8xMVw==;
	24:i6zP2MfdqYlPT3D2uLCP2bVEWtibsmioBolsjFywdnP1YfDucFbmSfCwOPSe04dHue6p6//fgnEsvswq3YpPpW1icURMytdLxD8WqK0ILsk=;
	20:GTL/ij+A4gseyowU8ceUj0XdWemfxq1WogvzC9eYMkcyuzLyLSUcojmnpyPyreOddwT1EM+LGrTMjoefl4IZCw==
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2015 23:00:43.2721 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.47]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR02MB1423
Subject: Kernel driver backports
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
X-List-Received-Date: Tue, 23 Jun 2015 23:34:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8F90F944E50427428C60E12A34A309D2459F124C56carmdexchmb01_"

--_000_8F90F944E50427428C60E12A34A309D2459F124C56carmdexchmb01_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am attempting to build kernel driver backports 3.18.1-1 to backport newer=
 drivers into older kernels (3.4 for i586 and 3.12 for armv7).  This is in =
poky 1.6 (daisy).

I have everything building OK, and they seem to work OK on the target, BUT =
the tasks that split the packages up will name the kernel-module-XXX sub-pa=
ckages the same as those originally built in the kernel.  Even though the p=
ackage version from backports has the backports version (different from the=
 kernel version), this still results in a QA warning - attempt to install f=
iles into a shared area when they already exist (which I believe is a QA fa=
tal error in newer version of yocto).

The modules as shipped from kernel wind up under /lib/modules/.../kernel/dr=
ivers/...

The modules as shipped from backports wind up under /lib/modules/.../update=
s/drivers/...

So there is actually no real issue present.  They can both be installed on =
the target.

I think that the solution would be to override the sub-package naming such =
that instead of...

kernel-module-ath9k-hw-3.12... .rpm  ...and...
kernel-module-ath9k-hw-3.18.1-1... .rpm

...have something like...

kernel-module-ath9k-hw-3.12... .rpm  ...and...
backports-kernel-module-ath9k-hw-3.18.1-1... .rpm

Then there should be no QA issue and since the files are at different locat=
ions on the target system, there shouldn't be any conflict there either.

Anyone know how to override the package splitter for kernel modules to use =
a different prefix? ... or do I need to derive a new bbclass?

I tried setting KERNEL_MODULES_META_PACKAGE to something different, but tha=
t seems to have no effect.



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


--_000_8F90F944E50427428C60E12A34A309D2459F124C56carmdexchmb01_
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
	font-family:"Calibri",sans-serif;
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
>I am attempting to build kernel driver backports 3.18.1-1 to backport newe=
r drivers into older kernels (3.4 for i586 and 3.12 for armv7).&nbsp; This =
is in poky 1.6 (daisy).<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>I have everything building OK, and they seem to w=
ork OK on the target, BUT the tasks that split the packages up will name th=
e kernel-module-XXX sub-packages the same as those originally built in the =
kernel.&nbsp; Even though the package version from backports has the backpo=
rts version (different from the kernel version), this still results in a QA=
 warning &#8211; attempt to install files into a shared area when they alre=
ady exist (which I believe is a QA fatal error in newer version of yocto).<=
o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorma=
l>The modules as shipped from kernel wind up under /lib/modules/&#8230;/ker=
nel/drivers/&#8230;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p=
><p class=3DMsoNormal>The modules as shipped from backports wind up under /=
lib/modules/&#8230;/updates/drivers/&#8230;<o:p></o:p></p><p class=3DMsoNor=
mal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So there is actually no real =
issue present.&nbsp; They can both be installed on the target.<o:p></o:p></=
p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I think th=
at the solution would be to override the sub-package naming such that inste=
ad of&#8230;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>kernel-module-ath9k-hw-3.12&#8230; .rpm&nbsp; &#8230;and&#82=
30;<o:p></o:p></p><p class=3DMsoNormal>kernel-module-ath9k-hw-3.18.1-1&#823=
0; .rpm<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3D=
MsoNormal>&#8230;have something like&#8230;<o:p></o:p></p><p class=3DMsoNor=
mal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>kernel-module-ath9k-hw-3.12&#=
8230; .rpm&nbsp; &#8230;and&#8230;<o:p></o:p></p><p class=3DMsoNormal>backp=
orts-kernel-module-ath9k-hw-3.18.1-1&#8230; .rpm<o:p></o:p></p><p class=3DM=
soNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Then there should be no =
QA issue and since the files are at different locations on the target syste=
m, there shouldn&#8217;t be any conflict there either.<o:p></o:p></p><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Anyone know how to=
 override the package splitter for kernel modules to use a different prefix=
? &#8230; or do I need to derive a new bbclass?<o:p></o:p></p><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I tried setting KERNEL_MO=
DULES_META_PACKAGE to something different, but that seems to have no effect=
.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNor=
mal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal style=3D'text-autospace:none'=
><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",sans-s=
erif;color:#656565;mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b>=
</p><p class=3DMsoNormal style=3D'text-autospace:none'><b><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#656565;ms=
o-fareast-language:EN-CA'>Regards,<o:p></o:p></span></b></p><p class=3DMsoN=
ormal style=3D'text-autospace:none'><b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial",sans-serif;color:#656565;mso-fareast-language:=
EN-CA'><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoNormal style=3D'text-a=
utospace:none'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial",sans-serif;color:#656565;mso-fareast-language:EN-CA'>Darcy<o:p></o:=
p></span></b></p><p class=3DMsoNormal style=3D'text-autospace:none'><b><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;col=
or:#656565;mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b></p><p c=
lass=3DMsoNormal style=3D'text-autospace:none'><b><span lang=3DEN-US style=
=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#656565;mso-fareas=
t-language:EN-CA'>Darcy Watkins ::&nbsp;&nbsp;Staff Engineer, Firmware<o:p>=
</o:p></span></b></p><p class=3DMsoNormal style=3D'text-autospace:none'><b>=
<span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-serif;=
color:#E33A2F;mso-fareast-language:EN-CA'><o:p>&nbsp;</o:p></span></b></p><=
p class=3DMsoNormal style=3D'text-autospace:none'><b><span lang=3DEN-US sty=
le=3D'font-size:7.5pt;font-family:"Arial",sans-serif;color:#E33A2F;mso-fare=
ast-language:EN-CA'>SIERRA WIRELESS<o:p></o:p></span></b></p><p class=3DMso=
Normal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'font-size:=
7.5pt;font-family:"Arial",sans-serif;color:#E33A2F;mso-fareast-language:EN-=
CA'>Direct</span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"A=
rial",sans-serif;color:#656565;mso-fareast-language:EN-CA'>&nbsp; +1 604 23=
3 7989&nbsp; &nbsp;::&nbsp; </span><span lang=3DEN-US style=3D'font-size:7.=
5pt;font-family:"Arial",sans-serif;color:#E33A2F;mso-fareast-language:EN-CA=
'>Fax&nbsp; </span><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:=
"Arial",sans-serif;color:#656565;mso-fareast-language:EN-CA'>+1 604 231 110=
9&nbsp; ::&nbsp; </span><span lang=3DEN-US style=3D'font-size:7.5pt;font-fa=
mily:"Arial",sans-serif;color:#C00000;mso-fareast-language:EN-CA'>Main</spa=
n><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sans-seri=
f;mso-fareast-language:EN-CA'>&nbsp; <span style=3D'color:#656565'>+1 604 2=
31 1100</span><o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-auto=
space:none'><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial"=
,sans-serif;color:#656565;mso-fareast-language:EN-CA'>13811 Wireless Way&nb=
sp; ::&nbsp;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p><p class=3DMso=
Normal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'font-size:=
7.5pt;font-family:"Arial",sans-serif;color:#656565;mso-fareast-language:EN-=
CA'>[P2]<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:=
none'><u><span lang=3DEN-US style=3D'font-size:7.5pt;font-family:"Arial",sa=
ns-serif;color:blue;mso-fareast-language:EN-CA'><a href=3D"mailto:dwatkins@=
sierrawireless.com"><span style=3D'color:blue'>dwatkins@sierrawireless.com<=
/span></a></span></u><span lang=3DEN-US style=3D'font-size:7.5pt;font-famil=
y:"Arial",sans-serif;color:#E43B30;mso-fareast-language:EN-CA'> :: <a href=
=3D"http://www.sierrawireless.com/"><span style=3D'color:blue'>www.sierrawi=
reless.com</span></a> :: <a href=3D"http://www.inmotiontechnology.com/"><sp=
an style=3D'color:blue'>www.inmotiontechnology.com</span></a> <o:p></o:p></=
span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_8F90F944E50427428C60E12A34A309D2459F124C56carmdexchmb01_--
