Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90C45E00BAB; Mon, 19 Jun 2017 04:30:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0119.outbound.protection.outlook.com [104.47.2.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1BB3E00B27
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 04:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xCB/Jpdj0OVta2kLAM3/7tRvgh1P0vud1V5tPhDpk1U=;
	b=cSUCwqryUAPpA/zDmgh9lzX27WFYm+D+lF6/zdBH3oaUIbao59IcFXvpwY+Iq74RipDLhjZheJEXfBbkIwYFC2azuAy7f2jF65TZ5wanMsg/K5HgZW4ueFI7/HXN8yQmy287TlFtBuDpN9Z8HLJOhh9S2cKs1Ik6+tk/TEjXhzQ=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB2615.eurprd07.prod.outlook.com (10.169.214.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1199.6;
	Mon, 19 Jun 2017 11:15:13 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd%13]) with mapi id 15.01.1199.007;
	Mon, 19 Jun 2017 11:15:13 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-raspberrypi] Configure eth0 to come up with
	Link-Local IPv6 address only
Thread-Index: AdLo6u1VdjTmtTz1QAC1ROIaMLkKqA==
Date: Mon, 19 Jun 2017 11:15:12 +0000
Message-ID: <DB6PR0701MB1879D229F084DD8D85A55A22D3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=net2edge.com;
x-originating-ip: [81.128.174.58]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB2615;
	7:324uG6PK61rMoVwib88Wh6mw5a2uaM6+QMJ4daJzZFkzxVYUMEIHlZ+PYhigIJnw1qHMkEfyh4ZapAZPztfMKy0fjm0rWbHQ+zGyEcnbPS2GSc5JG1layMzFgdmc3+5ODYcINMSd6qwPwYzZxP3VrsWl+5hXI0fqb8MspzGScfE5ryPuLvlnX88DYde4rcU1eBZCh9R9zx8RLjucDFvRcilS+Q04w1fymXOJOPt+VE4Q58KDe9uSK5mtOOVJLv6AmDUBkjUW334bc/9Ax0AKTjDOKI/wiJwt99ZzPdWPVsYGm1Xs4+cBiKnDUFyf2hBRtaKTsMl5L8Gy65sIYADBNlWBXp3apvxb9n2urHyf7+9BgDUOytUYITCXlDoW4Lai3SU87IpW4ZEX7gL4AhW/vQXqBIfmx+ZUwKrY0w22HU4Bw7GazZjKgG1Qr2eSNc2sOgY3xAs7m3EA0DGcO6vWxeREgutbSwuaCBGf49h4YlPNABwm8Z2/VTU0zAfCiY8Unbjcg5yCXSsWg+90hB8pHUbEHggn6uZk1AxtszJTArHxpyCKPn139/jf9iAHZmT89VkQms0L8Zts+qV2iOG055hEtDfEak8/+QE4gmghjPJySw3u97kwA3Mw2vUuh0F48JSLGEpIhlUbYF3tK5ZkgPuB9rFDKqI/TCpYH2JCC4oqUVq8jZt0+xiWUlMo2D5jNV1PA4ogik8Ap77nCabO//wjMlIbfg4E7Wh3Nvzlz2gDDDYRYr8Xs5x6pY4G6us0BMKDIA/KJG1urTKht1dPEZLdb0XaUsxLWqM8VhB5buI=
x-ms-office365-filtering-correlation-id: 6825536d-d464-4ce4-b380-08d4b70474a3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(49563073)(201703131423075);
	SRVR:DB6PR0701MB2615; 
x-ms-traffictypediagnostic: DB6PR0701MB2615:
x-microsoft-antispam-prvs: <DB6PR0701MB261594583916C62516CE5E9ED3C40@DB6PR0701MB2615.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(21532816269658);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(102415395)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(10201501046)(93006095)(93001095)(3002001)(6041248)(20161123562025)(2016111802025)(20161123555025)(20161123564025)(20161123560025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0701MB2615; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0701MB2615; 
x-forefront-prvs: 0343AC1D30
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39830400002)(39450400003)(39400400002)(39410400002)(252514010)(478600001)(25786009)(86362001)(2900100001)(6916009)(102836003)(3846002)(6116002)(7906003)(53936002)(790700001)(7736002)(38730400002)(33656002)(3660700001)(6506006)(733005)(606005)(99936001)(6436002)(72206003)(861006)(966005)(81166006)(8676002)(6306002)(2351001)(54896002)(9686003)(74316002)(236005)(1730700003)(5640700003)(99286003)(14454004)(55016002)(8936002)(5630700001)(3280700002)(5660300001)(54356999)(50986999)(2906002)(2501003)(5250100002)(189998001)(54556002)(66066001)(110136004)(7696004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB2615;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2017 11:15:12.9313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB2615
Subject: [meta-raspberrypi] Configure eth0 to come up with Link-Local IPv6 address only
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
X-List-Received-Date: Mon, 19 Jun 2017 11:30:12 -0000
X-Groupsio-MsgNum: 36653
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_";
	type="multipart/alternative"

--_004_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_"

--_000_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good afternoon,

I am trying to generate an image for a Raspberry Pi 3 that includes a `/etc=
/network/interfaces` file which causes the Pi to start with an "up" eth0 co=
nnection with only an IPv6 link local address.

The Pi will be connected to an active switch on boot so the copper ethernet=
 interface will by electrically up.  So far I have found that unless I set =
a static IPv4 address or connect to a network that uses DHCP to handout IPv=
4 addresses by eth0 interface does not come up on boot.  Based on reading t=
he interfaces man page I have attempted the following variations I in the i=
nterfaces file:

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet manual
iface eth0 inet6 manual


auto lo
iface lo inet loopback

auto eth0
iface eth0 inet6 manual


auto lo
iface lo inet loopback

auto eth0
iface eth0 inet6 static



auto lo
iface lo inet loopback

auto eth0
iface eth0 inet6 manual
                autoconf 1


auto lo
iface lo inet loopback

auto eth0
iface eth0 inet manual
iface eth0 inet6 manual
                autoconf 1


auto lo
iface lo inet loopback

auto eth0
iface eth0 inet manual
iface eth0 inet6 auto


auto lo
iface lo inet loopback

auto eth0
#iface eth0 inet manual
iface eth0 inet6 auto



This could well be a more general problem with my understanding of how to w=
rite IPv6 interface files than something specific to the Raspberry Pi runni=
ng a Yocto build.  It is much easier for me to send this email question now=
 though, before I start trying to mess around with the same settings on my =
Ubunut PC to see if I can get the behaviour I want out of that.

Any advice or suggestions would be greatfully received.

Regards,

Thomas A. F. Thorne MEng. AUS MIET
Software Engineer

Tel: +44 3450 130 030<tel:+44-3450-130-030>
Email: Thomas.Thorne@Net2Edge.com<mailto:Thomas.Thorne@Net2Edge.com>
Web: http://www.Net2Edge.com/<http://www.net2edge.com/>

[Net2Edge Logo]


--_000_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Good afternoon,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to generate an image for a Raspberry Pi =
3 that includes a `/etc/network/interfaces` file which causes the Pi to sta=
rt with an &#8220;up&#8221; eth0 connection with only an IPv6 link local ad=
dress.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Pi will be connected to an active switch on boot=
 so the copper ethernet interface will by electrically up.&nbsp; So far I h=
ave found that unless I set a static IPv4 address or connect to a network t=
hat uses DHCP to handout IPv4 addresses
 by eth0 interface does not come up on boot.&nbsp; Based on reading the int=
erfaces man page I have attempted the following variations I in the interfa=
ces file:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet manual<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 static<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; autoconf 1<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet manual<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm">&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; au=
toconf 1<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet manual<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 auto<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto lo <o:p></o:p></p>
<p class=3D"MsoNormal">iface lo inet loopback<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">auto eth0<o:p></o:p></p>
<p class=3D"MsoNormal">#iface eth0 inet manual<o:p></o:p></p>
<p class=3D"MsoNormal">iface eth0 inet6 auto<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This could well be a more general problem with my un=
derstanding of how to write IPv6 interface files than something specific to=
 the Raspberry Pi running a Yocto build.&nbsp; It is much easier for me to =
send this email question now though, before
 I start trying to mess around with the same settings on my Ubunut PC to se=
e if I can get the behaviour I want out of that.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any advice or suggestions would be greatfully receiv=
ed.&nbsp; <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244;mso-fareast-language:EN-GB">Thomas A. F. Thorne MEng. AUS=
 MIET<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Software Engineer<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Tel:</span></b><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-langua=
ge:EN-GB">
</span><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#20=
8CA6;mso-fareast-language:EN-GB"><a href=3D"tel:&#43;44-3450-130-030"><span=
 style=3D"color:#208CA6;text-decoration:none">&#43;44 3450 130 030</span></=
a><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Email:</span></b><span sty=
le=3D"font-family:&quot;Arial&quot;,sans-serif;color:#434244;mso-fareast-la=
nguage:EN-GB">
</span><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#20=
8CA6;mso-fareast-language:EN-GB"><a href=3D"mailto:Thomas.Thorne@Net2Edge.c=
om"><span style=3D"color:#208CA6;text-decoration:none">Thomas.Thorne@Net2Ed=
ge.com</span></a></span></b><span style=3D"color:#208CA6;mso-fareast-langua=
ge:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Web:</span></b><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif;color:#434244;mso-fareast-lang=
uage:EN-GB">
</span><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#20=
8CA6;mso-fareast-language:EN-GB"><a href=3D"http://www.net2edge.com/"><span=
 style=3D"color:#208CA6;text-decoration:none">http://www.Net2Edge.com/</spa=
n></a></span></b><span style=3D"mso-fareast-language:EN-GB"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#22162B;mso-fareas=
t-language:EN-GB"><img border=3D"0" width=3D"189" height=3D"51" style=3D"wi=
dth:1.9687in;height:.5312in" id=3D"Picture_x0020_1" src=3D"cid:image001.png=
@01D2E8F3.D1EB2030" alt=3D"Net2Edge Logo"></span><span style=3D"color:#4342=
44;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_--

--_004_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=6351;
	creation-date="Mon, 19 Jun 2017 11:15:12 GMT";
	modification-date="Mon, 19 Jun 2017 11:15:12 GMT"
Content-ID: <image001.png@01D2E8F3.D1EB2030>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAL0AAAAzCAYAAADCbQmYAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAABhPSURBVHhe
7V0LlBTVmb5VXf2eGWaYGeSlvAJKJNnV0eMCEnQcBtQVE40PRN2Hr9VoXLNrjruJ6dMo5mhOZDXZ
1bMxPuIqikh0kqPDgLjKAupGs4maCSKjEJ6CMsz09LO6ar+/qnqmurqqq7qrhwHS96QNU3Xvf1/f
/e9///+/fwnz58+fwUwTx0QxE2tvb99j/p6xZ555xjtu3LgpxvfJJJMbGoKfzJ49W6R3HR0doZqa
molWdJw/51gs1r938eLF/V1dXeMEwVvLmOy8eNGcCu3DoL3fKlukfuYkluXnMJ7NY7J0OpPlL+HX
yDilBBrC72cctxXv32Y89yYbkDZFU929FWpglUyFRkAQRWmrGS2e92A+uYMA7FQCmVme5ubmSZlM
dquaV1KycBzPPJ5s9sCBfloMf6JngUDgrySJe02Ssq6a7fV6mc8XuBJEnkdND6GuyzKZjCuaucI+
n4/5/YHH8PcNRoKR8PTzmDfwz4xJC1g45GES+iqiXvrJwLq67jgAfSwTvGOZ1zsff3+XBRK9kdCs
lSw+cH809cmOijS0SsT1CAgyTZpJymZFBk7aBOAvwusXLGpCcVnC//ghOgr4weGDg4R5nqc8wIc7
riwR2DSIgVSW/nZLM9cvlRbLW5URvz/IgtMeZoLveoaFzZJxxmJ91oNOizpNv6SaxyPUs0DoZsbx
V0aE6d+JDmx70vWMVQm4HgGhOAUZnFtaWgT0eM8REnkDHZXtD0vicyvH3Qoyb9sgzYh/JgDLvcJC
dbNZ/2EsNYsucapso3J7Q5PAOFhfL2M+fwOrqX8iwqZPBPDvHZZhqRJ1PAJFQZ/NEuPjFnR0bBy7
ePG8fY6pHuMZIzNnetgu6ZcsVD+b9X1BY5DfI+L6gaD6TASwaUF48MyD4SSRJ6VxenpPiyKTZozG
srb+nog0bU80sf3xY3yIjunmFwU9iQ6Qo0Mcl/oGevnIcPQUog+jn5MkCAKDDO9V83Jh+tsskaii
iUIFr63qI1rpdFpF8o7s3ax+9Dms71Ah4INhgDqRYYn4y6hkPeOlbUwSUpBpRkHmb2Ee7yUsVPOX
CvBpAeR2AhJ96Jkv8FPsIq9He7s/cdLnap7Kj4CNeEPnNJl+Vw0H6D3gjthNVmez8iqI/QZ2WthZ
NIVPp9kmlYFKP8xkxJWSlMmTOyQcL0DrPI9HuEndqYYS1YeD+0/x/E1jfUTbx7OtEf+USVjp/8IG
TM7uISiL0snXWYp9G1qZD0ym4xXsEsvZrvi3mOBZwbw+VKg7aKexNmrrgxCX7kPZJZWfzipFJyNg
C3oCDuT22Rs2bJje2tq6zQlRp3mI64Ij/2bhwjarg7IlKahS38JL+hUkqDM9aPNNxhd4Ro9eW7So
7SUrwm94fT9hobBPkcUH5XXI6mEAPhnvYpvlC6Kzui3VUNHublqEP4kEp+9nodDzjOT63AGe6MVj
JApdBm7/fSyc7U7HqpqvciNgC3pNxPGIongFqq34IQz0NeG4cp0CJcgg5gnrrMbqXWTszBoWk65g
ycQQ4Cmz1wfAJw5CrFkanfWJI71rNLFtVYSb3sZqR92Qt2uQmFMzClvc4SuxYyyvaK+rxByNgC3o
iYqqzpOuiEQiy6PR6HBoTRw1dtgz9UtzWTDUrKgm9YkOrf29K6BrP1hSG7LiMsj+V0PdGWR6G0WW
ZH22ELSqoC9pQCuT2RT0pHuHKECygCIPkIgDA9SsuXPnnoE//7cyVR+FVHh2DowT+Q0jTU08lsJh
4OlSW4xFsisizNiAg+2FLDEwVJwMarL8ZewsddF93UUU/6XWWM3vZAQKQK/JvYcB+Xdh8WzLaUHo
EJhOZ+nwdfyCXpZbFBlcn2CphWjzWwBYsS6XnHgPNDz8hXnl6IDt8Yxmh5In4bnZgbjkao7GArDm
B+F+MgUYGof21ZF2FzylT5I8+4NB4dN58+bhgHPkk5V444fbwEpoSL6GReAjuV470F4Kf5u7li5d
CsVzZRLtKpWh5I4KtC48+5ME3xqDyE66d457r2zqktSt6PJp4xy0SENCFHwc8wVrPrjr2rrdc86+
h3ZWN0PhxblDksRX2traOnNt7eraMFcQ+CsyZCewTaQ2ltNoxmc49/QAmP/X3n7ux7bFTDKg3jno
7vWBQKgVbiqTiGESM1U3UZKOsyyRyO5Zt279Zlnmn25vb+0oVg8WTy1o3Y08AbdjlE6LHVagD0H1
9xZ8aN6GhmUeAZ44PnTZJ8HfhvxK1pUzGGZlaFFt3Lgx4ITezp07s1hwlXG2MVbYw+qYD85jqquD
LgGskuxCy8IfZCKBjiRF3XGIbBOBGi9YYOgzr/fbBAo3LhXklxSPZ+gwMgh6shsIgu82J2Orz6O2
I5tet+61jViKD2Eh/coJDTBEX3Pz2Id5nruJNHNQRSvFjKpj6it+45Hnm3j9TYC/M5GI3wAfr10W
9UAxwd3p9Qquxwi2mEOmoFdXpdiLBkB/roKeEj0HJsgtoSKgh0aIyN4Wjyf/1m5QyXjU1DRmNfL9
o13est4HodUROWh2MFE5VaVCSJm40g6w+Q0AxzA5+6uLS4S5SobBjc5QOv+lsnpA82M4gbMkOeRp
41wSUWJGmPvzUOi8tWvX/efmzf/zD8WUGORx29x8wq+w+NppZzECXV+5ZvsZNCCizCJw8v+Gqnke
VNF7jQ2FwyL5bvWhL3VuGAPRRZ/iltobURTCouhdHQikVmAAFMc0TcS5CNtNHVal6wMY0QTtOvrZ
zYhmtR1jl6/890KQCZJfcSWAp+hgor+9DDrMcpPoYx6cC4xikwJ6LpYIFPgtlVtRRcvR3NBiIUYH
D9Qb58yZG0IF11hV0tjY/CABPk0GOEPSW8HNrOW0MCGeTctkUk+iKGm1hjVZgj4QYKHW1nnbsMq3
gMvOowFQRRzvaGx556NVcO91n3Kr3o4S1Y3xHx7RhipPiLuYIH6NKQZe3WHW4+VYgi//sMnzJ0B+
B0kdE6adRMxkWW3zwUMNDZZzoIkBdkOjvNeYgiMVNOXPydk54uouLhVwaJofiAQAvv/qrq71r7W3
txEw8xJk+NNB71YzN29YxkFT3A9O/SbxOCz0c5G30bgT0O4AbLWD24PZt3c56jQylTNGRTi9qKgr
QRQHWm7eUCPILYGjFV8R0Dvt3HDng3U0AWPRxoJ6dJrGstogsa8qzmj6RGpQSTrALvvy/uS9J062
pisPSJJs4vFWWCKblWh7ory2SZW3xUcgUW2mKcaPcHAiQNkKQM43c9kmkGIB3ItdfhV2+TwxSpaz
dwKw5BeVVzeJpKKY/XUoFPg7aGoUERGgnoC19TzezTWKXerC466jbLad0DKgTUn8Dmj9KFpMGyNz
mT6/pPQSOvNjNCg4JOKwVjS+AflcbPtqLTQBxHXsEg0gJgq+AMdY4th5eYYpaj4OneD03dFly6QN
0N2Z9UgFjLgmlUoUuFOY5Uc+DkoGJ2oaZcxxyHwV7h/GA+qy9evXX4O5Ji/QvLsWBHoAewJ2+Yvw
bpDhwQO3ye9nf20EsFpHdk8o5F+iV02Ci+8Gdi4HuW4Sa/Uyuio+y3NJsYEyOldV8znXFtUbqVSc
HCJtU26MbLdDOlh0dq5bLwiei6hjmltCEP/+ejIZf5HuWZSbNN+bd8BZ4EMjF3U4Q73gZJypr025
9Q93uUh4ypewos/OczWmSj0AvSy9Tv8UBQFqG8uWZMBVXTMWC+qm7hjQ1Dzd2dk1GXL8MvNbadyl
etAHAon5Ho+3xgh6YmQo/zMzXTxdQYXY/BzOADfq61AXADc+kUhMwj9Mb/SZ9KXkMbIFvcqNuWfx
f7TClaRtf0saGhpehealbLcEGhh09EXIiQ8MNwBHhr73Ttyc8ub53tAhWbXOrrFvEy30I5/S6eRD
4MJ3QPxp0OvF6boncHnWM89s8S1dOlvZVSCqwBZQyK80rv1rq9aDfhdo3ah/T5gHJkhHTMYsp6Av
eYwcgR4c/VVw9C/AmUfrTt9nDwykzoAYRjNYX+7UAPSkFTjuUiQ880zm916X535AvQyiuwP9G3CD
6sOjtdOkmVu7dv1Gj4dfDFfswWZq2rYJDQ0KJ1Y8bsEQv2JUI2o7+IFQKPhH6z5KO2hBUV59efob
BiRbbZ6bsXMEegzC4bVru17BKrw6d8iBL04QK/9yVE7bb9mgd9P4o7Us3IbDzMOeJoclRVWZ0/sr
VlkCUbbi3qqVHgs09T1w48X5nFgmTuyBDWcygf6DDz7wALCTjRd26ECKtKOYm0EymfwwEKg5Sz1H
czlpgbg8Fw4HnXL5srrtCPREGf14FpqEq3O1qBe9uUtw8LC8XF5Wi47xQvBE5diDq1bBJ/9k1g9T
ht4nvwaXq/p710QHtivy/FGeeswMQSqg+QnU9p6ennpIAI3GfGoezjJ0DJXVzirvjMQYOAZ9MBh8
PR5P7AbzgspJjUKArS3sMsDBSPR52OpUAL9i1UpcOLlAuUyuBzy5JydicEnwfMtpAzC2hZYep4Vd
5oOUccAa9FIzkYeltB5ttNCoyW6s2KW03pHGSk/QMehJhdTZuf6XZITIbWduTcKl9OxozxuJQ421
YvVKcPiLFcDnjTJpa/AgnV0aTW11dMFek59PgeGHLu8UTXSQhAfs57gRtt4ur9P38L3qxy5umh07
fE7mriVrvTGT6kfEubbY27VVw9+kEsboMMao0zHoqQE4ZDwHwN9q15g/t/cR/9jxrL7xBRYIz2Ex
A+CVyAnwp4v13YzbVI6NLqr2g4c6kCMHv6KJjg5Qfv4B/znVLq/T93QH3+g5oSur6akFPy0M80v4
sq2e3WlbrPJpbjGnYYyes6NFY8RxmR3IN7kk0I8fP+at3bv3fgRuP6OYQ5FdA/TvTZykSik+4nkR
/exMRD9bhfBok1msF+3Rqe/I6BaAtqbv8F0A/KOlNpbOTXrtiVV5dVdgFeWs0LtDbOAVM3+hzM5y
XrF+qzahWJ5oBkvuRDiV4T5GcU9ynhc49LkbHNmRZ2fOR8hubLU+KGNUEuhnzZqVBehfAMf/XiVA
r5m2L4dmaDJ5Gdo1nHS4MCXvgF6fogmMeIqET76M+X1PMl4IKZHP9DI83aulX7z/OwD8ihFvbIkN
gLVTtlpwqqGQdn6KbGduU8R85slGkP9nwOD1gFVollzzVMt7/BX87Qj0JXZLyV4S6KlANutZxXHi
v6JTuPRQtl1KqZwGAAuoBWBucUIKVmFwviT5to846CO1M78L7n6/opIkY5Me8H4wQmLTsf7rAfgn
ypmYXBlN/VeUhKYtsWUaJbbDcnJRn+3FH0yt0bcExteMZTyiXNs0TJnGTrXeVWyjx+Qc05Q2lQz6
Cy5o/T1MyO8RUCvB7YsFZjJ2UrMO9pY4eRXPHqk75VEWqr0J2hhwAe1WFNVCKzeE+w4i7iKk41ci
ktlat5U7YSyap6o7DmRoKMQbH8dRrNpCfKObiryOw27K6rALHmAp+rgdk0Jc2HddGyOlMyWDXp1b
+Tni0JUAfaUHYDjpRerrfUwe/xwA/w3lwKr6imhV4t81UGqkUttZInlJNLX9927aogXCesnr9XwP
ACzKxeGZCNdfj/ECiZvq7bCRO6QaLhQPVYmhgWyXl+Bq481bRDlfrnIbqo0R3e66WTcRpuRojLAQ
lXYLxpB6ue0UK9xyoKHDXY0G/0jzncmrhMpjMZBSenDPQR2Wsl8pHdY895xcLVT6Zeyb5l1o79Jp
0ihoaAJMHt2ByAYLYGAqzFFbT2LOZpb4/NJoap8jtWSxvqvzIB9EgC3SyoxEClqJVniuHggFlhRF
5SJQ3mFX3Z1ko/7+Y/jl/4Be5DqDfDdgTk6yk/OtOq/Wy3oXLmwvyaVDgCvBp/lEVazjPqKlygle
cp9CxFmJCuegfN7eop1HUTY46FyNBQIu5PkUfteuJk/rZI8DIofowGtsWzbLcxhgg07Rnho4vMCk
hjXg8IWAJ3CSpXWgbzXb13NtNJSqpFdkWTuxfY/sc4DnjYLxsSCjCmjpc3pB84qDbAbzosUXzctO
rueDCZjZiT/u0T8DhtpQliJClJ1QvmQmJhw8eOBksxo/+uijDLiMZWMWLlxw1ZYtW/wwRRsEqqkY
qR6ZyiPSsVJ+06ZN78yYsegUel5275SCCm3bQ9Ttt9+++vHHH3+5p2dPXn1Tp07lOjv/PrNoUXdp
zRDH/oLV1Z2vhPobTOQSiLkmS+tA34PRvu5/YseR6xw2yjEEeqOuXgW9kLvHShy/wOFQU6EqVlub
ZLZY7Mq4fi+4CeeBz+uk8DNpRP4zXCgmoEJva5a31D7Y0+hGPEmrts2eXRrgI6EZyxCabwl07Tq8
Y+J9OKdRRINY/x3Rga3/Vmovjvb8AO5UYxtV0ZWubUrEtdmBAwcONzU192J3hzvCEH9RD41sIpii
kPsEk1l/SToZiXEYse1zJDpbap2R4LSLWbjmbnByFNXmhyaXuLssx1kyeQ0A78AvvtSaj4b83Glm
jmTQoB2EhyRZNhkxTFww2oPFMFnfYo3TT+zv7yfHNCWvWUI+42H3iHS8CnqLYYZ78Bjm5R5TVJJK
HEpyC9YAL2UPs3jqwmhqmxI2/HhL6lVQ/iyjdk7zk/8w/xtk3DY8n6PPS6CHkcmLZ2dagZ4COMFD
c5oTlWylx7cKeqsRFcSHWLihKS9kN4k0khTHh9POR5i/LZWeDCM9YMfdyb/8Bt4GQ+Aos4vbUA9u
0JOFVfY3+PtvzKqCKzp914BiFRUkWGgvgWf+6HJi8hiI2Z7xjJVXQW8yIbj1NJ8F/VfmuRaQlwTF
wBmIXXskAK81K4iL16MaGozf/ylsNO6VchA7pHfffbfPSWRpHEdMfXXA5a+CQuT7ZlHJCKDg4Hkg
RnykN/NCpmhNo/J084pC/CFsH0VdGEwdHV0nBgL8feWqKvN7L/txkRzqM/sxypWrgt6MDXHZ5coh
dfBwBrEmjHvU/Yf+PZr4+MXyGajzklqgpUv9/uSCRMJ+Qklz5/eH9ra0tOA2UvEoFdp9iKWIYzPo
lYlnTdDWzIbD19lmIUC0zxO92tralmc3ePvtN95HIKj3wbW/YhRxVHWivAb13IQrp0pUPDidLQgG
eQQQ48e7NW5qu8R83NPehkOxvS+CNvxV0BtwiC+InAMX4bkIDDn0xguxZiC2l9V671IUdEcoATRw
3eWcqP4UQxwCuOpNxJatJFDDsLgEZfI+AWQW7ImIaEZBEVXcaSRKuwpA/R+g94gRxJpv1Qmg8BLk
910oi08j8Yivo0bLy9F2yfEp/KCjMapyeitIePhb1OBMOm0aOZCle38U3bcNzjZHLmn+IqVU6PgW
EYHOCafNxSWCp/EtMDCZWj5ra8NP9PXFbsVucKpRRs8BGnSUL8br69QOxn9EP2c48bK1GohSF02V
0+tGMjL29CY2ED9f+fxOLilyfF8fAtQ8VQr6jvW8ObADpH2ITnDHokXtFADKNJFNBGeBJbIkvQng
15sdTo3ApC+0I+7lyxBznsAu8ZKTBVipMa2CXj+SAwNtDJ8RUD6GlksUzCre14Gwf45C5pU6MS2b
Nh3+XUuL6WWNUmhpXFNaqAu5Fz60fyBbi1OwGh3aWVLchrkEZOSPvWL65Zm//d3DjdGo4nZQLGEX
eP/jH0b+YvesM37Gc/y5kix5JdxWgjyDPZMEbvyXXMlJtOJBPxn/r4UXX3zjlscenSNOmCRntDYK
ksA8qWTeBZTHN23qvbGlRTa70GLXLrP3VdDrR0WSF+SH6cZL5ZP33KmRmpOfUuauwsm//OejTti5
VXUvc0Gbymc9QuPG8LRnJV6gcMNyw9dvmTHqiz2mkcILq8K1P2iopEA4ORCq2RWra9qeHdVYv05M
38cyKWdh7B5YE0e4ws/G7foo1rj304bgF/uZF+PngZ2DaKd8AZZoGs8+mzDt0GcnnsI2yOLPa677
wdSGL/ZlYfRSug/OzyX9obmv101+ii7a0rN77/9FYNwnfwhxFIHDxRjlilZBnzeI3Ol5332ld/QV
D5//NNyCOq0C411AIhWsYTtHNVWKdAjnkcHD6aGJ09ihcZMN8fZtqqLgWxx3Mk6v8MkCxBCYVfk5
Tci7d+pX2d4ps/DR3xTzZVKDoE/DzpEF8BEKfTzaeQN5tsfGTGSxRgpopks8Pw31T8s9yWDJ7Zxl
737iuIlOMx7v+SLyFFghZXx+xyAKEA8m4Dv6hM3xPkql9Q9fmmDg2kOFKNCVSfz60qi6z13l9Lkx
rBFOAHepL/z8jvtB/rOlQHYOl+7kwzF2VdAPjepomBs55aNo1XRcj0AV9LnpFXk/81f6bvVxjZ1j
tnP/D6swSSaEGOOdAAAAAElFTkSuQmCC

--_004_DB6PR0701MB1879D229F084DD8D85A55A22D3C40DB6PR0701MB1879_--
