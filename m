Return-Path: <stephanie2839@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53D76E00E4B; Thu, 21 Apr 2016 08:53:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stephanie2839[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC1S20.hotmail.com (bay004-omc1s20.hotmail.com
	[65.54.190.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B12E00DB4
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 08:53:04 -0700 (PDT)
Received: from APC01-PU1-obe.outbound.protection.outlook.com ([65.54.190.59])
	by BAY004-OMC1S20.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 21 Apr 2016 08:53:04 -0700
Received: from HK2APC01FT052.eop-APC01.prod.protection.outlook.com
	(10.152.248.55) by HK2APC01HT050.eop-APC01.prod.protection.outlook.com
	(10.152.249.154) with Microsoft SMTP Server (TLS) id 15.1.453.6;
	Thu, 21 Apr 2016 15:53:02 +0000
Received: from KL1PR01MB1045.apcprd01.prod.exchangelabs.com (10.152.248.56) by
	HK2APC01FT052.mail.protection.outlook.com (10.152.248.244) with
	Microsoft
	SMTP Server (TLS) id 15.1.453.6 via Frontend Transport; Thu, 21 Apr 2016
	15:53:01 +0000
Received: from KL1PR01MB1045.apcprd01.prod.exchangelabs.com ([10.169.108.11])
	by KL1PR01MB1045.apcprd01.prod.exchangelabs.com ([10.169.108.11])
	with mapi id 15.01.0466.023; Thu, 21 Apr 2016 15:53:01 +0000
From: =?gb2312?B?tsUg6rs=?= <stephanie2839@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: what does ${libdir} refer to?
Thread-Index: AQHRm96FFQ65hh1y0keQju03zK5l5A==
Date: Thu, 21 Apr 2016 15:53:01 +0000
Message-ID: <KL1PR01MB1045496EC2AA630395CB8637B66E0@KL1PR01MB1045.apcprd01.prod.exchangelabs.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 25.152.248.56)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 25.152.248.56 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LzNY2eeMa8bB9uM7QUvgiCV51BVBSoxQ]
x-eopattributedmessage: 0
x-forefront-antispam-report: CIP:25.152.248.56; IPV:NLI; CTRY:GB; EFV:NLI;
	SFV:NSPM; SFS:(10019020)(98900003); DIR:OUT; SFP:1102; SCL:1;
	SRVR:HK2APC01HT050;
	H:KL1PR01MB1045.apcprd01.prod.exchangelabs.com; FPR:;
	SPF:SoftFail; MLV:ovrnspm; MX:1; A:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 1a4f605b-328a-40de-1c62-08d369fd04db
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(5061506196)(5061507196)(1603103041)(1603101041)(1601125047);
	SRVR:HK2APC01HT050; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:HK2APC01HT050; BCL:0; PCL:0; RULEID:; SRVR:HK2APC01HT050; 
x-forefront-prvs: 091949432C
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2016 15:53:01.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT050
X-OriginalArrivalTime: 21 Apr 2016 15:53:04.0318 (UTC)
	FILETIME=[E3DCF5E0:01D19BE5]
Subject: what does ${libdir} refer to?
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
X-List-Received-Date: Thu, 21 Apr 2016 15:53:08 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_KL1PR01MB1045496EC2AA630395CB8637B66E0KL1PR01MB1045apcp_"

--_000_KL1PR01MB1045496EC2AA630395CB8637B66E0KL1PR01MB1045apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGVsbG8gdGhlcmUhDQoNCkkgaGF2ZSBhIHF1ZXN0aW9uIGFib3V0IHRoZSBhYnNvbHV0ZSBwYXRo
IG9mICR7bGliZGlyfS4NCg0KZm9yIGV4YW1wbGUgaW4gcG9jbyByZWNpcGU6DQoNCg0KaGVyZSBp
czoNCg0KUEFDS0FHRVMgKz0gIiR7UE59LWRldiAke1BOfS1zdGF0aWNkZXYiDQpGSUxFU18ke1BO
fS1kZXYgPSAiJHtpbmNsdWRlZGlyfSAke2xpYmRpcn0vbGliUG9jbyouc28gJHtsaWJkaXJ9L2Nt
YWtlIg0KRklMRVNfJHtQTn0tc3RhdGljZGV2ID0gIiR7bGliZGlyfS9saWJQb2NvKi5hIg0KDQoN
CmkgaGF2ZSBzZWFyY2hlZCBmb3IgdGhlIHlvY3RvIHJlZmVyZW5jZS4gSW4gbWV0YS9jb25mL2Jp
dGJha2UuY29uZiB3ZSBjYW4gc2VlDQoNCmJhc2VsaWIgPSAiJHtCQVNFTElCfSINCkJBU0VMSUIg
PSAibGliIg0KDQojIFBhdGggcHJlZml4ZXMNCmV4cG9ydCBleGVjX3ByZWZpeCA9ICIvdXNyIg0K
DQojIEFyY2hpdGVjdHVyZSBkZXBlbmRlbnQgcGF0aHMNCmV4cG9ydCBiaW5kaXIgPSAiJHtleGVj
X3ByZWZpeH0vYmluIg0KZXhwb3J0IGxpYmRpciA9ICIke2V4ZWNfcHJlZml4fS8ke2Jhc2VsaWJ9
Ig0KDQpEb2VzIHRoaXMgbWVhbiB0aGF0ICR7bGliZGlyfSA9L3Vzci9saWIgaW4gbXkgaG9zdCBt
YWNoaW5lLiBCdXQgaSBjYW4ndCBmaW5kIHN1Y2ggbGlicmFyaWVzKGxpYlBvY28qLnNvKSBpbiBt
eSBob3N0KHVidW50dSAxNC4wNCkgdW5kZXIgL3Vzci9saWINCkkgdGhpbmsgaSBtaXN1bmRlcnN0
YW5kIHRoZSBhYnNvbHV0ZSBwYXRoIG9mICR7bGliZGlyfS4gV2hvIGNhbiB0ZWxsIG1lIHRoZSBy
aWdodCBtZWFuaW5nIG9mIHRoaXMuIFRoYW5rcyBmb3IgaGVscGluZy4NCg0KcmVnYXJkcw0KaGFv
IGR1DQoNCg==

--_000_KL1PR01MB1045496EC2AA630395CB8637B66E0KL1PR01MB1045apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello there!</p>
<p>I have a question about the absolute path of ${libdir}.</p>
<p>for example in poco recipe:</p>
<p><br>
</p>
<p>here is:</p>
<p></p>
<pre style=3D"padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size:=
 13.3333px;"><code>PACKAGES <span class=3D"hl opt">&#43;=3D</span> <span cl=
ass=3D"hl str" style=3D"color: rgb(191, 3, 3);">&quot;${PN}-dev ${PN}-stati=
cdev&quot;</span>=0A=
FILES_<span class=3D"hl kwd" style=3D"color: rgb(1, 1, 129);">${PN}</span><=
span class=3D"hl opt">-</span>dev <span class=3D"hl opt">=3D</span> <span c=
lass=3D"hl str" style=3D"color: rgb(191, 3, 3);">&quot;${includedir} ${libd=
ir}/libPoco*.so ${libdir}/cmake&quot;</span>=0A=
FILES_<span class=3D"hl kwd" style=3D"color: rgb(1, 1, 129);">${PN}</span><=
span class=3D"hl opt">-</span>staticdev <span class=3D"hl opt">=3D</span> <=
span class=3D"hl str" style=3D"color: rgb(191, 3, 3);">&quot;${libdir}/libP=
oco*.a&quot;</span></code></pre>
<br>
<p></p>
<p>i have searched for the yocto&nbsp;reference. In meta/conf/bitbake.conf =
we can see</p>
<p></p>
<div><br>
</div>
<div>
<div>baselib =3D &quot;${BASELIB}&quot;<br>
BASELIB =3D &quot;lib&quot;</div>
<br>
</div>
<div># Path prefixes<br>
export exec_prefix =3D &quot;/usr&quot;<br>
<br>
</div>
<div># Architecture dependent paths<br>
export bindir =3D &quot;${exec_prefix}/bin&quot;<br>
export libdir =3D &quot;${exec_prefix}/${baselib}&quot;<br>
<br>
Does this mean that ${libdir} =3D/usr/lib in my host machine. But i can't&n=
bsp;find such libraries(<code style=3D"font-size: 13.3333px;"><span class=
=3D"hl str" style=3D"color: rgb(191, 3, 3);">libPoco*.so</span></code><span=
 style=3D"font-size: 12pt;">) in my host(ubuntu 14.04)
 under /usr/lib</span><br>
I think i misunderstand the absolute&nbsp;path of&nbsp;<span style=3D"font-=
family: Calibri, Arial, Helvetica, sans-serif, 'Apple Color Emoji', 'Segoe =
UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', EmojiSymbols=
; font-size: 16px;">${libdir}. Who can tell
 me the right meaning of this. Thanks for helping.</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Ap=
ple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'And=
roid Emoji', EmojiSymbols; font-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Ap=
ple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'And=
roid Emoji', EmojiSymbols; font-size: 16px;">regards</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Ap=
ple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'And=
roid Emoji', EmojiSymbols; font-size: 16px;">hao du</span></div>
&nbsp;
<p></p>
</div>
</body>
</html>

--_000_KL1PR01MB1045496EC2AA630395CB8637B66E0KL1PR01MB1045apcp_--
