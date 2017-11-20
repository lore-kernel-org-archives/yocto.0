Return-Path: <amit.gondaliya@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 001E7E00D2C; Mon, 20 Nov 2017 02:18:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.80 listed in list.dnswl.org]
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
	(mail-pu1apc01on0080.outbound.protection.outlook.com [104.47.126.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D138E00D23
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 02:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eInfochipsIndia.onmicrosoft.com; s=selector1-einfochips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qimcTAXY+arw8UQASfschJZD+YDclrI157kV8EJZG5M=;
	b=EOWs2wl8G3iUpF54atOLZT2qz85ObR4hy4p+cSHBsL9S+te+r84xJK3SIxfEW4jqR7h/Yisc+1Ctvywgd48LcGRCKOLbjtp/AmkSuBZqYZeCRkMdp+DBSqZMbf6Fq/9fl2UL8aHlaG7ntok2tyuRmN9vd2YcGMRW/GZ2z6w7/Yo=
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) by
	HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Mon, 20 Nov 2017 10:18:42 +0000
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf]) by HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf%14]) with mapi id 15.20.0239.009;
	Mon, 20 Nov 2017 10:18:42 +0000
From: Amit Gondaliya <amit.gondaliya@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build Issue in pyro 2.3
Thread-Index: AQHTYec38c2t2/sZ7EqWPUW1pA0JVQ==
Date: Mon, 20 Nov 2017 10:18:42 +0000
Message-ID: <HK2PR02MB115589BB4412D154E57FAF93FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=amit.gondaliya@einfochips.com; 
x-originating-ip: [220.225.147.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR02MB1155;
	6:cb/zHgaheI9AB0Nb6TXRmU8EVWMdqbeFd0HkSzoIws8fUsOfATeZxq/1eciMrHTC2OEZBshR9et7IaC+5H8ixFZLM1mFaH3+uUJ+pXmSGrugBYenTwFyDIKOaZed/J0s24BnITSrviq+TqfBp6ootASc3ZkRniyv5c+SetUWzMriyxu9lRQZAD/9DVaqqsdIjMKDM9xETQxct8ki2KLQJ5HhGlN2eD+Pg58u/jy7KnlEkOX1FpuIcmsLVjENbTTGhAtHrwzPwvjQsTYip0gRFYLv/vPHj9r+YwLiiQF8vL5o+IEVznGhkCEkjfF5ruUbYQ6HI4F2HMHdXR26glF9JT6+CjHvIa97I8EOuvZ6ups=;
	5:qvlE0Nw2cSAFHNfug6mgRZ0D1t6GMTEwlKYUSXqXe8K25wxWD3G9GDzYX9Eac9MIyPpOuuMUpF5FDdyChCW0iuVF1Abu8u9G+ohQQQ/mIyR4HuAlsaj5IGE4UTL3YddLZU1w3cjTvPo2D4Fsn1wpCFlDaTI5HPdqa7Qrj7Ht9mA=;
	24:R8TGJ/BOsVawHWwGzQ8rVvk0DJ3iihmDGSnVBDm94dpjBphHJ9cLvCoI+oztvsA0l1d2vWK+J7hGOVC2r/rgMyu6MOAmVMwy68+umHUcC0E=;
	7:Z250Uj6/7R90VUO1C6F1JYWtBZ6Jf1jYoHiuYm9hBbc/SrZguiUMzDEqYgIg7h7Uqvda3OWdiTFfUX2jGyr4JZlPCyPEsPVdxPD5CKZpuOTbl457Tpn1r0bPecmWixV8noyYm6drrBnCfOjOtlIcm1Q3My41JFcP2meAaYmu4jfDILPJk8qjVyFhaSFCPDfBQXfzAxVh4yGa4AO3w8nF87vOBNXVx/Lo1VFRN6g1Vz60QB4TxKNzfZ+5HkHYExDX
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 9f7dd087-df35-424e-17a6-08d530001337
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:HK2PR02MB1155; 
x-ms-traffictypediagnostic: HK2PR02MB1155:|HK2PR02MB1155:
x-microsoft-antispam-prvs: <HK2PR02MB1155D5C5AF086F8EC599D8C9FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3231022)(3002001)(93006095)(93001095)(6041248)(20161123562025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR02MB1155; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR02MB1155; 
x-forefront-prvs: 04976078F0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(346002)(39830400002)(376002)(189002)(199003)(6436002)(6506006)(53936002)(101416001)(6606003)(5250100002)(5640700003)(6916009)(9686003)(54896002)(68736007)(6116002)(102836003)(3846002)(2906002)(66066001)(3660700001)(3280700002)(99286004)(33656002)(8936002)(2900100001)(105586002)(7696004)(86362001)(2351001)(19627405001)(5660300001)(478600001)(189998001)(106356001)(14454004)(1730700003)(81156014)(8676002)(81166006)(55016002)(25786009)(5890100001)(50986999)(54356999)(74316002)(2501003)(316002)(7736002)(97736004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR02MB1155;
	H:HK2PR02MB1155.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f7dd087-df35-424e-17a6-08d530001337
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2017 10:18:42.2210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB1155
Subject: Build Issue in pyro 2.3
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
X-List-Received-Date: Mon, 20 Nov 2017 10:18:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR02MB115589BB4412D154E57FAF93FE220HK2PR02MB1155apcp_"

--_000_HK2PR02MB115589BB4412D154E57FAF93FE220HK2PR02MB1155apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I am configuring one  package "X" that is depended on other  package "Y".


the "Y" package is successfully build and I am able to find it into the bel=
ow path.


<workspace>tmp/work/cortexa8hf-neon-poky-linux-gnueabi/"Y"/0.1.0-r1/recipe-=
sysroot-native/usr/bin


As per my understanding if the package "X" is depended on the package "Y" t=
hen all the components of the package "Y" should be copied into the path "r=
ecipe-sysroot-native/usr/bin" of the package "X".


But I am not able to find the depended package "Y" into the recipe-sysroot-=
native of the Package "X".


If I my understanding is false let me know the correct way to do this. As I=
 am not able to find the package "Y" into the dir "recipe-sysroot-native/us=
r/bin" of package "X"


thanks

Amit G.








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

--_000_HK2PR02MB115589BB4412D154E57FAF93FE220HK2PR02MB1155apcp_
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
<p>I am configuring one&nbsp; package&nbsp;<span>&quot;X&quot;</span> that =
is depended on other&nbsp; package
<span>&quot;Y&quot;</span>.<br>
</p>
<p><br>
</p>
<p>the &quot;Y&quot; package is successfully build and I am able to find it=
 into the below path.</p>
<p><br>
</p>
<p>&lt;workspace&gt;<span>tmp/work/cortexa8hf-neon-poky-linux-gnueabi/&quot=
;Y&quot;/0.1.0-r1</span>/<span>recipe-sysroot-native</span>/usr/bin</p>
<p><br>
</p>
<p>As per my understanding if the package &quot;X&quot; is depended on the =
package &quot;Y&quot; then all the components of the package &quot;Y&quot; =
should be copied into the path &quot;recipe-sysroot-native/usr/bin&quot; of=
 the package &quot;X&quot;.</p>
<p><br>
</p>
<p>But I am not able to find the depended package &quot;Y&quot; into the re=
cipe-sysroot-native of the Package &quot;X&quot;.</p>
<p><br>
</p>
<p>If I my understanding is false let me know the correct way to do this. A=
s I am not able to find the package &quot;Y&quot; into the dir &quot;<span>=
recipe-sysroot-native/usr/bin</span>&quot; of package &quot;X&quot;</p>
<p><br>
</p>
<p>thanks</p>
<p>Amit G.<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
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

--_000_HK2PR02MB115589BB4412D154E57FAF93FE220HK2PR02MB1155apcp_--
