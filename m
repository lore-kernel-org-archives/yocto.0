Return-Path: <l.v.d.beek@student.tue.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86C67C433F5
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 14:40:10 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.99])
 by mx.groups.io with SMTP id smtpd.web08.11730.1639406407549786629
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 06:40:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@student.tue.nl header.s=selector1 header.b=c1FiRcgB;
 spf=pass (domain: student.tue.nl, ip: 40.107.0.99,
 mailfrom: l.v.d.beek@student.tue.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kvV9ymmJ1KsyCFmRpuxF43prTN+3MKXMpWNqV1QhuB++xQHikUssDukUKNd8WyH10o0vq1ukPyvT4n01eldJOxpdOQ5rr05ZeX+6uvssEziDFS66hR4yGD8xDubmEoJuRqud2zKJIwpcdXSPYMCkEEZ2RoqJcZTrQTDH/sgzcNUUv0QCevwtu2PB4akPdCTZHrmWPFePszZ/Le+YObm8nqyScimofFpz5A+J4/RGduDD8nIcslsx8y1AHQFFY5PW8UmnGLfr7b3ToDzpeva1mraZohk2w/k9RCCplU/jC8Esbbl2rDyt7zqh7vNVxYbd5Q8J8oX2IgTodOi6H0fb1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20xOqeoqal54hrv6ZBRpLXdt0Myph2REzZFj+pglBMU=;
 b=HxaUzVumP2+Y/pi3SGkmZraKb+ao0GXCDVWawMmi9YN7fvX9yTO7sAQG48pQuOk339wcyb31d62oc2oxtH+EgzTJiTpuxze9PEd4LIsl0X8/iYI0BLhamHQNh1XN/tm1otI3jRs8ETiQYl4e9kMltjLEyetL3eyStaVYappkzItWT1YBgcZAxKO8r6pbQG58X/ycWk3xtLgcFfRvQ/b8Rl8hg+XDMIoiG3BEfczM311u6gEqrEG5M5/lJIp/2VZDORuEZzeN/Zg+Jl0/6c+n4ie/81zy31BOy80/qDFJnZVzKUaz00uOu+DzeDZ7i+chQr/nVDcvJzFda0BBuH+YBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.tue.nl; dmarc=pass action=none
 header.from=student.tue.nl; dkim=pass header.d=student.tue.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.tue.nl;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20xOqeoqal54hrv6ZBRpLXdt0Myph2REzZFj+pglBMU=;
 b=c1FiRcgBONxy9nS8h6snJP7kfRvEa7dV8Axhp4kigUJ0gsnQfUegtmfu7qTHOeGg/ziEaci8wB3hrg2kd3Zlo0riT8W3I37jsfvalG/2EWqXD512QrQADPUXNgefD0n1g6X4uGZJfW/oipCjGElVevtIELCyz1Dh+srfGtbPqtdF39WyRfGfnkwhtSGzK5Abt1YLX3KHVTlv8XPZhP0DzUTK+3FgoXYdyS978k388l1zuldma43HYok4oSPaKpNCDXtlMP6xjZARDjPvuiEv/4RDiiWEgbaFr05tl70iQ/UXm6AfMXfGsQHS4STyZi711nHQXo1p/68OSrXrUewVkg==
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com (2603:10a6:208:1a0::22)
 by AM9PR09MB4529.eurprd09.prod.outlook.com (2603:10a6:20b:283::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Mon, 13 Dec
 2021 14:40:05 +0000
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5]) by AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5%6]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 14:40:05 +0000
From: =?iso-8859-1?Q?Beek=2C_L=E9on_van_de?= <l.v.d.beek@student.tue.nl>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Is it possible to run a read-only fs without IMAGE_FEATURE =
 "read-only-rootfs"
Thread-Topic: Is it possible to run a read-only fs without IMAGE_FEATURE =
 "read-only-rootfs"
Thread-Index: AdfwLr7J66JOCVomR+qhS+TH+dfZ1g==
Date: Mon, 13 Dec 2021 14:40:05 +0000
Message-ID: 
 <AM0PR09MB414814992DC0FEF845E33BB3AC749@AM0PR09MB4148.eurprd09.prod.outlook.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80585052-f7a2-4615-8d22-08d9be4673fd
x-ms-traffictypediagnostic: AM9PR09MB4529:EE_
x-microsoft-antispam-prvs: 
 <AM9PR09MB452967D88D27BAA66ADC8887AC749@AM9PR09MB4529.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gcNJTKpTwlk3N075hhtlNF9xjfcuyR5E/r/6vn3u3mvdO7loLoRMjFAqFn6KapTiE7MSZUxVcueSjav9wJCc/OMBcVs2I3D4cLi4/mw14dWeudHcL4sIo4qFDKBulPqV3yznMCxV2oZj5D0UvMYWqnn93rKrBFZJjA+H9ms0UrT9gsCunB65E2tXmOMl5q5bmWHeOPKB6biJttlrAXjflNNZmsNhmO6F8HrTOba3F72FuMuLJsfU/B7WHLG755Ha/ML4oXAD0/CqJONMbIY4EkNxjlHaecQpBLLaMa7jxR2I0iTCa6slXXJvz5HTcYNjJYHWuhlJfHh7VLtUPL0kIWCyxbnZhcBpGC6hlLefd1tZKE0CYHPMFt/8WC23lijiSMu47Ldj5fO9G3MX30T7R3aRLMmWDpv9QjDIQVHcHaPX4d4c0BfgaRvNqJZijGD+vWGWxnLAi44IB1BM5LXEIv27yLc+l3pDHpY1jN6idKnOzZBkRNjhpUzv3Tm+WrZfnDRMmQZA753zdC6jH+VwJC13I3z/rp8wVVmLxHZZ4+Tv2z1Nzm2waixDKI8fno4Zpw5FJIhCkZcMxTILfOml3dPm+dosllhxj9e8/X9ASDwGYHXsfWxHjN0qgwD9j9BZyVVKFYNi+RlBjIBN50nsYFN2of+MfPygfXO8wiOMy0sf+gNaCpeVyVoJp3x6+SvNMbn7smBALpAzu0GRGiD/dQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR09MB4148.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(9686003)(786003)(6916009)(7696005)(71200400001)(52536014)(316002)(186003)(83380400001)(26005)(6506007)(508600001)(64756008)(66556008)(66446008)(4744005)(76116006)(66946007)(66476007)(122000001)(38100700002)(8676002)(8936002)(66574015)(55016003)(86362001)(33656002)(38070700005)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?X8bhp5AiwDbl/n4S/zTD9HLkc5BJUQ6mOdUO7yOC3SjVL+xSv2XyPLgOXc?=
 =?iso-8859-1?Q?XWw0Z1DDaswq0aW/cOrkN4NAdTz0aBDu5yQ19lEBovtqvkI1l8MX3mKMKY?=
 =?iso-8859-1?Q?ihw5TIlgfBsX7HhKRqKzDY6cnhpx2YhFe55P6/jvJ2VM5uJKONK8g/d8cA?=
 =?iso-8859-1?Q?MVCWAiEUzYxn4EqSIrfKV/utciYxDDIQen6G7sqNTRAASdny/YDuQTwWv+?=
 =?iso-8859-1?Q?4kWzA0vkTZnDSHMRmKdPR5X0SxZxXg9PVGou+BGnabUWsvKrDg5qQamc/Q?=
 =?iso-8859-1?Q?BvhtE3Z19eIZksHAOYpKdelbAThYqSn2BGNEyPw6UEReOEMXh1RZVVPx2q?=
 =?iso-8859-1?Q?Pv6DYhwUL9tACUDsrelTGjfkBuR9RNY2dFvXENOw4TR2qBXiWv9GRazyEa?=
 =?iso-8859-1?Q?VKGXnCokN7pAoTGNDqYDOtMPxEjKZ7b++rNDg5uvHdoVIFGq50iFx5jTCv?=
 =?iso-8859-1?Q?hnJ9OdJrCRqTfNswBE5ApABINKbIO9U7tJXyX/lBVRZnuWQ0pBus7Llvip?=
 =?iso-8859-1?Q?R9SPlRgoeRV93KHlyUcSTMEzVoRvWY8LckMvzgVczInZgIgzW1NOgu1PX0?=
 =?iso-8859-1?Q?bOQ+RgOA+4b3097WazrYJd6zZVRhrztugoK40xQa58mkWfPhltjeRknGxO?=
 =?iso-8859-1?Q?+HEYGdq5KFKTxPhcO4Uk7hbfE9sFpKDf8bBGYvvzec8sBArB2/rQ2XO+lB?=
 =?iso-8859-1?Q?oRYHTDxvypt69ofs+N6aPKmjYxGkkUORsT/eYKDxF9MtyT9643l8aSwz2T?=
 =?iso-8859-1?Q?7IXkvcT71nbolTCgH4OaL0y7wlDeoLN1b/LofDsdlInt0mU0h3/SdVvNcd?=
 =?iso-8859-1?Q?o2eJFbnTQZ9BVbw09L5J6Mx2ANDLqxncD2OdTH4MDXV/fX3TOu4WkvUaHo?=
 =?iso-8859-1?Q?IgypkNsVrs82E2C8RKpaxJE4iHTBXUE9KVmdaaNDVsE717osWs2j/8Yavg?=
 =?iso-8859-1?Q?H4xXAfpDUTxxcqnaa+J1XcljsFy9h4wjezXXqySzVqNB1Csxue5H4GQzg+?=
 =?iso-8859-1?Q?FJdMQ+gCvONwDclBify5hmEQtZwn7lLz+FG3OA5FWqnIiPCxTevagYV0v+?=
 =?iso-8859-1?Q?Ue7w6Dr+jnkL86Od4VlU4VaZMpR4c9tsjkF/M+Z8D+FjueBsfqi8HH5ww9?=
 =?iso-8859-1?Q?n7i1SMQUVkW/htn2z29HnGj7xJN5D2KB/ZxvJUDSDQ2RCsTFb4f9uD68PM?=
 =?iso-8859-1?Q?a70OF3qXdhUnISH98ELJLZt/In4cI2qwAkP4kwWLrSdSIoQQaotvE/AoiH?=
 =?iso-8859-1?Q?DB1ZPf2qdW73I3+CclbuEtlNXuBefC8lYt4k8jLnoRUJ6+NP2qG6C3Lf2A?=
 =?iso-8859-1?Q?zlALqA1J/7vGN3DbWDXdYO+lgbHlAvL3UZ+9AZPlLuQ6NlJubj/mPzKVYy?=
 =?iso-8859-1?Q?PK+R8IQJ3g+pKH01ZM0OBlT9nf3ouqLzWEIR6wSpTgF/Zx5hKfmvYEzspO?=
 =?iso-8859-1?Q?PP/dDh+k/OKpg02SX5kmZLF6NpA9Y2bCQ8n7L+TQ0fCtB4C0GBPIayYu5k?=
 =?iso-8859-1?Q?5e1RGkgBczOEpvt5vJocphgTwAhpV/gY38bimQlY9mIpNWS8Uu3a81/akv?=
 =?iso-8859-1?Q?Ai37jQGN/9cHzW1DmbZseJyObLwwHnuRDm7JMk/YxFzd5ImZX+qSGwTHQw?=
 =?iso-8859-1?Q?F9JFyYk/sODM5VOBs3St/hkJQMjxAIKz0+0vqSNpx+McIApqje5vz8VOpZ?=
 =?iso-8859-1?Q?tvik+HQIRJXlfDVf80UOvdaEGe3Vb9jP8iI4C9gPmw9DZ009Ndf3+eC9nH?=
 =?iso-8859-1?Q?RIGg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB414814992DC0FEF845E33BB3AC749AM0PR09MB4148eurp_"
MIME-Version: 1.0
X-OriginatorOrg: student.tue.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR09MB4148.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 80585052-f7a2-4615-8d22-08d9be4673fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 14:40:05.1834
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cc7df247-60ce-4a0f-9d75-704cf60efc64
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 nnSQOckfVy/l2XH2cxgaxuxjdxuv1HV4kVI7/olX4v0OzliLOb4TlioOX4/lzzsy2C6E8s8/VWTHv6Uwj3HLyfZd4XQN0gkGNJzWLzwtn0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR09MB4529
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 14:40:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55558

--_000_AM0PR09MB414814992DC0FEF845E33BB3AC749AM0PR09MB4148eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

Currently I have created an image which upon boot mounts my rootfs as reado=
nly in an overlay with my data partition. I set out to change the FS type o=
f my rootfs to something that is actuall read-only like squashfs, however I=
 am getting a kernel panic whenever I boot saying:

"Not syncing: vfs: Unable to mount root fs on unknown-blick(179,2)"

The steps I took to convert to a read-only rootfs:

  *   Change -fstype in .wks file to squashfs
  *   Changed IMAGE_FSTYPE=3D "squashfs wic.bz2", in local.conf, however I =
do not believe this is necessary actually

Are there steps I am missing? I believe that IMAGE_FEATURE =3D "read-only-r=
ootfs" should not be necessary as I am mounting the rootfs in an overlay be=
fore starting /sbin/init , but I might be wrong.

Kind regards,

L=E9on van de Beek

--_000_AM0PR09MB414814992DC0FEF845E33BB3AC749AM0PR09MB4148eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1120997966;
	mso-list-type:hybrid;
	mso-list-template-ids:-1798819598 982430998 68354051 68354053 68354049 683=
54051 68354053 68354049 68354051 68354053;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
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
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Currently I have created an ima=
ge which upon boot mounts my rootfs as readonly in an overlay with my data =
partition. I set out to change the FS type of my rootfs to something that i=
s actuall read-only like squashfs, however
 I am getting a kernel panic whenever I boot saying:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Helvetica&quot;,sans-serif;color:#333333;background:white"><o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Helvetica&quot;,sans-serif;color:#333333;background:white">&#8=
220;Not syncing: vfs: Unable to mount root fs on unknown-blick(179,2)&#8221=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The steps I took to convert to =
a read-only rootfs:<o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Change -fstype in .wks file to squashfs<o:p></o:=
p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-l=
ist:l0 level1 lfo1"><span lang=3D"EN-US">Changed IMAGE_FSTYPE=3D &#8220;squ=
ashfs wic.bz2&#8221;, in local.conf, however I do not believe this is neces=
sary actually<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Are there steps I am missing? I=
 believe that IMAGE_FEATURE =3D &quot;read-only-rootfs&quot; should not be =
necessary as I am mounting the rootfs in an overlay before starting /sbin/i=
nit , but I might be wrong.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">L=E9on van de Beek<o:p></o:p></=
span></p>
</div>
</body>
</html>

--_000_AM0PR09MB414814992DC0FEF845E33BB3AC749AM0PR09MB4148eurp_--

