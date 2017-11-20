Return-Path: <amit.gondaliya@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A67A1E00D2C; Mon, 20 Nov 2017 03:27:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [220.225.147.210 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.126.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0048.outbound.protection.outlook.com [104.47.126.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B920AE00D00
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eInfochipsIndia.onmicrosoft.com; s=selector1-einfochips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=So74mIWjgX25iuUyvDLG88SKtOlW53gc+Yql+5r/QLY=;
	b=LzNusvfOzjZEdefHNgDRZHZJqTH94jFCqn6dBWv5tnmOrW8I2JmODCPC++1ZWNSuCuD2bttEhwByWybCabyyW+pzhdCSEkeR3SiCCYzeatXk/PXK6PXRVMAOziBQ8BgbCMfUtGVAUKAMRLRqE5iWF1DeHJ//7Jh5Oh3YqUXIEi4=
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) by
	HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Mon, 20 Nov 2017 11:27:17 +0000
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf]) by HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf%14]) with mapi id 15.20.0239.009;
	Mon, 20 Nov 2017 11:27:17 +0000
From: Amit Gondaliya <amit.gondaliya@einfochips.com>
To: cddatemp <cddatemp@163.com>
Thread-Topic: Re:[yocto] Build Issue in pyro 2.3
Thread-Index: AQHTYec38c2t2/sZ7EqWPUW1pA0JVaMdG3kAgAACtM4=
Date: Mon, 20 Nov 2017 11:27:17 +0000
Message-ID: <HK2PR02MB115517DBFABA28592D4607EEFE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB115589BB4412D154E57FAF93FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>,
	<771e4475.9ac8.15fd91bd280.Coremail.cddatemp@163.com>
In-Reply-To: <771e4475.9ac8.15fd91bd280.Coremail.cddatemp@163.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=amit.gondaliya@einfochips.com; 
x-originating-ip: [220.225.147.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR02MB1155;
	6:8fC1HCIpIreoDWQY9XAFw90kAL4E9WADzzE86QtJF843qzG15VKaDRPTNMq50YVf0ZXD3FDJLN2C0QaH8mqirOT0bvfEHSP34P9OS3zZQdbhRoNDxlNC+jW6eZ3HV7o4oNrIGo1cYaHsH6aT+tN/jzBSdJ0Sia6QEsG+O5hRgBQ/FtDcVQdxhk3kz4Bu8fKTfC8DbLptFuCaQl8oJsuCeMjBz2zHpP9gz9leg1KSrx9yfHC0hmYDb4RvEV6vWg2xInxg2Ratucae6PSwE5B4qr1+moc1JxZKsTomG8/zVJN95npUTcPchGsy3mKsIlBHczcyQuJWsnUtJa3Cqx7q+1WItvX21iOtKjhig9cxQTE=;
	5:u6J8QMsPbXp+QRD41M+3n3EvYSYFk8/IJJjXGp7qN78/zYjzppV0S4Ms1jd1gjvwoZLv0ExA2muSFKaBkutNhZ2x4ZEKpTtFUPL40rltc44UhC29qj3lQDv7Q9Isgcmla2eKRC+vNzlJbJU+1H5ntmNKgQSZ/JDADE55I+ptcgg=;
	24:BJvA0tbE3Sd6B9TZ/r/E6cWcC62FRKAE6C6ak++9eTeZRMPVD+wVsgRs/7cqctFTlyoUfGyidayWjm001kkEPU3udUwjKIO+5BYU6G8ryeo=;
	7:PZblKYY+6ZabOisB+ZTq4fJs6dIL1uT0uW8MKiycW+OAlYVF2OFzRE0CcgpH+EnjU7k+AB2hyF+mEMKZsLna8ul7vQRwdYCPuEvkUD+IiEmgmhKZn/yYzwPBTVrhTDX/T5y55IVenSWgT9S7be4RBErDI/9bkVgRFqQzg84rxVn5lU7w1p3s8IfLznKcZuJVGbMl6S/Vu2EFkRQLcM6TatFUA0kVJKqfs23p24gRKnizHkfh+4BnSBDRuMIA4fdk
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 58ff8711-dee9-471d-f97a-08d53009a7fa
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258)(49563074);
	SRVR:HK2PR02MB1155; 
x-ms-traffictypediagnostic: HK2PR02MB1155:|HK2PR02MB1155:
x-microsoft-antispam-prvs: <HK2PR02MB11557BFAE79060CA28D5EA69FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(69454984189310)(130843839470238);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(102415395)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3231022)(3002001)(93006095)(93001095)(6041248)(20161123562025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR02MB1155; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR02MB1155; 
x-forefront-prvs: 04976078F0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(346002)(39830400002)(24454002)(199003)(377424004)(189002)(5660300001)(189998001)(106356001)(478600001)(7696004)(19627405001)(86362001)(50986999)(76176999)(74316002)(54356999)(97736004)(99936001)(4001150100001)(7736002)(316002)(81166006)(14454004)(8676002)(81156014)(5890100001)(55016002)(25786009)(9686003)(54896002)(68736007)(6916009)(5250100002)(2950100002)(53546010)(6116002)(102836003)(3846002)(2906002)(6506006)(229853002)(6436002)(4326008)(101416001)(6606003)(6246003)(53936002)(8936002)(2900100001)(33656002)(105586002)(66066001)(3660700001)(3280700002)(99286004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR02MB1155;
	H:HK2PR02MB1155.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58ff8711-dee9-471d-f97a-08d53009a7fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2017 11:27:17.2468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB1155
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Issue in pyro 2.3
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
X-List-Received-Date: Mon, 20 Nov 2017 11:27:22 -0000
X-Groupsio-MsgNum: 38844
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_"

--_004_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_
Content-Type: multipart/alternative;
	boundary="_000_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_"

--_000_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


In our case the Package is "Y" but all the data falls into the recipe-sysro=
ot-native of "Y." any Idea what's wrong with Y.
is there any example of "Y-native" that help me to generate "Y-native"" fro=
m "Y"

Please find the attached file of Y.bb



Best Regards,
Amit Gondaliya












________________________________
From: cddatemp <cddatemp@163.com>
Sent: Monday, November 20, 2017 4:36 PM
To: Amit Gondaliya
Cc: yocto@yoctoproject.org
Subject: Re:[yocto] Build Issue in pyro 2.3

At 2017-11-20 18:18:42, "Amit Gondaliya" <amit.gondaliya@einfochips.com> wr=
ote:
> Hello,
>
> I am configuring one  package "X" that is depended on other  package "Y".
>
> the "Y" package is successfully build and I am able to find it into the b=
elow path.
>
> <workspace>tmp/work/cortexa8hf-neon-poky-linux-gnueabi/"Y"/0.1.0-r1/recip=
e-sysroot-native/usr/bin
>
> As per my understanding if the package "X" is depended on the package "Y"
> then all the components of the package "Y" should be copied into the path=
 "recipe-sysroot-native/usr/bin" of the package "X".
>

If "Y" is "Y-native", then it should be in "recipe-sysroot-native".


If it is just "Y", then it should be in "recipe-sysroot".

> But I am not able to find the depended package "Y" into the recipe-sysroo=
t-native of the Package "X".
>
> If I my understanding is false let me know the correct way to do this.
> As I am not able to find the package "Y" into the dir "recipe-sysroot-nat=
ive/usr/bin" of package "X"
>
> thanks
> Amit G.
>
> Best Regards,
> Amit Gondaliya

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

--_000_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_
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
<p>Hello,</p>
<p><br>
</p>
<p></p>
<div>In our case the Package is &quot;Y&quot; but all the data falls into t=
he <span>recipe-sysroot-native</span> of &quot;Y.&quot; any Idea what's wro=
ng with Y.<br>
</div>
<div>is there any example of &quot;Y-native&quot; that help me to generate =
&quot;Y-native&quot;&quot; from &quot;Y&quot;</div>
<div><br>
</div>
<div>Please find the attached file of Y.bb<br>
</div>
<br>
<p></p>
<p><br>
</p>
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
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> cddatemp &lt;cddatem=
p@163.com&gt;<br>
<b>Sent:</b> Monday, November 20, 2017 4:36 PM<br>
<b>To:</b> Amit Gondaliya<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re:[yocto] Build Issue in pyro 2.3</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"line-height:1.7; color:#000000; font-size:14px; font-family:A=
rial">
<div>At 2017-11-20 18:18:42, &quot;Amit Gondaliya&quot; &lt;amit.gondaliya@=
einfochips.com&gt; wrote:</div>
<div>&gt; Hello,</div>
<div>&gt;</div>
<div>&gt; I am configuring one &nbsp;package &quot;X&quot; that is depended=
 on other &nbsp;package &quot;Y&quot;.</div>
<div>&gt;</div>
<div>&gt; the &quot;Y&quot; package is successfully build and I am able to =
find it into the below path.</div>
<div>&gt;</div>
<div>&gt; &lt;workspace&gt;tmp/work/cortexa8hf-neon-poky-linux-gnueabi/&quo=
t;Y&quot;/0.1.0-r1/recipe-sysroot-native/usr/bin</div>
<div>&gt;</div>
<div>&gt; As per my understanding if the package &quot;X&quot; is depended =
on the package &quot;Y&quot;&nbsp;</div>
<div>&gt; then all the components of the package &quot;Y&quot; should be co=
pied into the path &quot;recipe-sysroot-native/usr/bin&quot; of the package=
 &quot;X&quot;.</div>
<div>&gt;</div>
<div><br>
</div>
<div>If &quot;Y&quot; is &quot;Y-native&quot;, then it should be in &quot;r=
ecipe-sysroot-native&quot;.</div>
<br>
<div><br>
</div>
<div>If it is just &quot;Y&quot;, then it should be in &quot;recipe-sysroot=
&quot;.</div>
<div><br>
</div>
<div>&gt; But I am not able to find the depended package &quot;Y&quot; into=
 the recipe-sysroot-native of the Package &quot;X&quot;.</div>
<div>&gt;</div>
<div>&gt; If I my understanding is false let me know the correct way to do =
this.</div>
<div>&gt; As I am not able to find the package &quot;Y&quot; into the dir &=
quot;recipe-sysroot-native/usr/bin&quot; of package &quot;X&quot;</div>
<div>&gt;</div>
<div>&gt; thanks</div>
<div>&gt; Amit G.</div>
<div>&gt;</div>
<div>&gt; Best Regards,</div>
<div>&gt; Amit Gondaliya</div>
<div><br>
</div>
</div>
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

--_000_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_--

--_004_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_
Content-Type: application/octet-stream; name="Y_0.1.0.bb"
Content-Description: Y_0.1.0.bb
Content-Disposition: attachment; filename="Y_0.1.0.bb"; size=515;
	creation-date="Mon, 20 Nov 2017 11:26:21 GMT";
	modification-date="Mon, 20 Nov 2017 11:26:21 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiQW4gZXh0ZW5zaWJsZSBZIHZhbGlkYXRvciBhbmQgY29udmVydGVyIGlu
IHB5dGhvbiIKU0VDVElPTiA9ICJsaWJzIgpMSUNFTlNFID0gIkJTRCIKTElDX0ZJTEVTX0NIS1NV
TSA9ICJmaWxlOi8vTElDRU5TRTttZDU9MjM4MzA2N2NkYWU0ZGUzMzc3ZjEyMGJiN2RkZGRmYjIi
CgpTUkNfVVJJID0gImZpbGU6Ly9ZLnppcCIKClNSQ1JFVj0iYTJhNmNmNGMzNzRlMTY1NjQyYzQy
OThhOTcxM2E3MTRiY2U3NDRjNSIKUFIgPSAicjEiCgpERVBFTkRTID0gInB5dGhvbiBsaWJ4bWwy
IGxpYnhzbHQgY3VybCB6bGliIgoKUyA9ICIke1dPUktESVJ9L1kiCgppbmhlcml0IHNldHVwdG9v
bHMgYXV0b3Rvb2xzLWJyb2tlbnNlcCBwa2djb25maWcgZ2V0dGV4dAoKCgpkb19jb25maWd1cmUo
KXsKfQoKCmRvX2NvbXBpbGUoKXsKfQoKCmRvX2luc3RhbGwoKSB7CgoJcHl0aG9uIHNldHVwLnB5
IGluc3RhbGwKCn0KCkFMTE9XX0VNUFRZXyR7UE59ID0gIjEiCgpGSUxFU18ke1BOfSA9ICIvKiIK
Cgo=

--_004_HK2PR02MB115517DBFABA28592D4607EEFE220HK2PR02MB1155apcp_--
