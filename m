Return-Path: <dellis@innoflight.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47C7ECF3195
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 03:34:05 +0000 (UTC)
Received: from USG02-CY1-obe.outbound.protection.office365.us (USG02-CY1-obe.outbound.protection.office365.us [23.103.209.57])
 by mx.groups.io with SMTP id smtpd.web10.100057.1727840040815408900
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Oct 2024 20:34:01 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: innoflight.com, ip: 23.103.209.57, mailfrom: dellis@innoflight.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=GST3k/PaQPQo1eZaTf0cWvkX0EHant7LsUHp+ObA7c2Z/6LwYL/cGySsIfSEUVRv326uVQ3NVVQen6LMJZxkHULxgVYPMzACF5jTon7xrN73XKEy+ZXXnssnPfoBMZ+4fYXDfNjIEAYn5Bn4Aml/+QJTPtQsfHEbnnAIUFUKutRazpU3MfjEUbY26ut0aVPiIsMzv4oJ7T+YT50dZ5ZaKy3KRYQVAu8EVJV3S0KLhhG1WNU9wx9gM9+aysCYQ8zHAiWWfFlWJ5HwJghboEbJ0s5zuNRwAeYn64yrFNpw3OoSPjqIWIc1SuiHpkL8rMgpgj9QXQKOKK+WEV1fdow2ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=el/ESzFlUkZL3u5Ys6EPNLtTHilsb9JSnnguo9v8PAI=;
 b=IfGk5dHjN4DDNiEMzv/9/efxNpSSufjg6sBp2lCodLdqhHPyl2kdj5bYfrBsvBj62VW0GEmDBsThkSUY0jxbywpsgRyoiDU+gQrJFbe7vO6YmEegyUG+HPaVbRh8XJNzw4DnzUKXPMwjPQ+k/Fn8NPBwcf/qVNIcN3aHxIzxa5uRNuB89oaUEIj2f3rmkL9oTtmecWUv1JtdK+Ct+XyyRrOCMqOR05MOglPXbfauTehjwr+afAAsR1nNmrNNyFMuL01h7X2TircIzdd+kQKrh4TNGx+SH55g1nX1l8AOul/tDcsmYuhmCGSw9TncCPsbo7rRqR9uLunUu48M8Y5u0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innoflight.com; dmarc=pass action=none
 header.from=innoflight.com; dkim=pass header.d=innoflight.com; arc=none
Received: from PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18c::15)
 by PH1P110MB1601.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Wed, 2 Oct
 2024 03:32:59 +0000
Received: from PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7009:3d9e:7302:179]) by PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7009:3d9e:7302:179%7]) with mapi id 15.20.7982.031; Wed, 2 Oct 2024
 03:32:59 +0000
From: Duane Ellis <dellis@innoflight.com>
To: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>
Subject: A very unhelpful message
Thread-Index: AdsUePRPfxKAfjJ/S3y4X9w1fqbmew==
Date: Wed, 2 Oct 2024 03:32:58 +0000
Message-ID: 
 <PH1P110MB12656EACA26E9D3F12F791F1B070A@PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_ActionId=9035bdd8-600d-45fc-b276-852a530a095a;MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_ContentBits=0;MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_Enabled=true;MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_Method=Standard;MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_Name=General;MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_SetDate=2024-10-02T03:12:36Z;MSIP_Label_698d6f55-d879-4872-83b9-15ac2f3b2faf_SiteId=dace6624-c79f-47cd-8bf4-2fee6155d14d;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innoflight.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1265:EE_|PH1P110MB1601:EE_
x-ms-office365-filtering-correlation-id: 31a32463-ae7d-46ea-8f8a-08dce292e975
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|41320700013|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?7gtZTv49brjXZav4X+IHYQ56pnmtcJxqyzx0/xeh2hcLFX0CEqMsp+Nh1Lff?=
 =?us-ascii?Q?2yxtq0oSE17zefZObXdgP1cFbsuKzuuSksOO8kT9Z/2DKrAUVGB5sJkONNkO?=
 =?us-ascii?Q?IFwbZjjDA+FitcJlyRVLJhCsuzYgz9C5sOPnEjeh6w/l661aslamADhhE5gE?=
 =?us-ascii?Q?jX3PrLlnuwlvswTiKmoHRtz8Qw/54fnzRF7VbczMaaetBsIOAk4qJ5uWpiW+?=
 =?us-ascii?Q?2hf/zTH5xJy/qmJcK66Yyzsp85F7BIsfi3EpsxUbHpg7WQofNrWZT2ZR3Rus?=
 =?us-ascii?Q?g5KmW9N5cEocSXPx6Um8JrT/7LdHrbxCTE3u7QJbkemhxvrEASIsf+s8omk8?=
 =?us-ascii?Q?crmnCVBc+DsSOqD85l4L3pe+LwHTlPC8CJV1uFUqNx3r5tjqxes1+sGi3YpM?=
 =?us-ascii?Q?xnnlUr1QXAEtIzF6Gb1mQfnSF+9y0/V5B/7tzKVmJexaANr0U1Zl9IfX+vKC?=
 =?us-ascii?Q?QmTl7ZEQ25Vwu5frh3YztZdBism2KRIwMVkhEYkEXGYf0gee5HDZEOuX46w5?=
 =?us-ascii?Q?hvbrc0NP6KkbGh3Nlgp2a6/mkBRqZ4Va8oycgM4WANyUECKe3dgMio6Szspo?=
 =?us-ascii?Q?aGoyEvXCOUbocV4U47FDkceBt/sSkPwbU6n5R6ZhWxuW/BTWJynCf/SjtSj3?=
 =?us-ascii?Q?VDvxNuEsr/rv1jHPQHVltRLEWnynMIdeHFIOa1tyZmxtYWw0tWYXD3daLCuC?=
 =?us-ascii?Q?ki1Af3hKTQUBuOJ53gpNn6A8TOzWQ9FZagLhyTLi4bcZjdlJ3n0lTNzXeQY4?=
 =?us-ascii?Q?r1HYVbagwPzRPb85xbm+t5yIylZp5CcvDvg4g1MKlxuHpLYPR4bMzPslehlL?=
 =?us-ascii?Q?DFt/ZYsVybwxYwz1HkPPCNN31Zp3ZEw8WXFELs7u/XYcHtO1kVOYuLbBPfUF?=
 =?us-ascii?Q?YVsL/lhzdKcC3orYCnoCQh70lseURuO9BtESmCA4Lfxwt6HVHzEFc4X49qiQ?=
 =?us-ascii?Q?Y5jJSYo59HGnqiEQkirKqi1Zy/YeLy9zUOrASy9DaZRj6o8XcSKLDkXwH3fH?=
 =?us-ascii?Q?zib60pBMeF/53NSLPVRc3EJB8CH40RTQ2NLf3q+QX+BZzHBPCd5z+I8BU4ue?=
 =?us-ascii?Q?uv080DGb42tQSV/HccW4heUUjwuH1apLogH6ZlCPn4FphI1DGFBSP6Kh1ecz?=
 =?us-ascii?Q?ZUESfZputJaqpI4M72tOQgYfZS+0GFZu797CYrCcF/HCxX72XMcfEkc1m4H0?=
 =?us-ascii?Q?MyB98U7yZ8T1aWWpnURb7J+PbbHkgwuDxo2UDiGO/vjnXDGXFjLqWH85xFdM?=
 =?us-ascii?Q?WNBs6T9Rw8NJu835Xv3Bfd/JDQnCXfM0rdrmxpr5lGgZn5Xcc+dOVuw/ps6i?=
 =?us-ascii?Q?QwU=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?GcXP2t2rMhrawABTAMBW2R/wNy7DPlROXW3C25pEylyxGdN0lp+WGcQ03i/N?=
 =?us-ascii?Q?6Qw1EKHlUUJDlreZtrYSI+ScJYqCORlssnaF/w7x1oN6zW/o/i73TokXYNAB?=
 =?us-ascii?Q?RZN37MPP7tUuxBsynkK6deUnNb9O3cCfvYIka0MxS/FMNap0r5QyIljtSbmU?=
 =?us-ascii?Q?KpGpgeGn1KKm9p2ugSBk0fdpXszdqotYEcTXeeb1Jv3EmTzkB7wosVAEvsDh?=
 =?us-ascii?Q?28beyKL6l5rvTF3U3OEDAcIYaVqkzXhYM4NduP6oghZ7m3uBO/Ru7dP6jke1?=
 =?us-ascii?Q?ybyxwK0zWT5Xu1HaNUMbbAOzGF5kQMCcUkOYKBtt6Ll7pmQ53y1YLJmPZEKA?=
 =?us-ascii?Q?wbPkMEZ0f+Kf/xcRaafjK97hCO3Ot34MLCaq/n3QIwgh4u3IBcEVx28J/eB5?=
 =?us-ascii?Q?pPvRmCSdSYZ3ZVGiC8WCSmMCvJkvYAm0R1zQ/wEehu05yblRcnlwSyPLpYVI?=
 =?us-ascii?Q?XKKOrFuKSF8R9135U8Tlk3LSDvvYOFVFeyC8zvDGWcvMml5xqvrhSc0v2+Gg?=
 =?us-ascii?Q?ODOFVp/SsMupf1yldnQ2OHTOFNXVGr/T14faf2Ugu2xBP1pIKyWxp2p+WObj?=
 =?us-ascii?Q?0PUyrtBK9zSAuKLZzHiaaUEBYuIiMBSGA2fw4hTegC8ZjYkleZs59SrviK1U?=
 =?us-ascii?Q?hE2j8gqruW6JAERJC1GU70fdx6OnvbrX2w7cJjh6rwStd7YPINQ4sSfW1LC+?=
 =?us-ascii?Q?+GHzV2gyiH5UsxbYq4QVxZMCeBgJsy8kznqEccOMHC+Xu2DlDRxoZbwlWFPS?=
 =?us-ascii?Q?6Xqc2s8bvKnXQgHoNUjFez4DOKNVse3wXhwxDcojxjElABOiF76F9qCMvW86?=
 =?us-ascii?Q?0S53kw+iRnBuSQ88c9HU7Lmuv/C7FWNbSrikfqwgrLUbwhbdLGqJdO0kaSJ+?=
 =?us-ascii?Q?gcaOjVcAMC1MNtnvUwxnfFBep8/XHDYbk13rLqmbFy+7k0L1sfxPDXeJ0lY1?=
 =?us-ascii?Q?KGqVYmK5z9nH7k/jhorjSaFjRmZd4bbzytl5Cb+ljw/2/Tseqr8y5zaRDNKh?=
 =?us-ascii?Q?/h9ROjBMIIgp8yus2GyGj4WmYCA9JxbNI9MOig+H1yh7nXNtmUHAZXgbGXYy?=
 =?us-ascii?Q?noZF5yFGvQDcjKEDUSvJSphfeFzEiz/X/7c2R2SJ/axCnaliZARFAdrITpnK?=
 =?us-ascii?Q?4nQPCbmOgL1RlUrx+MPwEQymwdK29+kgliKdNH8XRWpYk6zfYzsvXZcexvjc?=
 =?us-ascii?Q?ptry8nENzqCQUgICq4nWFlFJ8BODMICKW635M73zTz1GLR+2EHydM9KrAdqp?=
 =?us-ascii?Q?46xvbhvBJr5SS9/bPUGBxJDs7yi+PWqGdijbi9giGMLkeScrFrZrm/cx+pxz?=
 =?us-ascii?Q?KarWOjHIosP1pQZXXlfsCElQiI/Cz+lwJR3YRkMdrFgxeP/R0+yTO/Tg8AEj?=
 =?us-ascii?Q?fk4M+pIEPz3ifSjPytil81G59+zTGhkeSPmqRtZtE0wntROz+0FPVlP2dOF+?=
 =?us-ascii?Q?c4cuJ/BqBbiNi0ajew00zZWiJ/vV4rPkQNwmTku1w0pvICdhDZEvlK0jFlIS?=
 =?us-ascii?Q?Ye0ICtW1FU9lH+HR41pG3MNes67jC/adzvWV?=
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB12656EACA26E9D3F12F791F1B070APH1P110MB1265NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: innoflight.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 31a32463-ae7d-46ea-8f8a-08dce292e975
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2024 03:32:58.9538
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dace6624-c79f-47cd-8bf4-2fee6155d14d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1601
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 03:34:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63924

--_000_PH1P110MB12656EACA26E9D3F12F791F1B070APH1P110MB1265NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It's been reported before:

     https://lists.yoctoproject.org/g/yocto/topic/warning_image_fstypes_rem=
ove/103013050

The gripe I have is this:

It occurs - but bitbake does *NOT* tell or give you a hint to *WHICH * bitb=
ake file is causing this.
Error and warning messages like this should include the recipe name or dire=
ctory or something that

This simple change would be very helpful to victims of this madness

diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
index 9e0a0f5c98..8e700b1043 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -132,7 +132,7 @@ class DataNode(AstNode):
         if ":append" in key or ":remove" in key or ":prepend" in key:
             if op in ["append", "prepend", "postdot", "predot", "ques"]:
-                bb.warn(key + " " + groupd[op] + " is not a recommended op=
erator combination, please replace it.")
+                bb.warn(self.filename + ":%d: " % self.lineno + key + " " =
+ groupd[op] + " is not a recommended operator combination, please replace =
it.")
         flag =3D None
         if 'flag' in groupd and groupd['flag'] is not None:

BETTER - change the bb.warn() to *NOT* print WARNING: at the start of the l=
ine. But *AFTER* the '%d:'

Reason:

BB does not use the well-known standard error reporting format used by just=
 about every UNIX tool out there.
Examples include: GCC, GREP (with the -n option) to name a few well-known e=
xamples.

Why? Many tools, Eclipse (error parser), VSCODE, Emacs and VIM can parse th=
e tool output in this form and turn the item into a clickable error in your=
 IDE or EDITOR of your choice. But if the tool does not output this format =
it makes it harder to resolve errors


--_000_PH1P110MB12656EACA26E9D3F12F791F1B070APH1P110MB1265NAMP_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">It&#8217;s been reported before:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yo=
ctoproject.org/g/yocto/topic/warning_image_fstypes_remove/103013050">
https://lists.yoctoproject.org/g/yocto/topic/warning_image_fstypes_remove/1=
03013050</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The gripe I have is this:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It occurs &#8211; but bitbake does *<b>NOT</b>* tell=
 or give you a hint to *WHICH * bitbake file is causing this.<br>
Error and warning messages like this should include the recipe name or dire=
ctory or something that
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This simple change would be very helpful to victims =
of this madness<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/l=
ib/bb/parse/ast.py<o:p></o:p></p>
<p class=3D"MsoNormal">index 9e0a0f5c98..8e700b1043 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/bitbake/lib/bb/parse/ast.py<o:p></o:p></p>
<p class=3D"MsoNormal">+++ b/bitbake/lib/bb/parse/ast.py<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -132,7 +132,7 @@ class DataNode(AstNode):<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;if &quot;:append&quot; in key or &quot;:remove&quot; in key or &quot;:pre=
pend&quot; in key:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if op in [&quot;append&quot;, &quot;prepend&quot;, &qu=
ot;postdot&quot;, &quot;predot&quot;, &quot;ques&quot;]:<o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.warn(key + &quot; &quot; + group=
d[op] + &quot; is not a recommended operator combination, please replace it=
.&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.warn(self.filename + &quot;:%d: =
&quot; % self.lineno + key + &quot; &quot; + groupd[op] + &quot; is not a r=
ecommended operator combination, please replace it.&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;flag =3D None<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if =
'flag' in groupd and groupd['flag'] is not None:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BETTER &#8211; change the bb.warn() to *<b>NOT</b>* =
print WARNING: at the start of the line. But *<b>AFTER</b>* the &#8216;%d:&=
#8217;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Reason:&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BB does not use the well-known standard error report=
ing format used by just about every UNIX tool out there.<o:p></o:p></p>
<p class=3D"MsoNormal">Examples include: GCC, GREP (with the -n option) to =
name a few well-known examples.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Why? Many tools, Eclipse (error parser), VSCODE, Ema=
cs and VIM can parse the tool output in this form and turn the item into a =
clickable error in your IDE or EDITOR of your choice. But if the tool does =
not output this format it makes it
 harder to resolve errors<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB12656EACA26E9D3F12F791F1B070APH1P110MB1265NAMP_--

