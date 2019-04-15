Return-Path: <kweihmann@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9950BE00D2F; Mon, 15 Apr 2019 23:12:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kweihmann[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.64.37 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 18016 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Apr 2019 23:12:26 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064037.outbound.protection.outlook.com [40.92.64.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C785DE0091D
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 23:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=wZ0BA2LTKpfR+Q4B3JsSRyTMKgboE0ZsfUpM08YyIM4=;
	b=sUY3qn8ss9SI0ieBX7rlKjLY9K0pZSBbxf5qwl77tZaaBj1BsF7ADROzJoSvayJECVvf/jglGyUxIyLs1GUwSXh97ISEl8UFuOp7Uu3E4Us58QGn1RT8nQdFDCIQ8bOBihXyCJKHwqvKkYNWUOD8fFwxivDOLmGeOgKJ5c9OSMwnZY99zmUHnzYMB6eY73OuenmyiGuECqP9Pyee051O0dxc1W8nGMArDZCDY3bjR/Qb3PaJxWcUsy2IMXNYIeR42em+vwT3qNvPTRBjqocKvzN/sFoVu9mYOIMgZP2x1Kd4X8ZHco6aKf4EgNt1gGFuQBvyW1Dc3ysLZ9jVockf0w==
Received: from DB5EUR01FT047.eop-EUR01.prod.protection.outlook.com
	(10.152.4.53) by DB5EUR01HT104.eop-EUR01.prod.protection.outlook.com
	(10.152.5.108) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1771.16;
	Mon, 15 Apr 2019 12:40:41 +0000
Received: from DB6PR0501MB2182.eurprd05.prod.outlook.com (10.152.4.60) by
	DB5EUR01FT047.mail.protection.outlook.com (10.152.5.196) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1771.16 via Frontend Transport; Mon, 15 Apr 2019 12:40:41 +0000
Received: from DB6PR0501MB2182.eurprd05.prod.outlook.com
	([fe80::11ad:c6a6:d55f:2524]) by
	DB6PR0501MB2182.eurprd05.prod.outlook.com
	([fe80::11ad:c6a6:d55f:2524%4]) with mapi id 15.20.1792.018;
	Mon, 15 Apr 2019 12:40:41 +0000
From: Konrad Weihmann <kweihmann@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Static code analysis
Thread-Index: AdTzh1qpBS5ZLTf8SaGKYC7xps31bA==
Date: Mon, 15 Apr 2019 12:40:41 +0000
Message-ID: <DB6PR0501MB21826F5CEE93CE575B5995AEA82B0@DB6PR0501MB2182.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:49428085B288532062B04DD5D1BF031228818782DCE1C9CA5D9E1B76BB4154E0;
	UpperCasedChecksum:0DAA58759267F72B40F4BCA02F1BAA5F49A8EEFEB80D614389F4911082EB5134;
	SizeAsReceived:6507; Count:40
x-tmn: [cUcPN+56OehtIrMImanKXCflz6Gdw0qX]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:DB5EUR01HT104; 
x-ms-traffictypediagnostic: DB5EUR01HT104:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: 4fxzY15yKUfXqGnni0xrWFVEKpfAES3xxEoWJVEx9Dx0r5cUs1SMVouf0PnkP6EDvdfB9beoYb0e26KY6DIew3gLBsK3BRpwpmfWO8fVjyDjyX5NhfOVZ0mYUiVW3INIjgGd4hAOc0Yw35bMmO7OdKmgcFgJWI414qD+7rISkJ5xBN5bv0S+x3DcBl2o6aTb
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c32d5a5-8629-4cf6-c6f8-08d6c19f91e7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2019 12:40:41.0750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT104
X-Mailman-Approved-At: Tue, 23 Apr 2019 02:14:18 -0700
Subject: Static code analysis
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
X-List-Received-Date: Tue, 16 Apr 2019 06:12:28 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0501MB21826F5CEE93CE575B5995AEA82B0DB6PR0501MB2182_"

--_000_DB6PR0501MB21826F5CEE93CE575B5995AEA82B0DB6PR0501MB2182_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I didn't know where to put this else, so here I am.
I've been working with YOCTO for quite a while on professional and personal=
 projects.
From time to time I wished I had some static code analysis inside of the bu=
ild chain.
Esp. when something quite obvious (like a badly written shell-script) flipp=
ed the whole build - For most of my professional work I've always used the =
fail-early principle, which often means dying at build time instead of dyin=
g in testing.
Over at GitHub (https://github.com/priv-kweihmann/meta-sca) you can find my=
 current implementation of static code analysis tools to be used in YOCTO.

If you're interested please have a look at it, and maybe if you like join t=
he further development (or at least the discussion).
Hope for some serious feedback,
Best regards
K. Weihmann

--_000_DB6PR0501MB21826F5CEE93CE575B5995AEA82B0DB6PR0501MB2182_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I didn&#8217;t know where to pu=
t this else, so here I am.<br>
I&#8217;ve been working with YOCTO for quite a while on professional and pe=
rsonal projects.
<br>
From time to time I wished I had some static code analysis inside of the bu=
ild chain.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Esp. when something quite obvio=
us (like a badly written shell-script) flipped the whole build &#8211; For =
most of my professional work I&#8217;ve always used the fail-early principl=
e, which often means dying at build time instead
 of dying in testing.<br>
Over at GitHub (<a href=3D"https://github.com/priv-kweihmann/meta-sca">http=
s://github.com/priv-kweihmann/meta-sca</a>) you can find my current impleme=
ntation of static code analysis tools to be used in YOCTO.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If you&#8217;re interested plea=
se have a look at it, and maybe if you like join the further development (o=
r at least the discussion).<br>
Hope for some serious feedback,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">K. Weihmann<o:p></o:p></span></=
p>
</div>
</body>
</html>

--_000_DB6PR0501MB21826F5CEE93CE575B5995AEA82B0DB6PR0501MB2182_--
