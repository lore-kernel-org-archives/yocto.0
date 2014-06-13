Return-Path: <francois.p.gallichand@ca.abb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F1D0E00AFD; Fri, 13 Jun 2014 07:12:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.199.154.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 885 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Jun 2014 07:12:46 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3lp0082.outbound.protection.outlook.com [213.199.154.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7319EE0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 07:12:46 -0700 (PDT)
Received: from AM3PR06MB195.eurprd06.prod.outlook.com (10.242.244.145) by
	AM3PR06MB196.eurprd06.prod.outlook.com (10.242.244.147) with Microsoft
	SMTP Server (TLS) id 15.0.954.9; Fri, 13 Jun 2014 13:57:58 +0000
Received: from AM3PR06MB195.eurprd06.prod.outlook.com ([169.254.3.14]) by
	AM3PR06MB195.eurprd06.prod.outlook.com ([169.254.3.14]) with mapi id
	15.00.0954.000; Fri, 13 Jun 2014 13:57:58 +0000
From: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding files to the hddimg
Thread-Index: Ac+HDyg4D0UyDiGwSqOwoU+fegyOnA==
Date: Fri, 13 Jun 2014 13:57:57 +0000
Message-ID: <d57f9ee937d1459388fbd840265567ea@AM3PR06MB195.eurprd06.prod.outlook.com>
Accept-Language: fr-CA, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [207.164.32.132]
x-microsoft-antispam: BL:0; ACTION:Default; RISK:Low; SCL:0; SPMLVL:NotSpam;
	PCL:0; RULEID:
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(428001)(164054003)(189002)(199002)(17760045003)(19625215002)(86362001)(101416001)(16236675004)(76576001)(92566001)(21056001)(76482001)(46102001)(20776003)(77982001)(80022001)(64706001)(15202345003)(15975445006)(81342001)(81542001)(99396002)(33646001)(18206015023)(83072002)(99936001)(50986999)(83322001)(74316001)(87936001)(66066001)(85852003)(79102001)(54356999)(74662001)(31966008)(19580395003)(2656002)(4396001)(19300405004)(19580405001)(74502001)(105586001)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:AM3PR06MB196;
	H:AM3PR06MB195.eurprd06.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: ca.abb.com does not designate permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=francois.p.gallichand@ca.abb.com; 
MIME-Version: 1.0
X-OriginatorOrg: ca.abb.com
Subject: Adding files to the hddimg
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
X-List-Received-Date: Fri, 13 Jun 2014 14:12:51 -0000
X-Groupsio-MsgNum: 20150
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_";
	type="multipart/alternative"

--_004_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_
Content-Type: multipart/alternative;
	boundary="_000_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_"

--_000_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm relatively new to yocto and this is maybe something that is pretty basi=
c but how can I add my own files in the bootimg (.hddimg) using a custom re=
cipes? And I really means the boot image file, not the rootfs image.

Thanks,

Fran=E7ois Gallichand
Engineer - Software Group
ABB Group
Analytical Business
(418)877-2944 x268

[ABB logo]


--_000_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Helv;
	panose-1:2 11 6 4 2 2 2 3 2 4;}
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
	font-family:"Calibri","sans-serif";}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m relatively new to yocto and this is maybe =
something that is pretty basic but how can I add my own files in the bootim=
g (.hddimg) using a custom recipes? And I really means the boot image file,=
 not the rootfs image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;He=
lv&quot;,&quot;sans-serif&quot;;color:black">Fran=E7ois Gallichand<br>
Engineer - Software Group<br>
ABB Group<br>
Analytical Business<br>
(418)877-2944 x268<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;He=
lv&quot;,&quot;sans-serif&quot;;color:black"><br>
</span><img width=3D"208" height=3D"68" id=3D"Picture_x0020_1" src=3D"cid:i=
mage001.png@01CF86ED.F2DE74B0" alt=3D"ABB logo"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_--

--_004_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=3279;
	creation-date="Fri, 13 Jun 2014 13:57:57 GMT";
	modification-date="Fri, 13 Jun 2014 13:57:57 GMT"
Content-ID: <image001.png@01CF86ED.F2DE74B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAANAAAABECAMAAAGwinuFAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAE7UExURf////3v8f4AEfqvtv8ABv4QIPtgbfxATvmPmPvf4vyfp/5gaf8AAP8gKP2P
lv5QWf8QFv8wOPzP1P1/h/y/xP9ASP5wefyvtfufp/1QWfuPlv4wOP/+/vxwefu/xPuvtf1gaf8A
Bf8ABP8AA/8ACP8iJfzAxP8AAf8gIf8rLv/5+v8HB/5dZ/8oHvyqsv8YFPvc4f8BAP8yOv719v8O
APyttP9IUP729/8hEf8DAP2nqv76+/9tZ//39/9AQv7c3//9/v8PCP9WW/ze4P8OBf6Agv3r7P8N
Av8wKv6cnP729v8HAP8VCv8zLf90cv3W1/8CB/8FC/8HD/8KEP8ND/8OBv8QBP8SBv8ZDv8oIP9A
Of9cWv6Slf7e4P8XHf8kK/82Pv5TXP5ud/12fPyLjfuwsPvR0/zx8wAAANrS/s0AAABpdFJOU///
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////AKA3ZhoAAAAJcEhZ
cwAADsMAAA7DAcdvqGQAAAqoSURBVFhH5VnPj9bIEQWjCQM4SMAq2j3AeQ4cOMwOElJA4rDaRDly
ymUQ2ez+//9B6r1XVV3Vn+35hsse8qbcP+pVVVe3PXbb3wPDsixeXbBcnqBLLOuKzgpYuazLWxGg
ltUqp6zHLiAVatOSCsY61ntFygY1Yl2eO2VtulF5YU2rxaAlCkAExBWlcS5EPQKdXqythO5KBiQA
TRlzZfXAwwHSmQ9qyzyGQiwNhwRfKbII6Dh9eKEq1O/m5BR0duRqIA6i04sD0RLgPKijNyiP+Iz5
yJYWEFGqLG1SSt7jCabngOrACoqn6KDNUuSARaKdejZLOa122lB5imID701Pu5/ZhRnBzGHvZQPC
4MR6MJxkuNBK5iP3ANQ0M7CfPeuqYvmQ1sKlO3EWN6bwHiRmo57sCc9GRpqGmtApgk9T9oANsFyq
+RIWHElGMDMNTpU6HbggY6q4RtH1pRQ+stPwHHksmI8B+YzTqTRtuLoMBMbO8ZHbSCicgh2AKtWw
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

--_004_d57f9ee937d1459388fbd840265567eaAM3PR06MB195eurprd06pro_--
