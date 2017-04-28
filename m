Return-Path: <khanbahjat@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A13CE009CE; Fri, 28 Apr 2017 17:18:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (khanbahjat[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.64.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 28858 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Apr 2017 17:18:07 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064096.outbound.protection.outlook.com [40.92.64.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0E4E009A5
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 17:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=rJSv0T4ZJ+KJeVn5gI1P00ENkr9KjIoaFHEamjbcpM4=;
	b=POcqdN+eBMtLl/QioLhrvTeFtRcgkiEKjXgEF7QpWUstDCLQA8Vukibu8bCpg/WxD/qT3uqnYue9mIU8YzDLdRtQNzade6l0XmxIfLcdnh9jo2Md/F+KZE/d708fiYvp12DR/FYqQWuOu3CPFRgsHCApiMOavOttzwujd+hVX3EetUwbSELL0xA76I0kF8g5Cu8CiuP7Adn2kU3AIXKF/MaIEgc7VRRpFSjlvr4k6bzWS4pFs0BFBmiPj4yfzNZvIzv5M2wJI2Q+RZ5JGvkJC92+q5kVEzXSsQiIbaM3jixRu/NSJiVoHAWIw3MfeloV0g98063UDA4Q/I+Fv0dHpA==
Received: from HE1EUR01FT014.eop-EUR01.prod.protection.outlook.com
	(10.152.0.55) by HE1EUR01HT178.eop-EUR01.prod.protection.outlook.com
	(10.152.1.118) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1047.9;
	Fri, 28 Apr 2017 08:46:21 +0000
Received: from AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM (10.152.0.59) by
	HE1EUR01FT014.mail.protection.outlook.com (10.152.0.156) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.9 via Frontend Transport; Fri, 28 Apr 2017 08:46:21 +0000
Received: from AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM
	([fe80::840:1e07:be6:67b9]) by
	AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM
	([fe80::840:1e07:be6:67b9%15]) with mapi id 15.01.1047.021;
	Fri, 28 Apr 2017 08:46:21 +0000
From: bahjat khan <khanbahjat@hotmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Thread-Topic: [yocto] fbida issue
Thread-Index: AQHSvrx55C78VbE3pESZwREn3+TLLaHZFtgAgAFjGAw=
Date: Fri, 28 Apr 2017 08:46:21 +0000
Message-ID: <AM4PR1001MB1347A0207EC499FC4A811A89D7130@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
References: <AM4PR1001MB13470C7F5A5BFC47B59B3783D7110@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>,
	<CAHiDW_G5sng6O=bavgE-jxprBGPon-pHD4fGqPNtE_G8DHEphA@mail.gmail.com>
In-Reply-To: <CAHiDW_G5sng6O=bavgE-jxprBGPon-pHD4fGqPNtE_G8DHEphA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:9BFB6082A644E464D53DCC827D83B9FDF42364C1BAB0DEB69C307DCEB435079B;
	UpperCasedChecksum:66D2B4B711A1609F8ABF5F69566E568649EB78687541E61E7522D651072CCCB1;
	SizeAsReceived:8270; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [OHteVxYiMQfBc5CY3WGKaQ7sngU0bGQcUWjqgLvJJQHEhNujf9oWTw==]
x-microsoft-exchange-diagnostics: 1; HE1EUR01HT178;
	5:8Jb1dBcHA5wWzat9A7TF78hY5ALMpNYAK0EKr7fiZ8rDftCoBGsZiPjAZwzhpIGIbyzgYfgDuyGYdDtp0AGwKo9nStBGr7/vBi9+dTblHfqJ7ZIosGFeSWUIXMVg9PMrpl+7v09PKw3p/iZsngznxQ==;
	24:p6kJAFu1TrPhdM4tk0OHJgssxon0qK/SSkqGch11QuBcUaUSy5YkLNEYPaTcpP5caQ58hTxak0jUij4JQuAYpiJ7ne+IW3nvDbpYXsavLIg=;
	7:nzjfx+E7410026Iphi5MSBqrIdjAL+DZFnD0CuBtl7eJ3eXpaXnwmO+nOgSnHVftqNAZ/ybr4mSLctNyc0662u2XNMRT+nX7zsiAARg68hrUBWYv6jH7ccbDjuM46t4N7WzwIw2AseT2Izb1E54K45lJqERMxXY2In4zaSOkXL7OEmIyK8XICrrshA78MtJWCmxEa+YdpDnjQPluG/4WUzapzPDyHJqdiuln6VRYs+8gbQuC6qFyW4XztNZgh5N8f4A4QFbXpFM0Y5f4wWRdwomaxh60qCZxI3ZbVsM5GsTY3DfH7NexQZ+13M0ZO1o7
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR01HT178;
	H:AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: fc7c2fec-360c-4965-14f0-08d48e130b8b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:HE1EUR01HT178; 
x-ms-exchange-slblob-mailprops: AsidyrAlbSSQWbivHBvDjrRLruU2EAPvK6xjLb2ZAjdi3r2Nel6q4YZtepRPsUN9uDKHrYnMBBfCpXYWsBjGxSXEGVdiD+r/K4vvPs4A6TbnZGgRS3lp7ZlDSP3ZT9pMG9OQKBuEppHkY14MfXCGxKNTDt89WWjq4MFCCJ1as9K2bzmEgvcGaU50RRj+P14PD8bjqeZ3GIM+BR17hk0Ku0T92fLEgdQTFJLoAMakcewELWwXrz2WjInVesMR/gqfusPw/KmessuGDvUL074b9kHVHldyHQOxREms0g8ve9y9dqxNCqkPXgSMDwuv0vm/Pg9cCiEjZpehS5inkwZxfaBxYajQZ7tmLnDccPujzm1buSZltzHx4zlQPLwETPCXC4fUbIi+N3A7h5655FpE4zjHFRIDVVsokI8yB8ydx6yVBf7Q8Y3rP1U/u/Axf/39XKhEQUsuzIOLpFoWplWtNChImt4vArahCbiJ1N9/dXhsH18/UoqCeS3+7qc4zOlilljTiu7VBWi1PGwZ7wxAhD9sURziu4XsX7bggCAZvLr1cy7WhRMC8qbhIPjbNaAIlKp+PVRY7A/8IcXqaCe8FSJShCK//ds43akG0Gbc9w1kqp78df4O+r0WKbzN52wQTWflGUiejupNqvrkufoIx5hyzFlK995dCZenTgo/c+VyVCtBzu1gAiX7bbtpBRoow+YYdriv64QLygkAqqfh9gy3cAgAXSZzsLdKDlCl+9vyy2S078TpWELjIVG3KsUj9/mG635Jx0YK9WvcLn6wfCIhrSfhVDPeFG0TBDvDiV6UypQ/nghrhmWyzQHwVZn8caaMe/SsT+XBujcK2Y7zVOUoeDOv8sOa
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:HE1EUR01HT178; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR01HT178; 
x-forefront-prvs: 029174C036
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2017 08:46:21.2987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT178
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fbida issue
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
X-List-Received-Date: Sat, 29 Apr 2017 00:18:11 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM4PR1001MB1347A0207EC499FC4A811A89D7130AM4PR1001MB1347_"

--_000_AM4PR1001MB1347A0207EC499FC4A811A89D7130AM4PR1001MB1347_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply Jussi,


Where can i get the "inherit pkgconfig" for my recipe?
I was under the influence that the meta-openembedded recipes came complete


Kind Regards,

Bahjat Murrad


________________________________
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Sent: 27 April 2017 12:33
To: bahjat khan
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] fbida issue

On 26 April 2017 at 21:47, bahjat khan <khanbahjat@hotmail.com<mailto:khanb=
ahjat@hotmail.com>> wrote:
>
> I'm trying to build a Yocto image for a kabylake processor. I keep on run=
ning into this issue
>
> ERROR: Nothing RPROVIDES 'fbida' (but /home/builder/project/prop/build/..=
/meta-cusotom/recipes-custome/images/custom-image-full.bb<http://custom-ima=
ge-full.bb> RDEPENDS on or otherwise requires it)
> ERROR: fbida was skipped: Recipe is blacklisted: Fails to build with RSS =
http://errors.yoctoproject.org/Errors/Details/130677/ - the recipe will be =
removed on 2017-09-01 unless the issue is fixed

The recipe has been blacklisted because it does not work as is (it broke wh=
en recipe specific sysroots were added so it is probably missing some nativ=
e dependencies or inherits). You should remove the PNBLACKLIST line from th=
e recipe and try to build it. Then you should fix whatever issues the build=
 has.

I had a quick look on the output on that errors.yoctoproject.org<http://err=
ors.yoctoproject.org> case: at least the recipe is missing a "inherit pkgco=
nfig"

Jussi

--_000_AM4PR1001MB1347A0207EC499FC4A811A89D7130AM4PR1001MB1347_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Thanks for the reply Jussi, <br>
</p>
<p><br>
</p>
<p>Where can i get the &quot;inherit pkgconfig&quot; for my recipe?<br>
I was under the influence that the meta-openembedded recipes came complete<=
/p>
<p><br>
</p>
<p>Kind Regards, <br>
</p>
<p>Bahjat Murrad <br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Jussi Kukkonen &lt;j=
ussi.kukkonen@intel.com&gt;<br>
<b>Sent:</b> 27 April 2017 12:33<br>
<b>To:</b> bahjat khan<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] fbida issue</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">On 26 April 2017 at 21:47, bahjat khan &lt;<a href=3D"mail=
to:khanbahjat@hotmail.com">khanbahjat@hotmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I'm trying to build a Yocto image for a kabylake processor. I keep on =
running into this issue
<br>
&gt;<br>
&gt; ERROR: Nothing RPROVIDES 'fbida' (but /home/builder/project/prop/build=
/../meta-cusotom/recipes-custome/images/<a href=3D"http://custom-image-full=
.bb">custom-image-full.bb</a> RDEPENDS on or otherwise requires it)<br>
&gt; ERROR: fbida was skipped: Recipe is blacklisted: Fails to build with R=
SS <a href=3D"http://errors.yoctoproject.org/Errors/Details/130677/">
http://errors.yoctoproject.org/Errors/Details/130677/</a> - the recipe will=
 be removed on 2017-09-01 unless the issue is fixed<br>
<br>
The recipe has been blacklisted because it does not work as is (it broke wh=
en recipe specific sysroots were added so it is probably missing some nativ=
e dependencies or inherits). You should remove the PNBLACKLIST line from th=
e recipe and try to build it. Then
 you should fix whatever issues the build has.<br>
<br>
I had a quick look on the output on that <a href=3D"http://errors.yoctoproj=
ect.org">
errors.yoctoproject.org</a> case: at least the recipe is missing a &quot;in=
herit pkgconfig&quot;<br>
&nbsp;<br>
Jussi</div>
</div>
</div>
</div>
</body>
</html>

--_000_AM4PR1001MB1347A0207EC499FC4A811A89D7130AM4PR1001MB1347_--
