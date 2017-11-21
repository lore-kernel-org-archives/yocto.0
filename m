Return-Path: <amit.gondaliya@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D8B7E00C0F; Tue, 21 Nov 2017 03:41:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.61 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [220.225.147.210 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0061.outbound.protection.outlook.com [104.47.126.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59A4DE00AD7
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 03:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eInfochipsIndia.onmicrosoft.com; s=selector1-einfochips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=AjII5Y3ziviX8qPjFQ4HfCyNXTkiK9YIrO+0wzwZMoE=;
	b=yvxf6jQSTMSuxLSzJgqeKBXyWnh0jLAmUzwCHIVg2AFn/QcfP2vCPbb0QfvmGgJPB0cKwVVBYoFjiPmNkrgER8G0t9WOw0+4/sjv7gpqfeu2qgH6b4zI0VXvDCptODcyITC8EehlLTDkE/cLMeA3OMPIlVCBa5Fm74Z93e4fakw=
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) by
	HK2PR02MB1619.apcprd02.prod.outlook.com (10.167.68.137) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Tue, 21 Nov 2017 11:26:29 +0000
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf]) by HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf%14]) with mapi id 15.20.0239.009;
	Tue, 21 Nov 2017 11:26:28 +0000
From: Amit Gondaliya <amit.gondaliya@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: DEPENDS python-xml not working in pyro2.3
Thread-Index: AQHTYrnWp/pOQejp+0GGAUxlp4xIQA==
Date: Tue, 21 Nov 2017 11:26:28 +0000
Message-ID: <HK2PR02MB1155068EF6C0F2371A6AFA2EFE230@HK2PR02MB1155.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=amit.gondaliya@einfochips.com; 
x-originating-ip: [220.225.147.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR02MB1619;
	6:yy8L5oEJiRzoNW3EYDx2+hkWCguNm3amCEe3vzKFGni5Lf2fwI5J1seG3hmu1htLsseWCTBoHuRYMo8enJNFCeewIEyc1Mi5e8yvrph6smvYTlTVqWZ2215b6X+5BTkQU5K74uWGqNwVWcxAe9mD1oVt3HGDGfxKKcx4Lg+CEK4z/GOefg1wJW1irhqY5/sWtkd4ymn7KYzUxeIWkdm37IGnYpQqpSBUuHYm8ljaJkb9mG4OpgKICaACaNlYJdCcJ0oPJwEoemahGwlvwDTKJDa79i43agviGm7rkFndSFWhaLvvXga/qgShODaBJ5LQeGMjqAbwGvP/Hq/e3Tvhzqj5CzbIIzfSzIFg1f52n6U=;
	5:tiZPSMlUi0DP84CEFHZRmDIJA1gz/OQYokeWUlx34+9sp3m/EIi/XNKcWz41r4Pv6ipDWpdZbMhvnWWHn+jTqTrHdZVpzBdHDbI7d87Z2kd79fWTr8F9/DL9yqDxjGgJYnlolQ68dTJE3frMsFdusYGUrKLLF1haVlTL00IpvAY=;
	24:PGE3HqUbvP/PLU2pVHMfHvzfVVtf6fxg7YsZQC0Hj2O5hciaS078isUkKAXSHIXk7LCa26Vta4YeEeQbe1vCip1VYvZrchhYtbXCHabpTN8=;
	7:PaXA+kK+0jj9w+vQBPWO08kF2qfSyu1n3GGw5mwEhuCKRccNmm2NLf38zwjhpFNgoe+tU6tWx04svBYmKOHI66w+zL6beXUbV1nG/FtCvZ2Mfqve3CUtrpGo6PdFj3M54YRJYipRtcsiJNWUz7/8PB+lMV/P4hbkQU2059LSGGUwdQzYCKdUDUlVV2MhBEb66G75HpTs32HQoCo2JUOYx9U366/hrWsG9QX42O3BqOneNAsh07RvfutKAEKHKJs7
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-ms-office365-filtering-correlation-id: ab338923-41a9-4339-74c8-08d530d2b56d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:HK2PR02MB1619; 
x-ms-traffictypediagnostic: HK2PR02MB1619:
x-microsoft-antispam-prvs: <HK2PR02MB16192623E6B4286989AFCF39FE230@HK2PR02MB1619.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(100000703101)(100105400095)(3231022)(10201501046)(3002001)(6041248)(20161123564025)(20161123558100)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR02MB1619; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR02MB1619; 
x-forefront-prvs: 049897979A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(346002)(376002)(39830400002)(189002)(199003)(53754006)(66066001)(2906002)(99286004)(107886003)(5250100002)(1730700003)(74316002)(25786009)(9686003)(54896002)(7736002)(105586002)(81156014)(478600001)(2351001)(81166006)(86362001)(6436002)(8676002)(19627405001)(6506006)(106356001)(5660300001)(33656002)(2501003)(7696004)(4326008)(5640700003)(8936002)(3846002)(102836003)(101416001)(6606003)(55016002)(6916009)(53936002)(5890100001)(6116002)(189998001)(54356999)(68736007)(14454004)(3660700001)(50986999)(97736004)(3280700002)(316002)(2900100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR02MB1619;
	H:HK2PR02MB1155.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab338923-41a9-4339-74c8-08d530d2b56d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2017 11:26:28.6345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB1619
Cc: Viraj Mistry <Viraj.Mistry@einfochips.com>
Subject: DEPENDS python-xml not working in pyro2.3
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
X-List-Received-Date: Tue, 21 Nov 2017 11:41:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR02MB1155068EF6C0F2371A6AFA2EFE230HK2PR02MB1155apcp_"

--_000_HK2PR02MB1155068EF6C0F2371A6AFA2EFE230HK2PR02MB1155apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,


I am configuring one package using pyro 2.3 I sticked at below error..


checking python module: libxml2...
no
configure: error: failed to find required module libxml2


checking python module: curses... yes
checking python module: libxml2... no
configure: error: failed to find required module libxml2

I have "python-xml" in my "application.bb" file as DEPENDS variable, this i=
s working fine yocto daisy1.6, however this is not working with yocto pyro2=
.3


Best Regards,
Amit Gondaliya










***************************************************************************=
***************************************************************************=
******* eInfochips Business Disclaimer: This e-mail message and all attachm=
ents transmitted with it are intended solely for the use of the addressee a=
nd may contain legally privileged and confidential information. If the read=
er of this message is not the intended recipient, or an employee or agent r=
esponsible for delivering this message to the intended recipient, you are h=
ereby notified that any dissemination, distribution, copying, or other use =
of this message or its attachments is strictly prohibited. If you have rece=
ived this message in error, please notify the sender immediately by replyin=
g to this message and please delete it from your computer. Any views expres=
sed in this message are those of the individual sender unless otherwise sta=
ted. Company has taken enough precautions to prevent the spread of viruses.=
 However the company accepts no liability for any damage caused by any viru=
s transmitted by this email. **********************************************=
***************************************************************************=
************************************

--_000_HK2PR02MB1155068EF6C0F2371A6AFA2EFE230HK2PR02MB1155apcp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:11pt;color:#006fc9;font=
-family:Verdana,Geneva,sans-serif;" dir=3D"ltr">
<p>Hello All,</p>
<p><br>
</p>
<p>I am configuring one package using pyro 2.3 I sticked at below error..</=
p>
<p><br>
</p>
<p></p>
<div><b><i>checking python module: libxml2...<br>
no<br>
configure: error: failed to find required module libxml2</i></b><br>
<br>
</div>
<p></p>
<p></p>
<div><b><i>checking python module: curses... yes<br>
checking python module: libxml2... no<br>
configure: error: failed to find required module libxml2</i></b></div>
<div><b><i><br>
</i></b></div>
<div>I have &quot;<span>python-xml&quot;</span> in my &quot;application.bb&=
quot; file as <b>DEPEND</b><b>S</b> variable,
<i><b>this is working fine yocto daisy1.6, however this is not working with=
 yocto pyro2.3</b></i><br>
</div>
<div><br>
</div>
<p></p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 11pt; colo=
r: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Em=
oji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbo=
l&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<span style=3D"font-family:&quot;Comic Sans MS&quot;,fantasy,cursive"></spa=
n>
<table style=3D"margin:0px; padding:0px; max-width:100%; border-collapse:co=
llapse; border-spacing:0px; font-family:Arial,Helvetica,sans-serif" cellspa=
cing=3D"0">
<tbody style=3D"margin:0px; padding:0px">
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<b style=3D"margin:0px; padding:0px; border:0px; vertical-align:baseline; l=
ine-height:19.6000003814697px"><span style=3D"font-family:Verdana,Geneva,sa=
ns-serif; font-size:10pt">Best Regards,</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Verdana,Ge=
neva,sans-serif; font-size:10pt">Amit Gondaliya</span></b><br style=3D"marg=
in:0px; padding:0px">
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td style=3D"margin:0px; padding:0px; font-size:13px" valign=3D"top"><br>
</td>
<td style=3D"margin:0px; padding:13px 0px 0px; font-family:Calibri,sans-ser=
if; font-size:14px; color:rgb(0,75,118)" valign=3D"top">
<br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-size:13px"><br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<br>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
***************************************************************************=
***************************************************************************=
******* eInfochips Business Disclaimer: This e-mail message and all attachm=
ents transmitted with it are intended
 solely for the use of the addressee and may contain legally privileged and=
 confidential information. If the reader of this message is not the intende=
d recipient, or an employee or agent responsible for delivering this messag=
e to the intended recipient, you
 are hereby notified that any dissemination, distribution, copying, or othe=
r use of this message or its attachments is strictly prohibited. If you hav=
e received this message in error, please notify the sender immediately by r=
eplying to this message and please
 delete it from your computer. Any views expressed in this message are thos=
e of the individual sender unless otherwise stated. Company has taken enoug=
h precautions to prevent the spread of viruses. However the company accepts=
 no liability for any damage caused
 by any virus transmitted by this email. **********************************=
***************************************************************************=
************************************************
</body>
</html>

--_000_HK2PR02MB1155068EF6C0F2371A6AFA2EFE230HK2PR02MB1155apcp_--
