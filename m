Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51433E00B47; Thu, 18 May 2017 15:49:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9A22E00B43
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 15:49:30 -0700 (PDT)
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
	[15.241.140.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id 684B819AD
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 22:49:30 +0000 (UTC)
Received: from G2W6311.americas.hpqcorp.net (g2w6311.austin.hp.com
	[16.197.64.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3427.houston.hpe.com (Postfix) with ESMTPS id 09C8A68;
	Thu, 18 May 2017 22:49:29 +0000 (UTC)
Received: from G4W8055.americas.hpqcorp.net (2002:10d2:12f5::10d2:12f5) by
	G2W6311.americas.hpqcorp.net (2002:10c5:4035::10c5:4035) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 18 May 2017 22:49:28 +0000
Received: from G4W10204.americas.hpqcorp.net (16.207.82.16) by
	G4W8055.americas.hpqcorp.net (16.210.18.245) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Thu, 18 May 2017 22:49:28 +0000
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (15.241.52.10) by
	G4W10204.americas.hpqcorp.net (16.207.82.16) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 18 May 2017 22:49:22 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0175.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.156) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1084.16; Thu, 18 May 2017 22:49:20 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1084.030; Thu, 18 May 2017 22:49:20 +0000
From: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
To: Joshua Watt <jpewhacker@gmail.com>
Thread-Topic: [yocto] [poky/classes] [PATCH] new alternatesrc.bbclass
Thread-Index: AdLQAXImgNcpOqd0S3m7Clz1zUvLkAAHYDCAAAE2nMAAATMWHQ==
Date: Thu, 18 May 2017 22:49:20 +0000
Message-ID: <TU4PR84MB0176DA4C85461ECFDA91E026EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>,
	<CAJdd5Gbe5trB0yjzQoLDzhSO=fYrrh+cR=NiX-QbO7Lac+034A@mail.gmail.com>,
	<TU4PR84MB0176E5FD9537006304A34BE0EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <TU4PR84MB0176E5FD9537006304A34BE0EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=hpe.com;
x-originating-ip: [74.56.63.61]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0175;
	7:QrOtcm0i5rXUgELK4m4x2wfDLvlZC4DWp8HTL1rt3TTCFR42TgJnOjmIcnXOJ9r+JDtBelr0AgNsCiBgJy3JSxiy2k22/jlJOi6tOCIjTPTi0KRqRzDogV4KLpjpWs73m43gxq7YaNvAh/EhK9rIdSzkr5/8x22aUQFbeE7Umb1z4k0lENV7RyArafvOZFTH0GjrtYGexOozcCysETwdDgsxWpnJySZmt1lVaAokWiLgXgzoMqHiVFxgeGc1RzuYUSKaysRm0V3WB7tf3lCkijpzT+fUDr67kUEscpRmXEXcUYIlpLyJFW4JsZ63TQu9Rf1YNT1lqazHZbJ7zE1v0A==
x-ms-office365-filtering-correlation-id: 4fb88a5d-cd56-4d1d-16f2-08d49e401f1d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081);
	SRVR:TU4PR84MB0175; 
x-microsoft-antispam-prvs: <TU4PR84MB0175D8E4E4018FC7758506B8EDE40@TU4PR84MB0175.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(158342451672863)(81439100147899)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(10201501046)(6055026)(6041248)(20161123558100)(20161123555025)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(6072148);
	SRVR:TU4PR84MB0175; BCL:0; PCL:0; RULEID:; SRVR:TU4PR84MB0175; 
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(39450400003)(39840400002)(39850400002)(39400400002)(39410400002)(377454003)(24454002)(2900100001)(6916009)(2950100002)(19627405001)(53936002)(39060400002)(7696004)(25786009)(86362001)(189998001)(66066001)(53546009)(1411001)(102836003)(5660300001)(33656002)(6436002)(110136004)(6506006)(229853002)(7736002)(4326008)(3280700002)(8936002)(8676002)(74316002)(3846002)(77096006)(606005)(6116002)(7906003)(6306002)(122556002)(50986999)(54356999)(9686003)(3660700001)(38730400002)(54896002)(76176999)(478600001)(81166006)(68736007)(2906002)(236005)(6246003)(45080400002)(55016002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0175;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2017 22:49:20.2047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0175
X-OriginatorOrg: hpe.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [poky/classes] [PATCH] new alternatesrc.bbclass
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
X-List-Received-Date: Thu, 18 May 2017 22:49:34 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_TU4PR84MB0176DA4C85461ECFDA91E026EDE40TU4PR84MB0176NAMP_"

--_000_TU4PR84MB0176DA4C85461ECFDA91E026EDE40TU4PR84MB0176NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The alternatesrc is also way faster than managing local layer just to re-sp=
ecify the git location.


The ALTERNATESRC can be automatically calulated such as


  inherit alternatesrc

  ALTERNATESRC=3D"$YOURROOT/$P"


As such all recipe looks the same, and if you do git clone URI $YOURROOT/$P=
 locally, the yocto build use your code, you fix, commit, push, then you ca=
n keep the folder there or you can remove it.  If you do remove it, next bu=
ild use your git URI as before and you are testing that your previous push =
made it to the server.


Way faster than changing recipe in private layer or not.


In any case, the idea of this system is to be flexible and sharing it with =
you should enable other to gain development speed from that.

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Koehler, Yannick (HPN Aruba)
Sent: May 18, 2017 6:12:13 PM
To: Joshua Watt
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [poky/classes] [PATCH] new alternatesrc.bbclass

Sounds great, but I have to deal with =E0 team of buildroot beliver, as suc=
h, askibg dev to setup their own layrr manually is too complexe for them.  =
With my solution they do not have to do anything on their setup.

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Joshua Watt <jpewhacker@gmail.com>
Sent: Thursday, May 18, 2017 5:37:29 PM
To: Koehler, Yannick (HPN Aruba)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [poky/classes] [PATCH] new alternatesrc.bbclass

On Thu, May 18, 2017 at 1:11 PM, Koehler, Yannick (HPN Aruba)
<yannick.koehler@hpe.com> wrote:
> In our environment, we have package that are store inside git in their ow=
n repo.  Using SRC_URI we fetch the code and build it from the git repo its=
elf and all is fine.  When developer wants to change the content of the pac=
kage, they had to clone, change, commit, push and only then they were able =
to test because yocto recipe clone/fetch from the git server only.
FWIW, our devs keep their own private bitbake layers that they add
locally to bblayers.conf. In these layers they add .bbappends that
override the SRC_URI for recipes they are interested in to point at
local repositories.

--_000_TU4PR84MB0176DA4C85461ECFDA91E026EDE40TU4PR84MB0176NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>The alternatesrc is also way faster than managing local layer just to re=
-specify the git location.</p>
<p><br>
</p>
<p>The ALTERNATESRC can be automatically calulated such as</p>
<p><br>
</p>
<p>&nbsp; inherit alternatesrc</p>
<p>&nbsp; ALTERNATESRC=3D&quot;$YOURROOT/$P&quot;</p>
<p><br>
</p>
<p>As such all recipe looks the same, and if you do git clone URI $YOURROOT=
/$P locally, the yocto build use your code, you fix, commit, push, then you=
 can keep the folder there or you can remove it. &nbsp;If you do remove it,=
 next build use your git URI as before
 and you are testing that your previous push made it to the server.</p>
<p><br>
</p>
<p>Way faster than changing recipe in private layer or not.</p>
<p><br>
</p>
<p>In any case, the idea of this system is to be flexible and sharing it wi=
th you should enable other to gain development speed from that.</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Koehler, Yann=
ick (HPN Aruba)<br>
<b>Sent:</b> May 18, 2017 6:12:13 PM<br>
<b>To:</b> Joshua Watt<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [poky/classes] [PATCH] new alternatesrc.bbclass=
</font>
<div>&nbsp;</div>
</div>
<div>
<div>
<div id=3D"x_compose-container" itemscope=3D"" itemtype=3D"https://schema.o=
rg/EmailMessage" style=3D"direction:ltr">
<span itemprop=3D"creator" itemscope=3D"" itemtype=3D"https://schema.org/Or=
ganization"><span itemprop=3D"name"></span></span>
<div>
<div style=3D"direction:ltr">Sounds great, but I have to deal with =E0 team=
 of buildroot beliver, as such, askibg dev to setup their own layrr manuall=
y is too complexe for them. &nbsp;With my solution they do not have to do a=
nything on their setup.</div>
<div><br>
</div>
<div class=3D"x_acompli_signature">Get <a href=3D"https://aka.ms/o0ukef">Ou=
tlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Joshua Watt &lt;jpe=
whacker@gmail.com&gt;<br>
<b>Sent:</b> Thursday, May 18, 2017 5:37:29 PM<br>
<b>To:</b> Koehler, Yannick (HPN Aruba)<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [poky/classes] [PATCH] new alternatesrc.bbclass=
</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Thu, May 18, 2017 at 1:11 PM, Koehler, Yannick =
(HPN Aruba)<br>
&lt;yannick.koehler@hpe.com&gt; wrote:<br>
&gt; In our environment, we have package that are store inside git in their=
 own repo.&nbsp; Using SRC_URI we fetch the code and build it from the git =
repo itself and all is fine.&nbsp; When developer wants to change the conte=
nt of the package, they had to clone, change,
 commit, push and only then they were able to test because yocto recipe clo=
ne/fetch from the git server only.<br>
FWIW, our devs keep their own private bitbake layers that they add<br>
locally to bblayers.conf. In these layers they add .bbappends that<br>
override the SRC_URI for recipes they are interested in to point at<br>
local repositories.<br>
</div>
</span></font></div>
</body>
</html>

--_000_TU4PR84MB0176DA4C85461ECFDA91E026EDE40TU4PR84MB0176NAMP_--
