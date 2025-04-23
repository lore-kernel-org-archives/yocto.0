Return-Path: <sbarthelemy@aldebaran.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35B02C369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 15:33:48 +0000 (UTC)
Received: from PA5P264CU001.outbound.protection.outlook.com (PA5P264CU001.outbound.protection.outlook.com [52.101.167.128])
 by mx.groups.io with SMTP id smtpd.web11.11835.1745422426469723627
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 08:33:46 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: aldebaran.com, ip: 52.101.167.128, mailfrom: sbarthelemy@aldebaran.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WnB8wkdXcEC9RV6RPVujQ/fhh1cq+fJ9CclUdj3jR8AAnx+Qyj5NaOhPvxuKs2+2XgqxuA3ws9+E3gQD6wKJTDlxj5JAlAw1iX84YCjeA26A0k1AWXooVABC21QqBW3lWxUGOaXk66eZIUT7VJKPgvLnP1+fQQBO2R0IQN9VDUAonAIAj9zNtRKBSZWDKm0tQT4l/ZpjAys0DKYf3FtLR/kf58q076vZQyhisXqXBSFRX1TZJ8J58kZRV1DcZryUzCefQPxtYtnLPOFXJYo7ELPkvU9LrVXUguDYn2XBAXOHdpITttjg8ycUKZ1tjTiyKQaEngRuAZL9/BvAOCD5pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=96aSQWIYOU1kpVrfud9qC7frUObTlGluPVBd/SUK7u4=;
 b=K2V1mXOIo7RWkGdprX7kEjwDsxLvFzVsSrz7sAaFhIdC3U1LG1GOEt+Zl7dDuJdxXZrRCHoIh6krEmUOlYu2vCwGdSA3QGXMeCboGBmvFlDR4+cCc+esUPjIOu2KNawSlFMzZbGLb8yEeXlkploBvt0LBRpZdsl3SUp9SW3Q89AnzUZvQ8fksGhywU6tNJxaUA59gN6AXx0xCux7IhFGE3g6RZfofzovG/Ewu+sld3DkYmciLAi+aX/s5O2CE3XlskX54oi8tCN7HL/yUzMA1owrCnkjSOQ7khXCR/FBSpeDtNsqVPKZNF23cUcfa8MGs+B94/O7myRN5hbPZv3j2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aldebaran.com; dmarc=pass action=none
 header.from=aldebaran.com; dkim=pass header.d=aldebaran.com; arc=none
Received: from MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:d::24) by
 PARP264MB4653.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:42e::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.22; Wed, 23 Apr 2025 15:33:43 +0000
Received: from MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d7bf:9ad7:b035:d61c]) by MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d7bf:9ad7:b035:d61c%4]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 15:33:42 +0000
From: Sebastien BARTHELEMY | Aldebaran <sbarthelemy@aldebaran.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] sharing shared-state cache between
 OEBasicHash/OEEquivHash users
Thread-Topic: [yocto] sharing shared-state cache between
 OEBasicHash/OEEquivHash users
Thread-Index: AQHbsC/9ecRAlC7ETUmxaWH/2DrT+bOvhOKAgAHiISk=
Date: Wed, 23 Apr 2025 15:33:42 +0000
Message-ID: 
 <MRZP264MB207203553AC977516869A2C4A1BA2@MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM>
References: 
 <MRZP264MB2072F57ED0D5A64361708F5DA1BF2@MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM>
 <CANNYZj_1qrPzjtLL2QxYWvF0N2HPhzhO-ZC59Uq2tKkGctOf6A@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_1qrPzjtLL2QxYWvF0N2HPhzhO-ZC59Uq2tKkGctOf6A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aldebaran.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MRZP264MB2072:EE_|PARP264MB4653:EE_
x-ms-office365-filtering-correlation-id: 951bcc7f-631a-4342-44d8-08dd827c3aa9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|10070799003|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?/vw0srwunzTrxv/2YhHrW9pxAsXMq/jv7huBYmjVPxs0ZURBaxIU4Hnbjy?=
 =?iso-8859-1?Q?KfMM56UKwd/E6CP2DpC3YKv5LHLUfWDdEWyRb6yqOnHJwFBVyEDbtlcmTl?=
 =?iso-8859-1?Q?bQRNo0pCwWTcFMyXAgutkzqoC9a7NFd5X514Cj6AUVuQaw1iUihSEcfCQ9?=
 =?iso-8859-1?Q?F7ryS1F3CjPMWyt7cofkNqgdWfDfUe9o2+wB9jHlk+BgTTB67CEBy6udU5?=
 =?iso-8859-1?Q?D8XWJib1fBil34D4FHkfR7U+/idQLL5kLugRJwt5+KAtjkoqpGSN5zm4H2?=
 =?iso-8859-1?Q?UmOYjcKe5V31hst5p0fmbQ6gzMF9uwD/nHnkXMAReTSF6+FyLi44z1ZHy2?=
 =?iso-8859-1?Q?GHo+sP/1g7cwxBvoubdkNp/Fi0kg0/B4smAkI6EhTLG9muZm0U3dPvBsQR?=
 =?iso-8859-1?Q?uP8KN0lkUzfSoWD9RhgXHU9ozgyB7g3idDAB6+ZvSWeCrvopTzCeq/qVSs?=
 =?iso-8859-1?Q?yHK4/YUAxRHlnFU+Pi0tIJaGjUKUaMKZTsxSaUTDbXw3TZ6N7A8nHA1P64?=
 =?iso-8859-1?Q?0aL8tKXCWpGxo25ZAyMWM5L4iIJC67GbthCJwi2z2OipvBpMGmQvupRe8+?=
 =?iso-8859-1?Q?ck07BSHsOPyfy0IXKB3AKEJi9XzSJSpAxGmzvblTPUJhLbYN2/uTpPgA9O?=
 =?iso-8859-1?Q?g37renT0iz3sAv31L/igLoqrsCKy9M1lvG1bEHZ++fL7qZC7orVb6gmNhR?=
 =?iso-8859-1?Q?QiEzUYpavtR9V3R7BIgQtkZnOfashZs98HzhooKaJKrHmsppctbdSc/qjr?=
 =?iso-8859-1?Q?3BSKMdy8upSfw9ah1L1JODx9dEml2mJH9ER4Bl3UKXcAY3N5p63aVaXHL4?=
 =?iso-8859-1?Q?3JfVJv+YFm+c9Xz5HtDqACm1NMMATdtoglxoJ6lF84qPJziRqc0IsYoGo6?=
 =?iso-8859-1?Q?aFrMIzRALdejRp0UyPkLlW4Dvkljkl3nrTioz1O0tlfSqko5lxklXjE4VI?=
 =?iso-8859-1?Q?IQpnQcbsqxA38tCP0EfYssoT4wxC+8dGZWDtn7w8PxbhQxMApdIMcr+HU5?=
 =?iso-8859-1?Q?BjV94vETlDh+cF77sRNvF0ABnLthzAbg6cT36TgloT8K7zZAJZNVz8Lh+l?=
 =?iso-8859-1?Q?81lPVApXWGT/cnwv+Bjx5S4UtAkWBoh04Wr7hO6+ZO21zYzctGa5RYfQ7A?=
 =?iso-8859-1?Q?/9Xaj+OgZLBi9Ljos6umy8lN7G2N54k3oPBKjastB3j3sR1NydMTkcLbDk?=
 =?iso-8859-1?Q?VtJQa9XmTioAZTBH5GRnPpg36bNYxvVoWcycWom/kbu8NlgqaTf0yZt88l?=
 =?iso-8859-1?Q?UuffOWBMVw2NR5ZXSROO8s4MkaMvYGKIAP5RyZzU4Dk+gmmI4A4RrHbVxt?=
 =?iso-8859-1?Q?3cOFZC4VwjdBihAx7Y8S+yPhx5PQ09bwCpmpJNpcK6rQ8+21i9WKKuO9/c?=
 =?iso-8859-1?Q?EqC3GCKaTn1FQKnk9j75x95b43bmtZzxEG7z+tRGz1EjnRL1d5z85K7x1z?=
 =?iso-8859-1?Q?nSY9V7Qy1weL6dGuhIyA21AFT0W6gWFfYBhcjRXcowRV5ZZR8nYeIJqWd4?=
 =?iso-8859-1?Q?vnSs9GHjYJD+v9QJceK7bihEkSDZxAg1D9BQ5BWO9EJQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?DgllgcJEG7Ww3dORnqplM8fw3MAwMIKJmY3f8OPEEbiviY8Y+xkh4KIg+v?=
 =?iso-8859-1?Q?SfnQJgaXpyhKrF7igFTi33InuSlxLe1f7e7cetRa75nli7dU2J2Pw1lJg8?=
 =?iso-8859-1?Q?HR3moDYgwTg9AKFYtLU7f0CtTDoLgBb/xl6svPajni/8dwVyapp9V7Pc8D?=
 =?iso-8859-1?Q?62y6pcSC8jL4m6iaUsmTcr1e4EroObPDLCW/l9CPBeWWcA5ktdBFPmfPnt?=
 =?iso-8859-1?Q?LP8yXBXCMUgRyQevdrsEmmbFgYdokxryeyppsyn4ba63Nn0Dq+O3z0JN8w?=
 =?iso-8859-1?Q?anOUYaSxXLWLQW6VYYbxFNBeuw6/OzaHEgHG3wVLWoOVDUkmrNMuhek/CQ?=
 =?iso-8859-1?Q?pe3HexvOuaimCjAjYvoG4SZsds4a9+EzaMhZnHcfGnsEyKk/MVazwqLkI0?=
 =?iso-8859-1?Q?S2Ux5SIuEZJ4iNevQ2abOOYjjB2iH/aSp2dlOtnnU2qOXeMUf5AZXwafnx?=
 =?iso-8859-1?Q?kL2j0CEISQATkZ+oynvISpFtyPfuSBXl7tKJHZJZCjsAxaCK9mSemFV05R?=
 =?iso-8859-1?Q?Ny0iaBpgPxidKKzxCBrHieDfGEVmALPWNeyUxSWYbOlRabWMj6wWGY4SNR?=
 =?iso-8859-1?Q?vhrY7ALUqIUOsS/71qRbnXsxz2wsPb3yyic4+bMd6496vqmVnhZMO4qCkz?=
 =?iso-8859-1?Q?0bfKD9o5lOjF4zw4syGbPZrlCjCCCcJW8FqSNb5YsP5bJJ9G5rqhwyf6KL?=
 =?iso-8859-1?Q?hSfzCuiOODYw4zlFRaRniAw5tGXoP5L7B9qQAEwUYKizbnI5APE9y8oC65?=
 =?iso-8859-1?Q?0V9z3J07lJZSbHh6VubtV8dhIkQ75sI7A0CiGGngK1txuLvGAYmNGA5AfV?=
 =?iso-8859-1?Q?/TRfF3jYPBXgfVOfiqGQ7R0mN3IeTT/t4pGcmmSctnyZF502JY7v+WZY2i?=
 =?iso-8859-1?Q?NB9uZb7TtrNh/4mb7FqGFZqNBXsqTDbEpyCMj1xW5jM+tZ7wCwCUCAhIzz?=
 =?iso-8859-1?Q?JLq3cv1u4MKE3uMrtr5I6oueXEbmNfzL9QNTqtVKj8wdef4LWR85e3Jjb8?=
 =?iso-8859-1?Q?ieabRH8RBzcgZfcvblO9hXAx8MYRt1qijffcU9Io+Ho9momLmdPp73EGck?=
 =?iso-8859-1?Q?Mof+TGu3rBs51jlnD1j/oFSfBnEayOIcSI0ipKlrT0Wntlpqh5YgXRGu/A?=
 =?iso-8859-1?Q?3ftalcE1XlYqcplqyw44mInx3Om+1AFj794bYk3pL1+uadtvhicPdZbZW7?=
 =?iso-8859-1?Q?FKKjnO6oATJb1fFkTXS7DzwRRDgd4ZBMZ2iWk4VmFvhBXKjqHLAeqQud7T?=
 =?iso-8859-1?Q?azAjtz3TCgS8HeEhy8z5Y6dTHa4hU0USVBRYyNNVbNi+Cf0kL10cAezUWJ?=
 =?iso-8859-1?Q?rBiK6KIH7xnmZvFx18KuNKNjrIlGn1cTV0OkqA5IoPJOLOLzUqksYLO2OD?=
 =?iso-8859-1?Q?+w+36rVkwohLJnrbgev0fK4g/gtyn5aOl/bHAsoJyoFruqiAwrLbHvmmo/?=
 =?iso-8859-1?Q?+ePuvwb/uux+nlex3B04qkFn9sOqDO8rObcekRiOwKO9qnEdWLwwPAaRvF?=
 =?iso-8859-1?Q?yl0DX/QNxFzrtqqNm4sXeXNPZVZv7I/zyf+VwnuYQ/597e8TRMPjcIk0VC?=
 =?iso-8859-1?Q?d42px9XpnrC4GKjicFGVN2PvZXgw5mCYciZSfqXOwdulLKoZ7q/YQLttoO?=
 =?iso-8859-1?Q?2WM9NJT8GcJzXlix3/YLhSvf4hptYBRFLFQsmXp9CT+M6UbjdWO9NlNMdC?=
 =?iso-8859-1?Q?hLGusUZf0CoVZH0khSxbaARVfouJOQ0IIKiVE4/I?=
Content-Type: multipart/alternative;
	boundary="_000_MRZP264MB207203553AC977516869A2C4A1BA2MRZP264MB2072FRAP_"
MIME-Version: 1.0
X-OriginatorOrg: aldebaran.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 951bcc7f-631a-4342-44d8-08dd827c3aa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2025 15:33:42.7700
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d82c76c3-c488-42ad-b6b7-cdbcb7613c9f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YAZX9S+dr0aWI/lCUUQgEhYL4sDi07qKE0id9aOX8qgNzvS9JN9xFvgO8IwQwKM9TcLObUGts4n/I8U2lALVefGwz2dKK1n7lO+om69drjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PARP264MB4653
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 15:33:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65235

--_000_MRZP264MB207203553AC977516869A2C4A1BA2MRZP264MB2072FRAP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> I'd suggest you don't do this separate s3 upload via proprietary
> client at all. Rather set up NFS and make trusted builders write to it,

Thank you for the suggestion,  this is more constraining in our case :
some runners are on premises and others not.
But I'll keep it in mind.

> The hash equivalency database has to be accessible to all, otherwise
> machines that don't have it (or use a local, private copy via 'auto'
> setting) will have lots of cache misses and unnecessary, long rebuilds.

In the setup I described, the truster builders use OEBasicHash, so there is=
 no
database to share.

--_000_MRZP264MB207203553AC977516869A2C4A1BA2MRZP264MB2072FRAP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&gt; I'd suggest you don't do this separate s3 upload via proprietary</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&gt; client at all. Rather set up NFS and make trusted builders write to it=
,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
Thank you for the suggestion,&nbsp; this is more constraining in our case :=
<br>
some runners are on premises and others not.<br>
But I'll keep it in mind.&nbsp;<br>
<br>
&gt; The hash equivalency database has to be accessible to all, otherwise</=
div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&gt; machines that don't have it (or use a local, private copy via 'auto'</=
div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&gt; setting) will have lots of cache misses and unnecessary, long rebuilds=
.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
In the setup I described, the truster builders use OEBasicHash, so there is=
 no</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
database to share.</div>
</body>
</html>

--_000_MRZP264MB207203553AC977516869A2C4A1BA2MRZP264MB2072FRAP_--

