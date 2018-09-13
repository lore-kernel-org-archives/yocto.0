Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7B40E006C7; Thu, 13 Sep 2018 02:39:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0BF2E0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=rZs5HdHu8Ey2mpv+hIrIislZOI0PEpjC7aH/fMt4g0w=;
	b=BpzB8N7T1vM1kD4F5vXqyOYfFA4hHDgXUl0sNFJBo8QpyBlgwPydjNHf/filKWHYbrdjvUtMSoyi/8TCU7GcoWhq5Fm9mJhrCI9beuzCz32N6e+oUo6nBwm8NvNdRRHGQlPc6SiAfTPR2o5nViiMxflwRuRV9KKJJddfqmEAvOg=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB4350.eurprd01.prod.exchangelabs.com (20.177.53.160) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.17; Thu, 13 Sep 2018 09:25:38 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Thu, 13 Sep 2018 09:25:38 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: inheriting native.bbclass explicitly  -- more details
Thread-Index: AdRLQvnp+x0wjd6/ROWqiLaTPkBSbQ==
Date: Thu, 13 Sep 2018 09:25:38 +0000
Message-ID: <VI1PR01MB1070ABD06319006A33DF0871E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB4350;
	6:zdcolpE8sw9DdFEEuLB1go5SAImXISVgU9fPp2hzAhhkjkFLI/f7uNV4a8UfSji+Mh55vL4l7vfwOxKJZq+5mKBJKCgp8kI1Es7ZeCYMvqQSqEwiZ41G68jpsz9ELjX7fhCNrFUGO+EdJKNPGd2E9SUaeg50bCGIx1P8MV2/9GpSTGz52eFoyWTgWqjWvHiYZtEUkMiptAROAQW4dK8ZDjpdC24sQyFa2XsO1E2+PQ+oNKLnQa4kJdxfwPN8F7fJmLKRSEuP78uV71DPz43BI0jqcsdCbJM04aHbHMkoISunu/NAArBhvMfLZaetiVcLFV4oTzw3kts7KCeRYVSYuzFhfpHUniST7CAIP9cSvLanW7byrAMdd+BwMtEJG4yYOE9MwcTJ3WbgDId572GaDtrJzKs6kfQMeorz9n/RjHwQkCeZL4Cj/NBv9maf2m4sReE0fnzL0d8TrDouPUYI1A==;
	5:vJVb49mFSD7X9lXIN6NXtqu/9+6uo+s3gSmA4SoKj59GRIu/mMhVqOu0ucDO6QGWB6V0LI8VzJ32cEjCB8De4j4aQFMc9e6RG+ezTZM6tcYHobHh2zIHwUAIcmJSi0z9/ZVZYGhmDXVzeGa43x5qRvVioIhYkpFh8CJWUtInXLE=;
	7:EqkhE7naQG547jZTTKYJU2fkvCADE7i/S31iN3QExzZD+FrilQsBa0B1pz5wX6iAWnoF0sdXJZUm+nCn7U64zYI6Ny/3zAS2dLdhklC/lYNdUKxJooUNfXMl+AX15qVOiPKt0P8w34BDqtEhgHBDN/U1mW4AxohjPqQKZ600z+H3bG7bLlgPrSJwrl+BLzV+coPjqiU+cMid2qCQFNLzfdSqGjyRm2+L20768oGHTq65u/2KSkRgl4r+3mRm4Fzp
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 6550a93b-c4c0-4752-c16d-08d6195ade56
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB4350; 
x-ms-traffictypediagnostic: VI1PR01MB4350:
x-microsoft-antispam-prvs: <VI1PR01MB4350A11B777801780DF6E521E01A0@VI1PR01MB4350.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(103651359005742)(21748063052155); 
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(3231344)(944501410)(52105095)(93006095)(93001095)(10201501046)(149027)(150027)(6041310)(20161123558120)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(201708071742011)(7699050)(76991041);
	SRVR:VI1PR01MB4350; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB4350; 
x-forefront-prvs: 07943272E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(366004)(376002)(346002)(39860400002)(136003)(189003)(199004)(8936002)(81156014)(68736007)(1730700003)(106356001)(14454004)(2351001)(66066001)(105586002)(486006)(5250100002)(6436002)(2501003)(476003)(97736004)(2906002)(5630700001)(2900100001)(478600001)(81166006)(33656002)(316002)(72206003)(256004)(6116002)(5640700003)(53936002)(6916009)(790700001)(3846002)(14444005)(8676002)(5024004)(54896002)(55016002)(9686003)(99286004)(25786009)(6306002)(26005)(74316002)(102836004)(6346003)(7736002)(6506007)(186003)(86362001)(7696005)(5660300001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB4350;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-microsoft-antispam-message-info: cbNaQnCUlLXxjMtN9NICSuz5Msfx71lMrGbMyXrnIjdJ15D+kSQV5WU2+z69s4nfClcwtdeeRLT9+ZaB58H7eQPn+V9r/SG74MocdvIcqbmO/aQIHLyNi1E/aSQRGc3U+p/RgHcAV15m1dnlzyFQmMLvaO/PCN8iB9OV/T3E3wZO/MSKKrX+m31HsiLaW1SO8G+xRTf0HydurZLHHH2vY4snhnHPQZYAKF5PSHbtCty8594XUq5i8Kg3gSPzUdLNn817e9XwClzN8C5fZmDBotL35ZAEl4I1hd+zk8ufPwGgeAeggigarTh/8wgruQIrXQ7kB/DwJFFKVecd2M0i4Xz3mJF2+yWmkL7RzwC85dQ=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6550a93b-c4c0-4752-c16d-08d6195ade56
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2018 09:25:38.6388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4350
Subject: inheriting native.bbclass explicitly -- more details
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
X-List-Received-Date: Thu, 13 Sep 2018 09:39:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB1070ABD06319006A33DF0871E01A0VI1PR01MB1070eurp_"

--_000_VI1PR01MB1070ABD06319006A33DF0871E01A0VI1PR01MB1070eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

autconf-archive's recipe as for OE-core layer builts also native package
in BBCLASSEXTEND-based fashion.
I like for system built here to change the approach to explicit-class-inher=
itance fashion in .bbappend in own layer.
Will it suffice to ensure native.bbclass is explicitly inherited as last cl=
ass in .bbappend?

________________________________
This message and any attachments are intended solely for the addressees and=
 may contain confidential information. Any unauthorized use or disclosure, =
either whole or partial, is prohibited.
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.

--_000_VI1PR01MB1070ABD06319006A33DF0871E01A0VI1PR01MB1070eurp_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal">autconf-archive&#8217;s recipe as for OE-core layer =
builts also native package<o:p></o:p></p>
<p class=3D"MsoNormal">in BBCLASSEXTEND-based fashion.<o:p></o:p></p>
<p class=3D"MsoNormal">I like for system built here to change the approach =
to explicit-class-inheritance fashion in .bbappend in own layer.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Will it suffice to ensure native.bbclass is explicit=
ly inherited as last class in .bbappend?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<hr>
<span lang=3D"EN-US" style=3D"font-style:italic;font-size:10.0pt;font-famil=
y:=0A=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:maroon;mso-ansi-language:EN-=
US">This message and any attachments are intended solely for the addressees=
 and may contain confidential information. Any unauthorized
 use or disclosure, either whole or partial, is prohibited.<br>
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.<br>
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.</span>
</body>
</html>

--_000_VI1PR01MB1070ABD06319006A33DF0871E01A0VI1PR01MB1070eurp_--
