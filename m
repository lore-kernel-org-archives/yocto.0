Return-Path: <Heinz.Wrobel@nxp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3224CC433FE
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 07:29:43 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.46])
 by mx.groups.io with SMTP id smtpd.web11.14743.1669188579623188990
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Nov 2022 23:29:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=jIkJByJa;
 spf=pass (domain: nxp.com, ip: 40.107.21.46, mailfrom: heinz.wrobel@nxp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9cHqk32NwkvOae6Q+dEQu3/3C0toX4V3ain1OFBLmbnsPtif25fzURBOI2FV3tMJiO2bC6w7+xGY2UMOnVYz5W0iaU5Rj2bN6vIf3tDlv3SMfecxZvGqtD36Va4OK/QyH+17sdTj1QYGxEG6EAsBBDmNvs0RIfF233kpTNl+ntyzqBobBjjD0CUrR5YIt/CImeF3AxByhQQSazaWonp9aBgJ02OBC6UneZoK9hgXRZDRQxOdzyjsYN8dNsLJq9RG6ZybuOKVAOyTGW6wGRXfGhUkWCMgHhApYNUPi0nNWX6MpZIauX1f78+jn55JAf7Kvyi7YS4YKDWgUZVWPblGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MhhyNqV7T8Qzx5QTBHQVPXhCqhtyBI5/4amyROswEmQ=;
 b=B7xNcwMtNIuyXLbJW3wCDwoWSLnqjgfHbY/RfGSe4bMoHQFtEnWfa8BBahbYhuredbA3ywYn2339JOFGy1n3KA/g98dpNOzD1ECwHerR1hEvDo7LAS64grL4s/RgzNzcAsNFAmqf2inAMv7ElSj+3SBnXQV+8bmVSsRZyRuHqqjxyWZx6PhIXGyQbfz7CdkBhSRdXeO2xC5apUpOdVo78tpsw0ln64vUzk9KR1UYYwTm8BvekMhMVqzVKJfkTiabbgSRrYLkjT8He/rcr9SQ3FzxY+SoGVuhsLDT0AnyRcC2qb2js+jOd1iHKvyaWTWU8PSngKehp7xc5vp8+Iu+ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MhhyNqV7T8Qzx5QTBHQVPXhCqhtyBI5/4amyROswEmQ=;
 b=jIkJByJaYTEr8lhRy+FabqdYoHBJVc+fDJyNo7zCFR7W/R5q+IRK2SB1XLoWNqFon7SEWlOOeW+UXsZlTtBiv+H22cV97yDftfMMm05b6OcMgxSRpA4fNy0PVVwKi6miZDQcLPPtqdIHysFh3LIoa6VOrk7/njRoocj8QhT8MiE=
Received: from GV1PR04MB9149.eurprd04.prod.outlook.com (2603:10a6:150:24::5)
 by AM7PR04MB6902.eurprd04.prod.outlook.com (2603:10a6:20b:107::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Wed, 23 Nov
 2022 07:29:36 +0000
Received: from GV1PR04MB9149.eurprd04.prod.outlook.com
 ([fe80::d461:de5:fd24:f9fc]) by GV1PR04MB9149.eurprd04.prod.outlook.com
 ([fe80::d461:de5:fd24:f9fc%4]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 07:29:35 +0000
From: Heinz Wrobel <heinz.wrobel@nxp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Fixing package dependencies across recipe versions?
Thread-Topic: Fixing package dependencies across recipe versions?
Thread-Index: Adj/DQOBml7nE9kcSqiXF7/TTz/7xQ==
Date: Wed, 23 Nov 2022 07:29:35 +0000
Message-ID: 
 <GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9@GV1PR04MB9149.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1PR04MB9149:EE_|AM7PR04MB6902:EE_
x-ms-office365-filtering-correlation-id: 9162200c-4c14-4aa8-d674-08dacd2478b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +e4VGFsVF5j+d3ICGHSrQGZCpOsswgXrCJ1m+T5W4SR0cnjmMwTY9/kzvS98liopLhpMDE51LIW0zCMwsXDjaNQBPG8yFhrGHiNwIDXXfYbljYnoV5NRyQKneEq2Obcdk40lG/VUMTYh47OnXAQGygInYUmuZa7EsACnz2Xq5XXvBQL4vpFn6KKDqAU375QoEEIgoVRevGBlROhKHKjNEOtg6lmQPr2vHVNID9HN0ZzPRNZ5ABOp/Rds7P2XfFEtG4t6Zrb7+0pSEGM0c3YDB2DhrRxEkShuXpzOZsZIqMJKsJO7UMo52afkaPtTUko8UULVNH2cFGIm80USXeyfhEOXeTZv1cB4/jeGgrEdmp8IX2ohz/lcz++VPRAn3ldypJITs+ECT9BUHXxJdtbUivXDK+g0wIoihZ16qLpaqNFFs1wsb5lgTsLO2FbbA3MAKe5VSxhzSvx7SUZIvSFFtcb9vjNKfQRHSDCGtyg0BzmlmI6xvNcLwOK75UEUOLPWo3VTzsABiRYq+ee+k3MaaMdILnXRhw833huwjj2kxhjf4zzAubEpqD1B6TcKrWng2uQzJcuzcIS7UVBSuVrf1sBdD/YlC6ryBXxf73FiXq5HIkwE+1p3rZHVOy8A9QPRaknundK01ZH7g/Y9Sut3tIojgP7+pDLzYUXA7srncvCfnt1P4I3i9MCG3eB0CUcuSZDVgEsrU7f3+dgb7c1ckQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9149.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199015)(83380400001)(33656002)(5660300002)(9326002)(8936002)(55016003)(38100700002)(86362001)(122000001)(478600001)(9686003)(26005)(38070700005)(41300700001)(52536014)(71200400001)(44832011)(2906002)(66476007)(186003)(8676002)(6506007)(6916009)(316002)(66556008)(76116006)(66446008)(66946007)(64756008)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?uwtarlAdj5DThncc2asvnw2TYvh4QEuYufHYeYXuP3hAsNL+p/ww+owzKcx8?=
 =?us-ascii?Q?5J9i6K8RrW+/FCOPtORZ7lw8PS6skCy9A8jqmeKEFNZtMdKXCGS8LmVrlANr?=
 =?us-ascii?Q?fXoTYAoWiZUgntVV6/BpJXLgikkHebfpzPXXi25JDhnM6ist+H5BsQdmBDKO?=
 =?us-ascii?Q?rQ5QSlVqdKYgO0dkuOdHZwvR+q8mJhRGEpEazxnpZ02AJOJ/jRdVettybnqh?=
 =?us-ascii?Q?FDaRTswlKcY/QmA0txv8smZecSZ/p8G6MGRIu0L0Oi49p0BvpmqMmXRdspP6?=
 =?us-ascii?Q?OlVyHh5TvpngbVv8N45gKTpf0DY4yEIR2H415+21ZjCNNhqCu0gVWDrvugEE?=
 =?us-ascii?Q?ZdWEGCpK3aVBe+tNuHHOg6NbRDRyMmp+mnInFs6EC50i/qbiM8bXJOnz/2CY?=
 =?us-ascii?Q?IS5XDyKmC8L0m3c7noTFdOgu72a26Jy0ny/xCEF8Cs+p1K0vFtNFf1XBE4Cb?=
 =?us-ascii?Q?XUewPBGjFOsNIa3A4zTJdE4zlYLO5Jmnurk9b6aL2auKW2f3QLM76TjbFwn3?=
 =?us-ascii?Q?4QDU0Z6bw7ZPAXth5ExzBk7rE6wEgxeQaxxInutPHynNJxOSb6iCZWn3hic9?=
 =?us-ascii?Q?ZVru6KwPXze3ZU7jep3eadyB4CGEw47JJG4vnU43MTdxyXFSuaWS8Awil4DS?=
 =?us-ascii?Q?4Z8GwvSEywGUILOA7Zq/CPBPhE4tsoOs7cV1xWdmY06aGwTn9zrIjIFh/ef0?=
 =?us-ascii?Q?0bSHy3UB8Sj7PzQMilXZWkc7X58jmw22G6qb9AxdO8Jvj0LKt4tc9CIUxWjr?=
 =?us-ascii?Q?yqHaxhtpySlKbUXiNDcYoronUZ0EpQLhCruhwjDIURD7NZHHY/PSW4aHJAtQ?=
 =?us-ascii?Q?ktqGWxhcUwGVJqHNx0OUYHYQGYKkI8fS7ujNQ6RCyAgI4WMZUHO1pnyGjKQY?=
 =?us-ascii?Q?sUp4ITHmzpwP9BxxyZaIjThoy56v6zNR7t9ye5Ewd+V96aK3K3GEiCK3fE8M?=
 =?us-ascii?Q?1xORbvcEI0UuehynsGLC4shECTsQG7QdOisVYhC2bKUjg5eiXfymzhlpCeFh?=
 =?us-ascii?Q?vbpddIhXT8b9p5FoNngs6568WyAoAw193x27+tJ4nhw45XxByyHC39eGITM0?=
 =?us-ascii?Q?QWqFz3/riJ88ApOaKS1tRhCo/oFY4vZp7HJknKQqfNIjHD5FOxY5Fsl/WfTo?=
 =?us-ascii?Q?kGEZu+V7to5ypbfpE/rd5ppIE9LkG83N+ZlTVmH5yQkPa0Mk0JA0g1OWDK3E?=
 =?us-ascii?Q?1P0o/nIeiKRPkpVk42TwbQPtV1ypAgLNFAluyAjRvX56L83IBVYbe9/fM83n?=
 =?us-ascii?Q?gyhjM33TtSgcmvY1JHJaKuvHAjv29w/SQizAO5t3626BSUEGJnrPlyq55HEU?=
 =?us-ascii?Q?C0jnwiLybQYYlmq4sp8ydlaoqRiFSkpiTQFocc4fEiJ7IhoqVuCgGLZGRCsC?=
 =?us-ascii?Q?JPxeF2Bi0PZUi3IUXbizHJPoDwzMqEipS7Ajk5dLE8qiqKrFvIxUn6r6zfVm?=
 =?us-ascii?Q?OdtEGuMm91pR4Tfwg3PEqbWktjHYGANQmwGjyyV3Cd66wZMTGDVhF8dkhJ/v?=
 =?us-ascii?Q?Icijb5hex1aM+BXS3n7JVuhJGnYA3a4mwOuRfSEZqz5cGtLT7pteVB7JOBYt?=
 =?us-ascii?Q?6M//8qRQnzWcEpQVKIKmk7yYpqCJgI3xl5n9wQHE?=
Content-Type: multipart/alternative;
	boundary="_000_GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9GV1PR04MB9149eurp_"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9149.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9162200c-4c14-4aa8-d674-08dacd2478b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 07:29:35.3823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ABkXIOpsc3jFekzlfDQcYIBJkgKHuJmDba56gqxAvJiCL7iaPRLHfU/+SSEIj7qqIWN5lzKIgCrVR4fV+nWhZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6902
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 07:29:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58621

--_000_GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9GV1PR04MB9149eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

In my layer I have two older versions of glibc in addition to the 2.35 prov=
ided by kirkstone, and a the global conf for the build directory sets GLIBC=
VERSION to select which one to use.

The problem is that they don't all provide exactly the same thing and that =
older version appear to influence newer versions, causing warnings.
2.27 and 2.31 build libsegfault, but 2.35 doesn't anymore. If I prefer 2.35=
, then I get warnings like:

WARNING: preferred version 2.35 of glibc not available (for item libsegfaul=
t)
WARNING: versions of glibc available: 2.27 2.31+gitAUTOINC+1094741224
WARNING: preferred version 2.35 of nativesdk-glibc not available (for item =
nativesdk-libsegfault)
WARNING: versions of nativesdk-glibc available: 2.27 2.31+gitAUTOINC+109474=
1224

It seems that the unused/older recipe versions are still considered for dep=
endencies somehow, just because they exist in the layer.
I understand that the old glibc versions provide libsegfault and that it ca=
n't be found in the preferred version, but I really don't care about the ot=
her versions as I have not selected them.
I could completely remove the packages from the old versions, but that seem=
s like a brute force hack affecting what the recipes could provide when I s=
elect them.

Is there a clean way to modify/bbappend the recipes to best fix, or at leas=
t suppress such warnings when the recipe versions causing them are not sele=
cted?
Is there a way to do version based dependency declarations to be recipe ver=
sion rather than recipe name specific?

Thanks,

Heinz

--_000_GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9GV1PR04MB9149eurp_
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
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In my layer I have two older versions of glibc in ad=
dition to the 2.35 provided by kirkstone, and a the global conf for the bui=
ld directory sets GLIBCVERSION to select which one to use.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problem is that they don&#8217;t all provide exa=
ctly the same thing and that older version appear to influence newer versio=
ns, causing warnings.<o:p></o:p></p>
<p class=3D"MsoNormal">2.27 and 2.31 build libsegfault, but 2.35 doesn&#821=
7;t anymore. If I prefer 2.35, then I get warnings like:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: preferred version 2.35 of glibc not availab=
le (for item libsegfault)<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: versions of glibc available: 2.27 2.31+gitA=
UTOINC+1094741224
<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: preferred version 2.35 of nativesdk-glibc n=
ot available (for item nativesdk-libsegfault)<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: versions of nativesdk-glibc available: 2.27=
 2.31+gitAUTOINC+1094741224<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It seems that the unused/older recipe versions are s=
till considered for dependencies somehow, just because they exist in the la=
yer.<o:p></o:p></p>
<p class=3D"MsoNormal">I understand that the old glibc versions provide lib=
segfault and that it can&#8217;t be found in the preferred version, but I r=
eally don&#8217;t care about the other versions as I have not selected them=
.<o:p></o:p></p>
<p class=3D"MsoNormal">I could completely remove the packages from the old =
versions, but that seems like a brute force hack affecting what the recipes=
 could provide when I select them.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a clean way to modify/bbappend the recipes =
to best fix, or at least suppress such warnings when the recipe versions ca=
using them are not selected?<o:p></o:p></p>
<p class=3D"MsoNormal">Is there a way to do version based dependency declar=
ations to be recipe version rather than recipe name specific?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Heinz<o:p></o:p></p>
</div>
</body>
</html>

--_000_GV1PR04MB9149717F3BCEDB8BC97EAA928C0C9GV1PR04MB9149eurp_--

