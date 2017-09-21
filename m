Return-Path: <SRamachandran@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66158E00CF7; Thu, 21 Sep 2017 20:08:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3585 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Sep 2017 20:08:58 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0132.outbound.protection.outlook.com [104.47.41.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4602EE00CEF
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 20:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agjunction.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Ivz4Xe3/+XfxVWr7HieE7hHpnmw09KKK5IQnevpaDwA=;
	b=rOz78/oamd8FCCAXV8RbdwQE6BekR6RmvEXJDxoEoScS2gDPEfvB/yulq2bxxht6J0FwijKMqhonc0D2iG7ZMB5JssEfzKhwDNkec7MIrnOpWUGhRCGZZvZGOM3YikwDcqFO0Pw6Wrp1HOgeCBzkkU2G7hvWiHSIN41ZnshxdNU=
Received: from CY1PR02MB1366.namprd02.prod.outlook.com (10.161.171.14) by
	CY1PR02MB1367.namprd02.prod.outlook.com (10.161.171.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 21 Sep 2017 22:11:44 +0000
Received: from CY1PR02MB1366.namprd02.prod.outlook.com ([10.161.171.14]) by
	CY1PR02MB1366.namprd02.prod.outlook.com ([10.161.171.14]) with mapi id
	15.20.0077.011; Thu, 21 Sep 2017 22:11:44 +0000
From: Subramanian Ramachandran <SRamachandran@agjunction.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SocketCan support for Yocto
Thread-Index: AdMzJlX6ceCXsNhfTOG2ls/mo3YuCQ==
Date: Thu, 21 Sep 2017 22:11:44 +0000
Message-ID: <CY1PR02MB1366D1C65069C89E2BF73050CC660@CY1PR02MB1366.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=SRamachandran@agjunction.com; 
x-originating-ip: [208.93.130.209]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR02MB1367;
	6:aTRYgcGG5BlBW95eHyGoVFfwXBS0yQzcI8g/VKff94qX2oigX/UV/X9v39rovumxs3ZirqbMtv8TbmdXKq8hSojq7WRTxoUON7EzZs5m8oGm6ytMOtDbucF1PUtb3aGwU9kLqcY27eGbqcw0fiO2xCXOLvsZqfDRB+GWvHat4+TXyYqdkTVJKFDLeaBBi32NQXKSoq+lO2cR3TiPU0SJ4o0IHtbLyXNnzGnYwO8j79IjR+5gRtbp+i9y+W4MMnnIB8ciXWwONLiQllTNn3KkFiLLQdAHK0Xn6YaaqjVx1slxD2Co1aBaFT/3TWclJwfs77fFv3m5Qe8wnb6BX6E6JA==;
	5:SZpf0zSkIxzwaM4NmkMyFja84wwCi1Csv6nUva2kaphh1JSEAvLFcV4DHu2/0PGD0gYhTBSMwcMKyp+10nUY74hFM2xd2NvBlTp0noVseHfs9Cyms2u2hZ6boCQ1HaFRmAISjLcWudz6s2+lDSyNMQ==;
	24:eLSeDpeHbcTAxKhssWtoqM5jX8ywUoXQqrxcWtK5sVKYWBDSnCU95LiLosHZWn+2nl+9n1icEB7elyEeloUyXCsJg+Z/OXPtHwzA5U0fl5g=;
	7:bU1h1OLcLd9QSCVeG0jemz783kqoJue1s5ABEqvnBkKQxt5682TG+EUknfKJVbuLnmQhHDO3rvbsEeNVcvLHG53OvC1ZqwV/U0bldiAPnhyftwzlmnYCtD/zdAj4JmQC76Qyf0Am+XuAUMqqPJi7muklJRB4n3B0rHkvRy4oQ0rNo921u9eB7Lo3jZ3Z4xo/iGJjHWLKL6sb5iqA8WWEUVx1a7XLOSGJ9R/0TNcl5g0=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: a2a86377-dbca-4746-156b-08d5013dbe8f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:CY1PR02MB1367; 
X-MS-TrafficTypeDiagnostic: CY1PR02MB1367:|CY1PR02MB1367:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <CY1PR02MB1367A58106380807BDD5B045CC660@CY1PR02MB1367.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123560025)(20161123558100)(20161123562025)(20161123564025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY1PR02MB1367; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY1PR02MB1367; 
x-forefront-prvs: 04371797A5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(39830400002)(57704003)(189002)(199003)(8936002)(25786009)(3846002)(790700001)(189998001)(1730700003)(81166006)(81156014)(2351001)(2501003)(2900100001)(5630700001)(3660700001)(316002)(3480700004)(6916009)(102836003)(66066001)(6116002)(8676002)(5640700003)(50986999)(53936002)(86362001)(54356999)(68736007)(5660300001)(7736002)(3280700002)(54896002)(7696004)(14454004)(74316002)(2906002)(6306002)(72206003)(106356001)(105586002)(80792005)(99286003)(6506006)(101416001)(77096006)(6436002)(33656002)(478600001)(97736004)(55016002)(9686003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR02MB1367;
	H:CY1PR02MB1366.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: agjunction.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2017 22:11:44.2599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR02MB1367
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1367;
	23:SeY73hsEXrMnLmGBaP2RDL+rZA/eS1mYJmqoipuQ9Ynhcwm2hiZisCqCZM3VuG3FuMnxiViAj3n6eopTRWd6+mJ9ddKZsNiP5MCLoXLkV+mH0SQXK7DqqTYR0X1VZHjMv4PzfcEnvAIswnEEQW4U0Q==
X-OriginatorOrg: agjunction.com
X-Mailman-Approved-At: Wed, 27 Sep 2017 08:04:27 -0700
Subject: SocketCan support for Yocto
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
X-List-Received-Date: Fri, 22 Sep 2017 03:08:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR02MB1366D1C65069C89E2BF73050CC660CY1PR02MB1366namp_"

--_000_CY1PR02MB1366D1C65069C89E2BF73050CC660CY1PR02MB1366namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yocto Team,

I am using a custom Yocto linux distribution for my project and am interest=
ed in implementing socket can support for it.

I understand that socketcan is a kernel feature and needs to be included at=
 build time while using the bitbake/toaster toolset.

The default yocto distribution of Krogoth I used does not contain socketcan=
 by default. What flag do I need to enable to add socketcan support in the =
kernel? What is the variable I need to use in the bitbake/toaster environme=
nt to do this?  - I have already tried adding libsocketcan and can-utils to=
 the image install append variable in toaster and it has not helped to inco=
rporate socket can support.

Please advise.

Thanks,

Subbu



Disclaimer: This message (and any other messages in this email thread) cont=
ains information that may be privileged or confidential and is the property=
 of AgJunction Inc and its subsidiaries. It is intended for the person to w=
hom it is addressed. If you are not the intended recipient, you are not aut=
horized to read, print, retain, copy, disseminate, distribute, or use this =
message or any part thereof. If you receive this message in error, please n=
otify the sender immediately and delete all copies of this message.

--_000_CY1PR02MB1366D1C65069C89E2BF73050CC660CY1PR02MB1366namp_
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Yocto Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using a custom Yocto linux distribution for my =
project and am interested in implementing socket can support for it.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I understand that socketcan is a kernel feature and =
needs to be included at build time while using the bitbake/toaster toolset.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The default yocto distribution of Krogoth I used doe=
s not contain socketcan by default. What flag do I need to enable to add so=
cketcan support in the kernel? What is the variable I need to use in the bi=
tbake/toaster environment to do this?
 &nbsp;- I have already tried adding libsocketcan and can-utils to the imag=
e install append variable in toaster and it has not helped to incorporate s=
ocket can support.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please advise.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Subbu<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div style=3D"font-size:9pt;  font-family: 'Calibri',sans-serif;"><br>
<br>
Disclaimer: This message (and any other messages in this email thread) cont=
ains information that may be privileged or confidential and is the property=
 of AgJunction Inc and its subsidiaries. It is intended for the person to w=
hom it is addressed. If you are
 not the intended recipient, you are not authorized to read, print, retain,=
 copy, disseminate, distribute, or use this message or any part thereof. If=
 you receive this message in error, please notify the sender immediately an=
d delete all copies of this message.
</div>
</body>
</html>

--_000_CY1PR02MB1366D1C65069C89E2BF73050CC660CY1PR02MB1366namp_--
