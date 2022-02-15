Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9830EC433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Feb 2022 17:01:44 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (NAM02-BN1-obe.outbound.protection.outlook.com [40.107.212.136])
 by mx.groups.io with SMTP id smtpd.web10.12193.1644944503269875264
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 09:01:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=VLlEB6kl;
 spf=pass (domain: sakuraus.com, ip: 40.107.212.136,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BHJPSvaQyT6fE/IhIPJ+WG7Mk0gPC5Ysjs+G4damNP2HHTpqVhCo0RsTsQKs5UvLMSKKahkakRGqK5t8FjBYrXCZGchUTPMOQNNlhG2LgQqUlmCUY3jzWA9W4sPV3gUq0rZo4DKkwzXWz7S9V4Uids4CCPfli5rb0WXDPtc4TwpOSh+bGgqJ/PacCviqAKlPc2nY6+D5bdwlB+Quu/cSL+VZofdNPbj2YZXvOloe9er5f7UpF9PpwFcGMmk4pKmRGn6wLSberdvPO+oOLI4Qa4t6mffK34dgOrBAPYPsyavoYLqDQfYpmqWEJ9LYzeBwC5a9YkYERXe6VdV12hUuUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rIkA5zGaMcqwwZQnJdiPVNReipHb+yyV+W1/7rsjaF8=;
 b=Ojyb3LvPOKhKd4o6Ya76KbfOZtY14nSSH2fAby0vM0sztMrnhaRwbFXwIdonnZnrFs5dWqjRIjNILNtRxGuKaEPAjWKEq0YHgngIm/sdQB6Xy1eEGFGLCuJoe+RIy/hBZ5N1WHb8apTxcl09ZhSFXTBZGhIjOJLONLLjXgMSSb8hGdo4CgakZiz3CBGIPRgppTcZeCFzF+6Lq1QV7bQZpIKlvdw7qO9Stg21NmFJnVYIDvnjgYceDJ8Jduy3Zrh5/3j8y2ZLLIFzeeHLmbFduK1emx3tYXsD6dodBcaKWqBHjkCNJjDcb7vDwiLrgvqPhBOqD9uUFlQItr08rS6xKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rIkA5zGaMcqwwZQnJdiPVNReipHb+yyV+W1/7rsjaF8=;
 b=VLlEB6klSCEzCWau1HG0mVMH2gNaU8IOGgMCjAiKagtNhOdCflo9coqyAKrJHTIWQOGXEl3n0G0UZT1qYgG9yhS0Ig683Zr5Yoo6edbHK+RszW7u0BvYevUzFsrHAM5PVWqoiCagURq3wuuIafiyimoaU9mWpNGeQTgPn9Y4bTA=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by SN7PR15MB4239.namprd15.prod.outlook.com (2603:10b6:806:101::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.19; Tue, 15 Feb
 2022 17:01:40 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::40d5:ec0b:3bc:b70e]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::40d5:ec0b:3bc:b70e%4]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 17:01:39 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Best laptop for compiling Yocto
Thread-Topic: Best laptop for compiling Yocto
Thread-Index: AdgijUkToJZ4n7ekSD2r8e6+uX2Wig==
Date: Tue, 15 Feb 2022 17:01:39 +0000
Message-ID: 
 <PH0PR15MB505518D9D5C9F71862514966CB349@PH0PR15MB5055.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dc8d9cf-7581-45c3-759c-08d9f0a4d58d
x-ms-traffictypediagnostic: SN7PR15MB4239:EE_
x-microsoft-antispam-prvs: 
 <SN7PR15MB42398D4D81BDCFA00063EF20CB349@SN7PR15MB4239.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 X0UmdXy9nmpwntNkJLEBcmbgnkypxnMCuMJPnZBrcbfV4Q/PcGnjXhBw03VsdxkebTLNkYdOQNQKL/G0DQuXE4I5t2WicfRSYolx7GawLdBCbLhPpfZzaUIv1Ynl1Mnn1rI+31GQIB5mvGcIZJW5M9BaB9jeWn29Ql6QXW9Q/pY0WTw/I4MhnQwU77XL23KqLsmF4MveoilBh2c0A4/gSS/yrezvOWfVU0UL7LSLvhCaLzo45BLQjFKVdLUrAkJ12z8FUz9+kxMDm6S4Sz1EekcFYiFfBXy5zIlrj1VW9bMCZ2rmovbNbCU8MZIDbeNS2+qWCXm+tdznJ6uvpMHFEeYT1VAHe+gBUfC0DLBO93uOjldBmM08ut4goGoTzCCfeqSOLVkTXgk5wMVm0u9LLBNd99NjAwyZa6E27V2gkLIOQpYYtE0Q9nJ+Yj2X6cf7SUZj0SOnujZXt8gaBnSLghdwMdEpSWsEyDLyBqqiOuNnO3IPw2x7H+Nq/+5hmpKS+MTXx0mdzcNfmBXAuOXdqGyioBNE4PcKP8SE3ilD1zsw4gUj4RhH+3c/yZEgn16zxSp33Wk2pLumXcWJ4A+I8UfMMT5DI+P/beRIuSqGe3hTWOxNvf0y7QbqXoE4N19gwdZD6QeIUNykB6xFuJ1XP8z1pI3U6R6B8hm6hMSwQq6VWkeQKmJT3xlV3jUQ6BWv14ZzOP3SGlAu6fhkzem/PA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6916009)(122000001)(33656002)(71200400001)(8936002)(7696005)(38100700002)(186003)(26005)(316002)(38070700005)(9326002)(5660300002)(558084003)(2906002)(6506007)(9686003)(66556008)(508600001)(52536014)(76116006)(83380400001)(66476007)(66446008)(64756008)(55016003)(8676002)(66946007)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Xy0YLwxfLaiGCAwFgsbyC5UBSmjtcixxSD+jzlNnLct0bDZNea1jw2CLv7CW?=
 =?us-ascii?Q?HTHHRr9ziPEvuYGgi41megL1a/ltOBgm0Mt1r7OA/a04pSWzalLkjTXHCUpL?=
 =?us-ascii?Q?pgOrVHP5fZhJcRjFb2ExntOuLTSUtJDmN1nGakeHVXHsh+UgYuBegADv7h7W?=
 =?us-ascii?Q?AJA6Mpml/alFJ2eiGSmKYwvES1h3bFdlSPhorhnO/DUF8L6kQYx/YKIW4gLG?=
 =?us-ascii?Q?QWvTr5v2+CXhGzrzg6iPktFpgWq6+/aKlnwMqoWvuQUuqsXRxAASk/ctyUzw?=
 =?us-ascii?Q?NT6IG/FRwcfBQ44+sUTuHRJiz3J4tlU64/F38LxXC+/YCHEt5tAYXmczHot7?=
 =?us-ascii?Q?3A64EWyUoa48VwBS2ONgRk5tUr6ImTFspQLBvOHJi6WvEsOSJkefZOzmxlOV?=
 =?us-ascii?Q?9TN52QZ++o1UbAP475fvKNaBq6MGDAvMUgRKzR65rfb3BNlIQw9NofgZ3Y22?=
 =?us-ascii?Q?FRHuG+s9pfZTz4MbnkpMfSavoC8WSaFZjRalij9UTgc7EZrvmthi2MOTv41j?=
 =?us-ascii?Q?UjFfSx0LYxnQO1GxNaha3gt6Cb4aAUSwmNRQRaO3VzwMrA4n19OPmbNjPZ/q?=
 =?us-ascii?Q?mqU8N5CP5ho51xRTPISPj03ROvw9HJqMUlvE1WZAEqPqfehwMXkH7J4xV9Ad?=
 =?us-ascii?Q?1Zvt3PRs0oUePQhHLlDkvgzinOg+dQEPcDfNSm4x1JQ7aS1hFy/pZeIvDvks?=
 =?us-ascii?Q?MuYpJhe7fk4MSyGCKEI+q02xxztpATfpKNyB21ABDAlZ/yOyhEPdQLckK8FQ?=
 =?us-ascii?Q?dVRm++Ee0GQBrcAsZY5wXsWpZ8q7uDpI+6AeMsPJO54BQqWiDcgdmdmym5Er?=
 =?us-ascii?Q?w5hy8rmDVor4xxgazUWvQetlBmMgcJcZzdzLAGXuXdmUPknyyDb1of/sTBXY?=
 =?us-ascii?Q?qqnokMUbjG9qSYFPgEjQYeZdbhLqK3bUfzzor9zp2L+7DdQ+6EynV8bXluFO?=
 =?us-ascii?Q?QDA8KWGCahL0NGmtjsy2jDYUCZuTc/nuKNB6ivNLDMMVOk563TSxrYhYwbaz?=
 =?us-ascii?Q?8md0MjWWlc6jywOCy+XxKsyC6joXS3+ftfOhzrNSpiTF/s4RGbVXVk2qkC+c?=
 =?us-ascii?Q?uYKbYM3ZsrZaNIQxsBb2k+N9xm/ne8st/qJgAOEgJv3IR9IHIpxzsuU8qx3C?=
 =?us-ascii?Q?FMWXHMD48bcURXHNLWdf4J68UGsCzSIcuX3IYZ8tEiIG3ZwL2Rqwuq1lV0Cw?=
 =?us-ascii?Q?c8KCafpxLiklJOucmvI3ScNOZ/meHsIbH6jo9WVZSBt/TWmaLURKdbbaoHaM?=
 =?us-ascii?Q?U27hZBoh8Itdc3Uhj+iBiU1Pr5wOtq6Uaupn50GhzPRDpCGt8EGyNqmep0qs?=
 =?us-ascii?Q?0LQb1rjArpg/5zQVxNs8YWnbjHM/cRzzeXG30fKTnSlh/Jxqcp3fKEWy/WDh?=
 =?us-ascii?Q?wGZbyVIPdYY8O4GkmpJ+wZ0Bp+YZmGs4pDxTvw1jY+4DRrUhswmAZK6j04Xu?=
 =?us-ascii?Q?LJbRF61GRiii1BPJ+NONaVn4+vdnNhwHwrFe85F0kCvW08KFwBzqtYegJr0j?=
 =?us-ascii?Q?iPmhVA7V87vXmqZ/KBadX7wUeu1apEH+kkFsXA5d3dHrxndq6OOT95l5oE8W?=
 =?us-ascii?Q?pngQvT2opgELSfh/lN9Jkt8z0zxI+y+6DCG2kGzgyh2vbsenkhpyaU/582Id?=
 =?us-ascii?Q?pA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB505518D9D5C9F71862514966CB349PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6dc8d9cf-7581-45c3-759c-08d9f0a4d58d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 17:01:39.6194
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 8nzgXgd/KfvFdQkhjss195ctb17gt5H8ipRIKzkF176ew2+7UqiORxqlidDKUMHoMtZcCrA+HZzYYlAQJ1RFeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR15MB4239
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Feb 2022 17:01:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56202

--_000_PH0PR15MB505518D9D5C9F71862514966CB349PH0PR15MB5055namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,
I have a System 76 Serval laptop that I have been using when building Yocto=
. It seems to be dying and they are on back order now, so not available for=
 replacement. I was wondering what recommendations others would have for a =
good laptop to use for building Yocto?

Regards,
Greg

--_000_PH0PR15MB505518D9D5C9F71862514966CB349PH0PR15MB5055namp_
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
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal">I have a System 76 Serval laptop that I have been us=
ing when building Yocto. It seems to be dying and they are on back order no=
w, so not available for replacement. I was wondering what recommendations o=
thers would have for a good laptop
 to use for building Yocto?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Greg<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH0PR15MB505518D9D5C9F71862514966CB349PH0PR15MB5055namp_--

