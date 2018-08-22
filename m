Return-Path: <nader.hariri@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECE57E009AC; Tue, 21 Aug 2018 22:58:47 -0700 (PDT)
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
	*      [40.92.68.19 listed in list.dnswl.org]
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
X-Greylist: delayed 1067 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Aug 2018 22:58:45 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068019.outbound.protection.outlook.com [40.92.68.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97367E0095C
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 22:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=u58gxT5ElNCCjZsZWDZlgh9+7Qpmi298P3dnGYxaoXk=;
	b=JNKqjYE/S4PRjfq81M9aQqu5Ibvs0VPUpuGindyVEss87L61IAv2S59WoybFvTQ4a+JlyuBQSDITs4EJ4qC88O7NOJ4F/yN2Egq4CO5LhWkUJwXZqiMx/tXVNrHMnROQVLa+Qc0k3Clfu8lT7fqy/77BXYhPoTelMzIwJACi5jHfSJXHqco1rbstts2Tl3B/loo+J7N6IDCuzPPKuX+ELNWilhfkdeD5bjYO0tiwUzsmO6IXo7e4LaATERohCd9Q+wVSZOtpjlSAEiSleK2OZfoSDH61e2YHoXBpxb6lfgnWP5aF1ySQiTm5sbM22X+Nu+extp2UfrEf3LMnhtcQaQ==
Received: from VE1EUR02FT035.eop-EUR02.prod.protection.outlook.com
	(10.152.12.53) by VE1EUR02HT117.eop-EUR02.prod.protection.outlook.com
	(10.152.13.42) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1080.9;
	Wed, 22 Aug 2018 05:26:07 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com (10.152.12.52) by
	VE1EUR02FT035.mail.protection.outlook.com (10.152.12.86) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1080.9 via Frontend Transport; Wed, 22 Aug 2018 05:26:07 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957]) by
	HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957%6]) with mapi id 15.20.1059.023;
	Wed, 22 Aug 2018 05:26:07 +0000
From: Nader Hariri <nader.hariri@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] ptest-runner "No ptests found."
Thread-Index: AQHUNWpiVp47iVBfjka016fW7Q5GIaTIga2AgAAIAsSAAA10AIAADIMmgAAMGwCAASrUD4AADPmAgAAPSxqAAU9TzA==
Date: Wed, 22 Aug 2018 05:26:07 +0000
Message-ID: <HE1PR06MB168902A878150A204CDFF16694300@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
	<HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
	<HE1PR06MB16896228DCEB67A69FF9D43E94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj_wDbKMA+d5sKgLjanukfeJLmj=Lj+5+6P1Pu=cGZeKtQ@mail.gmail.com>
	<HE1PR06MB168946186F96B6517E7CB10494310@HE1PR06MB1689.eurprd06.prod.outlook.com>,
	<CANNYZj81Qien8_1LmvQ5Gr7njjo9cZn1gk9-G-437yQ1RNCVLA@mail.gmail.com>,
	<HE1PR06MB168936FB8DFCB8CC0564B8FB94310@HE1PR06MB1689.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB168936FB8DFCB8CC0564B8FB94310@HE1PR06MB1689.eurprd06.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:D13A1B937C733ED4C5020B141ED53F9AD809F1D9FC14E373960E0DC48B13D8BB;
	UpperCasedChecksum:4AD38B17161DE2C910FDEAE61B02DB60628C5636A31D39F1B00FACCD1FAD3C60;
	SizeAsReceived:7811; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [x0JH3s/unidNWMdBTygE0OpdK1aqNiXK]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT117;
	6:c53bqW5FJqbO3gzfapvIEGrya9vQ3HitDt9suISIJS8362d9NKAifgc25qPrjxhfcGmrL+xK0E7afJFYVJbRbHPn4lX+Uf80gGVwJsHGjvSyUwAvrr0B1Ib5FpvdoVhZO8g7wfdR0A2UjtX4mgrn1cGSqATv3Whtdh4Z8VXEbg0e7D/1qojxRnqnKtMhfMEjwT+DhYEEa4nomv+6vaPkbXiJrYah/TMh4lKKqR64/Mz4+TFM14jw3vnig+C/5POPDtiV/vw3xeH4jSKtzTwwaLzu1B4L9ipAYzNjGihLYnzA0JaIjDc+66nvmJV77peiCOiKa6vHiWiqw3E0ivzYpczD+So6Vz2gdNtDRMQ7guWPzS4jHCZXt3ayExzzcw8ZHOVnNk1LxDQ9mBb6U0rl2qoU+92TgbblFxsSMmnMcx51OlepGs2ut/1Ont1bOKytaP5P+zcbgFrHAaewBqRDpA==;
	5:aU+evlx6QHInrcVvJx5uHhfJmzKuvh8/E90chYui1mMabbwy0W/VJ851vBUTakom2UTYUymi1zbB/G7Qhr/IkVxtUCO4YzKXE/GrqYX6SiCeGWVDloeibsTlzTumSTnwFXy9HqfrM/lbKWnPHdYmXQSSm70WnvIQVjJxf2rDifU=;
	7:SiTt3Pch4mU3dyjpfXbWMmw7YZ3SJzK5sLrm9Leh91/uU8Yun3Zb6BfGAVttyUquMNt2bhr30FVZhbjWwCQyy6YkVd0iZ1WxZLMlyYjtJ2fuqT94p+3+Pgdr6d2fNtUCU6VfChTZET9JPcUr6Xrl4YES8CYwgaIsgLgM2aPfRuBgqn6BkguoLFSK8qKFboQ9SINP8syLZy2QYs05mXEtq8zz+IyFf1iMPLjpPLwn1n+NT2y/431ai2nqzRVeI1ci
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:VE1EUR02HT117; 
x-ms-traffictypediagnostic: VE1EUR02HT117:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR02HT117; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT117; 
x-forefront-prvs: 0772E5DAD5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(39060400002)(20460500001)(54896002)(14454004)(19627405001)(4326008)(83332001)(55016002)(6436002)(9686003)(5660300001)(74316002)(104016004)(106356001)(6246003)(8676002)(6916009)(93886005)(105586002)(33656002)(25786009)(82202002)(44832011)(229853002)(81156014)(45080400002)(76176011)(97736004)(6506007)(486006)(73972006)(102836004)(7696005)(2900100001)(446003)(68736007)(11346002)(5250100002)(476003)(105004)(86362001)(87572001)(99286004)(14444005)(256004)(26005)(56003)(6346003)(8936002)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR02HT117;
	H:HE1PR06MB1689.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nader.hariri@hotmail.com; 
x-microsoft-antispam-message-info: NG0xU3Ih39uYIdiem4lcFXqqP/VqGfMAtoqRQcoMpQBva7SE6IGVIdCvl9hcwwIYJag4ju0ghMvmv/Ff5i6YsYtJtOp0VTF6oqGVJdFsXn+6WrBOsNSe6tqzbxVRms+hASuYRJk5Jb4WTbmzudR3WM1DhWoFsVZbsftWHBUtj5wysakKnYDZGRQrlIqBX5Vybt/LyBUqu9ytCSootop8LIGFawkRFno3SlCNxc1oZYs=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-Network-Message-Id: c391778d-ac3e-45b4-4947-08d607efc377
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2018 05:26:07.7006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT117
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
X-List-Received-Date: Wed, 22 Aug 2018 05:58:48 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB168902A878150A204CDFF16694300HE1PR06MB1689eurp_"

--_000_HE1PR06MB168902A878150A204CDFF16694300HE1PR06MB1689eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


I added some features so my local.conf looks like this:

IMAGE_FEATURES =3D "tools-debug debug-tweaks"
EXTRA_IMAGE_FEATURES =3D "ptest-pkgs"

here are my logs:

# $IMAGE_FEATURES [4 operations]
#   set /home/nader/poky-docker/workdir/meta-corbos-linux/scripts/build/con=
f/local.conf:62
#     "tools-debug debug-tweaks"
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
#   "tools-debug debug-tweaks ${EXTRA_IMAGE_FEATURES}"
IMAGE_FEATURES=3D"tools-debug debug-tweaks ptest-pkgs"


Now the suspicious space disappears, however there are no -ptest packages i=
nstalled in my image.

Nader
________________________________
De : Alexander Kanavin <alex.kanavin@gmail.com>
Envoy=E9 : mardi 21 ao=FBt 2018 11:30
=C0 : Nader Hariri
Cc : yocto@yoctoproject.org
Objet : Re: [yocto] ptest-runner "No ptests found."

This looks like we *might* have a bug in here. Extra whitespace like
this should not have such broken effects. Can you add some unrelated
feature to IMAGE_FEATURES, so that we get a list without leading and
trailing whitespaces?

Alex

2018-08-21 9:54 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> ok, so I changed my local.conf from IMAGE_FEATURES_append =3D " ptest-pkg=
s" to
> EXTRA_IMAGE_FEATURES =3D "ptest-pkgs", here are the logs:
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
> IMAGE_FEATURES=3D" ptest-pkgs"
>
> As we can see, I still have the suspicious space but it has shrunk from 2
> spaces to 1 space. And -ptest packages didn't get installed in my image.
>
> Nader
> ________________________________
> De : Alexander Kanavin <alex.kanavin@gmail.com>
> Envoy=E9 : lundi 20 ao=FBt 2018 16:54
> =C0 : Nader Hariri
> Cc : yocto@yoctoproject.org
> Objet : Re: [yocto] ptest-runner "No ptests found."
>
> 2018-08-20 15:36 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
>> I ran 'bitbake -e <image>' as you have suggested. I can see from the log=
s
>> that the variable IMAGE_FEATURES does get appended the value of
>> ${EXTRA_IMAGE_FEATURES}, however I still have no -ptest packages in my
>> image. Is there anything wrong in my logs?
>>
>>
>> # $IMAGE_FEATURES [3 operations]
>> #   set?
>>
>> /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/default-di=
strovars.inc:23
>> #     ""
>> #   set
>> /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:210
>> #     [doc] "The primary list of features to include in an image.
>> Configure
>> this variable in an image recipe."
>> #   append /home/nader/poky-docker/workdir/poky/meta/conf/bitbake.conf:8=
06
>> #     "${EXTRA_IMAGE_FEATURES}"
>> # pre-expansion value:
>> #   " ${EXTRA_IMAGE_FEATURES}"
>> IMAGE_FEATURES=3D"  ptest-pkgs"
>
> The space looks suspicious in there. Can you try to set
> EXTRA_IMAGE_FEATURES directly with =3D instead of appending to it?
>
> Alex

--_000_HE1PR06MB168902A878150A204CDFF16694300HE1PR06MB1689eurp_
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
<div>
<div>&nbsp;</div>
I added some features so my local.conf looks like this: </div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>IMAGE_FEATURES =3D &quot;tools-debug debug-tweaks&quot;<br>
</span>
<div>EXTRA_IMAGE_FEATURES =3D &quot;ptest-pkgs&quot;<br>
</div>
<span></span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
here are my logs:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span># $IMAGE_FEATURES [4 operations]<br>
</span>
<div># &nbsp; set /home/nader/poky-docker/workdir/meta-corbos-linux/scripts=
/build/conf/local.conf:62<br>
</div>
<div># &nbsp; &nbsp; &quot;tools-debug debug-tweaks&quot;<br>
</div>
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
<div># &nbsp; &quot;tools-debug debug-tweaks ${EXTRA_IMAGE_FEATURES}&quot;<=
br>
</div>
<span>IMAGE_FEATURES=3D&quot;tools-debug debug-tweaks ptest-pkgs&quot;</spa=
n><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Now the suspicious space disappears, however there are no -ptest packages i=
nstalled in my image.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Nader<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>De :</b> Alexander Kanavin &l=
t;alex.kanavin@gmail.com&gt;<br>
<b>Envoy=E9 :</b> mardi 21 ao=FBt 2018 11:30<br>
<b>=C0 :</b> Nader Hariri<br>
<b>Cc&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet :</b> Re: [yocto] ptest-runner &quot;No ptests found.&quot;</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">This looks like we *might* have a bug in here. E=
xtra whitespace like<br>
this should not have such broken effects. Can you add some unrelated<br>
feature to IMAGE_FEATURES, so that we get a list without leading and<br>
trailing whitespaces?<br>
<br>
Alex<br>
<br>
2018-08-21 9:54 GMT&#43;02:00 Nader Hariri &lt;nader.hariri@hotmail.com&gt;=
:<br>
&gt; ok, so I changed my local.conf from IMAGE_FEATURES_append =3D &quot; p=
test-pkgs&quot; to<br>
&gt; EXTRA_IMAGE_FEATURES =3D &quot;ptest-pkgs&quot;, here are the logs:<br=
>
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
&gt; IMAGE_FEATURES=3D&quot; ptest-pkgs&quot;<br>
&gt;<br>
&gt; As we can see, I still have the suspicious space but it has shrunk fro=
m 2<br>
&gt; spaces to 1 space. And -ptest packages didn't get installed in my imag=
e.<br>
&gt;<br>
&gt; Nader<br>
&gt; ________________________________<br>
&gt; De : Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; Envoy=E9 : lundi 20 ao=FBt 2018 16:54<br>
&gt; =C0 : Nader Hariri<br>
&gt; Cc : yocto@yoctoproject.org<br>
&gt; Objet : Re: [yocto] ptest-runner &quot;No ptests found.&quot;<br>
&gt;<br>
&gt; 2018-08-20 15:36 GMT&#43;02:00 Nader Hariri &lt;nader.hariri@hotmail.c=
om&gt;:<br>
&gt;&gt; I ran 'bitbake -e &lt;image&gt;' as you have suggested. I can see =
from the logs<br>
&gt;&gt; that the variable IMAGE_FEATURES does get appended the value of<br=
>
&gt;&gt; ${EXTRA_IMAGE_FEATURES}, however I still have no -ptest packages i=
n my<br>
&gt;&gt; image. Is there anything wrong in my logs?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; # $IMAGE_FEATURES [3 operations]<br>
&gt;&gt; #&nbsp;&nbsp; set?<br>
&gt;&gt;<br>
&gt;&gt; /home/nader/poky-docker/workdir/poky/meta/conf/distro/include/defa=
ult-distrovars.inc:23<br>
&gt;&gt; #&nbsp;&nbsp;&nbsp;&nbsp; &quot;&quot;<br>
&gt;&gt; #&nbsp;&nbsp; set<br>
&gt;&gt; /home/nader/poky-docker/workdir/poky/meta/conf/documentation.conf:=
210<br>
&gt;&gt; #&nbsp;&nbsp;&nbsp;&nbsp; [doc] &quot;The primary list of features=
 to include in an image.<br>
&gt;&gt; Configure<br>
&gt;&gt; this variable in an image recipe.&quot;<br>
&gt;&gt; #&nbsp;&nbsp; append /home/nader/poky-docker/workdir/poky/meta/con=
f/bitbake.conf:806<br>
&gt;&gt; #&nbsp;&nbsp;&nbsp;&nbsp; &quot;${EXTRA_IMAGE_FEATURES}&quot;<br>
&gt;&gt; # pre-expansion value:<br>
&gt;&gt; #&nbsp;&nbsp; &quot; ${EXTRA_IMAGE_FEATURES}&quot;<br>
&gt;&gt; IMAGE_FEATURES=3D&quot;&nbsp; ptest-pkgs&quot;<br>
&gt;<br>
&gt; The space looks suspicious in there. Can you try to set<br>
&gt; EXTRA_IMAGE_FEATURES directly with =3D instead of appending to it?<br>
&gt;<br>
&gt; Alex<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR06MB168902A878150A204CDFF16694300HE1PR06MB1689eurp_--
