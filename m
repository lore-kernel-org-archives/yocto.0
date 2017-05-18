Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAF3E00B99; Thu, 18 May 2017 15:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
X-Greylist: delayed 356 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 May 2017 15:18:13 PDT
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0394E00B9D
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 15:18:13 -0700 (PDT)
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id BB2E96186E
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 22:12:16 +0000 (UTC)
Received: from G4W9121.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.210.21.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id 4020E63;
	Thu, 18 May 2017 22:12:15 +0000 (UTC)
Received: from G4W9122.americas.hpqcorp.net (2002:10d2:1511::10d2:1511) by
	G4W9121.americas.hpqcorp.net (2002:10d2:1510::10d2:1510) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 18 May 2017 22:12:15 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.13) by
	G4W9122.americas.hpqcorp.net (16.210.21.17) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 18 May 2017 22:12:14 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1084.16; Thu, 18 May 2017 22:12:13 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1084.030; Thu, 18 May 2017 22:12:13 +0000
From: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
To: Joshua Watt <jpewhacker@gmail.com>
Thread-Topic: [yocto] [poky/classes] [PATCH] new alternatesrc.bbclass
Thread-Index: AdLQAXImgNcpOqd0S3m7Clz1zUvLkAAHYDCAAAE2nMA=
Date: Thu, 18 May 2017 22:12:13 +0000
Message-ID: <TU4PR84MB0176E5FD9537006304A34BE0EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>,
	<CAJdd5Gbe5trB0yjzQoLDzhSO=fYrrh+cR=NiX-QbO7Lac+034A@mail.gmail.com>
In-Reply-To: <CAJdd5Gbe5trB0yjzQoLDzhSO=fYrrh+cR=NiX-QbO7Lac+034A@mail.gmail.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
x-originating-ip: [13.84.226.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0174;
	7://xi2vTk8geyEl9I+MhzZSFov1QyaloZMhkLyEwWn+Jmo4GAbY12Y4S+1PiQOnqUZtY1hYXPqnCVgLCBo1DDyHN4z7m9kCbMndNikR35V74B1HW10jbu7CK2HDyN/kWNtRtbrV6pRqc4JlolJ8i2/eprVlHqOyI3ed4EQ8hV67mQbqci8aXs2PvAlErxLpTk0xn+zs8Hhq5ntYj1rNfS55wqeyOHRS+3q5MZ8XvhSIKjMja0Zr3/LluA1uPcJjoUa4CDk8wQmJbvuyI/F70iMVZrWSQWox8tRCdF1OsbtRRINTE0hD2wAXYJUQEDhdox4j6I4Avh1SDRo80YbN69hQ==
x-ms-office365-filtering-correlation-id: c8f11812-b156-4c76-5d63-08d49e3af00a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081);
	SRVR:TU4PR84MB0174; 
x-microsoft-antispam-prvs: <TU4PR84MB0174716D5EB79C214A5F5F8DEDE40@TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(158342451672863)(81439100147899)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123560025)(20161123562025)(20161123558100)(20161123564025)(6072148);
	SRVR:TU4PR84MB0174; BCL:0; PCL:0; RULEID:; SRVR:TU4PR84MB0174; 
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39410400002)(39450400003)(39400400002)(39840400002)(39850400002)(39860400002)(377454003)(24454002)(6916009)(39060400002)(478600001)(606005)(53936002)(122556002)(9686003)(236005)(2950100002)(45080400002)(33656002)(25786009)(6436002)(54896002)(2900100001)(38730400002)(6306002)(6246003)(229853002)(6116002)(3846002)(5660300001)(4326008)(53546009)(55016002)(110136004)(68736007)(102836003)(66066001)(189998001)(8936002)(77096006)(74316002)(54356999)(7696004)(50986999)(76176999)(81166006)(86362001)(3660700001)(3280700002)(2906002)(6506006)(7736002)(8676002)(1411001)(7906003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0174;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2017 22:12:13.7894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0174
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
X-List-Received-Date: Thu, 18 May 2017 22:18:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR84MB0176E5FD9537006304A34BE0EDE40TU4PR84MB0176NAMP_"

--_000_TU4PR84MB0176E5FD9537006304A34BE0EDE40TU4PR84MB0176NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_TU4PR84MB0176E5FD9537006304A34BE0EDE40TU4PR84MB0176NAMP_
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
</span></font>
</body>
</html>

--_000_TU4PR84MB0176E5FD9537006304A34BE0EDE40TU4PR84MB0176NAMP_--
