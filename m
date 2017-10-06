Return-Path: <hernan_gutierrez@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E4B3E00DAB; Fri,  6 Oct 2017 15:24:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0118.outbound.protection.outlook.com [104.47.41.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16435E00D8F
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 15:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HP.onmicrosoft.com;
	s=selector1-hp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=cXvFCsSqZgCx9nSg+7IyF4YAd2WlxMmVex5y/v2fWe8=;
	b=nA6hweK03OhFEsg6DK812Iz8uJ+n3vT7JxXhjjXRcSC+/BYbrfe5l+wbq2jgy8CDUqfR/SQJfd0kOZ3ZW28uqytyDZGjUmMqTxX/O2ph3+dVi3IQIzAoz5Td6lIoZ1MnkwUPz7uMaJr4mcUAk5hHIFQzLO3iwaTPyYI1E4TnrNc=
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.144) by
	TU4PR8401MB1039.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 22:08:21 +0000
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b]) by
	TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b%18]) with mapi id 15.20.0077.018;
	Fri, 6 Oct 2017 22:08:21 +0000
From: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Framework to implement mirroring in Yocto
Thread-Index: AdM+7wrq668l3RP2Tgy9SynVCSH3KQ==
Date: Fri, 6 Oct 2017 22:08:21 +0000
Message-ID: <TU4PR8401MB1040AD278D9EA3A0B1A82E7599710@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hernan_gutierrez@hp.com; 
x-originating-ip: [15.65.244.15]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR8401MB1039;
	6:XXh0Zobir+KLre+5cCHVT61NnPp27DpO4qFc9mRKAl82ZYxnbi3OwBgEaUJpEPkeMIaG+k4Ymzr6eerqJBqlSjbk4XdZ1A9abKNXuap6bgXUW8VD1/lpRfxqZxfkN570KOnuKJkbHmxziMb6Dd8eq1NhWjgmrcJtDjRFVe0oAKwX+KaU7pHEabtNcjT6sweKLEeN2yGoTYoQzJS0PlG5dS1w2LBrnXa1L9/PCc0MAcf7ICRVagwQSQaMh6aHwRrVueXaSpL41Cx/DkZHETL1eoKZTVdYFZJZrMyW25wk1zrbQZ9hIsVwhVx9GqMbkcpR8drhf549cXErra8A94KUPw==;
	5:SA7gT2+utLaNLkibOukJMZ68CLDveUTEV/r36xa5qUX4RSqOYzLHRVZmLuUscJoAmh1x0ZkvYKyZhvH891YKSEtqMj+jHgPzM2ImwKjMigx7b0vVkL8MKpeHjYEjbtMcfwvBROnbeFEDp511KIMGyA==;
	24:UbyVPjeZx/szdOIEt1KZdY8owxE0IPgCXabD7ZSUdpTX8PwoFD3A9oPf7K86xRWqbZbFMQX/Q14nivMp4s60R1da+N5g72KXKVkiN2CE2v4=;
	7:lR4v3sIZeckK9FVibudWBvyYp32yAwFKf+MY3/rafk5QUb5k1uu5/lQzAAlxzXdSHsib46rTU4VtbBN55rZWWlwVV/9k8oLXCQB0drA19psv1wkMuF6I+lNpkk+QgvzT7R++11OzyBHgaywOxYoKPm9r+rtal0H1wX+0Fp3fAG7vaaW0nbnFZK/xxb5m0JkOIhgk20nvqe5WtvvbOuVZZrt3abQfvciqf1h9sy3fVeQ=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 7da37c4c-7f6f-451a-941d-08d50d06c196
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:TU4PR8401MB1039; 
x-ms-traffictypediagnostic: TU4PR8401MB1039:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <TU4PR8401MB10390498526F8F4447B293BF99710@TU4PR8401MB1039.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(10201501046)(3002001)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123558100)(20161123562025)(20161123564025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR8401MB1039; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR8401MB1039; 
x-forefront-prvs: 0452022BE1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(199003)(189002)(6602003)(14454004)(316002)(3280700002)(6506006)(7736002)(74316002)(54896002)(2906002)(66066001)(6436002)(2501003)(9326002)(86362001)(478600001)(5630700001)(68736007)(102836003)(3846002)(6116002)(189998001)(25786009)(9686003)(81156014)(54356999)(8676002)(790700001)(33656002)(50986999)(5660300001)(5640700003)(53936002)(97736004)(1730700003)(5250100002)(55016002)(2900100001)(6306002)(81166006)(101416001)(106356001)(6916009)(105586002)(7696004)(2351001)(8936002)(3660700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB1039;
	H:TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2017 22:08:21.1160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1039
Subject: Framework to implement mirroring in Yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 22:24:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB1040AD278D9EA3A0B1A82E7599710TU4PR8401MB1040_"

--_000_TU4PR8401MB1040AD278D9EA3A0B1A82E7599710TU4PR8401MB1040_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are planning to implement a mirror for both source code downloaded and s=
scache in our work environment.

We are planning to use Nexus and Nuget to allow storage and versioning cont=
rol. We don't know if these are the right tools.

Since we are about to embark in this project, before starting I wanted to k=
now if you have some pointers on how can be implemented a mirroring framewo=
rk for yocto.

Not sure if there are some common tools (other tools) with which yocto inte=
grates nicely.

Any pointers will be appreciated,

--Hernan

PS> We are in morty branch currently.

--_000_TU4PR8401MB1040AD278D9EA3A0B1A82E7599710TU4PR8401MB1040_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are planning to implement a mirror for both sourc=
e code downloaded and sscache in our work environment.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are planning to use Nexus and Nuget to allow stor=
age and versioning control. We don&#8217;t know if these are the right tool=
s.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Since we are about to embark in this project, before=
 starting I wanted to know if you have some pointers on how can be implemen=
ted a mirroring framework for yocto.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Not sure if there are some common tools (other tools=
) with which yocto integrates nicely.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any pointers will be appreciated,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;,s=
erif">--Hernan<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;,s=
erif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;,s=
erif">PS&gt; We are in morty branch currently.<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_TU4PR8401MB1040AD278D9EA3A0B1A82E7599710TU4PR8401MB1040_--
