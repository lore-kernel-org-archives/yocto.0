Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549AEC433F5
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 09:14:16 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.88])
 by mx.groups.io with SMTP id smtpd.web11.6959.1643879647947159245
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 01:14:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=RIhE1Rce;
 spf=pass (domain: optimeas.de, ip: 40.107.1.88,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTdrijT4MdWj6pF9iLzfv0LPmhn4iH4hqfHtd/29A/a0Kj4UvsN1di63u1f3Q4MqX3DHGpNmuhTzsbrgAViyOXqAzjRYg/WifGTA+JZin3AOVWNhmkHQiprowAZrqP4f7a8Rwnmwm0BRMAhM8K8BynL0g0ucyF5NdHunYH13Dq9KQG4axc1YkvkCJkgLbOkiLy9JuOXyu2I9eYU2RyLzH29hqT6kk6jEPiCbRzXdtyDNBtXDv6OjYhQYWYnXNPINili/0Q9T5kae9pQzctEK/eQRLIvWvuNaguwr65rgF/79xcDtHwCCTpWu87sKAsxWaVcDzrFjItwwGA4Btbj9cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cuY7I+2t9wuwB55uu+dalHXyPn3gatyqqGd3zaNm1IU=;
 b=gcGMVzRHLNG2i2V5YGhJfCiGpW4/hEPD3zMD7YosBuI/x+ZXfJCDMVNn7tlzZ/5lAgbdu6CBZ4wN3dtnHdqtnmoTaMyQ0BaYJWbCwUfLAGZ7w53ZjJUEjDl45ONPsxzsK5Dz82d8ABTqLroFPDFknAeFsI+mUzWW5XIgOoimYPmSVj8uJ3v0zCoDKyY0mH8wRT47R/YN2Ho7+aIClFw1A0LouKAE1O7A3Rs6hgzF+xmzl2rzWx/IF2F/0P2gv90uy+c5/yfCGveOrVoJkYaN2fpsfN61ktpzk0ar5tSIitHyjIeoYGHqKZLWg07PN8u/jK0oXhlTnmP0uh+1MXSM7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cuY7I+2t9wuwB55uu+dalHXyPn3gatyqqGd3zaNm1IU=;
 b=RIhE1Rce9a5a2S/Y+In0fkT5F5RlVHmEz8QDlUltFQrunmqWdgC866FRw1aS+HVpcd/RDr7D+UN5NtArBMU51rbRJeAv8SxHSOrQ/3o8qjU3JMfxq7s76KOAN4bV98gssPsSaSHnM54FqAEQwRp6erq0KCiQINtgqmcPSZ2btN0=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM6PR10MB2838.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:a2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 3 Feb
 2022 09:14:03 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 09:14:02 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "f_l_k@t-online.de" <f_l_k@t-online.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] wget - The certificate has not yet been activated
Thread-Topic: [yocto] wget - The certificate has not yet been activated
Thread-Index: AdgYxwNdHSJPIT2USkGyBs4Gv/iaGwAFXzWAAABgv3A=
Date: Thu, 3 Feb 2022 09:14:02 +0000
Message-ID: 
 <AM0PR10MB31070F8A753D696AB838415F99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB3107FA2B22E2F87535D4896C99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <X01Q6R.S8ABK0BAEBQW2@t-online.de>
In-Reply-To: <X01Q6R.S8ABK0BAEBQW2@t-online.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db66d424-d041-443a-d44a-08d9e6f5856c
x-ms-traffictypediagnostic: AM6PR10MB2838:EE_
x-microsoft-antispam-prvs: 
 <AM6PR10MB28382A43B9FE7D28EA35624D99289@AM6PR10MB2838.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 q2eXBMLT+0+Vfa2cMJaLuX0FVtW/+RsZovvvVMa1LR9w6TxjjWVkLx8YjXLoIg1QtFCUDyENO23+DkvG7UhmO9cP43TY5qIhkdPC/nDvazEqpi8CiVSE9mVfaNX/xa1gp+Yq7ZocBGO7nZ91SWjcaWqgKDBuhvhxamLRs5d+DRekINB9Wrrra+elXUKHhZtS6Etd5jBltcBbKIUMsu9mO8QgtFJpNNr8NKusqe302Cv2cG3RCIgI8cQvo/j4WejFpe8nEVc8UEkiNLDjsRPTeZgBIJaUOASc/VFoXEgvdgIQx6yI4jTL6MNSZv89MGj4tkdCDUlBbc+Ll1QDZOnpLR6MO6dag8SSGDPoKLf4y3P+ECOyoGDaZRRpLAjK5xr5b7We7CpB45Ojl+8OkPXxXnSb3D1VVhRqc7jl4KG2iscxN16BBEcDC+rn7+auO3wcMeBtHQoYEQK+Ih49qiIPwuRI8oTXjOSTAH6BNAjdHueWTY6GuRPXIigm9pGzGht5TAanA/Ar74Zg5TTMkdys0q9GttjCxFrYuMsD+KEq7eRLUBihMsO50BgCqu+2aSUe7q8MTieOBQVyb0cV4mVu5hfj90VgECdntwq5EYkYsEf7DhUEcrRDM/A4L6z1HP98bVFMGhs9gToJ04wHaXRmcNm3JKj1Zle10xN5mxJq3QPSyY4+4GXWQKqO67Ru66ePur9ZT1uCikm16icKzh6cBQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(366004)(346002)(396003)(376002)(39830400003)(8936002)(38100700002)(33656002)(558084003)(38070700005)(76116006)(71200400001)(122000001)(508600001)(55016003)(66446008)(66556008)(86362001)(66476007)(64756008)(7696005)(9686003)(5660300002)(66946007)(4326008)(52536014)(6506007)(19627235002)(8676002)(316002)(2906002)(44832011)(186003)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?2B144XMkLw+y6GmYg2MjOHJdaRJ9XTiNrP0HPsLtXGVfM5Cl2ixCQsgHXl91?=
 =?us-ascii?Q?ePlicYv2pz2fQwgpcJ7PCA1sG3ydHyKvWcrQJumPrzZnE6pmiT6fux4Mk4yx?=
 =?us-ascii?Q?wRTBEYOCe41znaj+N/PxW8QzNQ8OkaY7QX9NwwKUF6oePtARyivZahqUWLl1?=
 =?us-ascii?Q?9XNV+A/1jp7+YeR8CJKWAFS+PRJruyXJj/+7QGuUIbU5EZRkkPQkP2UuhtES?=
 =?us-ascii?Q?MKJFVcJAyLhoqGOETCbPXGBOI446C/B60Vl9P1SYfcXnGzoryumOWVAppoua?=
 =?us-ascii?Q?l8q2A8FFNKgu8VmSdtKgjIwjZ1YGosYXIAxYkegshRC7hxEM56/0MWYJrXx6?=
 =?us-ascii?Q?lv1W3BI2zPj9M8J2/qmgMFGgKSxDgHrIKbg+tvRwgrTUImLe5wrMT9eq4SXN?=
 =?us-ascii?Q?rop+oP2ym8Cm7O3VwSfWVYXmxe0pt7k1LA1lD07uJm6Lbxs5YvZwjmRu2x4S?=
 =?us-ascii?Q?UIVMioXpKR0KdBs7kQ/FCf/07mPqrigK4sAzR3faJKbJY5Ri0G0W64ODIUjW?=
 =?us-ascii?Q?tF6HQK/MrG7B653q4U2+Neb7uoAaHkgpYVFN25MC2R6DtPkyyMLXkj2Sim/f?=
 =?us-ascii?Q?4OdgDVawp30khcbQ1jsfAXlvJf1b5ENZ1UuicueIpbAkmJRmwNsNfZqrVMhu?=
 =?us-ascii?Q?VCnMRI4DMqwnirVCs5CrqDGKbAX9Nxopo26poYlxqNSF5cCn5jydkybLqKbP?=
 =?us-ascii?Q?QyOdpDj85ctFb65fhD7H2e1OYhrNVf7m9lbBEz5c7qkrojllvzplBaLaBzLQ?=
 =?us-ascii?Q?h6O0smnGiaDKJgYHPfbr3pbYhvVTLmLLwDzsMruu4dtiIbsgTIxgK4gyraCi?=
 =?us-ascii?Q?CsUXe1W+Hz8EGM9CNQIkXNBaysQrLnSJjhvp2uz17ZETYeNHo0GKAEYDSPgQ?=
 =?us-ascii?Q?uXJgHAbhy/p2nUqX7fmPtndfRQyww/a3D1Kvmf6Db0tWUx/sIeBB6t+O9VBK?=
 =?us-ascii?Q?ovUbIc7mMkSO6hZmNHa2LxW/BazzBSHVS6LK8TRAe+Tl0QStC6FZEsbB2T93?=
 =?us-ascii?Q?mX1qOfGdvKIsxjR71yXjYjASjIZYWAcd5GXSz/qxmZD/skxsg6re+bXziYn0?=
 =?us-ascii?Q?69wPqNXOl4xsU6YYVR7Oc6KeHmEUINC8NNm4kTkX7B+mnPBjk+J1smKVZlVw?=
 =?us-ascii?Q?830x4QjKunaEqVH1a1sAVIZLQfej0IIX9hX7cy8yLaE0iwx+x4wJO4KY+ev0?=
 =?us-ascii?Q?fpjF03f/p/TghrDFrf3hHi6oGKsRoC9PKvb46SUQlR+l5WOIM8Hn5iPghxg9?=
 =?us-ascii?Q?oMHfElTnaqgoHt/5aRuhXNMjozsX5AH4enXzLPmxAg0HF+CaQltzlFL5qisM?=
 =?us-ascii?Q?lJ9mfo4D/Ot4a2f19DRsbYRwjaEZoqFl2OkvE4FeeUhYcEV2gSwGHB4M5Ka2?=
 =?us-ascii?Q?Dap86g7FdcRRiujudHiEd9gBuqlXM0yacAmSWPGDEJSTdGour7LvaUSUA7a8?=
 =?us-ascii?Q?0G5Q/A/tQLlp55d0rRlgLhIYzwXlY3e7UkagpyaRkzJb/nCa7KQL+sxN0tBB?=
 =?us-ascii?Q?aaZetmEAIL/ty3ShFuvzzQLTo6VLX6XP4G31gh0LkHAmtkDlaaQCtGJB14uK?=
 =?us-ascii?Q?6ekHftNK/q6I9hQenBUWt7rijBwYSv04uHV50mqaVl7x9SgiiYsb5J0OXB2Z?=
 =?us-ascii?Q?CmgmAN1k71LbFwISs+pkjO9QLdpeUZIryy+z8VwuyJGlbsDpZxLh5huWqUxp?=
 =?us-ascii?Q?GnJJa+FDQS9Hr11CK6P1XkOvzU2vAb814GhDTBDp97v7JZpONnhWUfwRbSvP?=
 =?us-ascii?Q?8pxgYmH9GQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB31070F8A753D696AB838415F99289AM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 db66d424-d041-443a-d44a-08d9e6f5856c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 09:14:02.9045
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 S/6v4vJJh5+opmfEviVTJ73ma8p53DCo6NWoF+NSSsogPcFimaup5SYLN1HzMiCMjQ47UfCixdZsEPoJv54gBVWupesFXEUn9ZGkPhuWCe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR10MB2838
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 09:14:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56052

--_000_AM0PR10MB31070F8A753D696AB838415F99289AM0PR10MB3107EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,


  *   check if busybox is built with this option

Thank you fort he tip, but I am using the real wget (not from busybox):

wget --version
GNU Wget 1.21.2 built on linux-gnueabi.

-cares +digest -gpgme +https +ipv6 -iri +large-file -metalink +nls
+ntlm +opie -psl +ssl/gnutls


Best regards,
Matthias Klein

--_000_AM0PR10MB31070F8A753D696AB838415F99289AM0PR10MB3107EURP_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
	{mso-list-id:1087386359;
	mso-list-type:hybrid;
	mso-list-template-ids:-554774032 681333926 67567619 67567621 67567617 6756=
7619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Calibri;}
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi,<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1">check if busybox is built with this option<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Thank you=
 fort he tip, but I am using the real wget (not from busybox):<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">wget --ve=
rsion<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">GNU Wget =
1.21.2 built on linux-gnueabi.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">-cares +d=
igest -gpgme +https +ipv6 -iri +large-file -metalink +nls<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">+ntlm +op=
ie -psl +ssl/gnutls<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black;background:white">Best re=
gards,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:black;background:white">Matthia=
s Klein</span>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR10MB31070F8A753D696AB838415F99289AM0PR10MB3107EURP_--

