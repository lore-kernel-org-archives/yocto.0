Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E15DCFC268
	for <webhook@archiver.kernel.org>; Tue, 15 Oct 2024 05:32:08 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.125])
 by mx.groups.io with SMTP id smtpd.web11.6565.1728970324475430278
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Oct 2024 22:32:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=4rj8HU08;
 spf=pass (domain: navimatix.de, ip: 40.107.20.125, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yQxnv4DTbBuxluEtz55zNi2bM5pyul4ZsbINjwHzLcp8lArCYpm8IBZgueLG7FjbacdLCEpgklCTCFQ2bnfpUjdmVz9HmklUKItKbLszdDKq4aUVxGOCUmiHTwLkV4RgvqORA9dcJxuLRxrLCTIaEiUhLmrlk58UH+VDAtaoRid5qipJoaTp8e1NV5KPBBkmE8ZE5hmHO5TTmqUcePxFer/zh/FwhAh5k4JO6KMT2C1wJcLrBgciJACUHIQjjizkAYLoQf6+CBSWV62B8qhkO3R2ZO6eLqI9gJKlYwNrvTwI79RHjjPNY0AUBH+HrPu82DtAcTiQCrLjA48I0vDc1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vV/g7OAJX7UfEWO00QXdwBgxarlz5HwykyxhHY9Kd0=;
 b=xOY7GLt4iw/J7jm5peniC+jQJQItkH/GT53u1wg21hvb4HAGo70xQ+nF++OAU1v860+urTtkYIRbLkynayYh/LQk+HSv3AS+LvCjCHyvrHFmkZooafKG36goAKSa2ZwDB810zOE1pAVrieaVowMTLPKzOJnZL8s9k2UlJ3m79pgzFdk73DsUFliSS6Jt3mvPLBNXwJ5U4HdkrScPTccObhbVldSUO/3J6f0O2AlQBZrp7TkAMwLmnb3oKsR8YVCB85Q75sw0NWVIFbmzrqlV/Fat2y6xdN/VaG+vuV83M+bRtktosJvkaX3DT5QbLwybXs24sg0aC6yZxyAQftv5Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vV/g7OAJX7UfEWO00QXdwBgxarlz5HwykyxhHY9Kd0=;
 b=4rj8HU08At5Xy/Qq30oRNTB5oWN+b7cFvIuPCRE/qGwR67f0ZNElIH/V/AgDsydUmH8YcTdsQ3vwUSne9d7f3vSmeWZPLo/U2vqOg3Z6T4Da9rTgtFM+cvyC/35iMkISB6XmRHwSyIbsoOnumqlYcwqENG2/r/pnOTmMsfxmPq4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by PA4PR01MB7245.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:d0::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Tue, 15 Oct
 2024 05:31:59 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%2]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 05:31:58 +0000
Date: Tue, 15 Oct 2024 07:31:56 +0200
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: jairo.mejiaaponte@belden.com, adrian.freihofer@gmail.com
CC: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to install a debian package in the host. Having
 problems with tar subprocess with dpkg-native
Message-ID: <gaolzgr3jhvau7jkjbhetvh3wfice37ilaovyhzbmi23kzgykf@iiulhnidktip>
References: <vIaT.1728662245920397641.q3bQ@lists.yoctoproject.org>
 <CAB3asfh_gM0HPFPV1jA=DZk+h_ctNpBQaHMri-WezdZg05-Ohg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAB3asfh_gM0HPFPV1jA=DZk+h_ctNpBQaHMri-WezdZg05-Ohg@mail.gmail.com>
X-ClientProxiedBy: BE1P281CA0286.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8a::13) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|PA4PR01MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b19be0f-d71b-457e-c61b-08dcecdab05d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|27256017;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?56PCopCdaUHgDFRKeVqJCi8PN8jPukYbnrCN5SWj1IbjxMj16LePNmSu1Fah?=
 =?us-ascii?Q?zs0QS+GV4DplVyMS5BwTv0eUdfSiScb2tk0rgobdW0wFrS+O1p/KC6eoI4ul?=
 =?us-ascii?Q?EIjl17xQjuorPkgxLRXBRQJSSf34x3UUVeAfI2+whu0Vlwytgq1ks0aaUR49?=
 =?us-ascii?Q?XtaTu/Q3HKAeLNkHl8neT3RjDOa6SRdQqsPoLgag1GdYeHZQNTf+SSiXSljv?=
 =?us-ascii?Q?GQ7rQbTdd/dqVsgkCQN6sXHXrv+2g+ORNU4mKS/JVn6ZOtz/2/x4D0D8Y/CB?=
 =?us-ascii?Q?IGn/kx1jdKpoNO7hfgxPCkmQOo0ypTW0g8DW1LlZErYTnu6BJN4S1kRKW+wQ?=
 =?us-ascii?Q?meSR3jqJ6vpeNLTeH28YOODARNjH3DVHh8/8DSTREqPP00AjljJXDa7FUZj+?=
 =?us-ascii?Q?PSu4VTt5WF5Fp6cHSVBwBC0uzPB1FRsEkrX9z4mvQG5+FbphWTZffrw8dKjp?=
 =?us-ascii?Q?uKROXLw9WuEtMJ3DZ4jPggzNbkkIUogrksKKHtJvH1EwNQiY4+5yqR2TxVo1?=
 =?us-ascii?Q?kO4sYDIGl+B9Y1eSgp7Wp5r4XSDjFN6LbUQqF6/oIvIK7mZ7NKUCttF+1uS7?=
 =?us-ascii?Q?Zr58a+SJ75m6k2aqzlQt83XdTI/UB++VPpYBTCoJRFPI7YGbkBLw/Y0RAb9f?=
 =?us-ascii?Q?l4v7bJHWboUuTSzpYYantZ88fe+eFYVUBbtMjB6BNfXQ80IqCO6MwvXOEhfW?=
 =?us-ascii?Q?MNrl29o4WqGE4NjOTJGBNP6E9vfJiqr3/syMGmzfTxLP+6NYQQAZWf8j/uVH?=
 =?us-ascii?Q?X5DvFJaVe7OvQLD8gVB5ottK0+nOqvQpW4aWEc2qCjrFNYW3tnFq+wcA7iig?=
 =?us-ascii?Q?NzdnpUnfNyLu7YfOqsfUFb+5MC+WR86jPokl32eDmSole+TVqhcrUTmehx4G?=
 =?us-ascii?Q?X1BQgnsAuE7VTVpsLnhk1UjEgqrO3dS/YzkeYi+08E0ZHetehuDXpu6V2nfr?=
 =?us-ascii?Q?ElrZrmxz4EfIsNz/yPc8iOuvbURHpXpPTz1hctAt6uc4CRsTr7E+QLnjQOEn?=
 =?us-ascii?Q?u+y15m0mtmA9gw43K4mLB4GSzN3lLsLLLdXY0Hx2NkwkdCEE/CyuCjoe8l1o?=
 =?us-ascii?Q?R+V8n6eNJ9sIXF7e8QKhPThDWPaCd6Z0l3cQnBjgdIpmvi4Q1DSX0bnCkXHg?=
 =?us-ascii?Q?cy3hUkexcLkH3VfILLrJXNsWsWMyGc6UEE/NPTHqwONDvqmy3w2Cl68Xhmk1?=
 =?us-ascii?Q?pLc8W5cyuUOqInfci11YcqKunxvaGwnU6lj3iMWzUYUk1u/X+nUFCmks3hH6?=
 =?us-ascii?Q?ph7x+gpDB+QIF7EkwqAhKy9XpLifPuUSJ0yUp90/p69gjYVk36t+kiQ6Q6fn?=
 =?us-ascii?Q?NJFliZ7ig1VKlsyu7KhQHqOBFPt3z2ZNqctEWXfZcaZUEQ=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(27256017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?sn0dr40NPJQ6+K2cEAbZwuQ3ScWdig7h2Dhk5juo8X7R+2Wcz4BiY7k2Scjv?=
 =?us-ascii?Q?6u41eFW+KZXSGYV+iOM9nIb6Ryw9rV8x6RrwaGqTcpELBAps+lrDaMXA/63C?=
 =?us-ascii?Q?IfAGrdVwYusEE1UoBd95JsO9zgeP5ErbFi6wd1t5ogNrnCHQAeTh9v0WN4yj?=
 =?us-ascii?Q?8TUtf1GQ1THY3hwkCm+FjpblRn8OCpLqdFKnbMwyeZQO8XkUDdKcZTI2Pm35?=
 =?us-ascii?Q?WcmUWbEm15EwHqQ4O35XeWe6aKav8zJ+wgTfcqbOqM3AFfOzl3g00ohpllCZ?=
 =?us-ascii?Q?MZFLkhUxaiExVUEh3b9vTSdi9kiQxI642NHss2jPnpxNMAVPFAifr7TBfBx1?=
 =?us-ascii?Q?dzB/bkoGnGQbE2bQPesOAmOKI0dn600NvfxcHxUnoWorjl07dae7VrjqHsxv?=
 =?us-ascii?Q?uxnYX9M/U9EFAof9n/V2PsoyvvZ2DFub3KAhnYSdJ0d5ceWv6yHp4uTpg50u?=
 =?us-ascii?Q?ShKjpQ4BtPajQI63MmVa7JfVKaPQpRzQlXUx07N7n6i+QYFZk/KFNrAxTQzo?=
 =?us-ascii?Q?bSqIuYk9dXlREi+jY+/siYZZF7+ukH57PKWUe6WxRXFnL5zidj+JkrMVQ2Kg?=
 =?us-ascii?Q?oeZiTLIf1WkSNHZLsGcAQSHkcRQMANUghCn8vWSkMK3+cvA9KVnKMBqo73B4?=
 =?us-ascii?Q?lputW6yt59K9861cT4vmZqqn6z1M4mXxPa/3ujnus1EeJBOg1RdmpFrHqn0r?=
 =?us-ascii?Q?jP78SxjhGbqkIhFNMCnr66m4PlanGV7DdPm7ykcDIKyHXGZxG9gZT96+uVCt?=
 =?us-ascii?Q?Bt6r1OAE8XM+ssc8Dq70xZ9l3dYr66mROLJHiX9KxysZFHvajn8bnK5LmYDS?=
 =?us-ascii?Q?m4l9B5iqAVbIU5NclnaUa+fM+53/vxKryR0ZSaXfg/bpkUhF52MFCGY6XWge?=
 =?us-ascii?Q?Pua3KmvIWCh6XfJnNUN39LQ6JtOon8PAhN6+1Rw9IdFHW4IsJdvZQo7T3Gst?=
 =?us-ascii?Q?Jy/mJKasjD9pRHQMZCpB7WlFSFLZB3sB3t+FlXhooW35H+5uic9KGztw67vd?=
 =?us-ascii?Q?4qKsaORQoYZ62LAEubayxuj7/vRq0KO6eawoVXu/GjbWw+lPjGWrSCwbZiQF?=
 =?us-ascii?Q?8qpRMe81cqugCG5h7sdZNBqeIc+wPrFtDH7jvaQIUz0MIO/5OP3B1UdIMiCU?=
 =?us-ascii?Q?j0LA8c4uUZlQtvyzk8fslV9efRVkm3XaNz+8ipTRK8eJWdd79eqv2rqcpvx6?=
 =?us-ascii?Q?w5++UimlkCi+dieBFSbiSanecp0O3eOrie18KIKcVS3oL+wdZIleHLUgjo5j?=
 =?us-ascii?Q?zPVu4mKQcrf4k4Yfe9Sr+Sm3GyoG/kRwxQ1rXlWZ6KntpIgALKh8jstO5huf?=
 =?us-ascii?Q?hIc8/cz1rAspSmXiDiBqJjO+wAqC9OwFn4tyvmHULN5XXbWzbhf13Na82D7j?=
 =?us-ascii?Q?uYkv7+VlLFt9y7jVabQZQl20fMjNhxLOeRlOAtKr6xL/u16FbSsZHcD3PkeR?=
 =?us-ascii?Q?N7RqQR8pJzCDAJaF6Lb1s5om+exeVvrUgCo5z0L27DW1r57ZdOrassfeLng3?=
 =?us-ascii?Q?jwW7k8W7wyjIU6gTv2b5FLou/HRKGHCYbyXC2TAoxchEKG/2OOoUpJZ/fi4w?=
 =?us-ascii?Q?kMb7liIBLamxF9aVeSwOHTUmP3ovE4u4nV0eNeUtd8Izb9BRxmHdFNI/+Xig?=
 =?us-ascii?Q?Ww=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b19be0f-d71b-457e-c61b-08dcecdab05d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2024 05:31:58.7738
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rlFzTgaox+LE1UJPIZy+b+Zh7+JW8RGBe/hpR7BalKJKMBnh2DafRY7IRhkY0hb18TV7WPQj01yl0/kBpALB8kZHNEpT+5Z65tIz3t5sy6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB7245
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Oct 2024 05:32:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64024

Adrian Freihofer via lists.yoctoproject.org schrieb am Fr 11. Okt, 21:33 (G=
MT):
> Maybe you can extract the Deb file independently from bitbake with tar an=
d
> provide the binaries as a simple tar archive. This would allow to use
> bitbake's fetcher to download the tar and unpack the binaries into WORKDI=
R
> as usual. Then you can write a do_install task which installs the binarie=
s
> the Yocto way.

That's the way we do, too. And Bitbake's fetcher supports deb archives. You
can add them as `SRC_URI =3D "=E2=80=A6.deb"` and copy the files in *do_ins=
tall()*.

Otherwise: The Debian package is an *ar* archive that contains a *tar* file=
.
Instead of using *dpkg* you can use *ar* and then *tar*.

Regards, J=C3=B6rg

