Return-Path: <nader.hariri@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDF49E00A6B; Tue, 21 Aug 2018 03:28:49 -0700 (PDT)
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
	*      [40.92.72.58 listed in list.dnswl.org]
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
X-Greylist: delayed 42533 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Aug 2018 03:28:47 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072058.outbound.protection.outlook.com [40.92.72.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D8CE009D4
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 03:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=E2hrqDycegKgkWV86usnwAJkSqvFf/VE790JlmQQli4=;
	b=HWrHOYNe8TLyKuN4pE3XBCF3IEkgjG08BrNpuXf81QnkNBDXu9Vdn1cHMkjj3F3O2XPXXT9nbSnIqTfLmADujfzieulhaiN2G3Iuldi4sOhHdhjMYV1WKCBBUh7cObBDppiH3gCi7LjeHZdz0wKJTflJMOk2OZI5Xspol67UTDEag301pUJoP1neB8C5G3c3iGGpqGEb987gOP0HcwFR2CVoH2s8s1rCvAsSvGmskOhmPk3lBk6JP8NGWkjHYHAUnNhiHisfGAf6bvBZ+nocx/6T2ElaXdYTdxxJvxStGaxkhr+5xpoGSXUb9w6xNCj7fJEkmuNTQ+nWsjvxKkFLlQ==
Received: from DB5EUR03FT028.eop-EUR03.prod.protection.outlook.com
	(10.152.20.51) by DB5EUR03HT088.eop-EUR03.prod.protection.outlook.com
	(10.152.21.13) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1080.9;
	Tue, 21 Aug 2018 07:54:55 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com (10.152.20.59) by
	DB5EUR03FT028.mail.protection.outlook.com (10.152.20.99) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1080.9 via Frontend Transport; Tue, 21 Aug 2018 07:54:55 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957]) by
	HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957%6]) with mapi id 15.20.1059.023;
	Tue, 21 Aug 2018 07:54:55 +0000
From: Nader Hariri <nader.hariri@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] ptest-runner "No ptests found."
Thread-Index: AQHUNWpiVp47iVBfjka016fW7Q5GIaTIga2AgAAIAsSAAA10AIAADIMmgAAMGwCAASrUDw==
Date: Tue, 21 Aug 2018 07:54:55 +0000
Message-ID: <HE1PR06MB168946186F96B6517E7CB10494310@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
	<HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
	<HE1PR06MB16896228DCEB67A69FF9D43E94320@HE1PR06MB1689.eurprd06.prod.outlook.com>,
	<CANNYZj_wDbKMA+d5sKgLjanukfeJLmj=Lj+5+6P1Pu=cGZeKtQ@mail.gmail.com>
In-Reply-To: <CANNYZj_wDbKMA+d5sKgLjanukfeJLmj=Lj+5+6P1Pu=cGZeKtQ@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6B9F041A471D969646821B1DFA40BC4ED1941826B6DCA0593A34B65220A1E594;
	UpperCasedChecksum:64205A33E01B5555904829123CE89B8C56FAD80D92534D2334FD9C60F3F49731;
	SizeAsReceived:7531; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bM+mv28xELC9PlGLhOLkDghHGqYzzT/i]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT088;
	6:3JW1m0N3kHCsEO0buEjdPJhUxWBl97XXbY2osRErTD7OIwDzQXmieozGwv26mG8G3rpv2z1rm2uIvDvuRYY6p6NsUcEYOySJ/AJnTQbGvmyXMQI9eBTa7DqokmwdIoITwKfllCyMYucixQ1SeUc0UQQHhwkc0goswdUnu6LGLPgi/rOE9zNfLaSacH1WfjEnXkIJD8zU07fLltU6UxSEg4Af7y2sLcUaA0jE/1Juk1J0LismbjniBpJfjo9BIYBFAxYJ78a7KrxtnS59qZhC6y7ycWcGT69vKEdDGHdI6h3i2VEDtlJEF2GZoAGNZy/44mMIG6nO4FmuylqCUG41ZDzLFntCD9qmsrJA0EGuKspU/DR0GcyPnYiGILZc33dU8INec8it4sFwNLLEx3jtAEGjglwF69nVZNlX2fJJ+HBfTnzPqVBM3VtPFXVuUjaktXpRr+TPfsseB2PNBcqwUA==;
	5:n8P5ix3cwoL5Zea1YTQrHqq1KgH2h1yo8Xt9gQCzyby3ZxZSqstsJ+L+6VykwIx7xYC+E4mOyD/lqbp12PZN22pfXSmmlJ2/HzJTHujmeWy+bpBPsuRuH7Dt4J7eZF0ZiTjkfCAh4kIee2DpoWjPpVfvIN3SfYIdXYz++mGq9+Q=;
	7:Dj4Nihfu2v+4xzlKYJrg2DW2ShW/LnhyrVebJkg8fGZvYvKevf+WJ3AGbCarpJPcXpzGZgOP29IVe2FFyDYHYYznBe/z3/1fe3E5MNxUBIAHmaL2lPfdNiTcbqyCd+XyibRUVH0tHopKzRkfxMPOLrSHIGTJuyF3QxV50YLDaCc7m5x5aLaJ2r9hhlGkbZBo3GNwzJi4uzb0pBe/8FcP+YZHSQ4QZwpJkVzMdla41F3OxokPbAL9amstF9Hy2ry+
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:DB5EUR03HT088; 
x-ms-traffictypediagnostic: DB5EUR03HT088:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:DB5EUR03HT088; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT088; 
x-forefront-prvs: 0771670921
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(486006)(476003)(102836004)(6346003)(45080400002)(44832011)(446003)(11346002)(106356001)(4326008)(26005)(105586002)(6506007)(229853002)(19627405001)(39060400002)(20460500001)(8936002)(86362001)(74316002)(83332001)(105004)(99286004)(5250100002)(7696005)(14444005)(6246003)(76176011)(256004)(81156014)(6436002)(2900100001)(5660300001)(68736007)(8676002)(93886005)(73972006)(14454004)(87572001)(56003)(55016002)(104016004)(82202002)(9686003)(97736004)(6916009)(25786009)(54896002)(33656002)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR03HT088;
	H:HE1PR06MB1689.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nader.hariri@hotmail.com; 
x-microsoft-antispam-message-info: shmVREMUeW3189g0Yq56vweWlOXn8h4acBLMdN9mgxC9waroPuO9DJBR7GqatA7bJqeEQ8LnGbsMzhNlCqRKjNxcRWSEG5Yo9oT3rkMLBDs6L+XRPtWbv27Wy7gjdILduvYsciRipPEj3khHsII0sM6O1XnQx10bdy/VevrfIn4omV/FUxmDgiLrKGNKEmMmkd9cXl9/ZDBOk6FmGKZFacnqN/yJXj64jvTpEvPikag=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-Network-Message-Id: 566860d9-df48-484e-9739-08d6073b6268
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2018 07:54:55.4560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT088
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
X-List-Received-Date: Tue, 21 Aug 2018 10:28:49 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB168946186F96B6517E7CB10494310HE1PR06MB1689eurp_"

--_000_HE1PR06MB168946186F96B6517E7CB10494310HE1PR06MB1689eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

ok, so I changed my local.conf from IMAGE_FEATURES_append =3D " ptest-pkgs"=
 to EXTRA_IMAGE_FEATURES =3D "ptest-pkgs", here are the logs:

# $IMAGE_FEATURES [3 operations]
#   set? /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/defa=
ult-distrovars.inc:23
#     ""
#   set /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:2=
10
#     [doc] "The primary list of features to include in an image. Configure=
 this variable in an image recipe."
#   append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake.conf:806
#     "${EXTRA_IMAGE_FEATURES}"
# pre-expansion value:
#   " ${EXTRA_IMAGE_FEATURES}"
IMAGE_FEATURES=3D" ptest-pkgs"

As we can see, I still have the suspicious space but it has shrunk from 2 s=
paces to 1 space. And -ptest packages didn't get installed in my image.

Nader
________________________________
De : Alexander Kanavin <alex.kanavin@gmail.com>
Envoy=E9 : lundi 20 ao=FBt 2018 16:54
=C0 : Nader Hariri
Cc : yocto@yoctoproject.org
Objet : Re: [yocto] ptest-runner "No ptests found."

2018-08-20 15:36 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> I ran 'bitbake -e <image>' as you have suggested. I can see from the logs
> that the variable IMAGE_FEATURES does get appended the value of
> ${EXTRA_IMAGE_FEATURES}, however I still have no -ptest packages in my
> image. Is there anything wrong in my logs?
>
>
> # $IMAGE_FEATURES [3 operations]
> #   set?
> /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/default-dis=
trovars.inc:23
> #     ""
> #   set
> /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:210
> #     [doc] "The primary list of features to include in an image. Configu=
re
> this variable in an image recipe."
> #   append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake.conf:80=
6
> #     "${EXTRA_IMAGE_FEATURES}"
> # pre-expansion value:
> #   " ${EXTRA_IMAGE_FEATURES}"
> IMAGE_FEATURES=3D"  ptest-pkgs"

The space looks suspicious in there. Can you try to set
EXTRA_IMAGE_FEATURES directly with =3D instead of appending to it?

Alex

--_000_HE1PR06MB168946186F96B6517E7CB10494310HE1PR06MB1689eurp_
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
ok, so I changed my local.conf from <span>IMAGE_FEATURES_append =3D &quot; =
ptest-pkgs&quot; to
<span>EXTRA_IMAGE_FEATURES =3D &quot;ptest-pkgs&quot;, here are the logs:</=
span></span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span># $IMAGE_FEATURES [3 operations]<br>
</span>
<div># &nbsp; set? /home/nader/poky-docker/workdir/poky/meta/conf/distro/in=
clude/default-distrovars.inc:23<br>
</div>
<div># &nbsp; &nbsp; &quot;&quot;<br>
</div>
<div># &nbsp; set /home/nader/poky-docker/workdir/poky/meta/conf/documentat=
ion.conf:210<br>
</div>
<div># &nbsp; &nbsp; [doc] &quot;The primary list of features to include in=
 an image. Configure this variable in an image recipe.&quot;<br>
</div>
<div># &nbsp; append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake=
.conf:806<br>
</div>
<div># &nbsp; &nbsp; &quot;${EXTRA_IMAGE_FEATURES}&quot;<br>
</div>
<div># pre-expansion value:<br>
</div>
<div># &nbsp; &quot; ${EXTRA_IMAGE_FEATURES}&quot;<br>
</div>
<span>IMAGE_FEATURES=3D&quot; ptest-pkgs&quot;</span><br>
<span><span></span><span></span></span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
<span></span><span></span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
As we can see, I still have the suspicious space but it has shrunk from 2 s=
paces to 1 space. And -ptest packages didn't get installed in my image.</di=
v>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Nader<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>De :</b> Alexander Kanavin &l=
t;alex.kanavin@gmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 20 ao=FBt 2018 16:54<br>
<b>=C0 :</b> Nader Hariri<br>
<b>Cc&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet :</b> Re: [yocto] ptest-runner &quot;No ptests found.&quot;</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">2018-08-20 15:36 GMT&#43;02:00 Nader Hariri &lt;na=
der.hariri@hotmail.com&gt;:<br>
&gt; I ran 'bitbake -e &lt;image&gt;' as you have suggested. I can see from=
 the logs<br>
&gt; that the variable IMAGE_FEATURES does get appended the value of<br>
&gt; ${EXTRA_IMAGE_FEATURES}, however I still have no -ptest packages in my=
<br>
&gt; image. Is there anything wrong in my logs?<br>
&gt;<br>
&gt;<br>
&gt; # $IMAGE_FEATURES [3 operations]<br>
&gt; #&nbsp;&nbsp; set?<br>
&gt; /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/default-=
distrovars.inc:23<br>
&gt; #&nbsp;&nbsp;&nbsp;&nbsp; &quot;&quot;<br>
&gt; #&nbsp;&nbsp; set<br>
&gt; /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:210<=
br>
&gt; #&nbsp;&nbsp;&nbsp;&nbsp; [doc] &quot;The primary list of features to =
include in an image. Configure<br>
&gt; this variable in an image recipe.&quot;<br>
&gt; #&nbsp;&nbsp; append /home/nader/poky-docker/workdir/poky/meta/conf/bi=
tbake.conf:806<br>
&gt; #&nbsp;&nbsp;&nbsp;&nbsp; &quot;${EXTRA_IMAGE_FEATURES}&quot;<br>
&gt; # pre-expansion value:<br>
&gt; #&nbsp;&nbsp; &quot; ${EXTRA_IMAGE_FEATURES}&quot;<br>
&gt; IMAGE_FEATURES=3D&quot;&nbsp; ptest-pkgs&quot;<br>
<br>
The space looks suspicious in there. Can you try to set<br>
EXTRA_IMAGE_FEATURES directly with =3D instead of appending to it?<br>
<br>
Alex<br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1PR06MB168946186F96B6517E7CB10494310HE1PR06MB1689eurp_--
