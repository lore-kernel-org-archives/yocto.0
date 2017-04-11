Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E389EE00AF0; Tue, 11 Apr 2017 03:32:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0116.outbound.protection.outlook.com [104.47.34.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93FE9E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 03:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=8ONyFRd02V8ItTVcljJMwyaTXbp6s59z4WHWOTGPlds=;
	b=lET0VFqI0AHe4HC7D5Mb9RzmDSv7LoxPxQSYIbg+UvqRYEUIPXpK43PvUrLlkGvB4M5n90FYGwlrQKxDp3XcgigagHg6GGU54PwcS3LjtZgJo0+2Z6CaiNTOqO7kBZpizsr3d9h0ml8P0QHWeAqa3ik0UijJapaQ7udgLaIwxoE=
Received: from CY4PR07MB3429.namprd07.prod.outlook.com (10.165.89.156) by
	CY4PR07MB3430.namprd07.prod.outlook.com (10.165.89.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Tue, 11 Apr 2017 07:57:57 +0000
Received: from CY4PR07MB3429.namprd07.prod.outlook.com ([10.165.89.156]) by
	CY4PR07MB3429.namprd07.prod.outlook.com ([10.165.89.156]) with mapi id
	15.01.1019.025; Tue, 11 Apr 2017 07:57:57 +0000
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Sub-directories from Git in SRC-URI
Thread-Index: AdKyi+6CZGeMF7dnRvSNMfKHmDj6BgADEHXA
Date: Tue, 11 Apr 2017 07:57:57 +0000
Message-ID: <CY4PR07MB3429F7E461F3DA2C5DD111E696000@CY4PR07MB3429.namprd07.prod.outlook.com>
References: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
In-Reply-To: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: de.bosch.com; dkim=none (message not signed)
	header.d=none; de.bosch.com;
	dmarc=none action=none header.from=Honeywell.com; 
x-originating-ip: [199.64.75.71]
x-microsoft-exchange-diagnostics: 1; CY4PR07MB3430;
	7:ItXw6dNuJvyTkdcu0IQn27wbIu1FJfgIfQ1DpikjR6hWtwtdV9T4Nv7hGHP8XnznvnsYC5SD3bfbJZgAbM31y8yaE87YELsF8dKAq114AXH9Z9Iy9CfPFgBjymg4M9CVkfJnoMPnuetFHIZ4PEje+XtuqIGkpVKrKvAhVvDNJxQDk6KH4Ip1w4jTimzyJowhA+gtfU6eXgGCwqA4F1gbhasWdzALpU8C0CLbV9ts3fRqddDlhdVf/JzpfZOXLBesCWrTA9s/SmPaIosfaE5MtkVqm0T0zd1X3EMBHCZLm7bExrxu6SvG88cM1LAS4hI+0JEgv/tbkf2PueZGTn8Mcg==;
	20:D8Ubjwq455TeaB8yb/HhAFnKs9g8l7cyK9GDZcef+7DGUT+kSXmiB/j457kOywm5+7gbz85XcXuKxAeBLGKldWrDimidQd8bOfCGYfc3KW342RfKXGzCh47oHoqMAIhy9P67asxFVUl7lB0GGsehCHCsD/Dp7ZMA/jI+/EjSMhMxS84OMISnIo4OhzyeQuDNnyY7/uZvDRZ/4xQNBuZ43E8ne1KqrpVhgufWnNbynZYOejGUhpzuqpIfq+HCkeKE
x-ms-office365-filtering-correlation-id: 112b8b23-aba8-45cf-0fd5-08d480b077b9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CY4PR07MB3430; 
x-recptdomain: NotTLSDomain
x-atp-bypass: TRUE
x-microsoft-antispam-prvs: <CY4PR07MB3430932051E77255F818A68196000@CY4PR07MB3430.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(6072148);
	SRVR:CY4PR07MB3430; BCL:0; PCL:0; RULEID:; SRVR:CY4PR07MB3430; 
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39450400003)(39410400002)(39850400002)(39860400002)(39840400002)(39400400002)(54896002)(6306002)(33656002)(229853002)(6246003)(2906002)(99286003)(66066001)(55016002)(6506006)(6436002)(7696004)(122556002)(2501003)(53936002)(25786009)(189998001)(3660700001)(2950100002)(5660300001)(6116002)(38730400002)(790700001)(3846002)(2900100001)(74316002)(9326002)(102836003)(76176999)(8676002)(81166006)(8936002)(77096006)(50986999)(54356999)(3280700002)(86362001)(7736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR07MB3430;
	H:CY4PR07MB3429.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2017 07:57:57.6448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR07MB3430
Subject: Re: Sub-directories from Git in SRC-URI
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
X-List-Received-Date: Tue, 11 Apr 2017 10:32:32 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_CY4PR07MB3429F7E461F3DA2C5DD111E696000CY4PR07MB3429namp_"

--_000_CY4PR07MB3429F7E461F3DA2C5DD111E696000CY4PR07MB3429namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Here is one way to manage this use case.
In the SRC_URI variable, you set the git repo access.
Now let's say that your sub-directory relative path is "src/myapp".
Son now you just have to add to your recipe this line:

S =3D "${WORKDIR}/git/src/myapp"

It is not optimized from a disk usage point of view (a full copy of the rep=
o files is in ${WORKDIR}/git) but it works.

Regards,

Jo=EBl Esponde
Honeywell | Safety and Productivity Solutions

De : yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 De la part de Eswaran Vinothkumar (BEG/PJ-IOT-EL)
Envoy=E9 : mardi 11 avril 2017 08:25
=C0 : yocto@yoctoproject.org
Objet : [yocto] Sub-directories from Git in SRC-URI

Hallo,

May I now is it possible to include a sub-directory from git repo in the SR=
C_URI of bitbake recipe.

Also in SRC_URI is it possible to include a directory instead of a single f=
ile?

I know I could create a tar file of a directory and include it , but I woul=
d like to know is it possible to include directory as a SRC_URI.


Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1


--_000_CY4PR07MB3429F7E461F3DA2C5DD111E696000CY4PR07MB3429namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{mso-style-type:personal;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#400000;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#400000">Hi,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Here is one way to man=
age this use case.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">In the SRC_URI variabl=
e, you set the git repo access.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Now let&#8217;s say th=
at your sub-directory relative path is &#8220;src/myapp&#8221;.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Son now you just have =
to add to your recipe this line:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:Consolas">S =3D &quot;${WORKDIR}/git/src/myapp&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">It is not optimized fr=
om a disk usage point of view (a full copy of the repo files is in
</span><span style=3D"font-size:10.0pt;font-family:Consolas">${WORKDIR}/git=
)</span><span style=3D"color:#400000"> but it works.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">Honeywell</span></b><span style=3D"fo=
nt-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#707070"> | Sa=
fety and Productivity Solutions<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"FR">De&nbsp;:</span></b><span lang=
=3D"FR"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org]
<b>De la part de</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL)<br>
<b>Envoy=E9&nbsp;:</b> mardi 11 avril 2017 08:25<br>
<b>=C0&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet&nbsp;:</b> [yocto] Sub-directories from Git in SRC-URI<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Hallo,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">May I now is it possible to include a sub-directory f=
rom git repo in the SRC_URI of bitbake recipe.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Also in SRC_URI is it possible to include a directory=
 instead of a single file?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I know I could create a tar file of a directory and i=
nclude it , but I would like to know is it possible to include directory as=
 a SRC_URI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"DE" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Mit freundlichen Gr=FC=DFen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b><br>
<br>
</span><span lang=3D"DE"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CY4PR07MB3429F7E461F3DA2C5DD111E696000CY4PR07MB3429namp_--
