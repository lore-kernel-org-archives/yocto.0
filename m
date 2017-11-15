Return-Path: <amit.gondaliya@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 638C4E00CD4; Wed, 15 Nov 2017 09:17:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.68 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [220.225.147.210 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 18822 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Nov 2017 09:17:03 PST
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0068.outbound.protection.outlook.com [104.47.126.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B06A4E00C11
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 09:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eInfochipsIndia.onmicrosoft.com; s=selector1-einfochips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=viDkgUVgpyyvpmcMG9wIFsxUxXd2E81sdjeouFyIFQc=;
	b=g9Ey+Tg/NFMLrrL+qUb4VlvaaYSrbXZfr1VR+Y/t4VEIZ6dz5UsDkOlthQrQGeJH0QpWWmxMlr2o3E6lqJJZJhrokE3PnawmP8uoIaiDlqIQg7Zo39NWZJxK3w8Mbt1JRt/QhkYeKEFctClb0uZS96G+8aPfVuo5k9n72LuJJRg=
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) by
	HK2PR02MB1153.apcprd02.prod.outlook.com (10.165.55.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.218.12; Wed, 15 Nov 2017 12:03:17 +0000
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::9529:47d4:83d0:3c82]) by
	HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::9529:47d4:83d0:3c82%14]) with mapi id 15.20.0218.015;
	Wed, 15 Nov 2017 12:03:17 +0000
From: Amit Gondaliya <amit.gondaliya@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: libnetconf 0.9.0 configuring error in yocto pyro 2.3
Thread-Index: AQHTXgm4nNm76LeA6E29qaRs1wFaPw==
Date: Wed, 15 Nov 2017 12:03:17 +0000
Message-ID: <HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290@HK2PR02MB1155.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=amit.gondaliya@einfochips.com; 
x-originating-ip: [220.225.147.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR02MB1153;
	6:iAtFTpzNnttaD9kHaWvRwDAoDWOiCKVgBDzF6JG/mW5rXUwUQX/F2OtKhxzNfbJEX595NZDMH3oSYYJgc2pKMVFqbWuCDfLGT8I21/wn9A6KcmP8AMKRmom0o8z2JZlWDHMeS+LIm2dJOEofNAhE0GM8jJKxV7lm45ucxYMhbVCC8itoPC06RoHvru1NIvL8F/OnqmmCCCm+g54qQ6cimOozeTukl13enDHZJyAmUk936TDgnSt8PPQmrgiIWF0OgYgH5t3/WpJ+f36js5m4IuBRh1SHZp0An9z92i574C1PfSj3kkkWMVtQ+jvRhhb4CTSLk40oXMjXEeqalm579+HcjyN8AnA+OOQj/2NHCmY=;
	5:Tev3AyRLTiLIN+3vV43/dAGEPiq55cjnj04WNYEn9CwU/LUcklohbb4KuIgKj7we9vpYJaz7CnoL3bR5kCdF+/9SAxafpgRjpdgh5rXKt1sZL5cCKACwgoDDyRo7TXpSOMlVy2Lj/sY/e7CS9RbI3cnsDvqxBMXMN4PQrimAoY0=;
	24:Mub7cU0jYG6Zwk4zUsTN22GN+Hdx4KvbX3aXrAniwUkXcyxgDBfsrhvJ2uobwPpl/OSAAEEHN5rQzahLTwQF8yr4wfzJpJPWtZPEkV95SW8=;
	7:R6YlSuLmBjRVZHwJ2Ql5Ylpm+5/CCLCOvazgm0c8leHzq/xI2tNftw03bW85OUjFZNk0GfBdDzUtYOECZIy3tDsitxg8AWxczDsSElX3RjdF0GmPnvJj91qNkpP5kKMytrtuiAQKBrNOPGimVO4cfn8AO2TM62ZI+KRFp+rWFn1+t+D0Qq+yVIqxTbRz1Bs9pwgVpej8hdd7+iW2G08GyjKAq44AMEhZPgEWptoyDbF7f9T+iUq0zw3ynsQQyzKY
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 2e83558e-71f4-4af4-e139-08d52c20db80
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:HK2PR02MB1153; 
X-MS-TrafficTypeDiagnostic: HK2PR02MB1153:|HK2PR02MB1153:|HK2PR02MB1153:
x-microsoft-antispam-prvs: <HK2PR02MB1153258F8D11997E214262AEFE290@HK2PR02MB1153.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3231022)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(3002001)(6041248)(20161123560025)(20161123555025)(20161123562025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR02MB1153; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR02MB1153; 
x-forefront-prvs: 0492FD61DD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(346002)(39830400002)(53754006)(199003)(189002)(3280700002)(105586002)(8676002)(5660300001)(316002)(1730700003)(25786009)(54356999)(50986999)(6506006)(99286004)(33656002)(97736004)(106356001)(81166006)(81156014)(2906002)(2351001)(101416001)(19627405001)(3660700001)(478600001)(74316002)(6916009)(55016002)(3846002)(7696004)(5890100001)(14454004)(6606003)(66066001)(2900100001)(53936002)(7736002)(8936002)(6116002)(2501003)(5640700003)(5250100002)(102836003)(68736007)(189998001)(54896002)(6436002)(9686003)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR02MB1153;
	H:HK2PR02MB1155.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e83558e-71f4-4af4-e139-08d52c20db80
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2017 12:03:17.4619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB1153
X-Microsoft-Exchange-Diagnostics: 1; HK2PR02MB1153;
	23:ha2rQqfvuM/S9b0yil2DwVsfPLGxHgnltfxgeySniGXCsB+yEtt5JOHzFTwzEYy+LZsAir2Mm9V/S1SgOQ7klAjrUDZvZjjRCNXhVPKcjxnoigdUTYKIWP0mdTA8eJVn41mrJuaAo4rGnUO6KILnfA==
X-OriginatorOrg: einfochips.com
Subject: libnetconf 0.9.0 configuring error in yocto pyro 2.3
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
X-List-Received-Date: Wed, 15 Nov 2017 17:17:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290HK2PR02MB1155apcp_"

--_000_HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290HK2PR02MB1155apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All


I am facing below error, while configuring libnetconf 0.9.0 with yocto pyro=
 2.3


ERROR: /usr/bin/xml2-config should not be used, use an alternative such as =
pkg-config
ERROR: /usr/bin/xslt-config should not be used, use an alternative such as =
pkg-config

does anybody know how to patch configuration.ac file to resolve this issue.


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

--_000_HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290HK2PR02MB1155apcp_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 11pt; colo=
r: rgb(0, 111, 201); font-family: Verdana,Geneva,sans-serif,&quot;EmojiFont=
&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;">
<p>Hi All</p>
<p><br>
</p>
<p>I am facing below error, while configuring libnetconf 0.9.0 with yocto p=
yro 2.3</p>
<p><br>
</p>
<p></p>
<pre><b>ERROR: /usr/bin/xml2-config should not be used, use an alternative =
such as pkg-config=0A=
ERROR: /usr/bin/xslt-config should not be used, use an alternative such as =
pkg-config<br><br></b>does anybody know how to patch configuration<b></b>.a=
c file to resolve this issue.<br><br></pre>
<p></p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:11pt; color=
:rgb(0,0,0); background-color:rgb(255,255,255); font-family:Calibri,Arial,H=
elvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&qu=
ot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;An=
droid Emoji&quot;,EmojiSymbols">
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

--_000_HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290HK2PR02MB1155apcp_--
