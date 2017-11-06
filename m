Return-Path: <zhenlw@msn.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 346ABE00D36; Tue,  7 Nov 2017 08:10:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zhenlw[at]msn.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.254.37 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 79576 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Nov 2017 08:10:45 PST
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-oln040092254037.outbound.protection.outlook.com [40.92.254.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDD0E00AF9
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 08:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Cm0dLneBZl/pgx4eV9BCtNIkwSS0i1Ykk3tV+oWJ/BE=;
	b=MPrYbV8FvksEl+hwHjDw2WLDMKf1/NWyGidfdNd6lvIs2ePFdnFb54vuvdhmTk6od+Ratp0NSDysCzQRq/3FVdpIfID1PFy1wEogcOKoDhLKPhsN/ueV5wUp9eZ4dP5SqUXTxCTRkC9f8d22hGwbnNwbXoRFyBQ5D3H3YqpOREaJ4zF6z6yyEN2BV8H7sLofXD574JXTPZA4GOZueaDyZx5ldrUxi4yIp7wuwlXxn0n3Fgow9yagmOFRNqWbisq1C2hNr/jvjASXE1pN1FdwSnFH3ClGXWCBFzS+3K9to0OCJVwOQV4twv4C0hhxUhe6yj5Z+QJHYJhdNdM+bFH/fw==
Received: from HK2APC01FT026.eop-APC01.prod.protection.outlook.com
	(10.152.248.58) by HK2APC01HT074.eop-APC01.prod.protection.outlook.com
	(10.152.249.33) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.156.4;
	Mon, 6 Nov 2017 11:30:32 +0000
Received: from PS1PR04MB1001.apcprd04.prod.outlook.com (10.152.248.60) by
	HK2APC01FT026.mail.protection.outlook.com (10.152.248.174) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.178.5 via
	Frontend Transport; Mon, 6 Nov 2017 11:30:32 +0000
Received: from PS1PR04MB1001.apcprd04.prod.outlook.com
	([fe80::9c39:d3de:5185:b3e9]) by
	PS1PR04MB1001.apcprd04.prod.outlook.com
	([fe80::9c39:d3de:5185:b3e9%14]) with mapi id 15.20.0197.017;
	Mon, 6 Nov 2017 11:30:32 +0000
From: Zhen LiWei <zhenlw@msn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: use native (cross) toolchain instead of a populated nativesdk
	(cross-canadian) toolchain
Thread-Index: AQHTVu91McsWkk7cBkODYniAVBiA9Q==
Date: Mon, 6 Nov 2017 11:30:32 +0000
Message-ID: <PS1PR04MB1001E817DB9818B47DC2BC30C7500@PS1PR04MB1001.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=msn.com; 
x-incomingtopheadermarker: OriginalChecksum:B8156EE84BC5AABE3DC3BDBBF28E64E58BCC2B20A2A80C381C8FB85C4770F259;
	UpperCasedChecksum:B6AA5384B3E8E6BE64C4982B508AF511F74E1A2EE0C739A924376055C690710B;
	SizeAsReceived:6902; Count:43
x-tmn: [z333ax9MLijSFejqbEj9DjShQFBxUefW]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2APC01HT074;
	6:8JAZ2smjLTfvLFaRYF/HxcaQ6wzm7wrfVdPUx1SCPwZ2QH9BV0WlQQhBoukGVO5h5QkyqKwS5DRIghUxtP/AEKLyN2INYsT67X+BfbdpSGJfEWLLM9LUVVeSnRHTbcYNjdEQAvn51nA1W6jG2ySoMQNb8pbgCWHFiVq85ZZe0RLFu2Evx/tIno/jxP1CfosCGzwC1ihpK3ZiS3RFHn8uGWq4js69hdS9sCacwYHxGvm5sI/ougjB49zS+k3jwyc0yOYAXH52PP53RGByM0lnPObtuve2473e5VdcwThP1agMCEVtMhQsVnc/7FPAOSaKToljfxtyeta9CGWIwcezPQ==;
	5:E709ZgI2/cpl65A6nSFoOjM/4y2qAU5jIKXdI+6W18xJUGRe/KUoXt4IYvb02CTeB0a6B0n7Pj2wTp55jUK4XhkOatk0ufjpfUI4RXHo1W49so2YCS1JLaRixHDVlBNowQTNxtejs02iaRji4Ee6aw==;
	24:7vMfTlSUomxXFOpxHDiJUQdE1sDxJGWLBZRLJnSY98gTgmZqJhctpKA1lcguBp4ZpfT0K++WlyUyhAGeapTunLvJYKvyu94ItrhEbwqmG1U=;
	7:Vh4oWtirrATbAsU7DxCBJuWKi8aS5fUMnNq9l3Jqph5uypTvgVFYRNyoR6wmDTOSMmfpQJoKyTWrgAgDA0OBAR+XF2+iTkY1iwWeYRtZMeWlHt/ffD7iwKsqQoBFgMu+EON2X3osXiGjDrhuWTjTIraOg17qtSl6RQxko+Li2o627fU3qy40jHJS4xzyMh8crc45nlbLh0Ob5RfcNj8Oh1rHNqvK769xFUS86cDrolU=
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 9eb18367-4b73-483c-6409-08d52509ca7d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:HK2APC01HT074; 
x-ms-traffictypediagnostic: HK2APC01HT074:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:HK2APC01HT074; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2APC01HT074; 
x-forefront-prvs: 048396AFA0
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:HK2APC01HT074;
	H:PS1PR04MB1001.apcprd04.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eb18367-4b73-483c-6409-08d52509ca7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2017 11:30:32.2441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT074
Subject: use native (cross) toolchain instead of a populated nativesdk (cross-canadian) toolchain
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
X-List-Received-Date: Tue, 07 Nov 2017 16:10:47 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_PS1PR04MB1001E817DB9818B47DC2BC30C7500PS1PR04MB1001apcp_"

--_000_PS1PR04MB1001E817DB9818B47DC2BC30C7500PS1PR04MB1001apcp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi, I am working on a yocto 2.0 based distro and we usually populate_sdk an=
d use the toolchain included in SDK.

But we also like to check the SDK into a SVN repo, and checkout it anywhere=
, and use it away right where it is checked out. And since the nativesdk bi=
naries are based on a different glibc than native, and have the =93dynamic =
loader=94 path hardcoded in them, so I have to patch the toolchain binaries=
=92 .interp secion to point to a common place, and update the loader into t=
hat common place automatically in some way. Other than this, things works v=
ery good for us.

Then I am thinking: is it a good practice, to use the native/cross toolchai=
n directly from the tmp/sysroots/x86_64-native folder. I tried and succeede=
d, by just moving the sysroot to where the populated nativesdk toolchain wa=
s.

An extra bonus about this is that we got a more populated sysroot for nativ=
e platform too, for example a openssl dev package at the same version as th=
at on target, that we can actually use to make the native platform a closer=
-to-target dev env for some =93workbench=94 build.

However I=92m still wondering: is there any thing negative about this style=
? One thing known is that the SDK-using host need to be similar to the SDK-=
building host, but that is not an issue for us. But anything else, guys?


--_000_PS1PR04MB1001E817DB9818B47DC2BC30C7500PS1PR04MB1001apcp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi, I am working on a yocto 2.0=
 based distro and we usually populate_sdk and use the toolchain included in=
 SDK.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But we also like to check the S=
DK into a SVN repo, and checkout it anywhere, and use it away right where i=
t is checked out. And since the nativesdk binaries are based on a different=
 glibc than native, and have the =93dynamic
 loader=94 path hardcoded in them, so I have to patch the toolchain binarie=
s=92 .interp secion to point to a common place, and update the loader into =
that common place automatically in some way. Other than this, things works =
very good for us.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Then I am thinking: is it a goo=
d practice, to use the native/cross toolchain directly from the tmp/sysroot=
s/x86_64-native folder. I tried and succeeded, by just moving the sysroot t=
o where the populated nativesdk toolchain
 was.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">An extra bonus about this is th=
at we got a more populated sysroot for native platform too, for example a o=
penssl dev package at the same version as that on target, that we can actua=
lly use to make the native platform
 a closer-to-target dev env for some =93workbench=94 build.</span><span lan=
g=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However I=92m still wondering: =
is there any thing negative about this style? One thing known is that the S=
DK-using host need to be similar to the SDK-building host, but that is not =
an issue for us. But anything else, guys?</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_PS1PR04MB1001E817DB9818B47DC2BC30C7500PS1PR04MB1001apcp_--
