Return-Path: <patrick.vogelaar@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A993C47DD9
	for <webhook@archiver.kernel.org>; Wed, 27 Mar 2024 09:23:55 +0000 (UTC)
Received: from mx0b-00015a02.pphosted.com (mx0b-00015a02.pphosted.com [205.220.178.250])
 by mx.groups.io with SMTP id smtpd.web11.33013.1711531428845294960
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Mar 2024 02:23:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=WRRnazTB;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.178.250, mailfrom: prvs=281694346d=patrick.vogelaar@belden.com)
Received: from pps.filterd (m0382793.ppops.net [127.0.0.1])
	by mx0b-00015a02.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42R71AR6006815;
	Wed, 27 Mar 2024 05:23:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	from:to:subject:date:message-id:content-type:mime-version; s=
	podpps1; bh=6Bhgqt7g/N+Qlbkws/cQXCcMZzs+QC11n2b2iYoX5yk=; b=WRRn
	azTBJTb0oAhH6P2DF5s68vJuvyS7FSGyt7aWckgpFkB18rV1MP+0wHO70C8tJbT1
	ubUZ+oSX00HTEMwG3aTQWnaWIwYDqi6OEhEjUAcIi77TsKXOxX+mUH+YtohE3zqX
	W8y7UMAQ7aBQrkBRrBTIeQQUUau6dQ81I9wpQolEOcG32jIYtZw4YIPhv3Nilzg9
	5QTmOHYbcFAOFhdZu0Hfr4c+hPeEY8eT3pMA9P3gpAeG5YUKPg0jerXpmto+ZX7y
	N+d2H/mvbL+aG5XAM6I3nZOU0CeTLEVI5eyt8h20gxAUVRTNR3bcM4Q2Z0axiKPj
	gEPjgc3xm5CFmlBIZg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0b-00015a02.pphosted.com (PPS) with ESMTPS id 3x2d0a1nsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Mar 2024 05:23:43 -0400 (EDT)
Received: from PH0PR18MB3973.namprd18.prod.outlook.com (2603:10b6:510:24::18)
 by CO1PR18MB4714.namprd18.prod.outlook.com (2603:10b6:303:e9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 09:23:40 +0000
Received: from PH0PR18MB3973.namprd18.prod.outlook.com
 ([fe80::30de:36d:67:b1e3]) by PH0PR18MB3973.namprd18.prod.outlook.com
 ([fe80::30de:36d:67:b1e3%5]) with mapi id 15.20.7409.023; Wed, 27 Mar 2024
 09:23:40 +0000
From: Patrick Vogelaar <Patrick.Vogelaar@belden.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "denis@denix.org" <denis@denix.org>
Subject: [meta-lts-mixins] maintenance state of kirkstone/kernel
Thread-Topic: [meta-lts-mixins] maintenance state of kirkstone/kernel
Thread-Index: AdqAISm2N/b+fEPrRhS7MF0+3m+KGw==
Date: Wed, 27 Mar 2024 09:23:40 +0000
Message-ID: 
 <PH0PR18MB39732C02F4EFEE20EFD21F01EC342@PH0PR18MB3973.namprd18.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR18MB3973:EE_|CO1PR18MB4714:EE_
x-ms-office365-filtering-correlation-id: 8aded581-3e4a-47d4-8ff9-08dc4e3f9705
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 prnjFVZwLa/bJDV7vOZVDagzk9IluUUQiQRCghP8DqMCSFDqnfbPSzG1Ga/d4tsnRvU4U+ew329D+lYszRshoDyvdKecFFU4fWCCM5RQ6fFPgMRbgWs7d47KwZMTt4qtDDgvkZ7iDrimipkdxaMSYWK0h2yJp9rG9kKWjbk4DfMFLw/xfSd/p+KxT4vYdfK7sMhpi/gCdQcJeVxckSj0RurvLkaziGlgHD8SXyfJS2XSDs7Vas1sNsDPzSaR9cNcrvO8SUWfp4ZBcB0Pq/qmegW7ycbRT6dVKEZ8Sj+KqakYuBxrIhQMlQyxDNxF+6311JDA1Mn030hrBDXA6XyDk+iSY8OiEgDW2FuVMSkp5UjbM4WtadTIXh/Z7YtXgRm688oA9vXnItIxc/t8Mbv9wBYZuuqtzmN736aWLXHSxT/lQmgZsfSoEkO+yWQ1TdcPE23AOr+Ifg1bjMmU/bbH2dgYMiFMeKlKhyQFGMVYT41y1omBAoNYyufGRjXJ4uuDaF3K3+xhfC8fReaB72WoCcnFHOmznGSaPQyZBbmXGoMsE5oYQm+iE9fmpN+/lVkM32djVDw0kN/ov9+e7ZTJ2FgaPaKZgyA7QzyHBcX4n2heO78jWWCorFfwFc+PTU+/KLPVBHUudeBap1u6/5G8RxSuRE/K5QKCm9BkU7P1YMpkikH2WAGnQ9r8Lh3XwUFM1kq/lZlfg6A1H5eWY7LoR5rhEslCMruhmnBmfJqHiHs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR18MB3973.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ZXt3Knnl02lAlBNg5uKZr2EGT788m/qP683PNKw02IZtrBTCVklQrheylQV4?=
 =?us-ascii?Q?nn0baRTvh/8fGpL1NLq57qn1RLb7YjZSrv6gYDdbZ9njXm+KP40yY3DfY0qz?=
 =?us-ascii?Q?nXv4GG2XOvdwNY+CHhmIX9Zon5/FDMQLYlnXI6Cvd/5ia5blW9i2lYXkdzsX?=
 =?us-ascii?Q?4dhiwyWwxMsjiw13qjn7I+I0w7wxGjMWD5OuEDohA005JvXqxqd9+BqxC6jS?=
 =?us-ascii?Q?6pSTvYPqeB28GfiSHVt4OjnJ8hprcv1SUOROwStRLNAhBiuBnAt8Sd/wZg+V?=
 =?us-ascii?Q?XGqmoft4iUxorACGzwHMX78iKZKWyztiPeeG5mYrj07zEBe+EO93S7a2kkKo?=
 =?us-ascii?Q?K64hRJ6qJC9aTlqhOicNVL7hJxYTNLrcadFkisoBukok4OptDqfoQk1EqFvy?=
 =?us-ascii?Q?C1TuFMu4gVgPyXwD3H/JszVF+8zJXa0v1gRF8lmbKesMs/7Mx/NI1LiqC6fK?=
 =?us-ascii?Q?DpCDSJXSlqrfg7RBcLt4WQx3DnDI502AmyVPNAvEreRz/CbcHabXR7uDQ1AB?=
 =?us-ascii?Q?FG8e6uBAlWWmYHQk6xnbtTDxZ3cEmm5DFNYhcvnEalOymbHImnE4AKYc9Kkc?=
 =?us-ascii?Q?bvuxiaPrabU8T/GuiK6qGnvUTGb6OCvtqHdz8ygLmD1PI8tm74UdF8tEZPNB?=
 =?us-ascii?Q?Vzahd7dICTQVwfhjHx1numIPbx/P+1Ztb6pT4MqGrGjMGy2qMrHo6wTUgcGg?=
 =?us-ascii?Q?sSbD38QINJyvL9Hx1qSsVc2Gy22/LARXcPk3FKXhVDyVfNS88gkvwW2J5vzm?=
 =?us-ascii?Q?W4VHxn3YL/DdfKQOrk+5sEX26QNVQGaCOpFTNbAXbVanrafs7PdfB0hQhhq7?=
 =?us-ascii?Q?0WCrD5l1gTsNUzJbWbmqeX4kOzDwBMdyAW4dHe9ky1ayBDrKboetT89QjV73?=
 =?us-ascii?Q?1FGqyncUJI1TTTBT/81OsgLGpjs2gzkfC+XAAtIvf2ap1wdvjoaHtTI+3zGW?=
 =?us-ascii?Q?HV/WuAWbKmNMuRABlujEn9dPF1IlUr5HD508Bd98IsoOvZNJKK1/6zOgh4p7?=
 =?us-ascii?Q?5cTROA2z2pA35ye2fJE1271KBXnviYE0Snv5C1qVWdSzKLS1Mh5JzeBLG7qj?=
 =?us-ascii?Q?xho8qcC9Wo4jLf/V+hoBos892rbO7FwTXk9NVtdKhnAnlAGtzEVDLNnNrazO?=
 =?us-ascii?Q?PD94eL7dPuoV/2Xd/Xpi2Tj1l7HklD1TRijrlbzGCgl+6Hieg8sLHQXSt+p4?=
 =?us-ascii?Q?eAfLKKoiCZ3NpDrIASxTOtVOekhQ0hi7vjhFH8GC6lNqEHuVTXSCKB88ace/?=
 =?us-ascii?Q?2xXSnfrTPlECd/ynJszgvEJbq4LV5klcqa5JxJMs37vGeG4EK31zCIE6xky8?=
 =?us-ascii?Q?WJF9SbU7LMZ7F9fPm/jmbhu4gBZONQCry2/ib5TC1z8A27ICy9rh2mLo2zbc?=
 =?us-ascii?Q?u8i4e9m/ovHkNUEfa6jhYUKMBGozfaVLVprEC5hyXfPm+PTkA/4Fcpd5FooD?=
 =?us-ascii?Q?R63ZkmYZRTZPosh91wHxKFoJ6vbT8p1eaEYHRG2ohYgE3zP9z8AdBlAHqcPY?=
 =?us-ascii?Q?pWuxbSKBJDgstg0w5HjhylHiBQ1IJRdsYCeQ5aJD3yxxGnDyyoFJrhhPdp4f?=
 =?us-ascii?Q?KMMisWpgjDyV/mxjeObbNUGbeWwyz9h6lEja8cO2?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR18MB39732C02F4EFEE20EFD21F01EC342PH0PR18MB3973namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kjBlaJ1c5j+13nv9200gQ75b3d0hqRXufaVP9LAQjWYEW2X1zgWFg+HI0micePPM1IbrhqzUzU6BWf1Q5v5Fakuk2cyXuvx8WGhVYGOllMsA3xl1q9MnSUp13o6ZylBfGd55yYLYoSHtrT/PYmXOuvu3MpnTYZyJkEhj8f2CqxDzGchmYSE0bp1IsUFxVvocarAKiZHHm4iHWL/FeB0Ra/PTMq0XKT13AOtRBbBpcZ2ti2KH8g5RL1DahjRME8ZepLH2EkpVzi5mQX5bOiX2q5o9oJkT5EnMU9xM5w85bCn+yBXdDYeDPNTVeSEAaf+R+BC+PsGHDj+Jcp7QKnaMDzWJtrX24C7XNefsk9+0W30Cjb9Uty2X2kFkqxRP8DXJUF338GlpN92E+KEF+NO1MognIUvKf2+AYBAXFrKIWT9zWAmze8+Y5bTkf5Nh0txsB1TgkuG5MToJoZ/EZD0O+ya/DqEKiqgDJk1T5pyErmWJyFxbtxDrFAaoRE/9YoeXT8IJYIhYwNSpZpnF3Tqh5cBj5qPIwLRuzPsyDv5Pw2WY1e+dtV1bnCqJs5TtZ0NmnZkPXoSPCvxPsy8LCHT32Ct0whnasuM8UeX+JOlrs4y+/Vu7mJkftq5kLdoqESamN7hRIxcHeRJduEgdCpNGDQ==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR18MB3973.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aded581-3e4a-47d4-8ff9-08dc4e3f9705
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 09:23:40.3235
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Od61UG8MuOgJd6tNSeQza3WQnXsT8jbJ9Nx7s2cefXLPAVL1elvMcS00DO985z8AhDLdOMGIFcZ6FFXW0UtV3sQp/KUMFH8hWEkyCGMNr9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR18MB4714
X-Proofpoint-GUID: iswxYzJYPO6v4L3VctYe0ieFFOVAmjTl
X-Proofpoint-ORIG-GUID: iswxYzJYPO6v4L3VctYe0ieFFOVAmjTl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_05,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0 mlxlogscore=956
 suspectscore=0 clxscore=1011 mlxscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403270063
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Mar 2024 09:23:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62850

--_000_PH0PR18MB39732C02F4EFEE20EFD21F01EC342PH0PR18MB3973namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Does anyone know what the maintenance status of kirkstone/kernel in meta-lt=
s-mixins is? It seems a bit outdated.
If wanted I could provide support for kernel 6.6 to kirkstone/kernel.

Best regards
Patrick

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_PH0PR18MB39732C02F4EFEE20EFD21F01EC342PH0PR18MB3973namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone know what the maintenance status of kirk=
stone/kernel in meta-lts-mixins is? It seems a bit outdated.<o:p></o:p></p>
<p class=3D"MsoNormal">If wanted I could provide support for kernel 6.6 to =
kirkstone/kernel.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards<br>
Patrick<o:p></o:p></p>
</div>

<HR>DISCLAIMER:<BR>
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.<BR>
</body>
</html>

--_000_PH0PR18MB39732C02F4EFEE20EFD21F01EC342PH0PR18MB3973namp_--

