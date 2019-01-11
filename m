Return-Path: <a.spin@datawatt.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44104E00CE4; Fri, 11 Jan 2019 17:57:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.8.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 2017 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Jan 2019 17:57:24 PST
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80054.outbound.protection.outlook.com [40.107.8.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6464CE009EB
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 17:57:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=datawatt.onmicrosoft.com; s=selector1-datawatt-nl;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=+KWEgEO02tmxibiaQXtfvlMfOYtWBYTMZdBRmIuxbNc=;
	b=h7TJ0zlAi4Rqn/Bl0ZaNh1G2i1AKBxtj1QkiOARxPGDQGigyH4xkedbNXyL7iG1KiiqYmFm3FxKVkxgHH6rp3MU7dE0ff9PwLLlzCoyrXy913YbZ+Qbp28ksl+ebGIz4TYcip5PLRaBW1YoIJtrYvQDPxWAi2ZIT00QPjDSBv5Q=
Received: from DB5PR01MB0952.eurprd01.prod.exchangelabs.com
	(2a01:111:e400:5107::22) by
	DB5PR01MB0952.eurprd01.prod.exchangelabs.com
	(2a01:111:e400:5107::22) with TransportReplication id Version 15.20
	(Build 1516.18); Sat, 12 Jan 2019 01:23:45 +0000
Received: from VI1PR01MB5133.eurprd01.prod.exchangelabs.com (20.178.120.142)
	by VI1PR01MB0958.eurprd01.prod.exchangelabs.com (10.161.107.16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1495.11;
	Fri, 11 Jan 2019 15:41:13 +0000
Received: from VI1PR01MB5133.eurprd01.prod.exchangelabs.com
	([fe80::15cc:ebd8:d8c0:1372]) by
	VI1PR01MB5133.eurprd01.prod.exchangelabs.com
	([fe80::15cc:ebd8:d8c0:1372%5]) with mapi id 15.20.1516.016;
	Fri, 11 Jan 2019 15:41:13 +0000
From: Alberto Spin <a.spin@datawatt.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Setting up a password for the root user
Thread-Index: AdSpwx8JZbKMykHPQsa7r8rc3b5oiA==
Date: Fri, 11 Jan 2019 15:41:12 +0000
Message-ID: <VI1PR01MB5133B1FE6447743EDF5EADF49B850@VI1PR01MB5133.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US, nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=a.spin@datawatt.nl; 
x-originating-ip: [213.126.127.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5PR01MB0952;
	6:qgIMpzgdOAsgUiOHJKBrNTuioBcId9eP90Hj74z5JuiEEhlxdbBA4EhnI7XuVLJmQI/lttm5FWLUFJ2hE+RL8vkwsqBv17iG6nw/X5snpED12/qdIdoHuFgLYHl0AsKcGl657DWnoxwfZ2oMsGXeI2hmQt2VIRacTbLYuXLydmey1HvgcB1tVWUnILPfroT7qS/7JamV/ZBAiAN/iMuN61eFyjeKUzcnq7408cTqW0YmYIIBk4IdWJj/gKiqG97c+TRFcuJFXJl/AiHHdHbhKBaQhbOynfdq6GyVbkUzdCb+b5eb6t4ZUbQIpTIo+0P5ICCUrrZEh+w3k2EqB3w/88rsWhPHvBzzdDSQ2PaydPX5JNQI5QK3S96otzzvtE7OIf/OThRa/9fl9UbWTZB3y7k26PzUXFDIdzEGNrSjer3+SipqavZEw1eG/Ny8dmdG8WhEUKv4rAy+EKJAUfHylg==;
	5:ywc4BYEFIpobhQ7pS5kupXxLad7M+xAvOStjn2/FgB4MEJ6eN0WJdLDXN0Jkm8GRaLZ3M0lXaDRNPw+yuWQBtvyS1CjHe4tgjF1QD4SHxoxIbI4NFpfbu1qljyfIwbcnhAp8oaFZ/NItMm7hZ+13n6dj1IMd/8+JXWsfy5BS4vmP8eKMD7Xxg6+6w3dFu6XDMr88W7gzzPiR21DF5pjk1g==;
	7:5KkdXNmGYzKDH30hcIrD79P0hsLkMV3DAx5HkpB3mZD483zjeR7yzFAiIwOU3lBHulySI7/lmPIv5luNC+v0s+R/ddlx0ZeZTA9IPM6qx4mxn/XeZCKzO3SQZHqqtToEfwKD835mgKX50vkLx4y9Cg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 03257d32-0f75-46ad-bc53-08d677db3771
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600109)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB0958; 
x-ms-traffictypediagnostic: DB5PR01MB0952:
x-microsoft-antispam-prvs: <DB5PR01MB09529DA172B2DA854AD5B93E9B860@DB5PR01MB0952.eurprd01.prod.exchangelabs.com>
x-forefront-prvs: 0915875B28
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39830400003)(396003)(136003)(376002)(366004)(346002)(189003)(199004)(486006)(2501003)(53936002)(3846002)(6306002)(66066001)(551544002)(8676002)(2906002)(4744005)(7736002)(256004)(81166006)(81156014)(1730700003)(316002)(86362001)(6916009)(508600001)(790700001)(68736007)(55016002)(6116002)(26005)(5640700003)(14444005)(6436002)(6506007)(9686003)(54896002)(99286004)(102836004)(25786009)(186003)(14454004)(8936002)(105586002)(97736004)(106356001)(2351001)(74316002)(476003)(5660300001)(7696005)(71200400001)(33656002)(74482002)(71190400001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR01MB0952;
	H:VI1PR01MB5133.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: datawatt.nl does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vv1mynETjbBOSVqrH3wf9hXdDECeuwMLHhOsZ7y1cYOK1/4KOfe52uJr69D9En/GpRcbz4V/R1e3YCtWibEoUjEschG20CbxNu5ZR9iLzxgI40rEiCY1JHKvFWKfZoA3pcBUC4jVnDSIx1lzZik+MjrxjntjpsptmWgdDRLqdBvrkjlTqJFHlesX5/IrL3C2x5k8fe/Z1ex/rawtN3iv/wdFZTAdv6MTnw0CnPDUDzwmor/D6YE6CYHOQ9yNTfAxTAQqNjgPeHaunTc82QP2Tuj69bC2wIlX3k31PMldqbo6YnFj+h7nxU2NHQ0qiwKoBvasvZFG2gUmKeOoYlBb62LM69opR+I/rsoeczJt23Z6Ff+mpMP4qVFpLbU1xr+DHNVCwceTkSfrMbQ0Lv8dYjY493B1+4ebLVsQvMKQvJQ=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: datawatt.nl
X-MS-Exchange-CrossTenant-Network-Message-Id: 03257d32-0f75-46ad-bc53-08d677db3771
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2019 15:41:13.0153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5afcf6a4-fc33-42be-9014-b6cf5e6ea885
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR01MB0952
Subject: Setting up a password for the root user
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
X-List-Received-Date: Sat, 12 Jan 2019 01:57:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB5133B1FE6447743EDF5EADF49B850VI1PR01MB5133eurp_"

--_000_VI1PR01MB5133B1FE6447743EDF5EADF49B850VI1PR01MB5133eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello There,

I'm trying to set a password for the root user of my distribution (based ro=
cko branch)

I've added the following to my image recipe:

inherit extrausers

# set image root password
ROOT_PASSWORD =3D "secret"

EXTRA_USERS_PARAMS =3D "\
    usermod -p 'openssl passwd ${ROOT_PASSWORD}' root; \
    "

Everything builds fine, but in my image I end up with a password in my /etc=
/shadow file like this:

openssl passwd secret

so it seems like the openssl command has not been executed during the build=
, but instead the literal command is now part of my password.

Can anybody please explain what's going on here, and how to fix this?

Kind Regards,

Alberto




--_000_VI1PR01MB5133B1FE6447743EDF5EADF49B850VI1PR01MB5133eurp_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello There,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to set a passw=
ord for the root user of my distribution (based rocko branch)<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve added the following =
to my image recipe:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas">inherit extrausers<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas"># set image root password<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas">ROOT_PASSWORD =3D &quot;secre=
t&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas">EXTRA_USERS_PARAMS =3D &quot;=
\<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:8.0pt;font-family:Consolas">usermod -p 'ope=
nssl passwd ${ROOT_PASSWORD}' root; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:Consolas">=
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:8.0pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Everything builds fine, but in =
my image I end up with a password in my /etc/shadow file like this:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:Consolas"=
>openssl passwd secret<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">so it seems like the openssl co=
mmand has not been executed during the build, but instead the literal comma=
nd is now part of my password.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can anybody please explain what=
&#8217;s going on here, and how to fix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alberto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1PR01MB5133B1FE6447743EDF5EADF49B850VI1PR01MB5133eurp_--
