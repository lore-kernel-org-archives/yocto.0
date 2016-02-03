Return-Path: <kzertsekel@mrv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 554D9E00C40; Wed,  3 Feb 2016 09:06:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_IMAGE_ONLY_28, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS, T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.4 HTML_IMAGE_ONLY_28 BODY: HTML: images with 2400-2800 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0111.outbound.protection.outlook.com [157.56.112.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A29EE00C3C
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 09:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mrvil.onmicrosoft.com; 
	s=selector1-mrv-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=v+lxBCmSJQombEHqFrwlCGptMWAss0nser77r9vdlK0=;
	b=eqld5M/e7UcLQLGwaqQlGodhSRACfgrlnj+UEHjhwzmPHQI9a87J7UrUpOh+iBe8d1/fexekiivBK6Io0B6GwDORk+0KwKaTR8LTIUe4aRI4mDh3pjspNVxRSc/Rb6yRhbqr6qoAsFq3fpoC9M8fBYAJP0mgxwWRnraN3qkqnzg=
Received: from VI1PR03MB1567.eurprd03.prod.outlook.com (10.165.233.25) by
	VI1PR03MB1565.eurprd03.prod.outlook.com (10.165.233.23) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Wed, 3 Feb 2016 16:52:05 +0000
Received: from VI1PR03MB1567.eurprd03.prod.outlook.com ([10.165.233.25]) by
	VI1PR03MB1567.eurprd03.prod.outlook.com ([10.165.233.25]) with mapi id
	15.01.0396.020; Wed, 3 Feb 2016 16:52:05 +0000
From: "Kosta  Zertsekel" <kzertsekel@mrv.com>
To: Mark T <mtl1nuxd3v@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Which Toolchain is being used to build Yocto ?
Thread-Index: AQHRXpSpMG86w19O/Ee7Cq6oT62Cmp8aiJoh
Date: Wed, 3 Feb 2016 16:52:05 +0000
Message-ID: <VI1PR03MB156741825F3D2DD025599711DAD00@VI1PR03MB1567.eurprd03.prod.outlook.com>
References: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
In-Reply-To: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=mrv.com;
x-originating-ip: [194.90.138.234]
x-microsoft-exchange-diagnostics: 1; VI1PR03MB1565;
	5:/HZ1bwVLEFOlDRXbPEfxL1fU9tfZuK1EZ9xJDC5pDz6acV9Riykk4Co28GIS+G97UvXOSHTOCG4ycVCTyHIrCmGHKxrE1oyDfUUHI6mZrJlJjBY+kh2Ft0vBA3qa18eoKvGiekrJYvbr3ap/Wwxbqg==;
	24:OZPXcAyQ9J26X04PCQqmwrQZ+GeXZ33xPXEQrXh1k1pXI1KWXHKCOkzJrmKwAMVsm3JKP9Od6gRHDR49gieNKQvSSL52iBrPc+cR3zsjDxE=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR03MB1565;
x-ms-office365-filtering-correlation-id: 93256359-f9f0-484c-0adb-08d32cba58b1
x-microsoft-antispam-prvs: <VI1PR03MB156594F8BA5AD7B577B34344DAD00@VI1PR03MB1565.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:VI1PR03MB1565; BCL:0; PCL:0; RULEID:; SRVR:VI1PR03MB1565; 
x-forefront-prvs: 08417837C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(76576001)(586003)(76176999)(102836003)(107886002)(2501003)(15975445007)(5890100001)(5003600100002)(50986999)(3846002)(10400500002)(5001960100002)(1096002)(5002640100001)(19627405001)(3660700001)(2900100001)(2950100001)(6116002)(40100003)(66066001)(5008740100001)(19617315012)(77096005)(2906002)(5001770100001)(87936001)(11100500001)(16236675004)(19580395003)(3280700002)(189998001)(54356999)(33656002)(19625215002)(19618635001)(1220700001)(74316001)(122556002)(5004730100002)(86362001)(106116001)(92566002)(18206015028)(7099028);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR03MB1565;
	H:VI1PR03MB1567.eurprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mrv.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2016 16:52:05.2439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3324ef19-dd38-46a1-8379-2a2bdaace805
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB1565
Subject: Re: Which Toolchain is being used to build Yocto ?
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
X-List-Received-Date: Wed, 03 Feb 2016 17:06:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR03MB156741825F3D2DD025599711DAD00VI1PR03MB1567eurp_"

--_000_VI1PR03MB156741825F3D2DD025599711DAD00VI1PR03MB1567eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Mark,


>> I notice there is a meta/recipes-devtools  -  I assume this pulls in fro=
m build/downloads

>> - so gcc-5.2.0.tar.bz2 for example. Does the tool-chain comprised of the=
se recipes get

>> built by /usr/bin/gcc before being used to compile Yocto?


You can easily check it by moving temporary /usr/bin/gcc aside.

BTW, provide the result of this test to the mailing list - so all of us can=
 be synced.


--- KostaZ

[E-Banner]<http://www.mrv.com/blog>


MRV Communications is a global supplier of packet and optical solutions tha=
t power the world's largest networks. Our products combine innovative hardw=
are with intelligent software to make networks smarter, faster and more eff=
icient.



The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the sender, delete this message and any attachm=
ents and note that any distribution, or copying of this message, or any att=
achment, is prohibited.

--_000_VI1PR03MB156741825F3D2DD025599711DAD00VI1PR03MB1567eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Mark,</p>
<p><br>
</p>
<p>&gt;&gt;&nbsp;I notice there is a meta/recipes-devtools&nbsp; -&nbsp; I =
assume this pulls in from build/downloads<br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Appl=
e Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Andro=
id Emoji', EmojiSymbols; font-size: 16px;">&gt;&gt;&nbsp;- so gcc-5.2.0.tar=
.bz2 for example. Does the tool-chain comprised
 of these recipes get</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Appl=
e Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Andro=
id Emoji', EmojiSymbols; font-size: 16px;">&gt;&gt;&nbsp;built by /usr/bin/=
gcc before being used to compile Yocto?</span></p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Appl=
e Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Andro=
id Emoji', EmojiSymbols; font-size: 16px;"></span>You can easily check it b=
y moving temporary /usr/bin/gcc aside.</p>
<p>BTW, provide the result of this test to the mailing list - so all of us =
can be synced.</p>
<p><br>
</p>
<p>--- KostaZ</p>
</div>
<a href=3D"http://www.mrv.com/blog"><img src=3D"http://www.mrv.com/images/B=
log_Banner.jpg" alt=3D"E-Banner"></a><br>
&nbsp;<br>
<div style=3D"background-color:#FFFFFF; padding:.8em; ">
<p style=3D"font-size:10pt;color:#b8b9c8; line-height:8pt; font-family:  =
=0A=
'arial','times roman',serif;">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world&#8217;s largest networks. Our products combine innovative=
 hardware with intelligent software to make networks smarter, faster and mo=
re efficient.</p>
</div>
&nbsp;<br>
<div style=3D"background-color:#FFFFFF; padding:.8em; ">
<p style=3D"font-size:8pt;color:#b8b9c8; line-height:8pt; font-family:  =0A=
'arial','times roman',serif;">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</body>
</html>

--_000_VI1PR03MB156741825F3D2DD025599711DAD00VI1PR03MB1567eurp_--
