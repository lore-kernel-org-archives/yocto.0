Return-Path: <amit.gondaliya@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9346BE00CC4; Mon, 20 Nov 2017 06:52:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.63 listed in list.dnswl.org]
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
	(mail-pu1apc01on0063.outbound.protection.outlook.com [104.47.126.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 963CBE00BEA
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 06:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eInfochipsIndia.onmicrosoft.com; s=selector1-einfochips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Gi+lJO97LKA0ojyrCWDbc/Xr/g559NXOor8e5lFrQW0=;
	b=k2v3A0OipheVJ9gn8iMDHxxFTLOfs1o96vb8pvxAuNrkobq39Mq93qUzTIOpC937tp9Rr860DNk67AkskxcxfC4niVc2mT+7HP7OvPiTzc48Bkwv1+VVpv+bvMuOBfHzpTwSoaKwyyEqw5CG0IMn0LzJkXiestbDnC7SyO5uIHs=
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) by
	HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Mon, 20 Nov 2017 14:52:41 +0000
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf]) by HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf%14]) with mapi id 15.20.0239.009;
	Mon, 20 Nov 2017 14:52:41 +0000
From: Amit Gondaliya <amit.gondaliya@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build is using host x86_64 python2.7 instead of cross-compiled
Thread-Index: AQHTYg83O/SFDqtSTEWbfBwnQ5xeNg==
Date: Mon, 20 Nov 2017 14:52:41 +0000
Message-ID: <HK2PR02MB11556DBBA901FAB12B35D192FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=amit.gondaliya@einfochips.com; 
x-originating-ip: [220.225.147.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR02MB1155;
	6:ef687YUS9lzOvoTuBH8jVvRHQ1R3mTR6Im4oYtdf0Jh+TwmGAWtog+Ca+DCg+aCoRIjt6z4jxJT/PpdjwKvuPjtBOwMqDrnjg6fPOOvvAAS/3GDK970rBRyw3dNM7g1/5Eo5TQpUptBd6veUHCy+xcyqnhQ8vlwQ1XFzLGivVAL8tEaH+NPMvpw812SJ8j3OtQmL4Y+mtGyTlmnWz29Pj7ZVnNjT1abMgQSp9rjGrHMcMeWEmTVVaDyzNyXxK9Dresr182JeLaYuoxyGtxhxix+46SEGjVI9f619joDIMROvmyo9dSitGVdNjobejduf63iXKjcFQi160bOF4b1TQG54I5hqvO98l21Ao8S8oMY=;
	5:Buj+Cioy9D79opmBFgfk14QWScOY+QdTP+V7VynYwDDEioFLK491oSNlzxsxrLjIdSiNV9FziGCD7K1vfq2gVGFPEL3MbjGqAFlG9p0uQPzJ1OGo0gnsExj4CUS18QUmj11QOWCn9shWTds5SL4aWKFUIrFIhA/RSFeSRao300Q=;
	24:Nip2mmO5ToDGpPZlr20nxqvpuf3i8QkhOlNGumJMCkpRVLPh474zaLY9uqSc+eyMa3AEV8ETc1no38OomZzujvgtwHxJXJ7/bzHBt9aMV9A=;
	7:w+2LiarZwpCMLY9Zp/NPOZ5drFpAl+K4Ue3Pv6QTJMdig/PJhaQH4P9xXQ9xq0mjhXSxxdajlUZnFHW5JOkgC7AKBtRLSkCMM99fJR/xLfxiVKrvw/rcdY/9Klf87d1Aq7E+tfdf8AGwCH/UpM5oRUFBMWClZJqJVEhZiqTYy0FRTA42bPHvpRF6oZeT8OgWooyrsXO20Rp+YHST3Y9aXVRu+sZ7xXRkk3cIZbb78HQZsM6Su1yYVehW2inJNmsH
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 11c3fd0b-9996-4507-36b2-08d5302659b8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:HK2PR02MB1155; 
x-ms-traffictypediagnostic: HK2PR02MB1155:|HK2PR02MB1155:
x-microsoft-antispam-prvs: <HK2PR02MB1155F9BA7D4B9F9A2357978BFE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3231022)(3002001)(93006095)(93001095)(6041248)(20161123562025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR02MB1155; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR02MB1155; 
x-forefront-prvs: 04976078F0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(39830400002)(346002)(199003)(189002)(53754006)(5660300001)(189998001)(478600001)(7696004)(106356001)(2351001)(19627405001)(86362001)(316002)(2501003)(54356999)(74316002)(50986999)(97736004)(7736002)(81166006)(81156014)(1730700003)(8676002)(14454004)(5890100001)(55016002)(25786009)(9686003)(54896002)(68736007)(5640700003)(6916009)(5250100002)(6116002)(102836003)(3846002)(2906002)(6506006)(6436002)(101416001)(53936002)(6606003)(8936002)(2900100001)(33656002)(105586002)(3660700001)(66066001)(3280700002)(99286004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR02MB1155;
	H:HK2PR02MB1155.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11c3fd0b-9996-4507-36b2-08d5302659b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2017 14:52:41.4459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB1155
Subject: Build is using host x86_64 python2.7 instead of cross-compiled
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
X-List-Received-Date: Mon, 20 Nov 2017 14:52:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR02MB11556DBBA901FAB12B35D192FE220HK2PR02MB1155apcp_"

--_000_HK2PR02MB11556DBBA901FAB12B35D192FE220HK2PR02MB1155apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,


I am configuring one package and found the following error.


 File "/usr/lib/python2.7/subprocess.py", line 567, in check_output
   process =3D Popen(stdout=3DPIPE, *popenargs, **kwargs)
 File "/usr/lib/python2.7/subprocess.py", line 711, in __init__
   errread, errwrite)
 File "/usr/lib/python2.7/subprocess.py", line 1343, in _execute_child
   raise child_exception
OSError: [Errno 2] No such file or directory

it is looking like bitbake is taking host (x86_64) python rather than using=
 <package_name>/0.8-r1/recipe-sysroot/usr/lib/python2.7

does anyone know why this is happening ..?




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

--_000_HK2PR02MB11556DBBA901FAB12B35D192FE220HK2PR02MB1155apcp_
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
<p>I am configuring one package and found the following error.</p>
<p><br>
</p>
<p></p>
<div><i>&nbsp;File &quot;/usr/lib/python2.7/subprocess.py&quot;, line 567, =
in check_output<br>
&nbsp;&nbsp; process =3D Popen(stdout=3DPIPE, *popenargs, **kwargs)<br>
&nbsp;File &quot;/usr/lib/python2.7/subprocess.py&quot;, line 711, in __ini=
t__<br>
&nbsp;&nbsp; errread, errwrite)<br>
&nbsp;File &quot;/usr/lib/python2.7/subprocess.py&quot;, line 1343, in _exe=
cute_child<br>
&nbsp;&nbsp; raise child_exception<br>
OSError: [Errno 2] No such file or directory</i></div>
<div><i><br>
</i></div>
<div>it is looking like bitbake is taking host (x86_64) python rather than =
using <b>
&lt;package_name&gt;<span>/0.8-r1/recipe-sysroot/usr/lib/python2.7</span></=
b><br>
</div>
<div><br>
</div>
<div>does anyone know why this is happening ..?<br>
</div>
<br>
<p></p>
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

--_000_HK2PR02MB11556DBBA901FAB12B35D192FE220HK2PR02MB1155apcp_--
