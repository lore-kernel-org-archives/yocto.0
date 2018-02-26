Return-Path: <PerryS@talgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D26B0E00EF7; Mon, 26 Feb 2018 09:38:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.67.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4675 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Feb 2018 09:38:54 PST
Received: from CAN01-TO1-obe.outbound.protection.outlook.com
	(mail-eopbgr670097.outbound.protection.outlook.com [40.107.67.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F01CE00EF0
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 09:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=talgroupinc.onmicrosoft.com; s=selector1-talgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=+VGYPCfaJGUwwN/XsTQPLYDnS5yrpMR+UlZzxAeA/Lk=;
	b=YkKXnU9MW1hi9pMW4hIXiEoONEyO9QDF9HKR6ZrvbyQJeMS22rm+eNnUGIyjDDIo0v20Zexvo8GBEOykjsZRyuZ9Hyxg4HPNr5OUE8vNtelaXZy63xP0e2eRSmbVvdlt2laQpuEP/UwGdjtStrbkN89+YzdI8WshLos328dYFYI=
Received: from YQXPR0101MB2262.CANPRD01.PROD.OUTLOOK.COM (52.132.80.151) by
	YQXPR0101MB2150.CANPRD01.PROD.OUTLOOK.COM (52.132.79.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.527.15; Mon, 26 Feb 2018 16:06:02 +0000
Received: from YQXPR0101MB2262.CANPRD01.PROD.OUTLOOK.COM
	([fe80::adb5:c79b:88fa:7d5d]) by
	YQXPR0101MB2262.CANPRD01.PROD.OUTLOOK.COM
	([fe80::adb5:c79b:88fa:7d5d%13]) with mapi id 15.20.0527.021;
	Mon, 26 Feb 2018 16:06:02 +0000
From: Stephen Perry <PerryS@talgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Looking for an Embedded Developer using Yocto
Thread-Index: AdOvG4s7ATiV690CTaqBVdLqbS4u9w==
Date: Mon, 26 Feb 2018 16:06:02 +0000
Message-ID: <YQXPR0101MB22624A6DF607817D48CF2EFBB2C10@YQXPR0101MB2262.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=PerryS@talgroup.net; 
x-originating-ip: [209.146.253.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; YQXPR0101MB2150;
	7:bDuSMEVx+nC4oxkUZm9zt7Gz9E1AyfpFYdISCd0+xxlylQnNI8vgYDXS1iEMn7DPFq0eMS09uHnv1v+XnhytHGaYq+y5g1T3wmOGv3RULrhCcDPab+RLl3DKyAHfdfKUrxJFCl+4h4kNPSQF+7uGI0GyAnLiV5qEOakbS3efVYfbwhWbB4vYmHS+wi9adIe9SRFkJuJYOEzVlzLggk8u0cguut1ZtNrv3cW9p7hQVZFyqBwhdi+QvqESnzHhF38t
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 9abe7005-bf20-4538-759a-08d57d32d546
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(4604075)(3008032)(2017052603307)(7153060)(49563074)(7193020);
	SRVR:YQXPR0101MB2150; 
x-ms-traffictypediagnostic: YQXPR0101MB2150:
x-microsoft-antispam-prvs: <YQXPR0101MB2150E74ADBEC726D11CAF186B2C10@YQXPR0101MB2150.CANPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(148322886591682)(31418570063057)(116415991822766)(177282920865119)(128460861657000)(81227570615382)(21748063052155)(81160342030619)(21532816269658);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040501)(2401047)(8121501046)(5005006)(3002001)(10201501046)(3231220)(944501161)(52105095)(93006095)(93001095)(6041288)(2016111802025)(20161123560045)(20161123558120)(20161123564045)(20161123562045)(6043046)(6072148)(201708071742011);
	SRVR:YQXPR0101MB2150; BCL:0; PCL:0; RULEID:;
	SRVR:YQXPR0101MB2150; 
x-forefront-prvs: 05954A7C45
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(346002)(39830400003)(376002)(396003)(39380400002)(501574003)(189003)(199004)(74316002)(2900100001)(5660300001)(236005)(45080400002)(8676002)(554214002)(99936001)(25786009)(2501003)(99286004)(26005)(3846002)(86362001)(53936002)(7736002)(6116002)(790700001)(66066001)(606006)(2906002)(478600001)(55016002)(5640700003)(186003)(6506007)(8936002)(6436002)(102836004)(2351001)(68736007)(97736004)(80792005)(106356001)(733005)(6306002)(9686003)(14454004)(54556002)(6916009)(72206003)(105586002)(81156014)(3280700002)(1730700003)(3660700001)(316002)(861006)(33656002)(5630700001)(5250100002)(54896002)(7696005)(81166006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:YQXPR0101MB2150;
	H:YQXPR0101MB2262.CANPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: talgroup.net does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 707c0tge+CBzpLq/ij1Ss1UsLowUEhd16d0QOOFviljRehEFl4gHDyEJu6G8gK6LApP8InGeak3/rH/xwWBhvAS2FNyol8KBnCYfRF7ybunj0dXwB/7X292HbmhQhBuq6etDsVffYnEvMW18oY6Ae8kqXrqb+b6Y66xbXBhEe3M=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: talgroup.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 9abe7005-bf20-4538-759a-08d57d32d546
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2018 16:06:02.2325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57b063fe-3c3d-4a3b-bf37-e33673d13597
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YQXPR0101MB2150
Subject: Looking for an Embedded Developer using Yocto
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
X-List-Received-Date: Mon, 26 Feb 2018 17:38:56 -0000
X-Groupsio-MsgNum: 39997
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_";
	type="multipart/alternative"

--_004_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_
Content-Type: multipart/alternative;
	boundary="_000_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_"

--_000_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am looking for an Linux Embedded Developer with experience with Yocto wor=
king on Network Devices for a full time role with a company in Toronto Cana=
da.

Please feel free to reach out to me for more details if interested.

Thanks,

Stephen

Stephen Perry, Sr. I.T. Recruiter  | TAL Technology
69 Yonge Street, Suite 1100 | Toronto, Ontario M5E 1K3  |Phone:  416.599.18=
25 ext. 223
www.talgroup.net<http://www.talgroup.net/>  | Connect with us on Facebook<h=
ttps://business.facebook.com/TALGroupInc>, Twitter<https://twitter.com/TALG=
roup> & LinkedIn<https://www.linkedin.com/company/206776/>

[cid:image001.png@01D38551.1058B310]<https://www.camsc.ca/>

TAL Group is proud to be a CAMSC Certified Supplier in 2018. #DiversityMatt=
ers in the workplace, and we commit to creating opportunities for minority =
and aboriginal owned businesses, suppliers and jobseekers across Canada.




--_000_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
<p class=3D"MsoNormal">I am looking for an Linux Embedded Developer with ex=
perience with Yocto working on Network Devices for a full time role with a =
company in Toronto Canada.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please feel free to reach out to me for more details=
 if interested.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Stephen<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"color:#=
003399">Stephen Perry, Sr. I.T. Recruiter</span></b><b> &nbsp;</b><span sty=
le=3D"color:#222222">|
</span><b><span style=3D"color:#4F9B17">TAL Technology<o:p></o:p></span></b=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"color:#1F497D">69 Yong=
e Street, Suite 1100 | Toronto, Ontario M5E 1K3&nbsp; |Phone: &nbsp;416.599=
.1825 ext. 223&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"color:#1F497D"><a href=
=3D"http://www.talgroup.net/"><span style=3D"color:#1F497D">www.talgroup.ne=
t</span></a>&nbsp; | Connect with us on
<a href=3D"https://business.facebook.com/TALGroupInc"><span style=3D"color:=
#1F497D">Facebook</span></a>,
<a href=3D"https://twitter.com/TALGroup"><span style=3D"color:#1F497D">Twit=
ter</span></a> &amp;
<a href=3D"https://www.linkedin.com/company/206776/"><span style=3D"color:#=
1F497D">LinkedIn</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr style=3D"height:56.7pt">
<td width=3D"94" style=3D"width:70.8pt;padding:0in 5.4pt 0in 5.4pt;height:5=
6.7pt">
<p class=3D"MsoNormal"><a href=3D"https://www.camsc.ca/"><span style=3D"col=
or:#1F497D;mso-fareast-language:EN-CA;text-decoration:none"><img border=3D"=
0" width=3D"80" height=3D"80" style=3D"width:.8333in;height:.8333in" id=3D"=
Picture_x0020_6" src=3D"cid:image001.png@01D3AEF1.C929D670" alt=3D"cid:imag=
e001.png@01D38551.1058B310"></span></a><span style=3D"color:#1F497D"><o:p><=
/o:p></span></p>
</td>
<td width=3D"701" style=3D"width:7.3in;padding:0in 5.4pt 0in 5.4pt;height:5=
6.7pt">
<p class=3D"MsoNormal"><span style=3D"color:black">TAL Group is proud to be=
 a <b>CAMSC Certified Supplier</b> in 2018. #DiversityMatters in the workpl=
ace, and we commit to creating opportunities for minority and aboriginal ow=
ned businesses, suppliers and jobseekers
 across Canada.</span><span style=3D"color:#1F497D"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_--

--_004_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10218;
	creation-date="Mon, 26 Feb 2018 16:06:02 GMT";
	modification-date="Mon, 26 Feb 2018 16:06:02 GMT"
Content-ID: <image001.png@01D3AEF1.C929D670>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAACdqSURBVHhe
7VwHWFTXuv0HGIahN2kKKCooYu89GnuLwZ5oYo0aYzQajVGTm25LMTHtxiSmGGMhRKOmGXuvKFgR
KSqCUgeQXt5aexgvoiigt7z37v7uXAnMOWfvtf/+r30sXn/9dfnvqD4CFtW/9L9XEoH/AviAcvBv
B3Du3Llu164l+WdlGerk5OUFFhYU2IiZpp5GNFYFhYVqeTqtpRQWFiZY6nQpGo1c0et0cWbWVmcD
/fyi33jjjewHxOCBLv+XA/jqq6+6nD0b2cmQkd61oKCgw8Ejx+tbarXOer1e9HprsbAzl5LiEhGN
AEeN4CcpLi4WMzMz/FtCICU3v0AyU1JKblxJuNy9R+8wnc7ygIuTw97Vq1cfeiA0qnHxvwRAgGZx
/nxUn/QMw6g9+w70AFButnb2Ym5uJuYAxsLCHD+bK5A0AA3/w1D/V2aUSAnQJJj8ONjbaYqKinyL
iot9CwoKB8dfuy6PdO8ZbmNjvcnN1e3HVatWnqsGHlW+5J8KIIBzCg8//9S+/YfGaS0tm9rY2HDh
YmmpFUidaACYQMZKgAzBMf5Lmbv3INgWFhYKbA4AKdZ6K4HKNwGYTaJjo1/u2bvfxhourl+uWfPd
H/e734P8/Z8CIIDThZ0+O2PvgUPTbW1sajk6OYqVzlJ0Op1atJIiAGWOmVtRbQEIf5+fny/Z2RWb
NIKrs7ISa2trKQZoN2/eVCpNydUDQGvcg2DiWRYAcuiN5KShvfr02+7s6vzO2tWrdzwIUBVd+9AB
HDp05ND9h468YqWzauLk4IDF6iFxlpCsYiVd/JkfLj4zM1PCTpyQ8FOnxGAwSJeuXaVt+/aSjb/d
bXADLsfFya9btoi9vb306dtX7PEM08bwngTT1tZGPUun00puXv6j1xOuP9q3/4Afavt4v/LZZ5/F
PEwgHxqA9KYRZ84vMWRmjLWztRUbAMeFUdooJVaQHC286bGjR+RkWJg8PW6cRISHy/SpU9XPlMhn
n3lGFi1bCmD6SVZW1m3rpIQSnDkvvACAbKVhYKB898038sprr8nePXvU9zt06qQkk+qdl5cHqaRj
wgbCXADIJ89HRvceHBz80sbQ0K8fFogPBcDg4cN7HQ8LXwnV8rGzsxGorQKO6mQHSaGlOnr0qHzy
4YfK7nV/9FG1yJo1a4qjk5OMGTtWGgc1khyo73ervpG+/forlS5rD/kz7Kg0a95cftu6VSY/+6y0
aNlSqf3SRYukbr160rtPH0lKSpKEa9fEzcPj1vWUSKo4HJZrTl7uV/0GPtYzqGHAtKVLl6Y+KJAP
DGD/wcEvpCWnv2cPr2hvbwsps1ATp8Tl5ubKujVrpDNUk/b+0MGD8u4HH8i5c+dkK9SQC9ZCOi6c
P68AvHHjulLJ8uBxkQQ8JjpaJkJKAxs1kglPPy3f/vCDuLm7q9+/ipSUpuHA/v2ybPFiCdm4UZyw
ObzOZFednBxEm2UhObl5I8NOng4ajYHQ59SDgFhtAOEozI8ePbG4pLDoRU7MwcFe2TmqKdWRtq1x
kybyzVdfyamTJ+Xjzz9X0kNpmfrcc9KsRXMlUV6QwuXvvSvr166V1JRUeWfJUqV+5QeBToZ08Xre
hzaQgO3asUNqeXtLm7ZtVcz40/oN0qRpU0hkXVn341rZvXOnzH35ZfV92khKI6MAxJhBVxNubA8O
Hj4qNHT9tuqCWC0AAZ7Z0RNh68212mArK0uxt7NT6srdTkxMlEVvvaUm3LN3L5m3YIE8N2WqzJk3
T/oNGCDff/utkroFc1+Sac8/L9NnzJBzZ89KQIMAad2mrQKFEkN7V3YQ1OZQ2aXvvScHDuyXFZ99
Ju3gcK7jefFXr8qff/yhJH7/vr3yY8gGSUlOkY/ef18cHB1l5vTp8hJArOfvL3n4Dp/v5GSPjS52
ycjK/CM4eOiY0NCQH6oDYpUBZFB89FjYOjNz82Braytl76iyDo4OkJBkGTV0qHTq0lmmTpsmc2e/
KC/OnSuNGgfJ21CxeQsXyqaff1Zel+BRFekQ2rXvIBkZGZKQcF2BwM2gDTVFhGZmGhVoc+HcmGHD
R6ognJ67b//+kKwseX/ZMrmRdEMmTZki3bp1l4XzX5YT0ILvYEJWLF8uP0LdaT5ysEEEkbbT1cVZ
UlLTNOkZmauHDh1eEhKyfk1VQawygAcPH1tuZaUP1ustb4FHD3j40CFl04aNHClrMelr8dekN8IM
Pbzx5KnPykfLP1BStTYkRMVyaWnpSlozs6KN4Q3Aoce0s7NV9tMMAJlyEYKZm5unPnQSV6/GKzvJ
4NkRGzds5CgZOOgxMWATfHx85I/ffpOvvlgpiwHqz3gex8gnnpDk5GR57ZVXlB0NaNAQYVSGuDg7
qeekphu+79+/f9zWrVv3VwXEKgHYt//AeVjrNCvEV7YIZrkIetGrUKGpkyapkILGnAug96U03Lh+
Xdq0ayvf//ijmlcCQEuGehUXUWrtpV7dOuKMeyAFU1J2v0Ews7NzJBUbQECuQWrjryWKC6SphquL
5ORkiwU2Y+as2TIBcxr15JPqlpT0ifD2Z2EuEhMSYVrmS32oNCXRGSDCbpvdvJm9EX6lIxxL5P3m
Yfp7pQGEsR2AXPYdJ+w4pYTqlJqaKsuWLIZ9mS9LYW9mPDtNxWeffvGFDIZq7dm1S1q0aonwJEfS
DVTRRHWdj3ctqenlqTKKqg5ToExn4ONdE/FdnlL9K1euwosnQ6IclfNq266dpKenK6m3hpmZP+8l
Wf9TiHzx9y/kxPFj8u6SJUq9TXGqM7Il5N+u1xJurIeZ6ogqz92j+XITrhSAkyZN8r4YHfuNo70D
QhU7JSl88Mtz5qhYzBzOY9iIERJzKVpGDRsmPyNE2YhYzQmTSk1JkytQOappvbp+4utTSzmbhzWs
EKzXqe2j7ht/LUGiLsVIxOmzUqumF+ylnQKPavxzyE+ydu06CVm3DsH8UZkDp0JJpRA4lIZO9hAM
jKYHDh3+GP+Oq8wcK7WSqEuxn8J4u7AQQINOI78AXvX3X39VqRdtVibsz3Mznod63RQDdr5Zs2Zy
MeoS7Nx1BMye0sC/vspM/lmDkuZdq6Z4erjjudESE3dZXLCBtfC7Vq1by3cwIa3btFHhDufq36CB
vP3GG/Lr5s3yw/r10Co7zM9SrAos6cjG9h84cNPWzZs33m++9wVw8ODgcai/DbDW65Rht7GxlVWI
7ah+P/3yi4wbPRoOI14WvPqqsicL//Y35UlPngxHwJorzZo2Fi9Pj/vN46H9ndLdsIG/uLm5yqnw
03IhMkrq1/OTmrVqqThSj3lT4pg2btm0Sd7/aIX6b9QmlZYwDUUhQtLSDR8jPd2HbCX5XpO7J4DT
p093OBVxdpGLs7PykJxcFoLRnr17K+Nsi11b+9NP8iTU1xHx1osvvaTsTnRMLAJVM+nQro0KXP8d
g3Pu2L6dnAg7JefOR0pdv9rw2nrJzclRm56YmAAz86sEIcSiGtMsMQalENhhzije1sS1CzH3mdUG
MDIqeiFU193W1lrd3JBukKnPTFIx21fffKtSpY6dO8v60FD1DEb6l6Jj1XfbtGqu/v13Dqpk2zYt
AWK4REXHiD+yE9pED09PJZGtWreSa8ibqU2UwEtRUeLj66scnSVS0szi4qnwyl/BK0dUtI4KJZCO
48LFS1MpQbRdDGrffO1v0r1HDzmFasqk8eOkZatW0gp2JXjIEOUNz527oHJhTlr7EB3Fg2wCbWPL
Fk3l2ImTysE0gHozoB7/1FMqY3r19ddgbk7JS7Nnq/Lajxs2KAC57sLCIkt4ZUrhiCoDGHf56gxH
RyeEZ8b4LDY2VvagbEQHwspAN1RUzqMogCaQsh0xUFt65tatWv/HgGdaNOPVFs2aCJIAiQaIDRsG
yNuLlyBHD5OPYQPfefNNadmylfwdtt0Zqk8geQ2FAS2DISNHjmy0du3aM3cD8a4SOHfSXKcDF46M
trd3uBXc1qtfX9Zid+h9mbs+PiRYXkZqVgQAL1+5AttnkPbtWqMaXLGnjTh9Wg7u2iGdEVjXRAHA
juGD1d1tZGERmkc5uUq1CrBpmTAPmqybcpMf5MrZCJhTC/KNtT58R/LyZdiwobfK/OUXSyFoBUnc
u/+QxMVdkQYAkXaQ63kL1ZvxE8bLkcNH5GnY9qdQn+z6yCNKIGDbzW8kpz6D+82oNIAR184NhfS5
s1BgA6/ECjBrdWPHj5f1yGVZYfng3fekSZOmqvx0DQFyg4D64oif7zUMyFX/ik6S9ZG/iScqODVs
rcTdTic2hTex00incgok/nKcxERekIzUZFVUoEfUYSHOSLg+sHJQ/2rx3+54UJKmSGZJvsx3dJG8
Pr0lJSNTXFh/LN+PKp0Uw60mQYFyHI7F/pqdykR+375dMpBTPzF8hOzZvVtq16mjUlGW4Og0tWh4
5ecXjIFHfv1u9cO7SiBSpbH0YrR9VNEN69bKuPETZB4KAyNHjZJBgwfLgEGDVGJPj0vg6tT2va+p
Mi/IlZuNuslh+yDR5WdJSWGBFGcZpDAtUYrwKUGKpynQi3mOXoqhXuY6vRQBDWfYsWE6G/HMJRMA
lWlYZNZqusIwv5mdId4F5nIB8V9aWhoAtMNfKkAQf3F3d1NZUHx8ggRCCillY+GVg5C9NAoKUmHY
Ryg+/IJ64uDHH1elNYQ5ThHnzg3G5XdUsu8AEF6nweWrCW20lhbKO23dvEWuQ8JY+UiCBLF3yzL8
519+qVQpEyrVAapbmVECNSqwQnagKRY97i/8QMLFt74UX7kghYZEKb4aJcVJsYJkGrKlkSxgoTMz
l12aEokqypZJlrZS30yLv5XgI9JPYy9XYWqsnZxv5ef3m0sAtAXtVVRvkrDxtaUXpJelLk9PL1Vu
mzlrlqRjM2jv6VDozVGrHFIpAFPSDP1R4bDQIQRR7UIm+RDlZydPlqHDh8nnn36i0rcaNWrIcXg2
D7caaFXa32/O6u9UoaJY2OKGkNaCYqP9QwG2JA/1PycP0XYNlpLmXaQ4OUHyz+yXWtvWSHOtXnpq
rWQgPpGwi5bsvN0qdIlk4r6W0BJ3aIEec63MoJ1Ggwm2O17csI4xY8epXgtzeOby9WHvUwEgwzXO
mV1D2OSuiIu9VqxYca3sM+6QwOyb2V1da7iqehuDStbbmP7sgwdmE2ffnr2yCXkuKyHMOJoj06js
sHWuIfm/zIVZsBWzbkOkYMdaKY6/JBadHhPskhRFHJCSrDTROHuKxr2OlECFm2vMpRfAs4I0Bplr
pRDgkfBRAPXNw8961glRrNBirtoqpIq1fX0EkYYkYR2MCd+GIykqLJLYmGj5Gtq1GVnKc6hZ0qFQ
jW1t7WxiY+OpapsqBBAI2584GdGSHouqGo6u2U4Y2Slo4PRA9kHDmpiQIM4uLsqTsVjAhL2yQ2+L
QgRy6Zz3nhGrxCgxb9JZiv76QbI3LBd9n9GiadVH8jIMYrFzraJ1XAVAc3IzJAr/NkNnTwuQ6bO1
+NSHKagDUA/Brn6dlyn9szKl7T1sX/k5Msj38HBDFpIm7m5uSFFt5MmRI1Qez7z4Mdh59nCGjxqp
WgBsSmWkG7reE8ArV674W2gtvEi1YKVi5WefiwcMLj1t5IUL8u7SJbII8RNVOxNF1EaBDSqLnfqe
u7uH6B1dJSfrsFj+/WUxbz9AbCa9LbJwoFxf/6E4bV8nfiOekiuBHaRw7WIAhvQqL0e+pS3sO1V2
Hd4knZv0kNMxYaKLDpPejp7yFRQ64Wa6dEfIUwKHAFGu9JxYsbmGWiILwlRVSiEd4+yZM1UrYC+8
cgbKcKwlUqgKi4palr/5bSqck1fUxBbFAsZWdO2XL19GA2iaiq24Q9FIdRhk6pBTUsVZwKzK4E52
aV5L6hY5yfcHNWJ3YacYXh0unz9hL0fO+8qITnrZc/xrmbMhQxzt9eLi6CZjOj8pa37/VAozkuXl
J96SgxHbZdrgufLC8iclzc5Rnun2gry7ajYWZwzoqzIYPTDHNwCkmgCTLYbJEyYYnScKJb379VOF
BpoycniKiksCUCt0RK0w3fSc2wDMz8trZGPjqIqQ9D6MxFldZpfrh++/Q/HAXjy9vFToQjGvTq77
eCcfpFMOMrm/reyKyJUv/rghI1rXkREdXOENRE7FFkmgj5kkGgok1ZCESRfKO9NXySfrXhcPF28J
rN0MQXWaPNVnqmw7GCp1veqLq6OHKqMxJKnKoGCwkMrqNqhzqtVKsFZ9//2tYm8Oig/EQ7UYNOJ+
9mx0LTzj7gCC3uNnJOyAtwKRZeNnNrpmoShI5uHGKz79VDXGWTRg7a06o0G92lKYINLYx1LMkRXW
cWVIDF5MZhEWoYHE2cr2MzkSdwIBNLb385C3pX/nUTJ7zGI5emaPODu4QRrMpT1U2cnOFYtis4lh
BpwaFss+SVUGAUy8fkNpXCcURrp1fxTqrLuttUrJ5jMprXl52XVx/9N3lUDYNkdjXwI2B3ahW/fu
qlzF1I1Zhx8qyjSySLJVK7M6o9DGF8ExescArKGHVgJrIabLLYYT1kh8epFMXpksB6PyAB5obtgs
Z/sasnHHGomMi5B54z5QCwGHS7G5mgd0VOYlsG5zdNeSVFzK/kZVBjWJANHTUnX5M6MLE/PLdC8W
kplYZGdn3vaAWyoM3bbevWefl5oZIcTEKGl169ZF8t1QPYD/TQeiOmLV6GfwvmYIhIvJARRwZiCB
8AEqcUD5UBJTC2V8NztZMMRRRn14Ff0Nf3m8+wRog4Ws/f0zqPEbMmv0IqgZAhgutCgHsbhOHmkx
UCKz9iIfT6uyZqg4D3FuPmJJq1LuYXnw+CylxvhYWlh6l92gsjZQV1yiceHulh3cDX7U4nED0m7V
jeAQqjM0xcgvLNHRgySZKzIl2agkBxZLywBLacnb5hfLobdqyvRVV+T971+Tri16yNShr0j6zRSA
BtKRJXrGZgjEcR2anVLD0xUOTof0LB4UkaAqTYt2nqU35txlgTMSPY1UvFtSSL6ORmpUBCCigOIi
VpI5jPQwndodVkRoXGkeGWzyd9VpDLE48Nm32yU+prGUFOVDTdEigOOwMC8RCzOQh/BoLSyIHrbw
Zh42CQnLwPpaSCAyDrsYqRfkjwA6Qyx0AJ+hFj6cE4nA7T3bi97KWtlqZlFVGXSYRaV8bF5HW0dN
oxmjc6FWKnCZBbFMVGZUWFAleBcjI+XYsWPSDi1CVimAr7I/xntVnLBXNHmqy8jRY+VCVKwKYBFX
YaJgcSlONOi+UFXTfR3Re57Qy1KlUUYvqEFsaqGa+TbWZFsZqWtUf0QPpWywqnnhsvbtVghUyuuh
U6GQtAdljkyGikZZAGGzzcxNIkupi0MRleCxmOqNjv8/QKs8eAnIXNgnoc30Rbm8ppcHvBwlRKN4
g2o3mJblIRBmUwdGnU7KxJ+mI6EBZ/5KNSOBiTEpRxTiUnuEVm6osJQdlByW6nk/UugYCFdmKJXF
NbyW82nUKKg0ODdqJCVRy12sQALzsJRkLEhFx/x+HT8/FfexJsgbmGCrTMB6/PhxRfjxQIWD6R6p
HjvBlFqMaN8/wF9mPD9DhqAV0KVrFzUdshsWLVqswqePVnx0x3r/DnbXtm1/yUtoXDFXD9kQIt4o
yh4CpaQRAuBJ6NXQzPB7BIJZDx3f4u2LpSni2JkvzKwQQ0U3LiUzKU4ONIIZSVmCEzWP38MGJt0V
QJ636NK1ewJACuAXjPbFTFYhsW6ICXbt9ojR/mGBtA+UHtqOu43dSIEWLlgoX6xEdQMe3DSsEKMR
KC9E/aE/hSqVNAFYCwl9p86dZDwqIwtfWYC2JOND46A2vP/eByBe9kFvt7VMnDBRngDXpfuj3fG7
vvIbgn2CN2rESFSSu8p0xK+mwf/+5JNPjAJQgdnhWpgUEDCqLjt1pMyRd2i6znQ6IL+w+EpFEiig
q6WjB0D5U/aIYuwOpmfjJo1RQTF6KdoFAkh1uhuAnMzM52fKS/Pm3gYeHzpx4kRWd+VXNOTnzZ8H
xtQatREmh+SJZ7UBxe3D5R/K2++8c2uef/75p2J/URM42IbcAV4gAWSqhZ6FAolkpecR+JcdlNL5
8+dXKH1KGLgWrItg8RnMgY8eOao2yzQIICXazsbmNlbrbfoMxx1N8eWNeGOy67kbW3/ZIoMeH6zE
movl33NyEfWDeVV+XEDRgTaE3L3yw8hz1kgaAJgG+tvG0J9lF/gzPdDp40hJSQEAz8vrr70OlXtB
1RzJIrhy+Yr0BdOLf+dYAM5hdwT5KH7Ih6ANc54b1m24dZ/yz+W8KxrsJjI0U0R4ig7WRmdHqWff
hv9SMilYTOucHe0uVSiBkKgzVAV6Rhr5GjXcZMdf26n9xlNDuDkBpL3IzMxCoOt8x7xYbGBIUBHT
6uiRI7Ltr22oo2olG5sQCs6KCcBEMLmGgVvTBju/FEzVZe8uk1+Q1Ldp20Z27dwl168nque1BGHp
4KGDMn7ceGkN2sbOXTtVcE3aXFVHFirqin8Nc0LzRMdJPjfJSabwRTkXhUlJor+/f3yFAOp1NuHp
GSmQNFsFFNWLbb4A8EhMu8PdoC0jv49FyfLDD46HxvYSiEZUn/LjwIEDMgwkTHrHqWgNLFuyTKkG
wyZTjPnC7FkycMBAmTJ1CtoIyfJkixZK7Wk2TCMQleNDhw/JoIGD5IP3P5D2kPiDuHdVByMEBV7p
epNuJKnIo74/+iWlRzN4T2XaNBJZthLD39+mwk2a+Efu2L33GuIzL/6RpXzykSk1TgCS5zgK0Qhi
0zkFrCve1OS9TBN3Q3Fy9JjR8jcQGXfv3XPbem7cuKHyVTbiObjLn6z4WPWbe/bsiYwnR0kDvWpb
VMGHBAfLajBLOdSBQ6gTCZZRFy9K+w4d1O+ngIO45ofV8jp6u21bt1Egmv5mevhmEIi6dumi6prl
B+NRxpYMm6hVDQMbKlUtQrzMvJuSZzxxUAwJtThR/vrbAAS6GfDEJ/BlBSBFmjfLxqdtQID6mTvF
ByaCk5eGh7vepSa4/MPlMvmZyTIJ3vKpsU8rSaT9WgBj3rRZ81sSx9ya5fRlUFcXVLn3ol3QvHkL
pdITJ01UYU0QUjN22yIB2kV8aPcW4/ezXpyNJpCnsqGPoXvGnH3VN6vgMBaoa9uAMcGMm+BdunRJ
+vXvdwd4IFQqrg/5inSatLd79uyGDdQr1gVjVKovNZFrt7ay231PAPlHG1ubXfCUA3iRqpdhYQwx
SJYMCmosgTiOwHiQWUA8guS7AUg1X/nlSlAmTgqdCqWGYxZYo3aICWmYqbLMsWehA5aPBjl3/8W5
c5CG4XAODEZnMB+C0LziyEG1mVLN+TigA7cYlfEj0Apuyjj0LCg1HAPRaqWWMIwiXYPz8Aet7pnJ
zyhpKj/Yz0buoNbCObHPw8Z9A9B/6yDzImi05YwcEJzfbBgQdPS+ALo4eWy5fDV6MQjkEDZja5OS
woA6OTlJ3ZAPY9mIEzDZrztmh1+QI8hPRYNS16GjURVvG1CXgh17xA70tOLxY8QLbQV+yo6y8WXZ
3zOsGQQg7zeolvGIFtjXYcxL2jD7PawJkjtdtojAlNPcwmzPypUrbnMgfMYdufDq1SsvdO3W4wgM
tloZYz125UimpKcz9k89Fc1Xk6hRREaSJx/mKIInT5oxVwpOnxFX8Pzsnxj+MG+v7sVeSB7oIKQs
00HSmdCLn8ehH9I6TBrIqITfs7exM7LVy427FhNsrfXfQGw7UHTpoSiFJI17INBlHqp6BJBEkhgv
ozVYB974obBP4UDSly2XvLAI0eD+5ug5Z/+0SXJ+/0sc574guqB/ZDUPgiili3Q3MvRZlmMgfRa8
nTZwalRjNpQKsEZqYG5uPtn/qR3attoEc1o5AP38am8IOxnxJhJ4dz6AN2oFo3oGD9kAjjGPCVCN
2ZRJTk6VCxejwDlp9CBrUteW8Ajrpq2Si4M0Wu/aosHG5e3cA+pHktiNGSXykACMjolTpqe2r/et
AgZz9i2bf5EOHYxVbn4YZaggW2v+PXgxxii+MhKI7ns6ztn+gCrtLIoypc0VWQG7dB06dlSnLEnM
IbBeqK5Eg1RJGq8rbNqDDEqd60fvSvLzcyT/2AnRsFwFqXT95GPRd7ozs6nOsxg4kyfIqhC1huyD
Heh9t0IIFNgoEGUzOA2Ay7XRsRkM6UUebq4rK3pWhfVAX++ay8FQnaLVmluTusH4jJzAJMRyJ1Bp
YX1QHTmASvPET3j4WenUsV21K9Vqgth1Xctm4vTGAsmFE9Ews0C6aD9lfOnp9upA9o9ruIaT4REw
Q3p1QIf2PRohzumICLkELcJRWJX7myrRqkptpgmtiBvIO1cI4MqVK6/06t33s7y8gtlUVz6sNog4
l5HqMFckYZt02CIUWT3AjOKuhp0KRzB7R++5yqu2fvQRJXGFMZdF2wAOqrRPU+Ublbvg9JlzOMyd
A+6Ln1oDT4mSRPQIjoaxWs6DjwytqHEGUOXSDYb8Wl7ub97rufckmQf413vzZPjZ0ahUuPNEJr2V
D0BkascC6y1yNsGFPYHESngEOniNA6u9VgbN5F5roF4KvFLJrPYNSy/k0QeeV+HJKKouvS450TRL
XgjRqF3GtoVG2ffCAjCzzC0+vRc/+p4SyD/CFhpwzOFlHFf4WpdtPMvGiJ9loy1I8mNjYmTilMmK
kc/KYN06vkoSWXEJalR1j0l79PvvvytJB8lJ5aKMz5hmMb5j/sxcu6qDxPfIi5dAZfNWbDPTyVJK
m6urqyocM4Sh56X08VRVekZ6fNtOLd7etu23ez7uvudENm4MXdWte8/gbEvLAcwS8hETMQDOBJmH
pMQjhw6rgoM/Uj0FMI4TcMJ0Pk2bBFWpd0LDzVCJdOG4ODgmSIYt4k2aC96P5a2qjvMXLqr5UENY
1tIjTTuOPg/53T179YL9O600ygQeOT9M8ewd7actfePeZ0TuK4GmydarW/vZqEtx7VDScqUqM8fs
2as3OMWHZf/evYpT4gupYU2NIPJIV0xsHEjdR6UZQKxsD5nfY4nMD1LujfyUPRT+jnFaGnq+VekE
Mj2MOH0O5+eSxA+awcCfRxzC4ADpBL29fWQztGjkE0/eerEPA+YcxH1wNqs2h4beRmOrshcuewEd
CjzUuIzMzF+gThqeTufBGl/QeikdqakpchBH7QOR+FPNOHg66DIOAO47cFhRacmEut+gIeem/Ar+
IY18DVR2buComG+d2qjARME25auD0/cDkszTM2fPqzcdcR6m5jmPZxA8Pqdps6Z4UU+3Wy/yoYfO
QNhyMyvrVOeO7ab/9ee9Vde0lvuqsOmLeNPFFhx3nZ+VnbOI4Qt3lEk32VyMC2lD9u/bp2pp9GYc
flg463k8/MeDgAH166nwoaJBT08poEngIllK4qsBWKSlOhPcew1WVugsEgC6K7IMRgd0CtQKelyS
5XmSkw6DTsQF9s/EtMDBa9rdlJqebsMre1Kz0ipsmvRvWzcv7tm7b628/IJpGkyW7Bi+HaMO7AYn
yBhx9XffgtU5XtlJTt4N6RhtDw8dHjpyDHbMVRVimUaVH/R+LNYy66Gj8vHxRVfPQwHI83isutxN
+uh8YuOuqrPI5DPTDvN8C59PydqNSpLytGgDRMPxueNFFYrOAadBYSB4sHvF9rb6QVU5K1xlAHlB
+7atZ+LIvyd2DoRmcsRtlOqy7PXj6tXSDqkQT6/zpQ8EgD1Zsp1qwwNmwThTIo8eD1Pn0TywEHIM
VWGilG8zAY0njqZl0GVYw5PoZQczihS8pCIBbQDy+wic6Ygrv0dvypDoIspp1/Gd2NgYRBD1ZNBj
jympM/FdSsErcXZ2GB2yfn2VS9qVVmHT5CHehSAiDTt24tSG7JzcYFPZhx5yLMiJpMWy/HXuLE4x
oRhBO8YPHQxfxmOLs705OXkMUiE1l+EhY5SNIqD0uJQcfpfFXFV4xCZxwST/UK15KiALtoonQQk6
T1dSovn+Btb2mIrxMhZH+TkVfgrS7qLMDe0zq+x4a5lq0KekpLNYXOLgYEvwjEfqqziqDCDvDxCL
AeLwI8dOLLpZVDyHSbcjCqVkFbCeFgOidjR6IgTu7JmzogE9LqhxY3XIj2pDifTUu4ObXMPI+kKs
x3iP7zxg6VxRdcv2cEt7ugRHh+IGXw9AU8D7UNJMPB7aNdb0LkZeBFcwW4agQTUAvRW2EniygCaC
bzbiv9yIjKysFGcHx5GhIev/qiJut75eLQBLQSQxbe7AgYOvpaelv4+FaxzQjGKU37BhoKoAn0b1
hok5jfVvqCc+ilI9G+bs8tOwM7bj9xXHBXUIAmFqYJctaBrbocZX5Rnf+GZkijEzorRRQpnPKok7
dRLV66dUN48v+OGxBea3DJp5DXsy1AD8d4SHp9sYvJTsVHXBq5YNLP8wHOpePnz48DMpaRlfAgAf
vVU+7J61ig2ZK1MiOMJR3mfTiD0H9kgIGmuLbFaZgOP3CJYOksUOnfGli2jmlPaiFdG7lF7Hfgzz
cBKgbsB5WMIMMKsIBJ+FRdERaLYTUJOjoFSnGTLVqVLQ4tbV9qn5LMKzf/+rn7jo9evXb8MRiTZR
0XFL0g15T9Ne2Vjnq8Y7A2wOHpOgNMbBmLOPQtbrI/CKBIyLJKCqgQ1pug6PTXOgXmUHYNhI4vdS
0QOhd+d/m156wfdk8eU7ndB1I2D8l2aB15JlwA2gw8HLx9jXSLa3t5mHkOyrB5G6stdWW4XLTwB5
83X8bixef7cFtuwVvgiRzSDT6+/qo+zPNJCvSSEQKBMpcJhS0WszzCDnz8urpgp22SAKwelQnhK9
jKzGC5zsHBDJt/35hwKRTX+2FpipMLZj44s1SwVc6cvP6HQInCGdXlq3xtfb65VVq1ZFPyzwHooK
l59MSMjaEDiYzWHhp2emGQzPAchaZCGoFzrA3tETcuEk77BMxUWyl0zVyjPkKgdAj674f1Bl9oBp
ClSHLaAB2qDeqltmatrXQkpGBj1V1PTGI+ayrOUxr0VhY7u7l9v/nhcwljoYvj1sCYD8Ivz0+afS
0wx4Bai2KaWR4QnbBFRRDkWhwKCRpy2kJ6VjYCesR+8+yskUIByywksvyBajxNEmUjVNpSemeMxg
WH4ncLhHIa7b6OZa43/nK0BNUolwJw0/fwggPzG+hDZtFAq0eAmt3o0SpkiU+BBUgkIpozQygmE4
Q1U08RJZ2jK9xZc2TrFb4WhU34LShmwFXw5HuWpT3Tp+/zdeQlsGSJJatvBjeg1yRlZGFziVjuDR
+FtYaPFuAdIrjG/zZZBLMpMKWRCrkFpMVFmYVkE1nE5WVib43maXzbUWYVZai4Pwqrth3+6dLD9M
41d6r4fmRCo7N0glu1ssFalyEQCtERkZ3QAq7If3XgUg0LVCEaUh0LJGwKtIsTjoVwIpu2pto79e
VFCcYKHTXanpWTvc39879v/di7jLAw0AyPvgZ29lN+E/6Xv/cgn8T1r8w5jLfwF8QBT/B1VhdOfq
gcQEAAAAAElFTkSuQmCC

--_004_YQXPR0101MB22624A6DF607817D48CF2EFBB2C10YQXPR0101MB2262_--
