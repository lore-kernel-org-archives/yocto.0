Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A689D111A7
	for <webhook@archiver.kernel.org>; Wed, 26 Nov 2025 21:35:02 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.17])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4998.1764192898396428627
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Nov 2025 13:34:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=hPaTNqd1;
 spf=pass (domain: siemens.com, ip: 40.107.159.17, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mt6acxX3MG7PfCKb+9ubSIGP4YmHElPIpUeqP9MR1Fo9usr+TVfmVq0cWyGpQMA9JL4Wj71GlgitZi8rnKHJRPheas/+KQCgRltXrBWfSb/MRQ9CAQ4Lw020maXNxC4MbtE6IiF7GJj/2S6Ba/At1zd1hgmxcR+okZ5W8ehRV6J/ZC63FNOnTaoeImCkeA7fScjT+Zx0rOgg7tCMEt2B6UEJ23Dkr96l7ZqeLol/m8dGh5VYvuczeZBSSaFukRrUTTvzQsS4ASbkXZ2PdBMDpHFX2/GGBpRDQR1VJkY8pRsTFcrlhAA7W9d0QY5d3HP9fevgfOx7rCY2mMxyw4N3dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//H3OJoqu2EyLy+ou+tolssVdaDluHlpIa+xQNuFLdo=;
 b=xQ7fxH9kUpqTquffZ+NRj8OM47pqesNQBf6TtntJe6x0eGl+BPFrQ7ky4qtr9msM74/l2Qr6aQ8gC5xsSxUhXzrzGiMk93qUyYkPdtYHf4el+Iepw8eVt9UYKWwm4XMBsOxpvBkteJGs27EUxY77P3bRoXLwO4n51FeSMY0ZUO+XVKV14koj768bgbrKkFMMgcq6kTSHRDlT80eiojjzYa1Atw0fLf546COl4N7RzjVJ39kg6mJtD7uwREBdqaM1hAsUFkb00M121vZjZ0oNs7MpEAp8tENKtilWVIk5vrKwfILxTsRvy2G7Cg4qoYKiLZ4uidZ2Sovv+wb46gVoDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//H3OJoqu2EyLy+ou+tolssVdaDluHlpIa+xQNuFLdo=;
 b=hPaTNqd1ykWLl7VzB/iB4q7Uuq6C8+QHewErPwsTEJkmE4/vPjpVDnUpqa9ct175q/e+8ea145LeDd8zbMZl0Jgc/njh+XwzJI3OgEEwMvnIw7BsybhEibHVjwam+hCls7/wczK4UHc8g6+haSk4iz8+tp+zzwV86MMknqbSiboVIgvlnh3XgNHJTa140a6rLMwzO1vD9jqt38DAn4ORzXnh6OXjz7buqOCbwTySO2o0ILix0T/n8+ASBfY65Ik4cLLfLMtoE+wTvvZgKJn9zDIydPsFZI/U2WAxDfMWp4qUSAqXkdv23lWGwsPP6iKTPzgPvU6UAVzcrzmiKtYJ3A==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by PAVPR10MB7539.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:2f6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 21:34:53 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 21:34:53 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: RE: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.3.rc2)
Thread-Topic: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.rc2)
Thread-Index: AQHcXxnixzwctgl970CKe+hBEclVUbUFeiFw
Date: Wed, 26 Nov 2025 21:34:53 +0000
Message-ID: 
 <AS1PR10MB5697978355462EEDB28E6A9FFDDEA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com>
In-Reply-To: 
 <0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=94e1fb5b-2b97-4292-b079-77f2aa146f27;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-11-26T21:32:29Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|PAVPR10MB7539:EE_
x-ms-office365-filtering-correlation-id: 4b5bd16f-2a19-46cf-61fb-08de2d33a2e3
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?FTBVgSjsgQxrj52Vv5X/8nemt56Khf+gR3Yb5emdpcyV3m7CqwAaYEOpPTo7?=
 =?us-ascii?Q?+67XDT2OIFvyMP9ENPfSm0MnxF4ro1a/gbl6JKMfHm7mC0Qiv/970HCM/jSf?=
 =?us-ascii?Q?Qf1Q3L8iHEQkYTjf6Xprfuu2e2s9X7p9FvXsoIMbQp4KTXJdyYkKqShPEcNc?=
 =?us-ascii?Q?IWKPXHh9m5s+IwI82dKYkeRORmrpwxnG62u/TKjVEPQ3Gg3CnbUEGu4cy5bZ?=
 =?us-ascii?Q?VqLMUZbpTLSYIHrnnQbW39HLu7UUA9kF50SMjSMD0chwKh6zkuUoVcYu63R4?=
 =?us-ascii?Q?6okK7Hn4xahEdOgRSHWQWtluOPqr5Di99Qe3mREdXJ5YyNl6ZIgpEqovo75/?=
 =?us-ascii?Q?1bDqRidqio3RzPaeIeHH46ymN0Q5f5FaJhwL4RCD6olm9vYIscr18ynStVem?=
 =?us-ascii?Q?TjFwJpbbbGOJCfgMkSh29zpNfve8RfqJfgWS5N57VmbJ6uFGt3ZLHVcKc2W9?=
 =?us-ascii?Q?SHs31WNDl4KCcGhskI2NAGXaxQMe8X6sSGWNtnqs2HuXLEPrrAiNpHrYmLo6?=
 =?us-ascii?Q?DTH9Xnq5cEM0C3vtbRQNQ/nCHOUhSizMgxuM4OtVxjkFXytyT94iYDHh6/IS?=
 =?us-ascii?Q?gCg9uu8KRFGFTuWem9ZRN9fx+A5rrSnYwP6dWnX+KH639A8zPYrMFHfPDvDG?=
 =?us-ascii?Q?75bx1iTFqUuGtt/m78nOcW1aVsMa+0Eg9bjICUcKDwjL8FwRlEG0ajL0R0M8?=
 =?us-ascii?Q?TpEmYU2e3HOoY2JSl+cCsHcUgFoWWIODeMR8tMWSduCCWDJwZszS//wruPAj?=
 =?us-ascii?Q?uLO6ZotJGlj5tPdxlzRaF+i+V4jtiKFPk+2OzuZqMjwWZvQ4upNNBO25KZlc?=
 =?us-ascii?Q?Krx2d9WRPfhUa3LBG7d4nwHY+wItQsIG4e0uRWD5isjswLLguZVSZQFtq6/7?=
 =?us-ascii?Q?0B0chhvXXmYeRu9Vq9Ge8cCp6ih7JHq6a8qtQxkbpYrExOXr4//uoovFs2hQ?=
 =?us-ascii?Q?75PMD8YUtTJ/JM3NpzOI4I+1zLduXTXBiE7Ld68U8ck0iGGV+1GGhnXzC/Io?=
 =?us-ascii?Q?rU5p83B5qgzn7PM2Jl0HKK4qbum51gkGzVBW9Xw+LF7WtCREd7/dtPPNuzS6?=
 =?us-ascii?Q?b+nElXwpk4yGaFf6M7LpE8aUKcaMtgmd09x8EvILglvgalsUWRJxxbVVMRWH?=
 =?us-ascii?Q?xqzgxrHa4b/14RchwNtyn/udBOuwni7KnnCClws0W76qP0pZxke1r7aU0Hxr?=
 =?us-ascii?Q?2zz4QQaaxfwIEl7TAKFGOaHiKvlr2+jA45RZQx8oyTWXx6uTeA6KxswUYg5D?=
 =?us-ascii?Q?AdNg+c53bAn39mUkxRwdQIkt7qWCtT+dJjuvLx6Ia/ANI+uF/5jo4CxND7RI?=
 =?us-ascii?Q?he9EkTYxu5ah7KzImMyvZALN6XRgUmUw9ut771WhE4rNwCiq+EwP5Wb8eeyn?=
 =?us-ascii?Q?SCJg/VxgcjDIgD6vo5GJWqnFwRWWBmGpMW8usRC2DcJdccfJs6qjH9PiBtzz?=
 =?us-ascii?Q?yXBnq6Vaumrfwn5Cr60Ysq4Hgt0y15MZLh9OgjHHZs7aUZ4qdHKHU9NLkyip?=
 =?us-ascii?Q?8KYHhThDwiA4GlZkjBP9M1cNLQS++Ql+2oKv?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?tCAZ1kNgAcDb+xsI8MEXy7oavS/Kc5RxEtr0p6oZRKElH5CMRgbz4KrP+7UV?=
 =?us-ascii?Q?9iO5gqwFMuC8l25HVJuzJYcjfu2AbyRH/wDmK9JR2i0u3GBQ++Aewa2iVVIA?=
 =?us-ascii?Q?RMPFyKidoZuAsrXic7tEbXhSHcwojC5c9wMQTPzJbms2wkVQCvPavqG1wB2E?=
 =?us-ascii?Q?JdpfVpAK0ActPnF+y30S8bt7l1ytdF1MSBOJfoRbgLhxUiJ0NOzQaXMFPW6F?=
 =?us-ascii?Q?mKxo5FjI7iXXthbmf5si4rq6TBe/2C9le/h84ZauPPGD/fA0gWSQSXRuKkEQ?=
 =?us-ascii?Q?HCT7dQc2Q9D/Aqn6B/+24THGp9PzvztRngXBfx4PN235XoqOa43fozLSDlnU?=
 =?us-ascii?Q?Q4QDlY7WU7QB4ADa5xZMKauTD++gtb5h3oEH69AgLy3HMmDSqpX57fkxdy+g?=
 =?us-ascii?Q?4ZaJPze/Rc332zSe7nTAs0mrVIgqwXPJfkD0ESeAaQpTWB5NQpE7pSeQN5M1?=
 =?us-ascii?Q?lrye0lSXj4z7t9D+1yP26nsLfri5L6ULPkxhvWHAnRHUwrs970jrIBfauvVF?=
 =?us-ascii?Q?cM+W9rAn2Ty6ruT/WhS2J2Kc4xN1lRSMJzuu/LeOp0s0NAnGSG4iaxminfQ3?=
 =?us-ascii?Q?PcYESFinfLKiP3WUo4CKUkddqoEdexdqy6nUygNANQ8oM/KWcl/oCbkPJWJZ?=
 =?us-ascii?Q?zM8Xz8o0ucvWBzC3Ck2Y4Dr/bGRirNmhVPg9YJRKynLd7fo5i5kR61iQQpSQ?=
 =?us-ascii?Q?m7GihX/N9wFm+Ti+VpolQXUa0GDEJo5ps/WFV746b1IYkULco29iqJHUvtR8?=
 =?us-ascii?Q?ZgVQnU6NIdoc0//+a36oAXv+i+Pb0cCdJ/YuydXI1rgNKwxMiye9NMJi4mop?=
 =?us-ascii?Q?OOnLq7fEedw44PzQnTa5HTKj0w6VaXljQXs0a777Aa2S7PWcnNmnDfcL6cib?=
 =?us-ascii?Q?FSnBTBpZl1vjCsc3lk6dq+5tyvTrBHtiFJ+l3WcP7gVEzlM2IXiqkUZeE+Ex?=
 =?us-ascii?Q?wd/YSXHVKhMKe8Rm+b78yddq+yMqOfUqZTcMZDwiGOMWGefePML7X145Lvkg?=
 =?us-ascii?Q?/uee0eKU+t9D2r2XS9z5czuEcE5i8r9iw5N19wqvMzlvryJwxs8L250vBY7J?=
 =?us-ascii?Q?gF/ibzqYs6viJlLrc5bldvRea3LRphY1B6CtdUOsQpV2gW4g5hb1ChavpBAP?=
 =?us-ascii?Q?Vm7JYGOHtZqVsxQt6CXGi8fWvB+xXoi+jugq0b3azrwGX2HD4u8NzKBmqF4G?=
 =?us-ascii?Q?810RpBOaZjWinSu5Hnns/535+kBJ0mLIofwWT6/+60w9gkMpqCBwUv2D1PZX?=
 =?us-ascii?Q?aE6Z7uJMUI0D9DRG+qwfHVHn+DoJq1bICnIoqesi4Bk5y6Rsp7Crvl1yMdHw?=
 =?us-ascii?Q?eShUYhbjjWSRDMzokr1psEvTyBPwoBf/jk2h5hCsHNdMN7lX2pIsJkXEfwDj?=
 =?us-ascii?Q?ghUD/yvSPw7aKGAnguFBHTJ/RURHWT8QSjzGjnOjqJ27co4hAUjbICGWmdNL?=
 =?us-ascii?Q?c2djlaHlXNHoYFqyRZKDnBU3LtibcUY6/52uv810Yq/qxPeSlzP8ehvAKrej?=
 =?us-ascii?Q?QmgsUyIL9hJ3tlUAfzTAbNArWLV6lLMvYZRz45aNz7tz1vVSXSxwLixCduJe?=
 =?us-ascii?Q?azrJrTxFmy9DYk7qS4ttwfzfmCAdKZiVtP4QZNCK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b5bd16f-2a19-46cf-61fb-08de2d33a2e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 21:34:53.2236
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vzu9FnSD7oRg6QKYCh198GJr3e5YHZqvNMNOYH16rCjTlIRJ86kCuXM7CXZoo0AvfpgTKvULv2JjkdHlxizY0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR10MB7539
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 21:35:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66073

>     Build hash information:
>=20
>     bitbake: 6ee4df8ab58e0175b43106d8a6cbac1f6ab8d022

This bitbake commit is on branch 2.16, however Whinlatter should be on bran=
ch 2.14.
So these two are in conflict:
* https://wiki.yoctoproject.org/wiki/Releases
* https://git.openembedded.org/openembedded-core/commit/?h=3Dwhinlatter&id=
=3D8519978592483bb096ed5192fff7af6c887b799e

Peter

