Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F7A2C433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 21:23:49 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (NAM04-DM6-obe.outbound.protection.outlook.com [40.107.102.123])
 by mx.groups.io with SMTP id smtpd.web12.129.1658525021770740242
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 14:23:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=CG3ogR9e;
 spf=pass (domain: sakuraus.com, ip: 40.107.102.123,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pw41Rm8VkVU3FpK5miLWaMs4vYvJWzJggfdjUvGfLtPVCh6dC/Hd6mihnpJJGdsNN1wnB3b8BBCoEFcJbGTcC+//6hgYsrWl7pzvYWpSj0vqP+6uxL8XG73TPtwhY59OEB66sw3S5vSZUYtEQCrCELSZ1j/tjpwfxZ5bz3aDIfdNytPo0ynGlIBhDzJbN96ChTjU6NfOxgcu/14Qhy1FMQAVkWuUtBsJmnLTLu+lraOgaWeAM0N1lJjLNTvevq2W6jKzK6kMy6XOIDyrQm8FMaHLutC2kj73cvcREH/b5OlDfSDXTXT0lvl06b8RIqBWCrNKPXDY5d6q31YXDBV/iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=azUJXYo18im1/126fLVciPjQufJlXnE+APoN1RZLCwk=;
 b=By+ssv2bLIdl5lfaQad7jbW8xQVCGIRd2WwRlIOmfI0XnBTKBoj7cm6EdHFQkH/QNsxJIawcWJRUzk1k/EbQsak3Z+5qlooJSPL3H3X83gHLlkDmKzwx2fDKMNnP2sqIk0+2sdp5Uu7rxkqgVDs0uiS5jgXibKNX1TG6tklFPiSGXeXtrObYerOpTMBlrVhSQxa9SAMNi0VBRPpzvdMExv+9T/uyLgP0OFI2PE2ZhVJ85VZnpKjeeyqyyPp8zh5TAO6/BW3St4pnnAEgOiYSDaf71zqAiuEbUpoyv2L+mvFAABeBhfBT7eTamuCyrYEcqcUXcr/arIxMDA+A64bibQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azUJXYo18im1/126fLVciPjQufJlXnE+APoN1RZLCwk=;
 b=CG3ogR9eKBid3FJDJ9Gr66JiaFdcoFA9nSSJ+gQRMpLO6sMaEHfRzXtyouljdaMxxnWnyOvJf+nR/S/7XEFj7qrhoqDW+cOgpfeFX0fZRQvabj8JDdsWhut/+A/4m+uBsTTQIa++fXKeOQObk6i35H3+UvsNqKg178i64T5IPEY=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by MWHPR15MB1374.namprd15.prod.outlook.com (2603:10b6:300:bc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Fri, 22 Jul
 2022 21:23:39 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be%7]) with mapi id 15.20.5458.019; Fri, 22 Jul 2022
 21:23:39 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Adding and using user in more than one recipe
Thread-Topic: Adding and using user in more than one recipe
Thread-Index: AdieD1df1BcSkp4iQdmPgSqjbDpx0A==
Date: Fri, 22 Jul 2022 21:23:39 +0000
Message-ID: 
 <PH0PR15MB5055F60DA7F873193E3AD877CB909@PH0PR15MB5055.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3efefe43-26d9-4a71-dede-08da6c28720a
x-ms-traffictypediagnostic: MWHPR15MB1374:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ux1zzKchey/OxdtgAGrhfEI3NhHDeS2RW4Fvijdb5PTlVMBxWat+kQ43por6uTETwaJCYsBVpXaznzO5H1/iRPykAJvESysacJAMY5AdLcJ0hLmHoLjoJ/py1Z949uR/PZo0JFkVVlG9tQGKiV95tqQkI7oxP0SdbrWJ1TqCKcaXb7yTnTfHqfavfYBW8ltdNq7umD+YaWzcSrBHZbkkfesUlpoXxS3jy/71v+ANkqEydwO/Rmiaw6SHZTgPngm82FTRbGHQGU5/ZCUn34uNHYusOU8gv2t/gmMAEnIAkRzjRQ2TkYuKffMUrw2Rs7jkRp7onDeLxFIfTrz9ENtEhzWnxB1dbAWaD7HslrpPb16AMKPmVE9B6lC3zrpa927m4n9dRL1oJcImYBWI971LndR4YmVD0vxzL6bGmXXyTfAibVpOneLuPFL8MjluBti0nNQG2/W76c2e0B9v3cWZNzPo8IpdSpQzUhrpQUFYNKP57Rnh4FTW9AX+y3ECPBzNwc692zy8maAesCKtxPK8HTu7TVVLOHCuGa2hOJPV8UR/rWIWSBaPbeQ385Ndg9N0COPpKq4xpUCoeAm8Ct38AropBU5+pDXm8DO2Su0Aea1alXR553TUmpEgIWAZnZJaZdEy5T8NJ1tCmVPTbULx9PpFB0g5TlQBKhC0FFdJx17rkfu2v6OehHPH8Sx57xoQGRNyGrh8bqqnJDUFh/EAeFWSuUTJbGCnPsr9iASaPKX6ZbbIY0JN42WDPTX4Nv71n6om1F5bTMKRfkFv047GQnqVS0daWMOa7b1/B11KbBg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(366004)(39840400004)(136003)(66446008)(66556008)(64756008)(33656002)(66946007)(2906002)(5660300002)(41300700001)(4744005)(9686003)(186003)(71200400001)(76116006)(478600001)(66476007)(26005)(6506007)(7696005)(86362001)(8936002)(52536014)(8676002)(38070700005)(38100700002)(316002)(122000001)(55016003)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?cxa7nJUfscnGwns8RdMnr3OkxLgxq12WY34AixhPIAHCBeVBXlVe+QPPUcm7?=
 =?us-ascii?Q?Q3Xq7wF/g87Qxr5nXRxDGuEsUgoqvRhAXYjAumyzTT8WQxITOG54E8Et75PS?=
 =?us-ascii?Q?l1ymgSsXmeRGysVeU52UHeqXnDTORQKolA2DqeMQfS7xGy4jrIE0XVBU/6aE?=
 =?us-ascii?Q?GPWD1fHSv+qvLWu7t+M25M8+MNxnHM03nAjseXc5sXdT9POZGZlXjyuTa+IC?=
 =?us-ascii?Q?KWNWqZC12MTcS1PZtQ58H4VKNAXLYmduPyKYCR/9DGA+IqYLeqfQW2LGipjt?=
 =?us-ascii?Q?5L1mWrmsAPyLiTaCvnfyNEPflMndw84gEcYke1Yt9aA0px0t8rVGt/a6orpz?=
 =?us-ascii?Q?xieHQcIT0w5lzUcPYO7w9CppL784auKbX2ArKVOByPQ1BkHWYLoTEA3waGGQ?=
 =?us-ascii?Q?iHl+uOugFl55RO1Z6VCEn3rzWdtkXZh1S6n1NeidTncRptiKggTc8Q7WYntk?=
 =?us-ascii?Q?XlJ+9itjh0qVeszc5Rs0/J2HSOjZJBGeoBrX02te2YiaQ7EAJ1ZseDJPJC/Z?=
 =?us-ascii?Q?ehsOEt2bV6WYqiZr2zBEkue294kdLh87989SfgMm999OPymbdrgrS5TScyuE?=
 =?us-ascii?Q?svOgHeL0KeLvFgRS39wNaCStTE8jZ+8osoeBDnlj0LAG8rmr+c07wvGshvOv?=
 =?us-ascii?Q?a6nzVRGy1za8tpWvQT8P+/B/2/rbYtjKPeH5YTWtmTy+cakvWmScSuQYWHzA?=
 =?us-ascii?Q?Cg0faQjjlpxT3MhMJhiCQl+iUA8PFFk+FRJxarpr6jaiBIu21d/vWJuO2b/O?=
 =?us-ascii?Q?arOKlM6dn3D2mLYN2M7yvkCltTUQ5lEm9CnIb9Nleht9e5GQfESm9plNkuwz?=
 =?us-ascii?Q?Eygvjy9fvaFtBCUmJWpw0zFXRhGNviKsCpPKYpkAhFg1c8ioMfW76IpJqSGw?=
 =?us-ascii?Q?flgXKmV/m3huivJC6NP61B7jz9Nxiad0l4YsB6hZqgHgIkZJzJKzvZpg9qzb?=
 =?us-ascii?Q?qWVXJxqulc2NvmAS+UNdp4HlXScck21omHtXvoFQJ5ygaCwODf/8YydCBXI+?=
 =?us-ascii?Q?Ome1wsjqMX+w27tnAI+/HnWmo1yO5nPkOylw3dOm0LO9W20MvTJl63EKm9to?=
 =?us-ascii?Q?1wnjdCk7UHilG6e2r8cWWULKIa19DmVTWHk8aEbl1pDfOYuyv/WtVQU1/KOF?=
 =?us-ascii?Q?6evz8zt29CFp26WxS9SIEZXV0hl7g2D8Yd5tAySiNja+x22C03BX7YehI7ln?=
 =?us-ascii?Q?fV9RsSXkqbMyql4QxQ0U71Tn0vlNovRixfI7japmpGIQ+XKsdt+00oBHHFin?=
 =?us-ascii?Q?IuDdpMC4uMss3x/YDce/CWfSnl+RgJJRtX1MsgWbaqIWba34/w0WGk8GC6+G?=
 =?us-ascii?Q?mH231rxy+77CrXL11Pc4ubKo63llLWDSYh36L+E5XTigQ4ID5Oqcdc94p+Mg?=
 =?us-ascii?Q?0aFAdXxuMFmesfnJTCnOqjAa4ItbjbnsheN2ijJIKcsQ7PUkQtDh+AOo37N7?=
 =?us-ascii?Q?Bqk9iMnhHkw6R+0pRs7NIzBLfaVbpRgrRXS3gEtYDPt64/ZISxwm7jQtsGft?=
 =?us-ascii?Q?Tkmyt/r81re4xE/JrrGs6MY/g4hFCRVVQrqBW/UgzVWVwjTU3gwGqy7v4MoS?=
 =?us-ascii?Q?MvanoVbSaA0C/lOu57s3kYAB+6rA94Qe8e/FkFWz?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB5055F60DA7F873193E3AD877CB909PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3efefe43-26d9-4a71-dede-08da6c28720a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 21:23:39.3840
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 /46OwdLOMFHdHwQV9fgHI/+b6jLvfMBzTrI1vQ/Z/vMv/Af537Z4RIezjP4Kqkqn9n3EY87VozEmIoFhL+UGiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1374
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 21:23:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57628

--_000_PH0PR15MB5055F60DA7F873193E3AD877CB909PH0PR15MB5055namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello list,
I'm trying to understand how the extrauser and adduser packages are used an=
d interact in kirkstone.

I need to add a user and I would like to also use this user in another reci=
pe. This had been working in our previous builds using version of Yocto up =
to hardnot. We are in the process of updating to kirkstone and the user stu=
ff has now broken and I am not making any sense out of the documentation.

How do I create a user in one recipe and then use that user in another reci=
pe? Can I even do that, or do I need to create the user in more than one re=
cipe with a hard coded UID, GID?

Regards,
Greg Wilson-LIndberg


--_000_PH0PR15MB5055F60DA7F873193E3AD877CB909PH0PR15MB5055namp_
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
<p class=3D"MsoNormal">Hello list,<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to understand how the extrauser and=
 adduser packages are used and interact in kirkstone.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to add a user and I would like to also use th=
is user in another recipe. This had been working in our previous builds usi=
ng version of Yocto up to hardnot. We are in the process of updating to kir=
kstone and the user stuff has now
 broken and I am not making any sense out of the documentation.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do I create a user in one recipe and then use th=
at user in another recipe? Can I even do that, or do I need to create the u=
ser in more than one recipe with a hard coded UID, GID?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Greg Wilson-LIndberg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH0PR15MB5055F60DA7F873193E3AD877CB909PH0PR15MB5055namp_--

