Return-Path: <nader.hariri@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 345ADE00AB9; Mon, 20 Aug 2018 12:10:30 -0700 (PDT)
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
	*      [40.92.72.98 listed in list.dnswl.org]
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
X-Greylist: delayed 5572 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 12:10:28 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072098.outbound.protection.outlook.com [40.92.72.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75902E00848
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 12:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=08gupnEQv0xk7OeGtPX6M9oqnaNxvbfskIJTQMuTcEQ=;
	b=fSed4u5GJIoTvDSrliwxp9mMD79aKmFxMyXhixl4hTtIVZGqCfrBdk/XSz+/xfRKYvyr7TU3XKe1uUzCzOVbrAVo6aN4AgpAvVlx1o2J/quyg42gflRVbR6MTlstlCXRn1q5wCqI0YUMmp93VQ5MiP55rL8qjC43/bZbGYyGtfue/xsL3pjGzvLG7v+mMZeU5IS9S/LTJ2bPyztpDzSS/DfJ2QS2n+Eg7oqBvTxfVz1Kwvo8iE5K5CKG+Q65BxT17HvWU2QDX87lW1jE+sZpfGTHkpCHes8CkB8SO0WukOA0y1lPSNLakda0qVrcjtwjXRNqZHyuxf/ADT+9UYYaZQ==
Received: from VE1EUR03FT033.eop-EUR03.prod.protection.outlook.com
	(10.152.18.54) by VE1EUR03HT074.eop-EUR03.prod.protection.outlook.com
	(10.152.19.72) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1080.9;
	Mon, 20 Aug 2018 13:36:48 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com (10.152.18.58) by
	VE1EUR03FT033.mail.protection.outlook.com (10.152.18.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1080.9 via Frontend Transport; Mon, 20 Aug 2018 13:36:48 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957]) by
	HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957%6]) with mapi id 15.20.1059.023;
	Mon, 20 Aug 2018 13:36:48 +0000
From: Nader Hariri <nader.hariri@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] ptest-runner "No ptests found."
Thread-Index: AQHUNWpiVp47iVBfjka016fW7Q5GIaTIga2AgAAIAsSAAA10AIAADIMm
Date: Mon, 20 Aug 2018 13:36:48 +0000
Message-ID: <HE1PR06MB16896228DCEB67A69FF9D43E94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
	<HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>,
	<CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
In-Reply-To: <CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:BE19DA2B22A2FBA4A106B19A9B32C433B9DBCA0FA95F90772159A46AB6C75B2C;
	UpperCasedChecksum:087D60517858E9E7F2AA7A6E3B99B0E2974046D8CCA27E0A7C9EEECA2FFE4F0A;
	SizeAsReceived:7368; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [CEF0zsV5JABHeqWMApXDrtJa+w7xJv4c]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT074;
	6:wOyuwFmgUS2mQN3zFcGP+vkUtz2hcw6jzoG/sd/oRIUQEPlt/Pqdt7WkMPnX4Qtkg8q7m+BRx4coHobUMQHxF0Pcvr8hUkjOhV4lgXvW9bAkqhvpf/ZzHJT4r62hQRf6CYbpu5nDyUHRoJUOc77GUSAN53Vl3StmFP/g3ZiMwbiVJ8hoeCzdH+gTbmnhG0a7g1rXGv5zIsQuu1bajrczXm+Q0t3j3Ze/epzQtwKLKZyw/t7vnZY6uJVtUBQrV6DpMIGKMcQPJK6WP0Pfh5rNuZwn7K1JJtzl5P5UOaXAgRWVQZNfzlv7PTtAn+3U9zf1osAMmWdhCf63Bga5RjTUZ5OLgDgxvP5GWPh3wCU4Ddv+Vl5HKwAmLaC3e0N4bdMOh9H8vPnhk0G777NaFQ+Xyz8QfZxduritMkb7kgmOMXFHJEi+Tr0Hp6eKu7tEwiOepjqXPC4gOHqEN0hQmXbihw==;
	5:NgXGKgbBif1nNix3Fj2axqsgZmf8t1S1z1uC12M/Wua7acxIjhwh20Rhpa2Cu3Fg0g8mbg1MdkNcb49B0iPc88+X7DYSaQ1sZjsXR/k8TkK+WbP2/U80QyhlHjXJlfwhvBKNQwgsyC0ZILc91ojGqsCPs2CLnmaHIbYtcd/D6Jk=;
	7:mu/pTchmqSkPVgdaS7RiMNU14/1Hf/fS20Yd0YUsL5bnFWUziSN79JenpGz0zN08g3bY2gEKl6kQ3U/dNR200nuawmcBu643vw+VEUvJYZwnUwRsLV/MIyMtuQ5buEAT9t36X7RFn808Zt7o9yIU3NObwy6lrDwKix/92dQFm+brOVQWhw3AHa/dJJwFa4yobF/gk0V5Bz+0REHa4ms5ylQ+7W8GOsQTOirVjq50OUNn1LK3Lh4WO+yxd6nYBmjF
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:VE1EUR03HT074; 
x-ms-traffictypediagnostic: VE1EUR03HT074:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR03HT074; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT074; 
x-forefront-prvs: 0770F75EA9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(76176011)(93886005)(551544002)(86362001)(44832011)(45080400002)(20460500001)(19627405001)(229853002)(6506007)(102836004)(82202002)(6346003)(81156014)(5660300001)(73972006)(486006)(7696005)(14444005)(2900100001)(104016004)(99286004)(56003)(256004)(106356001)(105004)(8676002)(6246003)(105586002)(33656002)(25786009)(14454004)(476003)(8936002)(68736007)(4326008)(39060400002)(446003)(11346002)(6916009)(74316002)(6436002)(5250100002)(87572001)(83332001)(26005)(97736004)(9686003)(54896002)(55016002)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR03HT074;
	H:HE1PR06MB1689.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nader.hariri@hotmail.com; 
x-microsoft-antispam-message-info: vir3VtzFyEFcTk8cCD0X1biCT2FEw988aOqO6JH7rLIG03e0yRLVTPp7VySaxbJhfn5IwAhNahyoifaCOVBtH2KUsHRZwNzkf9NA2oYkVKjagddLyoGl9Er+rJ9rZ236fJUToeIIxCvMuO8lqviRfaOw0622eOcs5H6mXb7ZXFPvvY5z6UtVNebYM5f857WCxamLZoEK/GoI7/9jhDkxnFM5EltVeK4SWoW/k6JQn1s=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-Network-Message-Id: bc75aef8-1554-4bc7-7224-08d606a1fac1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2018 13:36:48.5306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT074
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
X-List-Received-Date: Mon, 20 Aug 2018 19:10:30 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB16896228DCEB67A69FF9D43E94320HE1PR06MB1689eurp_"

--_000_HE1PR06MB16896228DCEB67A69FF9D43E94320HE1PR06MB1689eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I ran 'bitbake -e <image>' as you have suggested. I can see from the logs t=
hat the variable IMAGE_FEATURES does get appended the value of ${EXTRA_IMAG=
E_FEATURES}, however I still have no -ptest packages in my image. Is there =
anything wrong in my logs?


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
IMAGE_FEATURES=3D"  ptest-pkgs"


Nader
________________________________
De : Alexander Kanavin <alex.kanavin@gmail.com>
Envoy=E9 : lundi 20 ao=FBt 2018 15:26
=C0 : Nader Hariri
Cc : yocto@yoctoproject.org
Objet : Re: [yocto] ptest-runner "No ptests found."

2018-08-20 14:07 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> So,  contrary to what is stated in the ptest wiki and the yocto
> documentation, using EXTRA_IMAGE_FEATURES doesn't install ptests packages
> (from ptest-enabled recipes) in my image, and I can't figure out why ..

You can run 'bitbake -e <image>' to figure out why
EXTRA_IMAGE_FEATURES has no effect. In my tests (poky master) it seems
to work as intended:

#
# $IMAGE_FEATURES [8 operations]
#   append /home/alexander/development/meta-qt5/conf/layer.conf:36
#     [validitems] "qtcreator-debug"
#   set? /home/alexander/development/poky/meta/conf/distro/include/default-=
distrovars.inc:24
#     ""
#   set /home/alexander/development/poky/meta/conf/documentation.conf:208
#     [doc] "The primary list of features to include in an image.
Configure this variable in an image recipe."
#   append /home/alexander/development/poky/meta/conf/bitbake.conf:812
#     "${EXTRA_IMAGE_FEATURES}"
#   set? /home/alexander/development/poky/meta/classes/image.bbclass:34
#     ""
#   set /home/alexander/development/poky/meta/classes/image.bbclass:35
#     [type] "list"
#   append /home/alexander/development/poky/meta/classes/image.bbclass:36
#     [validitems] "debug-tweaks read-only-rootfs empty-root-password
allow-empty-password allow-root-login post-install-logging"
#   set image.bbclass:166
[__anon_168__home_alexander_development_poky_meta_classes_image_bbclass]
#     "debug-tweaks"
# pre-expansion value:
#   "debug-tweaks"
IMAGE_FEATURES=3D"debug-tweaks"


Alex

--_000_HE1PR06MB16896228DCEB67A69FF9D43E94320HE1PR06MB1689eurp_
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
I ran <font size=3D"2"><span style=3D"font-size:11pt;">'bitbake -e &lt;imag=
e&gt;'</span></font> as you have suggested. I can see from the logs that th=
e variable IMAGE_FEATURES does get appended the value of ${EXTRA_IMAGE_FEAT=
URES}, however I still have no -ptest packages
 in my image. Is there anything wrong in my logs?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
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
<span>IMAGE_FEATURES=3D&quot; &nbsp;ptest-pkgs&quot;</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>Nader</span><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>De :</b> Alexander Kanavin &l=
t;alex.kanavin@gmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 20 ao=FBt 2018 15:26<br>
<b>=C0 :</b> Nader Hariri<br>
<b>Cc&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet :</b> Re: [yocto] ptest-runner &quot;No ptests found.&quot;</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">2018-08-20 14:07 GMT&#43;02:00 Nader Hariri &lt;na=
der.hariri@hotmail.com&gt;:<br>
&gt; So,&nbsp; contrary to what is stated in the ptest wiki and the yocto<b=
r>
&gt; documentation, using EXTRA_IMAGE_FEATURES doesn't install ptests packa=
ges<br>
&gt; (from ptest-enabled recipes) in my image, and I can't figure out why .=
.<br>
<br>
You can run 'bitbake -e &lt;image&gt;' to figure out why<br>
EXTRA_IMAGE_FEATURES has no effect. In my tests (poky master) it seems<br>
to work as intended:<br>
<br>
#<br>
# $IMAGE_FEATURES [8 operations]<br>
#&nbsp;&nbsp; append /home/alexander/development/meta-qt5/conf/layer.conf:3=
6<br>
#&nbsp;&nbsp;&nbsp;&nbsp; [validitems] &quot;qtcreator-debug&quot;<br>
#&nbsp;&nbsp; set? /home/alexander/development/poky/meta/conf/distro/includ=
e/default-distrovars.inc:24<br>
#&nbsp;&nbsp;&nbsp;&nbsp; &quot;&quot;<br>
#&nbsp;&nbsp; set /home/alexander/development/poky/meta/conf/documentation.=
conf:208<br>
#&nbsp;&nbsp;&nbsp;&nbsp; [doc] &quot;The primary list of features to inclu=
de in an image.<br>
Configure this variable in an image recipe.&quot;<br>
#&nbsp;&nbsp; append /home/alexander/development/poky/meta/conf/bitbake.con=
f:812<br>
#&nbsp;&nbsp;&nbsp;&nbsp; &quot;${EXTRA_IMAGE_FEATURES}&quot;<br>
#&nbsp;&nbsp; set? /home/alexander/development/poky/meta/classes/image.bbcl=
ass:34<br>
#&nbsp;&nbsp;&nbsp;&nbsp; &quot;&quot;<br>
#&nbsp;&nbsp; set /home/alexander/development/poky/meta/classes/image.bbcla=
ss:35<br>
#&nbsp;&nbsp;&nbsp;&nbsp; [type] &quot;list&quot;<br>
#&nbsp;&nbsp; append /home/alexander/development/poky/meta/classes/image.bb=
class:36<br>
#&nbsp;&nbsp;&nbsp;&nbsp; [validitems] &quot;debug-tweaks read-only-rootfs =
empty-root-password<br>
allow-empty-password allow-root-login post-install-logging&quot;<br>
#&nbsp;&nbsp; set image.bbclass:166<br>
[__anon_168__home_alexander_development_poky_meta_classes_image_bbclass]<br=
>
#&nbsp;&nbsp;&nbsp;&nbsp; &quot;debug-tweaks&quot;<br>
# pre-expansion value:<br>
#&nbsp;&nbsp; &quot;debug-tweaks&quot;<br>
IMAGE_FEATURES=3D&quot;debug-tweaks&quot;<br>
<br>
<br>
Alex<br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1PR06MB16896228DCEB67A69FF9D43E94320HE1PR06MB1689eurp_--
