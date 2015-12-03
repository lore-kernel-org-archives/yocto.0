Return-Path: <ikatsnelson@vmem.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3891FE00349; Thu,  3 Dec 2015 11:29:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0096.outbound.protection.outlook.com [65.55.169.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E4E5E002F9
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 11:29:15 -0800 (PST)
Received: from CO1PR05MB442.namprd05.prod.outlook.com (10.141.73.146) by
	CO1PR05MB442.namprd05.prod.outlook.com (10.141.73.146) with Microsoft
	SMTP Server (TLS) id 15.1.331.20; Thu, 3 Dec 2015 18:57:18 +0000
Received: from CO1PR05MB442.namprd05.prod.outlook.com ([169.254.13.33]) by
	CO1PR05MB442.namprd05.prod.outlook.com ([169.254.13.33]) with mapi id
	15.01.0331.023; Thu, 3 Dec 2015 18:57:18 +0000
From: Ilya Katsnelson <ikatsnelson@vmem.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build from local mirror GCC recipe
Thread-Index: AdEt/FXQvTAsZoKFRxGiSlxAnbJZRw==
Date: Thu, 3 Dec 2015 18:57:17 +0000
Message-ID: <CO1PR05MB442FC29B6FC8C16AD3F782AD70D0@CO1PR05MB442.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ikatsnelson@vmem.com; 
x-originating-ip: [207.140.105.155]
x-microsoft-exchange-diagnostics: 1; CO1PR05MB442;
	5:Jmy3efIBfldDeWU6S0WcJb3wQZZMnXVK4DYi88HFZEs5HnVKKJ7CKP4FBs/VQMskCsUIc8KRK4lNSOrfvJfTpA6SQGRVkNXjIza7tPFvwtebFgpOxbxN3uk3wZAU/sVrTS5T7kiZn1D4EH47CxPO2g==;
	24:p5mOgQYvXLQ2URRoYHHLTIGnGZM7yjW91K8KJ6LngG3LNg0uZR7ArtAxidUt8KtroeajQ9vlHNt1RBMq9QCBpbz5SmoGwLy7dv5QAaZILWE=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CO1PR05MB442;
x-microsoft-antispam-prvs: <CO1PR05MB442AE4D69358D9EBBAD7352D70D0@CO1PR05MB442.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(108003899814671);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(520078)(3002001)(10201501046);
	SRVR:CO1PR05MB442; BCL:0; PCL:0; RULEID:; SRVR:CO1PR05MB442; 
x-forefront-prvs: 077929D941
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(199003)(2900100001)(6116002)(2501003)(86362001)(3846002)(81156007)(1096002)(586003)(790700001)(97736004)(99286002)(92566002)(50986999)(66066001)(1220700001)(189998001)(54356999)(74316001)(19625215002)(5002640100001)(5003600100002)(76576001)(33656002)(5008740100001)(5001960100002)(107886002)(16236675004)(110136002)(15975445007)(101416001)(10400500002)(450100001)(105586002)(40100003)(11100500001)(5004730100002)(102836003)(87936001)(19300405004)(19580395003)(229853001)(2351001)(106356001)(122556002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CO1PR05MB442;
	H:CO1PR05MB442.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: vmem.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: vmem.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2015 18:57:17.5226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6fa3283e-bf88-4e4a-8ab2-b90d2044551b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR05MB442
Subject: Build from local mirror GCC recipe
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
X-List-Received-Date: Thu, 03 Dec 2015 19:29:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO1PR05MB442FC29B6FC8C16AD3F782AD70D0CO1PR05MB442namprd_"

--_000_CO1PR05MB442FC29B6FC8C16AD3F782AD70D0CO1PR05MB442namprd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to figure out how to convince Yocto to build gcc using my local =
GIT source rather than standard location it uses. So by default the recipe =
to build GCC located in meta/recipes-devtools/gcc/gcc-5.2.inc points to
BASEURI =3D "${GNU_MIRROR}/gcc/gcc-${PV}/gcc-${PV}.tar.bz2"
as the location of the code. I don't want to change the released Yocto code=
 and thus created my own meta layer. However, how to change that BASEURI lo=
cation in my layer? Should I create the same meta/recipes-devtools/gcc/gcc-=
5.2.inc recipe for GCC in my layer? The bitbake will use that recipe (I hop=
e) since my layer has higher priority. Or I can use the gcc_5.2.bbappend in=
 my layer and change source location there?
Thanks so much,
-Ilya.


--_000_CO1PR05MB442FC29B6FC8C16AD3F782AD70D0CO1PR05MB442namprd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&=
quot;,serif">I'm trying to figure out how to convince Yocto to build gcc us=
ing my local GIT source rather than standard location
 it uses. So by default the recipe to build GCC located in </span><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">meta/recipes-de=
vtools/gcc/gcc-5.2.inc</span><span style=3D"font-size:12.0pt;font-family:&q=
uot;Times New Roman&quot;,serif"> points to
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">BASEURI =3D &quot;${GNU_MIRROR}/gcc/gcc-${PV}/gcc-${PV}.ta=
r.bz2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&=
quot;,serif">as the location of the code. I don't want to change the releas=
ed Yocto code and thus created my own meta layer.
 However, how to change that </span><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Courier New&quot;">BASEURI</span><span style=3D"font-size:12.0pt=
;font-family:&quot;Times New Roman&quot;,serif"> location in my layer? Shou=
ld I create the same
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>meta/recipes-devtools/gcc/gcc-5.2.inc</span><span style=3D"font-size:12.0p=
t;font-family:&quot;Times New Roman&quot;,serif"> recipe for GCC in my laye=
r? The
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>bitbake</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New =
Roman&quot;,serif"> will use that recipe (I hope) since my layer has higher=
 priority. Or I can use the
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>gcc_5.2.bbappend</span><span style=3D"font-size:12.0pt;font-family:&quot;T=
imes New Roman&quot;,serif"> in my layer and change source location there?<=
o:p></o:p></span></p>
<p class=3D"MsoNormal">Thanks so much,<o:p></o:p></p>
<p class=3D"MsoNormal">-Ilya.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO1PR05MB442FC29B6FC8C16AD3F782AD70D0CO1PR05MB442namprd_--
