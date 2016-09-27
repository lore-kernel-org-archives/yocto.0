Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C7CFE00BE7; Tue, 27 Sep 2016 02:44:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.67 listed in list.dnswl.org]
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
	(mail-db5eur01on0067.outbound.protection.outlook.com [104.47.2.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40906E00A48
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 02:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=d5e87Kz7xaSolXN2wwBqMaN9eRu0Ts69Wn0sSOXftz8=;
	b=cVMkhL3ChrsWGgbZgtwItwzwNipc06Uu6TQNrQCsY9C3fCMogfCwaYohORBmOrbIFpmhAIC/y1A1MsdtVpCi7EAsku5OZvaz2Ojtcc+hruxvjIOLd6sRCzt1P4mkraVgP9zwjf05Sjd0ozUpBJJFTklw77KKfZlTDFJsOeC82Ig=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2632.eurprd04.prod.outlook.com (10.169.225.141) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.649.6;
	Tue, 27 Sep 2016 09:44:25 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0649.008; Tue, 27 Sep 2016 09:44:26 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>, Chris Z.
	<winotu.email@gmail.com>
Thread-Topic: [yocto] fetcher failure
Thread-Index: AdIX7cTViZAReqQYSJeJl3PiSMwDqgApPimSAAOyOIAAADEGAAAANwRg
Date: Tue, 27 Sep 2016 09:44:25 +0000
Message-ID: <DB6PR0401MB2630C54A0D4A35595E2A8307EECC0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <DB23C91B06C303459B24BC3208AF424A20FA7C19@MBX214.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20FA7E3F@MBX214.d.ethz.ch>,
	<CAEjjReJMjr=dVvxhUtYB0y_SwGQvOYEEe0MTNLqufmozC=iJLA@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20FA7E8A@MBX214.d.ethz.ch>
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20FA7E8A@MBX214.d.ethz.ch>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: 9101e88a-40a4-4651-5fd4-08d3e6bade90
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2632;
	7:LBbDRj4W6G5u5/+RWjS03RYAJ5/zcvnwoYbya68bgn/B/Up/t2KPkJlwGE1w5dm1OZ/4POg8odsY7rf27eW/MGtfZkNVpo8oxjeRCF3621WsuHrTVb5IqTqUmPw4XKPGapMdtrxAK2W+LmJXxRonlhB5GQIkOLGj0xz8YRbeszy8oFyliYdMuUxgH0pcu53pZ4JvTp26ZvpXnmC7ourgJKdrPon4yVYH2Aai/OUBRbiK0g28bOsC0t9LAoHDSff6bnn70zUGTkRFoal4jspQJRK4pVRFMZfqEDeBfXGWeVOKbLv3dX0jAVcQjUFmLRkYgQsiI8QliVnCOBIgcKjyqw==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2632;
x-microsoft-antispam-prvs: <DB6PR0401MB263234ED9455862D1EE6BBAFEECC0@DB6PR0401MB2632.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(101931422205132)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0401MB2632; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2632; 
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(377454003)(199003)(189002)(15975445007)(92566002)(586003)(19625215002)(7736002)(74316002)(5660300001)(6116002)(3846002)(102836003)(790700001)(10400500002)(2906002)(2900100001)(68736007)(3660700001)(4326007)(2950100002)(66066001)(7696004)(3280700002)(33656002)(16236675004)(7846002)(87936001)(8936002)(81156014)(86362001)(93886004)(77096005)(106356001)(8676002)(81166006)(5001770100001)(19580395003)(5002640100001)(76576001)(189998001)(50986999)(9686002)(76176999)(105586002)(122556002)(97736004)(101416001)(54356999)(19300405004)(19580405001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2632;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2016 09:44:25.9419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2632
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetcher failure
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
X-List-Received-Date: Tue, 27 Sep 2016 09:44:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0401MB2630C54A0D4A35595E2A8307EECC0DB6PR0401MB2630_"

--_000_DB6PR0401MB2630C54A0D4A35595E2A8307EECC0DB6PR0401MB2630_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have submitted a patch for the fetch issue, can you please give a try? Yo=
u can use master-next branch of meta-fsl-ppc for the validation.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Anicic Damir (PSI)
Sent: Tuesday, September 27, 2016 5:34 PM
To: Chris Z. <winotu.email@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] fetcher failure

Why should I check,
the meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_4.1.bb has

SRC_URI =3D "git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2.0.x =
\
SRCREV =3D "bd51baffc04ecc73f933aee1c3a37c8b44b889a7"

If that is wrong freescale should correct it.

And besides, the downloaded file gets deleted.

But, OK, I'll try.

--_000_DB6PR0401MB2630C54A0D4A35595E2A8307EECC0DB6PR0401MB2630_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I have submitted a patch for the fetc=
h issue, can you please give a try? You can use master-next branch of meta-=
fsl-ppc for the validation.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Best Regards,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Zhenhua<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Anicic Damir (PSI)<br>
<b>Sent:</b> Tuesday, September 27, 2016 5:34 PM<br>
<b>To:</b> Chris Z. &lt;winotu.email@gmail.com&gt;<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] fetcher failure<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:black">Why shoul=
d I check,<br>
the meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_4.1.bb has<br>
<br>
SRC_URI =3D &quot;git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2=
.0.x \<br>
SRCREV =3D &quot;bd51baffc04ecc73f933aee1c3a37c8b44b889a7&quot;<br>
<br>
If that is wrong freescale should correct it.<br>
<br>
And besides, the downloaded file gets deleted.<br>
<br>
But, OK, I'll try.<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_DB6PR0401MB2630C54A0D4A35595E2A8307EECC0DB6PR0401MB2630_--
