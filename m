Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1E4DE00C0A; Sat, 29 Jul 2017 15:46:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.66 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1042 seconds by postgrey-1.32 at yocto-www;
	Sat, 29 Jul 2017 15:46:41 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0066.outbound.protection.outlook.com [104.47.32.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B203CE00825
	for <yocto@yoctoproject.org>; Sat, 29 Jul 2017 15:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uemxb1ysmXwgwe5GlcORMPwyMaB9eBn3BIUsvq61s/Q=;
	b=q4ohtv/5r4A5VxKwf6NXzW2lDDD2p+Hc4ys5bxPp24YH2XPcACW1DyIcKKnWr5uwCCkQpdmuy/MwF8haHeJ8tJxoKts/0yodHCrYXWBzvgiooTD45C9pWKjMgP0AlC7wiFc69mfBCpuKXJqYdnkoCMiQjof/dhefFfc0gOz5stQ=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1304.22; Sat, 29 Jul 2017 22:15:11 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.01.1304.022; Sat, 29 Jul 2017 22:15:11 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] bilding webkit/qtwebengine?
Thread-Index: AQHTCB5/QlmT5IDrFkaU0J1FaAQtrqJqZk0AgAD5fA0=
Date: Sat, 29 Jul 2017 22:15:11 +0000
Message-ID: <MWHPR01MB329387E2A437926AD7647391B6BC0@MWHPR01MB3293.prod.exchangelabs.com>
References: <MWHPR01MB3293F61E00763699373AC5F0B6BC0@MWHPR01MB3293.prod.exchangelabs.com>,
	<CAMKF1spgMpe+pN5Hy6DrpE_C8JmZKq-q+uZ=nB_DRTpDMD5SvQ@mail.gmail.com>
In-Reply-To: <CAMKF1spgMpe+pN5Hy6DrpE_C8JmZKq-q+uZ=nB_DRTpDMD5SvQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [153.203.84.160]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB3293;
	7:GF6kk1fL69zbEHUifxHoqJJsw62J+OVJcZQVNe7H4acMqylhtKrDbQPiXiy+qHS8itMSC3jca7UnGd4xgM5z1Nsosk3QKH+OruTzJNLcY33wYqxW8MRM8eA+Up5vMPoPjzNdnTAZGntb96/p4hCgztghbS1eeAD/PAWyFtdn1jTzqGPnh8BeopkR5dbYjoEYPRzAfzxuEp4D9r1s4PbS4LdbdwOoIf8FAgoLDP0az/yfRZ5jRGL+U0f2nsiuFYp5ihiW8SY2gE0MdZ7WZF4xNe/hrKW/GCKdCgZx41Bvp+R6OZoCd3HFkdVUNn5xiF7FPX2hmeCBZeK+guvixAcapcwmn8Cut8hZPZmWoE+h2K+/o7Es5YYZuNHN7totgMG8vti8xxoSib76zCPqBTuX1/rg5HLv/Wn8nYRCGSGno/BodYgwU54+gyASgqpYHBowWv6O6OGfsD6MFG3tSH+T6SufmImWW5OmqH9zLcTJG2yXy4W0QkgXldKD5XGSnWbow4KZUBWXIyK0THdkY2cRFbhrPz8t6Ttdmt++BFdHyAA/4CvmeWKwyXN+MDvQU3+dLmzo4ElS+d1zodVtCmg13xJifkg5xTxSdMzpq8Q0fktd+p5y/akT4LStX20rbcdwIoZnYsYiDBNZEWog7eIqtzSfV3RyBeC4xla++CLfhRyyfVwZL0JBYZmVsYL2TqnURQdbGjKmjW9ZhCdvWgOJ7/Grjlw15NuEsI22CD1/MaFgdh2UBY9A5juGDXxKLfjEggiQO1n8QJT8ET2XysRITyi/kuI6QUIf7bzsmwQiWcE=
x-ms-office365-filtering-correlation-id: f3c65362-d339-4901-4c18-08d4d6cf47d9
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254148)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB3293; 
x-ms-traffictypediagnostic: MWHPR01MB3293:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <MWHPR01MB329363E50A346CB154B12D8DB6BC0@MWHPR01MB3293.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(93006095)(93001095)(3002001)(6041248)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123564025)(20161123555025)(20161123558100)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB3293; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB3293; 
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39400400002)(39450400003)(39830400002)(39410400002)(189002)(199003)(66066001)(77096006)(38730400002)(478600001)(7696004)(81166006)(81156014)(68736007)(3846002)(102836003)(6116002)(97736004)(110136004)(86362001)(6506006)(7736002)(229853002)(2900100001)(6246003)(189998001)(3660700001)(33656002)(2906002)(8676002)(76176999)(53936002)(3280700002)(74316002)(54356999)(2950100002)(558084003)(6436002)(19627405001)(105586002)(8936002)(9686003)(6606003)(6916009)(54896002)(14454004)(106356001)(101416001)(50986999)(25786009)(99286003)(5660300001)(55016002)(39060400002)(4326008);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB3293;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2017 22:15:11.6205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3293
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bilding webkit/qtwebengine?
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
X-List-Received-Date: Sat, 29 Jul 2017 22:46:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR01MB329387E2A437926AD7647391B6BC0MWHPR01MB3293prod_"

--_000_MWHPR01MB329387E2A437926AD7647391B6BC0MWHPR01MB3293prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

>yes you can do that via a local.conf entry like
>
>PARALLEL_MAKE_pn-qtwebengine  =3D "-j 8"

Thank you this seems to work very well.


--_000_MWHPR01MB329387E2A437926AD7647391B6BC0MWHPR01MB3293prod_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello.</p>
<br>
<span style=3D"font-family: Calibri, Helvetica, sans-serif, Helvetica, Emoj=
iFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 13.3333px;">&gt;yes you can do that via a local.conf entry lik=
e</span><br style=3D"font-family: Calibri, Helvetica, sans-serif, Helvetica=
, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Not=
oColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiS=
ymbols; font-size: 13.3333px;">
&gt;<br style=3D"font-family: Calibri, Helvetica, sans-serif, Helvetica, Em=
ojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCol=
orEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbo=
ls; font-size: 13.3333px;">
<span style=3D"font-family: Calibri, Helvetica, sans-serif, Helvetica, Emoj=
iFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 13.3333px;">&gt;PARALLEL_MAKE_pn-qtwebengine&nbsp; =3D &quot;-=
j 8&quot;</span><br style=3D"font-family: Calibri, Helvetica, sans-serif, H=
elvetica, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&qu=
ot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;=
, EmojiSymbols; font-size: 13.3333px;">
<div style=3D"color: rgb(0, 0, 0);"><font size=3D"2"><span style=3D"font-si=
ze:10pt;">
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">Thank you this seems to work very&nbsp;well.</div>
<div class=3D"PlainText"><br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_MWHPR01MB329387E2A437926AD7647391B6BC0MWHPR01MB3293prod_--
