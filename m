Return-Path: <carlos.bejar-colonia@philips.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7317EC4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 22:29:36 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.131])
 by mx.groups.io with SMTP id smtpd.web10.25619.1702074571599709682
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 14:29:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@philips.com header.s=selector1 header.b=EOp7PCQ0;
 spf=pass (domain: philips.com, ip: 40.107.8.131, mailfrom: carlos.bejar-colonia@philips.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RrnhtHHlud9rzqVpRSll7QSp5o3m2my5Co7bCzV11rDv2Fbszg14gVMooD3JmrCB3iO6GcgjpISPg0wi67/SoXAxVPvlm6nVWHg06sW1CzspRldus6/sGeiAkna1oamx0x2i6/lGPdYjw25RgFD1UghNt3AcsIC24x9k28JY9bth9cupfmXhLJDhErRd4/Y5nDbNyiOXaVM98YkjeIi0jrZHNmVoNAV6VmgesHc8EBRNhLMQ/LH9RZVlNdU56wjR/7cxzEDWJ6EttB1snaVWspFCkMhiYwggV1Fo0NFFR0nNUinkzSotTqU/nesdBYeHy3QMdV95+F+Oy0TBVcfchw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClCfQeDkucdjfPPD4MzAyp0K6mD1El2NAC0KkBqX9yk=;
 b=lVboT1yaT1VubfPfwYq/dPnfZuewFkXCLep4SrktRj53zuXHae2ppxvcENTh3rXlk7vHNRT7clJkCcdsEVYovkS8IuHUaJgFUBFY9LEC0no8zOUG6rSv+p/VGh4pdECEqxglY2+VjRyVeihGNa9uzWFxCllLmQlDu9yUMnI+U5Z5StW18uLugSnpbwdGzlnMTrcVrJ2igY/aXmmgl7lGl1E3ESNEQ8eBwjCPZH/OfyW1O1uLXEuRm+8Gr96+6QdPJcSef7V2vSbagaa7NN1pD/K0jr6dh4Xs18BqpegAT0YWs0Twtoke/dCKCTbHaCO/7QofO/z5r2+RF/TjWYTc4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=philips.com; dmarc=pass action=none header.from=philips.com;
 dkim=pass header.d=philips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=philips.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ClCfQeDkucdjfPPD4MzAyp0K6mD1El2NAC0KkBqX9yk=;
 b=EOp7PCQ0LOIWCHddT/wn+bN6qflfFGP43Hn7gxaX/W21eMna4eY8TJ1J2CmRKF09i6kDeXdPXLmnBUvkQrLdBrhnl4pEZhnDPgBJINFfVAxrSdVuJpfH//nYTaJGIteADFtoC7dqrdoQjTHFtMKP4fsYmqOewEexdZR+4hOGK0I=
Received: from AM0P122MB0132.EURP122.PROD.OUTLOOK.COM (2603:10a6:208:14e::13)
 by VI1P122MB0222.EURP122.PROD.OUTLOOK.COM (2603:10a6:800:176::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Fri, 8 Dec
 2023 22:29:27 +0000
Received: from AM0P122MB0132.EURP122.PROD.OUTLOOK.COM
 ([fe80::402b:f80b:b96f:debf]) by AM0P122MB0132.EURP122.PROD.OUTLOOK.COM
 ([fe80::402b:f80b:b96f:debf%4]) with mapi id 15.20.7068.029; Fri, 8 Dec 2023
 22:29:27 +0000
From: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Yocto kirkstone and openssl 1.0.2
Thread-Topic: Yocto kirkstone and openssl 1.0.2
Thread-Index: AdoqJdOF/00lst4ySCi7GtWCa0/0hg==
Date: Fri, 8 Dec 2023 22:29:27 +0000
Message-ID: 
 <AM0P122MB013250CF014137C3774EFE10D68AA@AM0P122MB0132.EURP122.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=philips.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0P122MB0132:EE_|VI1P122MB0222:EE_
x-ms-office365-filtering-correlation-id: a3d2bcf0-6482-4b66-5b76-08dbf83d2385
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 t1v7mJXDHtRlfxK71GTkCk3HU+uYN7M2so7S2jnjjNjN22EwhvecDv0bM/gVgGccYi5AvA6aL9wp3efz5a5Gq6TbqGksJ0v9a9PFcQyiFSl+d7nz9Yvw8Vv0IBvkARYwzpW0xZPQRM1hWcQX96ZEKrw4PT+iVKx65dunl29AeYvekEw/0HrnerNyqL3Cyt56Oq7WfnBMeVoFuN4YC5VTqHPVpBgzEFJNXEBPwPNL2hAWthYxhs7hbPrrNNA9SWZJ4PxTZrTEOvBouzMJV3Sd4A6znyTJZDJR5y+KX6C/pNnFU+ZMJT0BGLi9MP0LsFbrZYWWBo7z/+30ViSisrIuIhOBJRzKp2y/y7CbT0t2h1y2SgNLAmJ+PtEKAV46G4ylvXbXyjVLmlOochZIgYFlxHzguDipdtopp/ExN3iLXy/lbrkuOs/UUHs0Zqz5CQ7OpzueuCRO792bTXuk/I5X3BtEFgY73oOUzd+F8tXwtsrBXrL2mHaWMFC8lCNRb4lZ9x2xyfQUGrocQJF08Df+EAAN8YaWYvDxLV3gU/1WZudmqkYzUU2KQPsYQ5Tg7zOvtV04AR2fbDx4OelLQxQ+//ZswFDpkOpmaBpE/TyXaf3mkSlVmOXI9ImgNM3qYfVy
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0P122MB0132.EURP122.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(376002)(136003)(346002)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(122000001)(26005)(9686003)(478600001)(66476007)(66446008)(8936002)(66556008)(6916009)(316002)(76116006)(9326002)(66946007)(52536014)(38100700002)(7696005)(83380400001)(82960400001)(6506007)(55016003)(8676002)(71200400001)(64756008)(5660300002)(2906002)(4744005)(41300700001)(38070700009)(86362001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lI5Ka7XnoM2DzzmE/evcmWFm9HtiijzBBtaZlnzDfEXQHoVo6w0jznjHCkqV?=
 =?us-ascii?Q?p721IA89UtryqKt0ddBGZ5+ckkqSOu4tZg7CTEMF8FsWtqnDJzraLYua/8HT?=
 =?us-ascii?Q?qyfos4Kwe/GmOi8Tor3tndDbH2/kf+5zzvuqCcxawvIiLJoOQO/1cRdAUWrk?=
 =?us-ascii?Q?a1oON4uRrxuiCbFNoIcSs5f0pGmn36DTzsbDfltoPi6rBoLq8UAGIsfbE/Hi?=
 =?us-ascii?Q?kqSBeNQQy3DeJPHA+yGQpMNE79/REIwxNHn9JdLttTp1A9VjWalWs8UKXb2q?=
 =?us-ascii?Q?b756cN6I94xtBL3ip17u++O/s8gDP57KgSHRm5fa8rEjIK0iw4TYjVYc950D?=
 =?us-ascii?Q?5FfQ4n4vG6RI02W4rLOWbUIObTSr+/U9JK7pfoX0mrpLuvMP69ww18FVkbZi?=
 =?us-ascii?Q?aSjnlFT2IlfhQ/PqQhhV5ufUDbKv2duCi0h88DwYJ44ps7EYu3g5MQx16jvg?=
 =?us-ascii?Q?DwY/aTKDnjKsVst3DUFIJpyFRT1S5m4fmC13dtS8SJLPXvId9V/4IMw/wfnl?=
 =?us-ascii?Q?T3Z8sfPJw0JtHdI4lCUxZTXO+wZPIMyxbf24YhyiSpF4cp5PVADfbsP+J3eA?=
 =?us-ascii?Q?BwKHXccTJhXLZcGa5Wridr3zkfoemm16rqYmd7V6hiOrw5rVsz0wdW6Ny2zl?=
 =?us-ascii?Q?Br0smmlwq5fS4bVeSNiKKTYBfa7txdUILZzQKXB674wwBg7X+0juXY7g0fS8?=
 =?us-ascii?Q?BWYTTDhCw1gIHwyGq0N8Nr94bw0PUwjpixhiEibhkLQeiH1QKji4/2VeT2Nu?=
 =?us-ascii?Q?LZaDzm1UT/GWhXeWDIUbc5xnmoZvnVDfZKAjdP+QCvD6j3ei2ICjOIJ0j+yw?=
 =?us-ascii?Q?BbVewZ5k9bpF/JuEYWOJ0hss8tHM0IdGtnuoOrXVHAcIebxEFuOOTF08sDbR?=
 =?us-ascii?Q?ztXSw+HWlp3QCK8sAfWC4vsAxqT1vbAN4JKE/YwUSDB5yH6Lzn5xzWawWXX3?=
 =?us-ascii?Q?e4R5YSdVuKjFUlsxJpIAY2q+Wu88O9BWW3SrmgTJU1i4iYS1bqO91mHtBZBS?=
 =?us-ascii?Q?dKRrOOLZzOOeTSjhTPG0tX/plhvf7mBNkSVI0B+CcthMKp9575d9hJknmjcL?=
 =?us-ascii?Q?px7aSPYsnpB2Q9u/FPNHjJWOhRPz/JI8D2dJl7aiMYX8qWXcVO0ucBu+cKQx?=
 =?us-ascii?Q?PwHPiw9vsPcbHFbbee2gBEypW4hXOgbVxynTrTtkAHuacCUavQowLiwScgSk?=
 =?us-ascii?Q?IWxwevsqUr0ZT/zIPUCCNajVTgxtdJD/IWwAnwSUPQny2RAAgJ2YE0r5nr3U?=
 =?us-ascii?Q?dVjm4/Y+jTll1KyAlE5uwKWcI/STDdPpzZDN73EUxatQn5IQjR9OeofF/6h+?=
 =?us-ascii?Q?YEzsaeNKN+7Ax1w6OyUk4zNGXd7hs9X3sb47kG0N+rLd3KJDgj9UGa0cNyek?=
 =?us-ascii?Q?uyep3hzlWsnVOLTcd4zIr7b0kiKNdm+EZcd3wtwdsdXd8/7nvnopQAR2+/wi?=
 =?us-ascii?Q?i5yM09BaEnHQRsHr+Ub7h7Rd7CT+Pp82W0YvO5ace23JaueRfm28K2r9oF2C?=
 =?us-ascii?Q?RtZ4fi/8icqBr8/bKRYJVatUq4EZLE0nvG9GN+fXNwJpp+kZGzV9KkftAp67?=
 =?us-ascii?Q?A1Cm3G4TsqZKY4n5qquiP9CFqG7Zammtv7IuL2NJzTu9nYx5KtgvdBYDVPu9?=
 =?us-ascii?Q?MQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0P122MB013250CF014137C3774EFE10D68AAAM0P122MB0132EURP_"
MIME-Version: 1.0
X-OriginatorOrg: philips.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P122MB0132.EURP122.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d2bcf0-6482-4b66-5b76-08dbf83d2385
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 22:29:27.5374
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KBosi2phrgW1wSPbdScs6zZdK0z/KGFjmIbmTwJITr7FD3OwXmk96xvP4rmEttbMMN1yhJIaTCso7f6/oBlKAoC2mS/cEK6XmH/MweraVsmGuoKBlu+oPJfKk9IIIXK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P122MB0222
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 22:29:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61849

--_000_AM0P122MB013250CF014137C3774EFE10D68AAAM0P122MB0132EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Currently we are using yocto version dunfell in our project.
we are also using:
-openssl 1.0.2: provided/supported by a third party.
-meta-openssl102-fips

Now, I would like to upgrade the project to use yocto kirkstone.
I am facing build errors: Python 3.10 no longer supports openssl version < =
1.1.1

Is there a way to overcome this situation and still use openssl 1.02?

Regards,
Carlos B.

________________________________
The information contained in this message may be confidential and legally p=
rotected under applicable law. The message is intended solely for the addre=
ssee(s). If you are not the intended recipient, you are hereby notified tha=
t any use, forwarding, dissemination, or reproduction of this message is st=
rictly prohibited and may be unlawful. If you are not the intended recipien=
t, please contact the sender by return e-mail and destroy all copies of the=
 original message.

--_000_AM0P122MB013250CF014137C3774EFE10D68AAAM0P122MB0132EURP_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently we are using yocto version dunfell in our =
project.<o:p></o:p></p>
<p class=3D"MsoNormal">we are also using:<o:p></o:p></p>
<p class=3D"MsoNormal">-openssl 1.0.2: provided/supported by a third party.=
<o:p></o:p></p>
<p class=3D"MsoNormal">-meta-openssl102-fips<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now, I would like to upgrade the project to use yoct=
o kirkstone.<o:p></o:p></p>
<p class=3D"MsoNormal">I am facing build errors: Python 3.10 no longer supp=
orts openssl version &lt; 1.1.1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to overcome this situation and still =
use openssl 1.02?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Carlos B.<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</body>
</html>

--_000_AM0P122MB013250CF014137C3774EFE10D68AAAM0P122MB0132EURP_--

