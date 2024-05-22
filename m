Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1F2C25B78
	for <webhook@archiver.kernel.org>; Wed, 22 May 2024 17:31:36 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.131])
 by mx.groups.io with SMTP id smtpd.web10.748.1716399092545478941
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 May 2024 10:31:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=HBOgjdOM;
 spf=pass (domain: cherry.de, ip: 40.107.15.131, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lhAlBHTg2CPM1lB2+bFgOiPZ62dVS6hM+JgBGnyWcPd1tNx5OkZLPuQnI0wGi07CBVL533yUw+4RdoCUfrxr6eARhDWSPmOL4m/7KcY3kGY0I47U/XuuuVD5gskMPlOWM7LveJKWcJ/7oJbu4CJP6GngBYxI/UVpmc+4t3lHbnHOodLyYh+1DO6LoJ/PcYjYjSfFrGH3xCgfDHVl5tJ4Uxw2o6vked2einkYQTMnhGkLrnYRFrZgkj2uHeSUGigZozQtMwUPc2GnRtRrocfdHupYWcplN8i7vrNh/ZiRyzAKpEwBcQIjC9F5vL/V5rXig9KVH/y3G9cFtultpRrSiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rBTQ6Gwhg4+lZ5oI5ogGZbNkk3l2NbJgkqfPrJCjXw=;
 b=fUXqhs8XQaDlh0OWwj63UCDZaErh1YQPWNURETrveAXLdYbpHmZEdoYmCXEDdztk46cAuAcPM9FOjHf2WQBxNZUN+iORxUrlqDqAGBjhIpawlq29ebUbTWTYutrMfhRU6WPA9zjpXA+yWEgnOKIwJ6sYvii0N4Fhb73DRWgOAeqNvwuVkF8Hzs2BjhoMgolbPUwSJWhVtRVF7AY3BYk/LeLSeDRl4zEgRMvvgKl37NtQ1M6WeKyQSal62FMOqqcJSUyhZZtC6R26gBrUsk6brg/8Imo0cmxG5Cy6hIusHUigls62sDSg8ke2t7GWrAzZ3VOTuebmCNFxgNeo7Pj3Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4rBTQ6Gwhg4+lZ5oI5ogGZbNkk3l2NbJgkqfPrJCjXw=;
 b=HBOgjdOM0sClIlnJWsDFEWwN4CgM7sErSvyt+mi/IT+n7D74a0cMn1DAJI457O4lyQclKVeTeyyT/IOnjJmTO/lS6H7wnzdExS21pLmCBXHYzfrzTPQCh7GYbiEvyalqjDQhma6l6A8E7LDGcTu+IEIIRk4rxVq2MAEwJf7As0o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6589.eurprd04.prod.outlook.com (2603:10a6:803:128::25)
 by AM9PR04MB8505.eurprd04.prod.outlook.com (2603:10a6:20b:40a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 22 May
 2024 17:31:29 +0000
Received: from VE1PR04MB6589.eurprd04.prod.outlook.com
 ([fe80::8476:1b2f:f236:db31]) by VE1PR04MB6589.eurprd04.prod.outlook.com
 ([fe80::8476:1b2f:f236:db31%6]) with mapi id 15.20.7587.030; Wed, 22 May 2024
 17:31:28 +0000
Message-ID: <19f72e82-fb97-4ac8-94ea-76cb9d2faf1f@cherry.de>
Date: Wed, 22 May 2024 19:31:25 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [Basic]: bitbake menuconfig not reflected changes from
 custom defconfig
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
References: <lh9y.1716395494266320027.qJhp@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <lh9y.1716395494266320027.qJhp@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: WA1P291CA0003.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::6) To VE1PR04MB6589.eurprd04.prod.outlook.com
 (2603:10a6:803:128::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6589:EE_|AM9PR04MB8505:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dd8285a-673f-4f6f-cd10-08dc7a85032a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?K4KYQ1FUyzdUKgDPFfafnGysUPfMKwJBBHcI3v7zFy5R8icGxUFExB6rjt8P?=
 =?us-ascii?Q?zGkRzwDnV9WmPcTLdbOZI0ERX/i4pgmlYhwYVQ66Zvnvk1AbdHt6WGowJu+n?=
 =?us-ascii?Q?XpMKnFQOd7czBt7jsuY+6dCUhxl6VEXoAWMpr3Ivs5CFztpIS6Mu8X2SWOYj?=
 =?us-ascii?Q?0BXuy7GarvCnQTqRl1XVqR5Re9NcxBcoK0+rUZURsnkjK/mUehAFPoX84FkX?=
 =?us-ascii?Q?TLLo11bzc3vRxePZrPTLyLfjmD9HIr2EAR1bK0crW3me24TpGSXMRpXQtu6H?=
 =?us-ascii?Q?0xF75G7fzwd8zsn/emmJTXIzQqsQhWrwzj2oRKtxXv16Z9InD1FSldVsm5E2?=
 =?us-ascii?Q?hCKLeq9wRyBMT0hWyjEQNaqqOZ4J/7suxeeNVWYqxCwFGcv2RSku8uJLiX66?=
 =?us-ascii?Q?YUW+8wdz7w321I+w/+fyr2yFwEmGppdOp/OYFzQtc4ocqgkm66HYyP7ZOpT1?=
 =?us-ascii?Q?YO9hJKgAUFwriiwcaNXeLhiBqQJrdixGY86doUUd0l2bawBCQpY2LIn4uuXQ?=
 =?us-ascii?Q?f9GeelUSfxGD1iaBYG3n6g9aQuyosoeJNOx5xyY+L37jRUmkTw5MaMwuvpRZ?=
 =?us-ascii?Q?b8m8w3nE+jAGJ52qiOu37leP+a/WQeZtLGyQhUQxHe9bJphD9WEBsd9CwkZD?=
 =?us-ascii?Q?3DxXZ5D4opBxS9d2I2SGZ3Qu7kmps686BZM2OiinKUooOcEu3eZ3+CMnnDO1?=
 =?us-ascii?Q?A2mvRb6qxrPMj+lBIlS0CLjWO5DAU4IfRoHTwHKktYm8Xdpo7u/zsWoyjimj?=
 =?us-ascii?Q?X2lOhiYuqQ/U9aRPGxgPK+IcvL15CtmccOi46j9jOUCLXjeyfVH7djTVJUvr?=
 =?us-ascii?Q?JYHxz731Q+5lxKPN9SBrxDdWw7pxg1lWKbe6nq33QmflVjVdw/U0gWC2NzWv?=
 =?us-ascii?Q?NajkMSjoLfr3EqUPWVKYekbEGmt4QPT6nWGoqgFydhI/E2WQa7/nz7PwS8xJ?=
 =?us-ascii?Q?R1YnSAp+lZlMZ/q6ykKy/jhocrsXEJ553+6Z0x7n806jRe7oYT83eaBG/+vh?=
 =?us-ascii?Q?p3Gq2Q5TqJUHpnyTCB9ipEMHNjyRMY6VvwOe03eutb1pAMAyh7qqOkEX/oAQ?=
 =?us-ascii?Q?ffUoPOLfZQOgBjdXuhBfrrbpTP13F4X4vBZyDGZHUiWUQS23CHOTltSGqV2i?=
 =?us-ascii?Q?igMjGhQQ2Z9RkClV1hJHs3oeYvGJUE6750GwC6tLsmDOOEAg2HVud9DHu2jT?=
 =?us-ascii?Q?xx9DBHaUBwifn1KkMauqPHSxBVzLhSavH+mfs1QitLGQJValnMmYg5fZdDsR?=
 =?us-ascii?Q?nrNOcn/M5By+hOh0AhyyC9cN3CNl/JKbFL8JRlvKBg=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6589.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?FKKR05wdmYiZL0l0vPiSlexyk+jRNjGQCcdN23F9d9Rwd1PPAoGNEomcTfJM?=
 =?us-ascii?Q?ePxqYWVUN2W9mW5LeIBlfofujMcH0z0ITE5gnZZxKp/ALNtZvZApobbKpi8z?=
 =?us-ascii?Q?Y8z/esJSthGAX8bRdMaYuQYaD+wkQBApUyvoMlFD9pRsmE2QtJX8+OsFk05e?=
 =?us-ascii?Q?gpzT9sdWW2YWrpYwH4ht9T0ZQgOKV//JiTvIi/v4a8f3E3N6A8M8BBPmIp4+?=
 =?us-ascii?Q?+WnLK6pCVBVEPBCyT5ClGKx5YWHfMymXHxicJMo9zVBN9v32Oi5r0F9e6z4o?=
 =?us-ascii?Q?zdkx63BzgXGY+0R1JdGPF5B/iTYju5TYNVgbAMszqWYyDZKpxPb+0cJtMfmC?=
 =?us-ascii?Q?COWdiFL0ExbAIOhtzKwBjOHYZ8I8fAi6zcz2UpnB6fbxT3GEmdr4dwAOoiCP?=
 =?us-ascii?Q?N555qdU/2DWRIJkP3qcVvDSFOjnUlLf8FYVvp1HxQ0hKkH6Gb59bBtNr/kIX?=
 =?us-ascii?Q?Xk87zetVtKuLiLluJnWA8AH8dPMAJxhU8iKmOBm7c66xNTz8S9uqz0FhGnyi?=
 =?us-ascii?Q?wQiyOz1VW23Ich5+H47zQmK1jLKRYAaUaXT1NJRBw+O3g+2TngoCGxz4Qs0b?=
 =?us-ascii?Q?2c6oeLlHnJz0TqhxMnyQzMhCisDvNXEjcTTzVEg2bhCdIfmdadpm/ivkYvpV?=
 =?us-ascii?Q?RSwp56b5d/5J8HF4kSCkVzwFdPDySVFuLyPoNjceZ8QcFwu+q7/95rT1o8pQ?=
 =?us-ascii?Q?Q/clHey+gUNZjR22LMdEjetI4lJwUm3BrNY0yzr9+XN7tHo85jHflzbdF+6p?=
 =?us-ascii?Q?oD9UwSs5rM6y9XqFBRzWwi116onUHiS6YUOl+HT1mpDWqDjKuJ4LyN8KVdnJ?=
 =?us-ascii?Q?gjVqrSTNwCpgAR1I5taKTh5jb/Fz9DUfYAjBRS08sridQDvCj6gnKiR545J8?=
 =?us-ascii?Q?us8C4cgVRPx7YlNTyYxc6AxxDwYo7GWi5YI3jSLU7UzG2r0yM/uwMcuj/m18?=
 =?us-ascii?Q?RUMOVcp/++dKejab2ZHvQLxJ9iWS8Iuvh0ch96Yd87eLIu5l2gklFWhA5xdd?=
 =?us-ascii?Q?XfBoz7EgFwkioa64ZIO0vFcBkdviUWrWHHqFoFeB2Esd6crroEevB/lS25nH?=
 =?us-ascii?Q?9sqd9oVB80+pn+SjaX8bkpfqgT5s9a6JnizaMqaARjc6xfsv4WcYAuu8bU2S?=
 =?us-ascii?Q?z4csbLYbSIyk/dWl5KK4lh2jUDMa60sJnYoNR+LKv6/a/bBa43E8O9O60aii?=
 =?us-ascii?Q?1QHnAoE3ApkvwcPnpDxE6fVDsAUFcP+SI8iTRohuMmuuOE43BNsalFq3imOE?=
 =?us-ascii?Q?7qshnX1iJwkY/DdvzejBEcICdtJk7B4vRCNtluE6+sJohVf4+A2SnbBJD/ze?=
 =?us-ascii?Q?/3coiXqEfvj7DO2jGRuhgVONRgb9ZOUw9nEfd90//R3LhQzRkYrTraedVK/j?=
 =?us-ascii?Q?xXEDJGkI1gcO0JrejIRinBC3M3SjKTwviZHTfpHq+k8jmzcB6fpxLCk2Dvt1?=
 =?us-ascii?Q?4hq2Qr9UkHo1PbYDYOmXpGbnYbjAWcwWnO+InOGgC5ZTTG786cqYb7t52Dnk?=
 =?us-ascii?Q?Vpm3uPTqpn/WxbWawrDd9Fb+3uGv5tYN7dFY5vXozF/GmuF8lN0eTazqahOU?=
 =?us-ascii?Q?xZeSC8w2psEHbjF8o0en+5pRTF11nbVUZ108ZIDeC/NrXFwaepjjyKfRliox?=
 =?us-ascii?Q?mmubj4rvxa4lDORy3cejOCQ=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dd8285a-673f-4f6f-cd10-08dc7a85032a
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6589.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 17:31:28.4550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YmlbxCpWD8Hhdw5Xw++5S3l5cCE71MDxsWCl661B/+CyO9CadYwwIaJXFGHLe+nEtjKe8d6SBsrbvmexkLRnlD6p/TxjzhLz7cqMaW49Wdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8505
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 17:31:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63168

Hi Ashish,

On 5/22/24 6:31 PM, emailaddress.ashish via lists.yoctoproject.org wrote:
> You don't often get email from emailaddress.ashish=3Dgmail.com@lists.yoct=
oproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderId=
entification>
> Hi All ,
>=20
> I am trying basic kernel config change using qemuarm64.
> I have modified the config using bitbake -c menuconfig virtual/kernel & a=
nd copied it to my custom layer
>=20
> After doing an cleansstate when i launch bitbake menuconfig i dont see my=
 changes.
> COMMAND: bitbake -c cleansstate virtual/kernel
> COMMAND: bitbake -c menuconfig virtual/kernel
>=20
> Below is my debug info:
>=20
> vmmachine@testuser:~/yocto-nanbield/meta-test/recipes-kernel$ tree
> bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
> .
> =E2=94=94=E2=94=80=E2=94=80 linux
>      =E2=94=9C=E2=94=80=E2=94=80 linux-yocto
>      =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 testdefconfig

Should be named defconfig.

>      =E2=94=94=E2=94=80=E2=94=80 linux-yocto_%.bbappend
>=20
>=20
> vmmachine@testuser:~/yocto-nanbield/meta-test/recipes-kernel$ cat linux/l=
inux-yocto_%.bbappend
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI +=3D "file://testdefconfig"
>=20

Should be file://defconfig

Try with those changes and report afterwards if it still does not work :)

Cheers,
Quentin

