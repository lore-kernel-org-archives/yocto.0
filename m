Return-Path: <nader.hariri@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0A6AE009E7; Mon, 20 Aug 2018 19:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nader.hariri[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.70.38 listed in list.dnswl.org]
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
X-Greylist: delayed 41331 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 19:37:59 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092070038.outbound.protection.outlook.com [40.92.70.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B1EE0096A
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 19:37:59 -0700 (PDT)
Received: from AM5EUR03HT219.eop-EUR03.prod.protection.outlook.com
	(10.152.17.195) by DB5EUR03HT221.eop-EUR03.prod.protection.outlook.com
	(10.152.21.250) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1080.9;
	Tue, 21 Aug 2018 02:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=NA8d/3aL6T/p3cDJkmAsShNAxYQL3d4alVqLQNIUCB4=;
	b=IZE91BpOToQpV/JROeNWWXjEoz7tSBt4SKut5agvWlpqobJEMCZF66vSOTKjEeibL8J4Ze3tHnl/V/Dd69FudIDuXUrla1wbeB6wbK5jPwaPI/Ns17Wjn3xMZIlLiJzUJFYVRyvtgceCOCiEuPRIFiTIEYeW0Ec96jY+/sujHBxPcAEWDnW4yuYSlQtHJp2SfNaQZd+A7oJ7zKtiVOj6KtAvleOfvfgCbOf3lFiXGlkCmhxpuOqgwmI16PKlxOZQsEWbDr5+6hIAXUTLkVoQx725cdHZ9ON4u8MBzfFR7cYCnZb/odb++6Np1tzj5bz6aVqvLfwa1U1baECa74T2Vg==
Received: from AM5EUR03FT049.eop-EUR03.prod.protection.outlook.com
	(10.152.16.53) by AM5EUR03HT219.eop-EUR03.prod.protection.outlook.com
	(10.152.17.195) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1080.9;
	Mon, 20 Aug 2018 12:07:24 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com (10.152.16.58) by
	AM5EUR03FT049.mail.protection.outlook.com (10.152.17.130) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1080.9 via Frontend Transport; Mon, 20 Aug 2018 12:07:24 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957]) by
	HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957%6]) with mapi id 15.20.1059.023;
	Mon, 20 Aug 2018 12:07:24 +0000
From: Nader Hariri <nader.hariri@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] ptest-runner "No ptests found."
Thread-Index: AQHUNWpiVp47iVBfjka016fW7Q5GIaTIga2AgAAIAsQ=
Date: Mon, 20 Aug 2018 12:07:24 +0000
Message-ID: <HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>,
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
In-Reply-To: <CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:490A23F47C46D721314D534AAEE6154293EE94C78CE47AE65309EA1F110072FA;
	UpperCasedChecksum:CFF5E69DCB8E66F5A8FDC64CEC56A62AD46A838DF97AFC9798FF870F511D435A;
	SizeAsReceived:7218; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [68h8tsfD4ZJm9gCHkFUbICNm4Q+TmEQe]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT219;
	6:lu2J+sJgOYkI/JFyW165t47qN6kl7QyN8hX/GeR9E3XJTpYp0RL1gYO7bdSNldv0pI47NqBXY6vvAg/mflOzJeej4HIKzGzZZ5SdtnwX0rNnJGd7PesdBGGZoXDB5C7PplCMBVEUkJ6f4P9u+p5t3dir+C0wPWgci1/zgB+L7kmSIv9kbwgSL/70tjQjcT7qBWGmW1eaBul7VYUpRSNIiY1BtZjgrJDRHRauBwk5M7nqQhOCnbt8duCfgnXIS5at+ter+m0hJlpiBCwbrQXhI/EL2Cr0STNXjENvV3So1AKkiv3ORMUhBhcz29lZMSax5r0qevxndN0SmT3XXG94LiEUEVUfH0IzzihmP17ePsmaYR2fhLFB8lPa9f5J0ujSOb406Fv60Fa/ENO5V1amNRh28f9ZRx8uGRdJEloKQVJ4zuEeQt9xUDGN9qwR7Z2zcfhoP0bfAqv/5cUXYKRgMQ==;
	5:OzbBx/0Hon4KTVZk7aZGrjdKeMQCTnQ9yk0V0CXM+dbjAcTefTdB1O4ARodtm4zYzmqflbOzVnaETi//gTuKmU6foL//nZ3wp5GYGecVNCcWDnAShagQ7jcz2LSbxB8JSmdbKnpP/MOvWdgJsW2P6/QgyH7LvGc28Z8HWaBv3Ho=;
	7:3S+E7vy+YyQvs1sM98L9+WSCsu79PhUU2lwiWG4OhaNUn5ukhsd6NMu3lgXj90xOLznSHqNNnpAtzQkkPq2N1YBMxRQ1gMZgDemwLo+izIZSkWEi2YdOmHCYrG8qwzqWdGgsMSZKwi+xSAzN0KHiMonooR36V0YY4LhC9YlUQPkFco3c5MvXRC9HLxzjO3SzaLAPhr6+8pG6MfqdQdk16/rGbZALEKoxntDdgQQU2WgxNcNZRdXjUQLqupv0+Ynj
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:AM5EUR03HT219; 
X-MS-TrafficTypeDiagnostic: AM5EUR03HT219:|AM5EUR03HT219:|DB5EUR03HT221:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:AM5EUR03HT219; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT219; 
x-forefront-prvs: 0770F75EA9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(8676002)(105586002)(229853002)(20460500001)(2900100001)(19627405001)(86362001)(106356001)(39060400002)(104016004)(236005)(44832011)(6506007)(102836004)(26005)(76176011)(97736004)(33656002)(73972006)(99286004)(11346002)(476003)(81156014)(486006)(54896002)(6306002)(87572001)(82202002)(6346003)(9686003)(606006)(4326008)(8936002)(68736007)(83332001)(7696005)(105004)(25786009)(55016002)(446003)(6436002)(6246003)(6916009)(966005)(74316002)(14454004)(5660300001)(5250100002)(45080400002)(56003)(256004)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AM5EUR03HT219;
	H:HE1PR06MB1689.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nader.hariri@hotmail.com; 
x-microsoft-antispam-message-info: IiCWnSPvatFlB/LFR2sVt7wFqFPFLWlCQkiYstCrnnaynBU6vUcv/BCrJE6b4Ejuf6TbL4LByC0rQI+vI2H9DABPTHb1TrljG3Lt9LxtDMAKKKYLg9Me39jAg+uRxoTynq9xblvnYSmtcIMAOtGv7Xq234LZGXSN2T27qJa14Q72w9sP7AD02Z1GgMa3AhLxl1tFO4ydzLZ85VO5pA6mN0e9W5pm9xCahAw7yqkGItM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d041d91-5b75-429c-e6a4-08d606957d93
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2018 12:07:24.4901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT219
X-Microsoft-Exchange-Diagnostics: 1; DB5EUR03HT221;
	23:unxsYRufkOYd3zHan+9ZMCzWDFcjyswXjJlR5K8yaqH9/jDlM6Z+kChQVwvIPBqCnlX82TT6+EKq8y4ZkcPZkwTRgOl5EpMcW9Bpd59WS8f6aU5UsWMAzOP2UaHTZ6Z6y9CvfcrRkvFKQEJm7AJZrw==
X-OriginatorOrg: hotmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest-runner "No ptests found."
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
X-List-Received-Date: Tue, 21 Aug 2018 02:38:01 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB1689535B4BAC12A98F5883AC94320HE1PR06MB1689eurp_"

--_000_HE1PR06MB1689535B4BAC12A98F5883AC94320HE1PR06MB1689eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Yes, I expect to find in my image ptests for systemd and zlib because these=
 recipes are ptest-enabled.

In fact, after some trials, I got to understand that the problem is related=
 to  EXTRA_IMAGE_FEATURES +=3D "ptest-pkgs" , because  I replaced it with I=
MAGE_FEATURES_append =3D " ptest-pkgs" in local.conf and to my surprise I f=
ound all -ptests packages from all the ptest-enabled recipes in my image.

So,  contrary to what is stated in the ptest wiki and the yocto documentati=
on, using EXTRA_IMAGE_FEATURES doesn't install ptests packages (from ptest-=
enabled recipes) in my image, and I can't figure out why ..
<https://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#testing=
-packages-with-ptest>

Nader
________________________________
De : Alexander Kanavin <alex.kanavin@gmail.com>
Envoy=E9 : lundi 20 ao=FBt 2018 14:09
=C0 : Nader Hariri
Cc : yocto@yoctoproject.org
Objet : Re: [yocto] ptest-runner "No ptests found."

2018-08-16 16:07 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> Hi, I am new to Yocto. I am working on ptest-runner.
>
> I followed the wiki https://wiki.yoctoproject.org/wiki/Ptest , but when I
> boot to my image and run ptest-runner I have the output : "No ptests foun=
d."
>
> Is this normal ? I thought that
>
> DISTRO_FEATURES_append =3D " ptest"
>
> and
>
> EXTRA_IMAGE_FEATURES +=3D "ptest-pkgs"
>
>  would install all the ptests for me in my image, apparently I am wrong b=
ut
> could you please explain to me why this is not the case i.e why ptests ar=
e
> not automatically installed in the image even though I included the above
> lines in my local.conf ?

Please note that ptests are only supported by a (small) subset of
recipes. If none of the packages that are in your image are
ptest-enabled, then no ptests will go to the image. Is there a recipe
in particular for which you expected ptests to be in the image, and
they're not?

Alex

--_000_HE1PR06MB1689535B4BAC12A98F5883AC94320HE1PR06MB1689eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Yes, I expect to find in my image ptests for systemd and zlib because these=
 recipes are ptest-enabled.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
In fact, after some trials, I got to understand that the problem is related=
 to&nbsp;<i>
</i><font size=3D"2"><span style=3D"font-size:11pt;"><i>EXTRA_IMAGE_FEATURE=
S &#43;=3D &quot;ptest-pkgs&quot;
</i>, because&nbsp; I replaced it with<i> IMAGE_FEATURES_append =3D &quot; =
ptest-pkgs&quot;</i> in local.conf and to my surprise I found all -ptests p=
ackages from all the ptest-enabled recipes in my image.
<br>
</span></font></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<font size=3D"2"><span style=3D"font-size:11pt;"><br>
</span></font></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<font size=3D"2"><span style=3D"font-size:11pt;">So,&nbsp; contrary to what=
 is stated in the ptest wiki and the yocto documentation, using
<i>EXTRA_IMAGE_FEATURES</i> doesn't install ptests packages (from ptest-ena=
bled recipes) in my image, and I can't figure out why ..
<a href=3D"https://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.ht=
ml#testing-packages-with-ptest" id=3D"LPNoLP409563">
<br>
</a></span></font></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<font size=3D"2"><span style=3D"font-size:11pt;"><br>
</span></font></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<font size=3D"2"><span style=3D"font-size:11pt;">Nader<br>
</span></font></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>De :</b> Alexander Kanavin &l=
t;alex.kanavin@gmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 20 ao=FBt 2018 14:09<br>
<b>=C0 :</b> Nader Hariri<br>
<b>Cc&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet :</b> Re: [yocto] ptest-runner &quot;No ptests found.&quot;</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">2018-08-16 16:07 GMT&#43;02:00 Nader Hariri &lt;na=
der.hariri@hotmail.com&gt;:<br>
&gt; Hi, I am new to Yocto. I am working on ptest-runner.<br>
&gt;<br>
&gt; I followed the wiki <a href=3D"https://wiki.yoctoproject.org/wiki/Ptes=
t">https://wiki.yoctoproject.org/wiki/Ptest</a> , but when I<br>
&gt; boot to my image and run ptest-runner I have the output : &quot;No pte=
sts found.&quot;<br>
&gt;<br>
&gt; Is this normal ? I thought that<br>
&gt;<br>
&gt; DISTRO_FEATURES_append =3D &quot; ptest&quot;<br>
&gt;<br>
&gt; and<br>
&gt;<br>
&gt; EXTRA_IMAGE_FEATURES &#43;=3D &quot;ptest-pkgs&quot;<br>
&gt;<br>
&gt;&nbsp; would install all the ptests for me in my image, apparently I am=
 wrong but<br>
&gt; could you please explain to me why this is not the case i.e why ptests=
 are<br>
&gt; not automatically installed in the image even though I included the ab=
ove<br>
&gt; lines in my local.conf ?<br>
<br>
Please note that ptests are only supported by a (small) subset of<br>
recipes. If none of the packages that are in your image are<br>
ptest-enabled, then no ptests will go to the image. Is there a recipe<br>
in particular for which you expected ptests to be in the image, and<br>
they're not?<br>
<br>
Alex<br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1PR06MB1689535B4BAC12A98F5883AC94320HE1PR06MB1689eurp_--
