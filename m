Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.92.66.37])
 by mx.groups.io with SMTP id smtpd.web12.5333.1587219844847718010
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Apr 2020 07:24:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=GJes38RX;
 spf=pass (domain: outlook.com, ip: 40.92.66.37, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LqBLc1/Ejt41SNI7xcfdvntEV/Fn5i4aD1uJeTbn9e3v//SyGfstMiivR6j5ziIwxiZVk3IonOpSWQ2289Uo2XqSgqcvE2KTYpEbOGffW8+sR5cgYtvNScdaykNmkcsUaByX/EikhGBLFbkAER01tH9ELOc19ZsxMXR4APTS1lLf4rFf9HlSLYNyqlW0PF+BpS2/6OpwNQ71b/mfkEzxHNe0WZL0n5bLvw67/YvHhif4uK0jqKNLJR4uUG5Irme4T5lCfWiAwxqBqxqqAO5hzm1bLwIpiGmn37TlgqA9x8+p5Bkl+LJ2A+Q6U+i0zzoVfq9920HuZsAy0pw/7Uh9yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUxC9XBnKSd6inlmqdcP0Bk3e8UJ1TgIyA3L8VVe0pM=;
 b=oTkNFIbK/AecS23RYos3hSgezPKQSJr74Z7Xme4uHVOTL3vptWOUybcI8ja8YD9TMP2HjorMW/xVoXFLojsQyxZCoNT54WyVYplZR9ZmJ+61+ZKBaNZI/CCO/txRSZmQzb16l4szu5sI2bf1xLWYKAC/IRhiJ7bGEsHlbigTukq0t/XQzrTDo4x6EN+oWTG+KcLV0gbbzaFh1cptat0gwT11LTyCq92SmF6UOMuAG9dV/mqiTcVT8nvdiWd1rllMBCjRC6kpVWk9POuyWQz7xyB2kC/fNQnWmclEfjv8qkL2f/DzzamR+eC4OH56ZEfO5nGn6nBONPr9WUaGVnXLrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUxC9XBnKSd6inlmqdcP0Bk3e8UJ1TgIyA3L8VVe0pM=;
 b=GJes38RXMMLA/KzCC08+1Rt+dvNjG/ByacPs+KDp7sexofBR97JEp/M64faVkJTSR4d27ihS4hCmeK2e8LqYg21CAvFkrldfjyyDK77ePI8BdlSuywW1vOWOL5+oaXnocBfjc7zTwltUYWcd5DysgD++WnhNVYGj/Y/QcxOuV70KoQWdM2f7F3VhFi+FujedPzZQKZagYwHHtYUjT67MBDgsNnLDb6x5Mkog2GCELgxysLPtouvgnI+eTQIF7K2Vh//f2VH/QBMe0YdXzyZ2Z4XD28WR3NIhdea/eAtF9zz5q9q8BvJgMJNpL+Ts9I1phwOEZeXfCWJ49TgwLdwffg==
Received: from DB5EUR01FT036.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e1a::4e) by
 DB5EUR01HT228.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e1a::298)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Sat, 18 Apr
 2020 14:24:02 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 (2a01:111:e400:7e1a::4d) by DB5EUR01FT036.mail.protection.outlook.com
 (2a01:111:e400:7e1a::315) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Sat, 18 Apr 2020 14:24:02 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:8D32DAA48D358262E6F2D44171B8E384BD290DF18A116D4D0B18B636A9AE6B2C;UpperCasedChecksum:F29EB568C26DD8BCA2744853B4AF28DED4874E47405EA592C69A96D776AA1B36;SizeAsReceived:7955;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::60a2:74c9:b5ed:8c39]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::60a2:74c9:b5ed:8c39%6]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 14:24:02 +0000
Subject: Re: [yocto] bootsrap
To: yocto@lists.yoctoproject.org
References: <SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60@SG2PR04MB4041.apcprd04.prod.outlook.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <VI1PR05MB42867E969AD0D26DCC1C87F4A8D60@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 18 Apr 2020 16:23:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <SG2PR04MB4041AB14C1C18F8FEEEBF62FFBD60@SG2PR04MB4041.apcprd04.prod.outlook.com>
X-ClientProxiedBy: AM7PR04CA0003.eurprd04.prod.outlook.com
 (2603:10a6:20b:110::13) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <c6c5a5d3-4edc-fe5f-38af-8623bd3a72b5@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.150.46.56) by AM7PR04CA0003.eurprd04.prod.outlook.com (2603:10a6:20b:110::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend Transport; Sat, 18 Apr 2020 14:24:00 +0000
X-Microsoft-Original-Message-ID: <c6c5a5d3-4edc-fe5f-38af-8623bd3a72b5@outlook.com>
X-TMN: [LwzCQhTz+0+p5ZhG5Zg6wKasg8IckmjU]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 304c1b41-6672-42f5-a859-08d7e3a42385
X-MS-TrafficTypeDiagnostic: DB5EUR01HT228:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JBNsIbSgf5hjBDFM05RrSiJ3BRN1AnUiNONRN6kfA3e+0aDoxzHvJtN1Z8qci0JXnXF5uu6MrN1iGdxSHaGsUY0IuHuCKLptRttlqdegmcMBoG8clBZt7he19yL1T61Qji5A/FRGX7I8VfiXC/D2mENGgsxs+b1cErZEX1QYlmHkATdmr8y5fSAQXD8hC3tEVtoZUeYERuwATg9rW2bovkaWiVX5wEmi0UN1gN6Q84eFR5A8byecEBOam/eHDE5d
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB4286.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	RRnHFKC4x+DrY2rINpKWaBtTkaiWvei7Gg/Knd5Cc6Bi5TWkNXoL2gs6QoiwfgZWq3MribUuRGNaiitbkSEfnooK4ADe/ujP99rpwSgEgxeUfSQR1v0a2QAzhV7of2f9Djs0C4UtOTFExTHHF/S6mg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 304c1b41-6672-42f5-a859-08d7e3a42385
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2020 14:24:02.3528
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT228
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I guess=20
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#new=
-recipe-post-installation-scripts=20
is what you looking for.

Best
Konrad

On 18.04.20 16:16, Rakesh Kumar wrote:
> Hi all,
>=20
>=20
> Can anyone give me any guidance in creating recipe for any application=
=20
> which is having bootstrap.Here i am installing my application in /var=20
> directory and this application is having bootstrap that needs to execute=
=
=20
> after creating rootfs.Here is the steps which i am following.
>=20
>=20
> do_install() {
>  =A0 =A0 =A0 =A0 install -m 0755 -d =A0${D}/var/
>=20
>  =A0 =A0 =A0 =A0 cp -rf ${S}/=A0 ${D}/var
> }
>=20
> do_install_append() {
>=20
>  =A0cd=A0 ${D}/var/my_app/
>  =A0./bootstrap
>=20
> }
> ::DISCLAIMER::
> ------------------------------------------------------------------------
> The contents of this e-mail and any attachment(s) are confidential and=
=20
> intended for the named recipient(s) only. E-mail transmission is not=20
> guaranteed to be secure or error-free as information could be=20
> intercepted, corrupted, lost, destroyed, arrive late or incomplete, or=
=20
> may contain viruses in transmission. The e mail and its contents (with=
=20
> or without referred errors) shall therefore not attach any liability on=
=20
> the originator or HCL or its affiliates. Views or opinions, if any,=20
> presented in this email are solely those of the author and may not=20
> necessarily reflect the views or opinions of HCL or its affiliates. Any=
=20
> form of reproduction, dissemination, copying, disclosure, modification,=
=20
> distribution and / or publication of this message without the prior=20
> written consent of authorized representative of HCL is strictly=20
> prohibited. If you have received this email in error please delete it=20
> and notify the sender immediately. Before opening any email and/or=20
> attachments, please check them for viruses and other defects.
> ------------------------------------------------------------------------
>=20
>=20
>=20
