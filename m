Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6A6FCDD548
	for <webhook@archiver.kernel.org>; Wed, 18 Sep 2024 15:57:38 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.66])
 by mx.groups.io with SMTP id smtpd.web10.19006.1726675053885210112
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Sep 2024 08:57:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=er0jQVQr;
 spf=pass (domain: cherry.de, ip: 52.101.70.66, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KM6g5n2v+gSiQ7+EX03DfPpo0QvI4Frtd7X888J/KRv2Tm1ssjqxg5+Hl5L2IfSy47tgRCoA1BY75p6Cnd+duheb7eB67jhA63p50s/JkuBwRCgWcnMXbLlK2QUi+26cQlmxdxfcni3o1+BqaIYRwzVhl+2krmPC8TXX9ReEw+ex507CYpDvLgTMJ31wtorO66XMTPQnaqY7kjsTyPOTjrmr8XhvuXyGZm0BIKCiZSxKyHMBV1NuWU78/7/zcOi2Lqbj43zXJ+TsY3Pp2BJH35svHurvnSPRNyaPMg9EYV2c7ge+XQ9+6fsCd5WCN/dQx5M1Mry2ctd4A7lXFSZpFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZqzjkSqKcKNA5LP7rt5rOyFq9TG/fiVamoXTh+sESP8=;
 b=cG4hDVFKLOD5aSSpJgPinFwbZJc91a1elRuvRP5tsWd0//AuYqUm4bIfAmai4Wl7ufJwOPJY0xXDsWUH5NxoTqSr6S0HPjjYbIlAOq20txDUgfa8USWHAfi8z8qrWGE84XU7MCEEtp2b6XbdOKh5yOcJhiu2MPcC4iEjnzP5+2amw/p7hrEr2/TDhOxbEQWzwD1YrQCCbY+J4gEgVV2i8bAeLfetatVYQ/gX6zTIPnePXBdryZpto6c6tiUjQnRJpIAJYBtu23lTTCQapHUfXsmAScV3R/3QjuIuPiTvSH9vV3p/5N0m+a47ok5cmO9qhvYoUD6VA5QOy7Nm2o9/iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZqzjkSqKcKNA5LP7rt5rOyFq9TG/fiVamoXTh+sESP8=;
 b=er0jQVQrf5SytOw+WF1wqxquuJgbSgCNW0jiuYh1Dn2aN4aFNdbqV2xdmiGEk6QzW8pADrkfugdTFdl7o1eecz5dKV0soaq6OGLgGCAt4PkWnTksW95bguVcr4HBZkryF+6Di/+e2gK66wFDUEH2a0GMwBam/Ky895JUj/OxqQM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Wed, 18 Sep
 2024 15:57:29 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7918.024; Wed, 18 Sep 2024
 15:57:29 +0000
Message-ID: <503eb0df-e2b6-4a0e-a78a-de8bc28c8fed@cherry.de>
Date: Wed, 18 Sep 2024 17:57:28 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] BmpTools question
To: yocto@lists.yoctoproject.org, duane@duaneellis.com
References: <PH0PR05MB8478A84A2A8642B365D46045CA622@PH0PR05MB8478.namprd05.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <PH0PR05MB8478A84A2A8642B365D46045CA622@PH0PR05MB8478.namprd05.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR0P281CA0189.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::20) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM7PR04MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cf12570-bdd3-424c-d1ae-08dcd7fa9961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|10070799003|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?rBfqH+Zov5560QwM1lYWPslKQ/BM/dCBltiAWL1XMWOVy/Mhmu+ckL7nDOlx?=
 =?us-ascii?Q?WP/YBWau2XnvnvpJXDIthsStvMEg7knKauLCG+5qeps9manOpOjoqefl1I5v?=
 =?us-ascii?Q?rTjhbwwTgdC95Np1B/PPAxFCNBwjEUwCPq0zalnHB0+7IvGo3CacCYRsWCAy?=
 =?us-ascii?Q?pq5Iaoj9J+IRtmfYGRRsyjDuz6txo8sBSpT5dbj27jX/WTpsgfP7NZhNKh1l?=
 =?us-ascii?Q?3W9ffRutqgUV41M8aF0Vn4sG8U+kOwOiaIaU8/94BCUEBqyZKvt/2vSch0V7?=
 =?us-ascii?Q?zr+U9ZpqSpS092e/ynexkhvnfUSd4UVlJLRB0fOMczoXUZukU9lVqsjrNvfK?=
 =?us-ascii?Q?1TNqQTMBIwSSB82/9av6gUOpRm/VwP+s2qrX8l6Jamnd0VSXtEnhWB4xH8C6?=
 =?us-ascii?Q?5d9Gx+GbY/pOcgdQmFMJJsDp6D2rD2ZzyOr6Uy6WOIfIgeADvOwT1CQaCljz?=
 =?us-ascii?Q?Rtagt5yFOSeZvz16dxOECJ3NpkkUxvBIR4C8veMZSjNS8DfVUr+0hCe94Da4?=
 =?us-ascii?Q?RZ6ORHtU1gXrKqeSQYJaqhjbNUzFydQx8HxqZrDy+D4GX7ZlzBy200380sIM?=
 =?us-ascii?Q?a4SfDoECgr9U3da4B0ecud2qIoWHHGzwfsdJSpmRaNihDJ1+A3+9nduSqKVw?=
 =?us-ascii?Q?sX/JpkIsWeov2atBft5ETbOvhIItD/963MqDeEtc4eY93yUz6RMLxyjP9tLO?=
 =?us-ascii?Q?hScNeyncrUhmJNdaPcj3N+YzmOI9Wi6xopJwbWVv1SHDmCrlCAnDVGnbJlQf?=
 =?us-ascii?Q?3EpCIpAHqXLYl3n6k3xfKClX8HJODS6oMyvlxuCqkYEZdKpi42/mU7PhX9Ft?=
 =?us-ascii?Q?bI3hni1arsP2pfT7tzyZsttMC+vbQvwRR9bFB928fg9VE/EvHx1EITyOC1I7?=
 =?us-ascii?Q?ff+glI6CqVhe8w+/2VjpWYkasjl+/HRZ6pTIxbSTioBX8R3OxGU4v8RTbLUf?=
 =?us-ascii?Q?O4gr7Hycfrgk2Cz70Tb/yKBj0ADnxKwPXRhKHLki/+ZeEjvlb6uq33+xW5t4?=
 =?us-ascii?Q?0w00dirHbkRZrZi4HAI57J40LeuoG+GRcFfRQjGW3z2kaTItGpBGl6EAGem4?=
 =?us-ascii?Q?76wNNQrlUbRRdKGApMqyr3q9bXFP/7fVWAQvzjjejxy/XSgOF3CdYsB6SPHX?=
 =?us-ascii?Q?CZFw33YmCLoy8IwIzDuYWGHfMVM59KTK03IlpKy3g1vaaOX8w6+r1BE8zwxu?=
 =?us-ascii?Q?GyCKmgZHGJ5l7KEtG4qnqyZ8kgcNNdVCv4RmwRCopHpL3XSVk7GLd9zEqVMf?=
 =?us-ascii?Q?AtTFWFLiLUmpJyB31azZTqQc9IeUBcqtVqj+fNRzcHJ0Gcie1eQ52cLTv/WF?=
 =?us-ascii?Q?ofA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(10070799003)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?GYVX9LzQEKlaxMkVSg/1M22JKdkXGFlVrAaYiZqq8pBbkdROvo6Ulab1Vyh6?=
 =?us-ascii?Q?SdahBVi6wYt7yDELYDQ5pPDJ71LV0jHQmMBdkI4EUXmdkR+rCGl6tCp1i8D6?=
 =?us-ascii?Q?Ic2g4jS6yyxXQkB5a1B+FW253wldmajTS58Nfb8TDHkRRMb6AmSLkhZIgPxh?=
 =?us-ascii?Q?HKBa7w1OsP34IjazCeMeGqENl078t+KjBvMfyWr9pGJDcUOa0bY10ozWeVPI?=
 =?us-ascii?Q?Vs388zwipcQ1AyDlGcPnGrVxqBNc5fDoydksubxBt3cPlOiXr2SqfcEI54i6?=
 =?us-ascii?Q?sFoeOy3ulgDffQcEj2DZAqK0V9mBjRxcxDRVATI/3i3wPCwBXcygDzzevVY1?=
 =?us-ascii?Q?FePNFPS2OiEjcp/ZB9Yzz1T/P4yR75DPcLdmfkRgg12uVMHzB47KdQfN43zU?=
 =?us-ascii?Q?KBgvqi1DHQTxH32duwJKQYfa/B7Bs4bryW2I8Oq/cLPF2jfzJXSh3/i+VqDo?=
 =?us-ascii?Q?fPq4FdWFGaxgsypmn061OitGXu4VvS36QGoOIEvw75iJNnbw3hM5BcPYgMP1?=
 =?us-ascii?Q?p7/bmB3Fv1iaKrP1L9wbs6CR58pP8ruqOUkvxTEXdw1U6cLtWYZ7QrGP2p7O?=
 =?us-ascii?Q?cODcLx5WpFPAwLigjYGZ3ElYw3Zk4Jhz+oxANdMEoevWpB1Q5YesWP+17F8V?=
 =?us-ascii?Q?yGQQ6kGkbwBZW+x4qhe1VITEnZZs8vL2m26Uc2zCseYKeEbposjzpnVGQXRL?=
 =?us-ascii?Q?Lro3P/Lf3ZYMYwJ2Go9wDtdGqAgW3IO7VG/sAs/cqA3rg7wF2OfFaV2LwECC?=
 =?us-ascii?Q?7VTklx9SSeiVus0ZrFz3d19ei9aknwogqKKKVy/d94JPuygo7gVp4Gsc7sE/?=
 =?us-ascii?Q?3gfueLdg4Y5CfJK+WIWsCyHB27j7AuxAj7XJxWcVOD2kY219NM4tq4PZLdKC?=
 =?us-ascii?Q?+IBMlfEreo6SxLGrwTuBmKNKZ8Ou77lbQUBz3Q5nOHtND0AuFSC2/IENc0/M?=
 =?us-ascii?Q?dp6/HxytSVru+a0GSs09xkj3vViI1VsFUoxmniQigPJuqEJ4CB2IHm6gQWWg?=
 =?us-ascii?Q?nI1GKigQ7doWktCeItzLyvOMmc3DznNaqI0xT7U+T8rhL9XoS4frx22AzcbA?=
 =?us-ascii?Q?Es8XPF4eg/YBKhn1gGAE9zAHDzHr7yqtvTYIpEziQIJvp4PdZc0aiu/r6hkL?=
 =?us-ascii?Q?dO6wspW8lr9+pk2+pJOTqGhOq8xzExNGc+YK2Ie6ndlO35bCm2CFna4v68Aq?=
 =?us-ascii?Q?/WxjCEq2tlPnIc7x1eKsWBILoVKWtSKK0U3anbP0jCYvWSjNb9TfnYweTUrV?=
 =?us-ascii?Q?KvUMDpeDBk20HkY5Ogc9k/6QDs1QtIRaJjrLjD9c7Iho0HmpQsNncWJaFU/V?=
 =?us-ascii?Q?+eATqUPQHGUseKmzuNkycfMzDSWdPkluNWIxG3lbZ46pXXQc+75mvTxEO6Gg?=
 =?us-ascii?Q?I77vpY3Z0PWXXiSO7s4BFD0GYqPBusmK2OT4ZtA8IeyBJyzHhff5/SbjeMjb?=
 =?us-ascii?Q?KaxkPU/GlHCewc+ez/lbmyzNsKw0s8Cz/JP4YFJzAoVX7NYS6dXnWfUhpMER?=
 =?us-ascii?Q?9Xbu7gX5i0xjJJlsxLxXsgWUpHIBbnx7hWaFFchvpvY3VbAJxTrqb7lV2VcE?=
 =?us-ascii?Q?ARL6BgfWdXn6GDSZG1l0sZ2Eqeauf+CnVBgNxqPbFDbaEYIsjcuC+j53Mhs/?=
 =?us-ascii?Q?c3i/1VbwMZK2HD7sZFcLWVo=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf12570-bdd3-424c-d1ae-08dcd7fa9961
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 15:57:29.6585
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6mflaiTHnja612m0KwLVVcpK/p98iJBwd+UnjG9F2Ps8LvkqMoIJThUkqKWrSG0MZea7zXYDdeaVlY0+OSYjBwDXOYE9/QzI6sm/i0D/84s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7046
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2024 15:57:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63863

Hi,

On 9/18/24 5:27 PM, Duane Ellis via lists.yoctoproject.org wrote:
> You don't often get email from duane=3Dduaneellis.com@lists.yoctoproject.=
org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentificat=
ion>
> Hi =E2=80=93 I am following this page:
> https://docs.yoctoproject.org/dev-manual/bmaptool.html
>=20
> And I have some questions about the BMAPTOOL.
>=20
> As part of a CI/CD process I need to create a disk image [file] I can lat=
er write to an USB stick.
> I don=E2=80=99t find instructions or examples to do that.
> So I tried to figure it out on my own.
>=20
> I did the following:
>=20
> step 1:
>                  sudo apt install bmap-tools
>=20
> Step 2:
>                  Bmap-tool copy build-directory/tmp/deploy/images/machine=
/image.wic /dev/sdX
>=20
> Instead of specifying /dev/sdX =E2=80=93 I wrote it to a file, ie: =E2=80=
=9Cmy-image.img=E2=80=9D
>=20
> Step 3 (first try)
>                  I transferred that file to my PC and tried to use RUFUS =
to write directly to a USB Stick.
>                  Rufus has issues and crashes -> That is a seprate proble=
m.
>                  I will try etcher later today.
>=20
> Step 3(alternate since that did not work)
>                  I have GITBASH on my windows machine
>                  So running GIT BASH as ADMIN, I tried this:
>=20
>         dd if=3Dmy-image.img  of=3D/dev/sdc  bs=3D16384
>=20
> It writes very quickly with bs=3D16384, dam slow without =E2=80=9Cbs=3D16=
384=E2=80=9D
>=20
> This image is not bootable =E2=98=B9
>=20
> BUT if I write direct to the USB stick from my Virtual machine it works (=
ie: Map the USB stick to my VM instead of the Windows Host) all I am doing =
is replacing the FILE with the DEVICE
>=20
> Questions:
>=20
> 1) is there docs for creating an IMAGE file? (This would be a good additi=
on to that page/link above)
>=20
> 2) Do I need to write to a partition? Ie: /dev/sdc1 instead of the device=
 /dev/sdc
>=20
> 3) Are there any examples of this I can/use follow
>=20
> 4) I did use DD to DUMP the first 4K or so of the disk to a file
> Then compared that binary with the first 4K of the IMAGE file I created a=
bove
> They match perfectly =E2=80=93 so I believe the IMAGE file is being writt=
en correctly.
>=20

The wic image is the image you need to flash on the USB stick. No=20
modification required.

dd if=3Dyourimage.wic of=3D/dev/sdX BS=3D4M status=3Dprogress

and you're good to go. You use the full block device and not a partition.

If you want to use bmap for faster flashing, you need the .wic.bmap=20
associated with the .wic file (and the .wic file itself). Then

bmaptool copy yourimage.wic /dev/sdX

it'll look for yourimage.wic.bmap and use it to skip flashing empty=20
blocks (empty blocks !=3D blocks with zeroes).

With etcher, you should use .wic only I believe. It's basically an ISO file=
.

If dd + .wic doesn't work, it is possible the .wic file isn't created=20
appropriately, for that you want to check the WKS file that was used to=20
create the .wic file.

Cheers,
Quentin

