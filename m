Return-Path: <christian.lohr.ext@zeiss.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56012E00D97; Wed, 23 Oct 2019 00:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	RCVD_IN_SBL_CSS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus SBL-CSS
	*      [165.225.72.134 listed in zen.spamhaus.org]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [194.8.120.226 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 122 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Oct 2019 00:38:12 PDT
Received: from msgsrv4.atosorigin.de (msgsrv4.atosorigin.de [194.8.120.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21EAAE00BE2
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 00:38:11 -0700 (PDT)
Received: from julia-mo2.my-it-solutions.net (HELO
	julia-mo2.ccsn.de.ao-srv.com) ([194.8.124.179])
	by msgsrv-out2.atosorigin.de with ESMTP; 23 Oct 2019 09:36:04 +0200
Received: from julia-mo2.ccsn.de.ao-srv.com (unknown [194.8.124.179]) by
	MCS01-MA1.atosorigin.de with smtp
	id 57cf_05c1_5ca61784_d737_4189_bd2d_da5ab367c173;
	Wed, 23 Oct 2019 09:36:04 +0200
Received: from julia-mo2 (localhost [127.0.0.1])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id ACE0012011C2
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 09:36:04 +0200 (CEST)
Received: from ADEFTH01IMS011.zeiss.org (ADEFTH01IMS011.zeiss.org
	[10.193.156.179])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 8C81312011C1
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 09:36:04 +0200 (CEST)
Received: from ADEFTH01IMS011.cznet.zeiss.org (localhost [127.0.0.1])
	by ADEFTH01IMS011.zeiss.org (Postfix) with ESMTP id 7FFA38DE9D
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 07:36:04 +0000 (GMT)
Received: from ADEFUE01SMS004.cznet.zeiss.org (adefue01sms004.zeiss.org
	[10.167.4.49])
	by ADEFTH01IMS011.zeiss.org (Postfix) with ESMTP id 74CC18DDE9
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 07:36:04 +0000 (GMT)
Received: from ADEFUE01IUCC23.zeiss.org (10.167.12.168) by
	adefue01sms004.cznet.zeiss.org (10.167.4.49) with Microsoft SMTP Server
	(TLS) id 14.3.468.0; Wed, 23 Oct 2019 09:36:04 +0200
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.56) by
	hybrid.ext.smtp.zeiss.com (217.115.69.78) with Microsoft SMTP Server
	(version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.845.34; Wed, 23 Oct 2019 09:36:03 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=XM4aFjpjl+WDnPswQfBXhJiPe4zCc1LcIMmsZh9dI1UP559HqBShan04KKO5+hh9re6p9wHMzqwg+tPSGt33RgewlGQPWcIy9fnDiKhYQOG3/4qvtTsyuKh33SCzlSrdHQL7sfjURaNcrIC0axMfa/yev+EnhDWdCH7blHtbS6n1haAcmbmdMTZ5HkOOS8S9hr96B0KKK/Mh/EiAHETSEeA0nSrlV+Zk5AqzhGUG5SaxGL1N3ZNkWjpWaCO+dxm/S5xbMo2FyEfz3/R6QowSrZpV7wZ2kOp1wPmhzeJF9A9UB3qsTJacsbmh4/ogVUWe3TMlifVjc19cHY6MiG2ZcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vmmDZU3SNxgGQ9Q+fejqJBxbjh8hsK1yk0mW5+i+8Qw=;
	b=Kiuifk/BL277H+SoMuzUvFSdADYWdjtgtzwfYnR02TemBqChGNnIFpne5HIG+aVzsTtLDvPJkdnEbeoa4VPHhEqqVVnBDZfbRGXUkDIjaBu2Hd29grt6Sh6qSJzNSQcfev/TXeFz/89qFusBKpflr5Uvr6Qy5a5lzjwxyznh9S/4fZX1HKcx6Xtble0dq8iS1iqu7iVARAhqIHY5d4p5Cu/G1Br5R1XaPe9esKDrc02sxYfKDNpm8hJlvwAoW+r+hat151TrSMazbpB5t8nlxVyIFRgR2o1hFUtKqSI6vs81AumW9pFpWlw5mhc/pQ3w3LOEOADzZ6yeMDhaNw1MWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com; 
	dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com; 
	s=selector2-zeiss-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vmmDZU3SNxgGQ9Q+fejqJBxbjh8hsK1yk0mW5+i+8Qw=;
	b=f0kIj/Rl2IwmBa0jqhU+8J0UxP6WjXHrMGvpBPi30TF4wHHGEEIC5eGXBumUFQ1Svqkbzunb+qgrGgdTVutvGGMI5pn8mz/RZIcvGETPa9tFbna0qkEWDL7pYbWCxdeYke/zkUBFzVYJRaIY1tPS0H31beWDEA5w/Z1/8Oe6Q1w=
Received: from AM7P190MB0791.EURP190.PROD.OUTLOOK.COM (52.135.58.200) by
	AM7P190MB0630.EURP190.PROD.OUTLOOK.COM (52.135.56.139) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.24; Wed, 23 Oct 2019 07:36:03 +0000
Received: from AM7P190MB0791.EURP190.PROD.OUTLOOK.COM
	([fe80::cc68:36ba:8da5:4acf]) by AM7P190MB0791.EURP190.PROD.OUTLOOK.COM
	([fe80::cc68:36ba:8da5:4acf%7]) with mapi id 15.20.2347.030;
	Wed, 23 Oct 2019 07:36:03 +0000
From: "Lohr, Christian [ext]" <christian.lohr.ext@zeiss.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: TFS Urls with Git in Recipes
Thread-Index: AdWJcfsFXK9EtXrKREuYUA6hsP/MZQ==
Date: Wed, 23 Oct 2019 07:36:03 +0000
Message-ID: <AM7P190MB079129F3F34E6A01826C34EFC26B0@AM7P190MB0791.EURP190.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=christian.lohr.ext@zeiss.com; 
x-originating-ip: [165.225.72.134]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee98aea9-3a55-4aec-c9a1-08d7578ba84c
x-ms-traffictypediagnostic: AM7P190MB0630:
x-microsoft-antispam-prvs: <AM7P190MB063003BD221B737F8F4E486FC26B0@AM7P190MB0630.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(136003)(39860400002)(366004)(346002)(376002)(189003)(199004)(5660300002)(33656002)(26005)(6506007)(9686003)(2501003)(66066001)(55236004)(186003)(6916009)(81156014)(8936002)(5640700003)(8676002)(1730700003)(55016002)(81166006)(6306002)(476003)(6436002)(52536014)(14454004)(19627235002)(71190400001)(256004)(102836004)(7696005)(486006)(71200400001)(25786009)(54896002)(99286004)(478600001)(66476007)(316002)(64756008)(66556008)(7736002)(2906002)(74316002)(76116006)(790700001)(3846002)(86362001)(6116002)(66946007)(2351001)(66446008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM7P190MB0630;
	H:AM7P190MB0791.EURP190.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: zeiss.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p1xaq0MSDmvEv1CyLSJNNiaB/7t1wqKkiTwqOxb9Z7J++lzyy6nS1voiToeE4lnyZQkBdCoHr1yuKdo1SrjdE+t1TAuOsTS0vF1Z3sjzPJDTSrUxcomw+OJsRtAM0qs2jKBFdhmvQrsuJnflJy31+l0gOmJYJXdoY+g9qUswPZEONKtX9cFJqo6wr8S+61URlICFAYgjnIG098kQK53ltLPWYw2tOZavRYpH3cLW6NmiSPV3Llgf9VgWA3b8qvMkOGjqLfAGqqSNpeek6aft17bar2mJ4I3KCEpb87DkG6PxPMFDbyHoJ/9EjUi/7NVZtaa963dqCV5DVg0mQQvUiNBdevgs4sQYMYyHk5tHD5V1IUnpSLixqZioY72unpEeW5fS9Zj0f3OBF8HfOzv1R8WMB0UNEL0U8VgsI+JDmGIc/DQdt0Hp4sjHPZiFrXdf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ee98aea9-3a55-4aec-c9a1-08d7578ba84c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 07:36:03.0844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qFoVvnEpS3NyPJB43++Qy5Lbinon3L4iSps48hINqLQuMQ8zrJ61MnwMJh/2heZ6JzHdkL7LZln5QXEaq9jgv+nO29dSYtBhM5+mtQ2M3U0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0630
X-OriginatorOrg: zeiss.com
X-NAI-Spam-Flag: NO
X-NAI-Spam-Threshold: 8
X-NAI-Spam-Score: 0
X-NAI-Spam-Version: 2.3.0.9418 : core <6660> : inlines <7155> : streams
	<1836437> : uri <2926414>
Subject: TFS Urls with Git in Recipes
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
X-List-Received-Date: Wed, 23 Oct 2019 07:38:15 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM7P190MB079129F3F34E6A01826C34EFC26B0AM7P190MB0791EURP_"

--_000_AM7P190MB079129F3F34E6A01826C34EFC26B0AM7P190MB0791EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm using the following:
Yocto Release 2.4 (Rocko), and Bitbake 1.9.x

My problem is the following url (actually the "%20" is the problem in bitba=
ke):
ssh://tfs-my-company.org:22/tfs/OWN_Projects/FooBar%20500/_git/DummyApplica=
tionForYocto

I can do a "git clone <url>" without any problems. Now I wanted to create a=
 Yocto recipe similar to this:

---------------------------------------------------------------------------=
---------------------------------------------------------------
SUMMARY =3D "A demo application"
DESCRIPTION =3D "This application is just for demo purpose and should be se=
en as Hello World"
LICENSE =3D "CLOSED"
#LIC_FILES_CHKSUM =3D ""

PROJECT_URL =3D "tfs-my-company.org:22/tfs/OWN_Projects"
PROJECT_NAME =3D "FooBar%20500"

SRC_URI =3D "git://${PROJECT_URL}/${PROJECT_NAME}/_git/DummyApplicationForY=
octo;protocol=3Dssh"
SRCREV =3D "${AUTOREV}"
PV =3D "1.0+git${SRCPV}"

DEPENDS =3D "qtbase"
---------------------------------------------------------------------------=
-----------------------------------------------------------------

The "%20" sign will be replaced with a space " " in some cases:
When I try to run "bitbake dummyapp", the following happens:
"FooBar%20500" will be transformed to "FooBar 500"

---------------------------------------------------------------------------=
-----------------------------------------------------------------
git -c core.fsyncobjectfiles=3D0 ls-remote ssh:// tfs-my-company.org:22/tfs=
/OWN_Projects/FooBar 500/_git/DummyApplicationForYocto  failed with exit co=
de 128, output:
remote: Command git-upload-pack '/tfs/OWN_Projects/FooBar' is not in expect=
ed format.
fatal: Could not read from remote repository.

Is it possible to prevent this because if it would leave the "%20" the comm=
and would work.

Kind regards,

Christian Lohr


--_000_AM7P190MB079129F3F34E6A01826C34EFC26B0AM7P190MB0791EURP_
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
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1166747788;
	mso-list-type:hybrid;
	mso-list-template-ids:128762984 -2001852722 67567619 67567621 67567617 675=
67619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Arial",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8216;m using the following:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yocto Release 2.4 (Rocko), and =
Bitbake 1.9.x<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My problem is the following url=
 (actually the &#8220;%20&#8221; is the problem in bitbake):<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ssh://tfs-my-company.org:22/tfs=
/OWN_Projects/FooBar%20500/_git/DummyApplicationForYocto<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I can do a &#8220;git clone &lt=
;url&gt;&#8221; without any problems. Now I wanted to create a Yocto recipe=
 similar to this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-------------------------------=
---------------------------------------------------------------------------=
--------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SUMMARY =3D &quot;A demo applic=
ation&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DESCRIPTION =3D &quot;This appl=
ication is just for demo purpose and should be seen as Hello World&quot;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">LICENSE =3D &quot;CLOSED&quot;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#LIC_FILES_CHKSUM =3D &quot;&qu=
ot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PROJECT_URL =3D &quot;tfs-my-co=
mpany.org:22/tfs/OWN_Projects&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PROJECT_NAME =3D &quot;FooBar%2=
0500&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SRC_URI =3D &quot;git://${PROJE=
CT_URL}/${PROJECT_NAME}/_git/DummyApplicationForYocto;protocol=3Dssh&quot;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SRCREV =3D &quot;${AUTOREV}&quo=
t;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PV =3D &quot;1.0&#43;git${SRCPV=
}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">DEPENDS =3D &quot;qtbase&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
---------------------------------------------------------------------------=
-------------<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:black;mso-fareast-language:DE">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;mso-fareas=
t-language:DE">The &#8222;%20&#8220; sign will be replaced with a space &#8=
220; &#8220; in some cases:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;mso-fareas=
t-language:DE">When I try to run &#8220;bitbake dummyapp&#8221;, the follow=
ing happens:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;mso-fareas=
t-language:DE">&#8220;FooBar%20500&#8221; will be transformed to &#8220;Foo=
Bar 500&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;mso-fareas=
t-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-------------------------------=
---------------------------------------------------------------------------=
----------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;mso-fareas=
t-language:DE">git -c core.fsyncobjectfiles=3D0 ls-remote ssh://</span><spa=
n lang=3D"EN-US"> tfs-my-company.org</span><span lang=3D"EN-US" style=3D"co=
lor:black;mso-fareast-language:DE">:22/tfs/OWN_Projects/FooBar
 500/_git/DummyApplicationForYocto&nbsp; failed with exit code 128, output:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;mso-fareas=
t-language:DE">remote: Command git-upload-pack '/tfs/OWN_Projects/FooBar' i=
s not in expected format.<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S" style=3D"color:black;mso-fareast-language:DE">fatal: Could not read from=
 remote repository.<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is it possible to prevent this =
because if it would leave the &#8220;%20&#8221; the command would work.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Christian Lohr<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
span lang=3D"EN-US" style=3D"font-size:10.0pt;color:black;mso-fareast-langu=
age:DE"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_AM7P190MB079129F3F34E6A01826C34EFC26B0AM7P190MB0791EURP_--
