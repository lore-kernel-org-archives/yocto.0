Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B0AFD591A4
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 16:33:19 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.67.95])
 by mx.groups.io with SMTP id smtpd.web10.45855.1731947589283056654
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Nov 2024 08:33:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=p0AIqcVS;
 spf=pass (domain: navimatix.de, ip: 52.101.67.95, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PG/dMBW88jXaocQq0tkoQt1jLLzbfZb/nXvFCcKCffbVjVQnLrx+St4XrqOZ3wvHcOI86e4MEv8S4yoRkquZei+xg40b/sNv7NBRS4ATio6+Dn8UmZQNf5bp+vXHB5u6E/LGQod4StLdHLGQ4WX3sPBvDBbUYRAe750aTSStzCbrAFH2P0xfYRFknE+yNT//4GrMmmsDbx3ZjtVgHIfLcHdgHaS+YhE0BA5Su4kAV9SC7FYFL8FjbKZVGi3CgnfmyvLH//Zi4KP4o+Hh+4HenM90BA2Du+wZtxX2+oc+AF98mYpq9fzQs20EUaEeJbZUFu+5mu+WFIy6dSwyQMJ33A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ow2dUZ9DP4brUPCerb0SmCNcflR2K8Y9aBoz8ZYA/UA=;
 b=oM2oe9WeaeuPk+Qz2wbGstqm5dA8GkADbKq9ft/ozflGpHwDnVxrzcyozBnctpGrCqB6e6bV2NTPsLHXq51Uo2cw5lwyLpfNHiwEBA8R+3ib/UTd+2bnAoh8DsYbid+Gc/89a42z6uzPgDqwIXh2CyO3BFcsifp0jPm5sgtjJwzwy4YBzow6JdkQ/auR5Q6l4xHIQ8MjbgaBOpXnpumYaFTmV7Uer4xfiOovG3nxUmNSZgN1DJTT5Ut7Wo73npPOrYpf5jiHt95LI8iqppBYVLXO9FCdAJGG80hexJlcwwxDWi4eYjQP3R/ngAfBVDY8Cr8+tICi2CQYfRPQIcPyZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ow2dUZ9DP4brUPCerb0SmCNcflR2K8Y9aBoz8ZYA/UA=;
 b=p0AIqcVSO/mVgwQTwp/D7PywMUuvlnOrmYJXsPz1RBCmB7ZdmoKP563+bfn24vbDmiT8pq/o9edP0Keq7UTyQaJEpMyvSiO1DvAoIJMEHKBAntCkmcA5+foZjW6pxuiDBwSwIM/fKqyqpXVzyA6Ysja8sOzeG3N7r2EAHQFqZw4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by PA4PR01MB8947.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:2a6::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.21; Mon, 18 Nov
 2024 16:33:05 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%6]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 16:33:05 +0000
Date: Mon, 18 Nov 2024 17:33:03 +0100
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: hchanuy@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Sanity check on a flashing process design
Message-ID: <w2rndbir5wntt4ejjb6xels5i6wpekjzqf7hrzxpt2qlntdpt4@faw4p765jxhk>
References: <ynafctjoaoez4csrzfrrsfi2mueyv5jnghilcxb6f6ycndgou5@ksdoeqkpxbxa>
 <7309.1731918415042372550@lists.yoctoproject.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7309.1731918415042372550@lists.yoctoproject.org>
X-ClientProxiedBy: BE1P281CA0039.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:22::10) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|PA4PR01MB8947:EE_
X-MS-Office365-Filtering-Correlation-Id: b7bb3c82-72db-49c1-2871-08dd07eeadb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?hJzSgyb8TCVrBKT0SE26DXN9o5hcoQhVa/eiM9vf3jCRvXW/WYAlpuEMCGES?=
 =?us-ascii?Q?0ELUDzRotUOf1y7WNyiSyYsyH1ttAdIVDESn7Hia2/nLgZzkyM7oXp2gW9sE?=
 =?us-ascii?Q?NI3CYF752aR1L0aRSPnVtLmJ84NrBmSHmhhktFpIcwZwz/xaWi6uiEnWThjn?=
 =?us-ascii?Q?5a1NEP2aEBTfa1GhLmExnVdWMl0t8mOkGgjEgaDdYoWZSsWVPVW5ZnRK76p0?=
 =?us-ascii?Q?vfIPvz5CfeY4if/Bl2L8fBqdq4PkF00FyHU8i3daUUcvWFZkB0Shh94jjhQS?=
 =?us-ascii?Q?Y4drNiEoNDb1GVoQV+TjKQGIbz/5SdbBWDbYdJXstgY+cIlP+BDMckyHi4Ci?=
 =?us-ascii?Q?lpW0i8zj/dmzQ1qi+vzWEfjVn8mPsTOITdEEFINLhWIzJQytMmxyqbrYNOcr?=
 =?us-ascii?Q?piy20yiMXLtQTC0r6rdHMRiPrkZqH+XrpLRUAhsUABXfvP8QP2Mmf5oVFt9e?=
 =?us-ascii?Q?zA5x8F0WmtaVwjdj5S7KQzdrBy1uaQZ7P6kfHSWeCvgni3/KPFeLcadajslH?=
 =?us-ascii?Q?gc00J5xcxgRDVF4a6lW3yGC3/uul/6ZGYEfGuDeFkes46A0n+pzdMdkqs1c3?=
 =?us-ascii?Q?KUcz5HwA5plyDsAn5We8+Vtjls6sAIGxcdO8FBLxezzFYi3fYnmQbFSctDp1?=
 =?us-ascii?Q?BgQndBvtvW8dPCocjt+uh7cVNz/Gx9Q05IOS9e7JQ/c6xO1i+fahA8bdVmHS?=
 =?us-ascii?Q?bfJVVpWsHfFkE83PjkROzaX+YbwOJqJOdqjvX5Sa8QSw0PubQSScGJO+9R9l?=
 =?us-ascii?Q?aKm2z/XPvgSzYlt3HsIie8z6FpJrI8F1d6MZhoEERk4Y3KJS2W31vPbNthR5?=
 =?us-ascii?Q?ZcmyEr2/yJgpn+5kKNvZv/cuRW6ctZ7iKzoHrXXlKZAiOVuITRUeGhLrctzY?=
 =?us-ascii?Q?eaDFw8XtE5K/gBzAFYC/ogMpRzOWVjvZlkYdsSRpJhcEAKjETGdgZGB7Q6qw?=
 =?us-ascii?Q?6GIxcCmokl4+De7+KVtpfyfYvXmsbxoKmnxfLsG7x76qg3nt3N3z/uz3dbTk?=
 =?us-ascii?Q?n+eqLT0rn81YCqnTQmD1j22HlMmWa7MS+IEf1IUc1VHCw8WiH9tDpkr9E+LB?=
 =?us-ascii?Q?WRtW32baXfBlYsUL4XRB3cvtEqQVRI9tHiRpD9Y27V68KrO/uY9o3v92YyTo?=
 =?us-ascii?Q?u9hvqqMXJW2fW/WttHy77dn95m8cum0ZT5cS6PKWjGWB+NHdYpk7yya0mewh?=
 =?us-ascii?Q?SrVOPqXy50A4AgU6cDLC4NmU1uvGWuIjzQcFIPm9cmFFE9h0PRwbgJpzQVdy?=
 =?us-ascii?Q?XQVJULl/PudgxjQp3anYxVoQLv0Kfyv8SvPA2d9Pyf4APNxT/djrOU4LhDqi?=
 =?us-ascii?Q?JHuje2+MWxmMnPufIs7PaoUJ?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?YS592j+nEoiYMPY7PK1y03bC6XwBpK2Zgj6Il6OWNr7aJJGHXG19nckePf9c?=
 =?us-ascii?Q?1o54TR8kBc8rseTENrQyuj6FjWRzmmSvNE/iCcQ28r2xgBLTVNVsX4GdO7X2?=
 =?us-ascii?Q?FIxdIgy9sGlErwgcBEVSLy9lEPS2XqXr8GWEX9fmvcBYUMhZnsEzy2a2tnca?=
 =?us-ascii?Q?mPJJ2d1kji5qBrO8Aj2rf1qkb1OEvqzrw6V2/2yAbXXqZBgYKRTFOnxewCCy?=
 =?us-ascii?Q?g7RGcyhFE5+IRX9mLfDlzHsdDiUu5lDnooeH4c5CZJ5CcXoMupEEMNeIeHps?=
 =?us-ascii?Q?8EFdZ5pq8PlorONiiH3EPgnxWFiaake3qiuoXZPwmfbtZlUCDVQwdPatxXUX?=
 =?us-ascii?Q?9lM3rBJSISb8qgCiB6IebVc/8LRjRFZTPefLDUC/0LhXSheovus4G21D9Pkd?=
 =?us-ascii?Q?3vjiglLtPXzfUVU2N5VliTaY8pz5MjR2AYvfVA3rjbwGp7qDFnsyfUjEAKQv?=
 =?us-ascii?Q?c84YmWlmfafVVX2zHPZdLJ127+Fha8vhBMr0ya4izhvTWY5RoDSfq+y/SONQ?=
 =?us-ascii?Q?r6VufQde25nz6uJVxhlJ/xdC3MYuGUxWSdd9GeyhACik98TtILRv4c9jqzdh?=
 =?us-ascii?Q?blGY+h/jkoXdob7HYCoqEfOHUxQV1PKo0bnp4vYAI4Er1Igp1VeFBdfDZ8mb?=
 =?us-ascii?Q?JFEfKTEDwee2TZn7c36FcfeNuS3552DpFnJRP29N+0Se0wUJS2bhB+YGIPJc?=
 =?us-ascii?Q?HxAqTZYjEcQKsmB+P5LwdVdLkToi4eYn2q9ftvuqbZ2SoYGduGRSj+5Nz6oR?=
 =?us-ascii?Q?8sJtvJd95YVg24eklJq5pC2J6p05a4oNi+EKUdgZhfksDJaQoFibAo0o/xtf?=
 =?us-ascii?Q?bpiaDnOgIwnms5HPulPxTt7lYUpkl2MDzTDQwOPdBFs9dbncF+SfGmfIHTCS?=
 =?us-ascii?Q?91P2Kk6ARQYpv7ObrhbwGOLjFdOoX4pQXmYSC+OAXt+L9MAxcPY/LTgHAyjt?=
 =?us-ascii?Q?U8kQ/U8+S2lFeRy2l1qsLOCLxuec8dD37b0sLI9A7GblnPvXiFXJc4PnLRTu?=
 =?us-ascii?Q?9ycAZ1Ccb6ziJ0FzJ3HRBfYXXBzJub4I1vvRElOM4H0yEqymuu/uX0xasOuh?=
 =?us-ascii?Q?TdX63s5Ehmph4+M9UExn/JT8TQfrn85vcnZLmAuYBv91EIs1sdZFCs+KMpI6?=
 =?us-ascii?Q?16nsF08LvAsgjRUIy20Fq+U07B3LGBMY9zd/QKoK4sUcJsccd2+yPUMpnR4+?=
 =?us-ascii?Q?2SHuxRWUqvQXqIdeFpMbUGbLHwzqrOnlQAh4wzYvBJNChV+K+3DoRtAmP7Jp?=
 =?us-ascii?Q?AmFRbmW5RSp6OJn3fzJmkef54CM2pL+seK2V3SurzKnPCC0TvKIhE8dS4yL5?=
 =?us-ascii?Q?PBQhRvplfsUehQC+hwZCe/QuMfmMIUtDcEFUQ/2HTU5A77RhHDX0J409c+yl?=
 =?us-ascii?Q?zxQ1le5WUWrHW/+/C2PXt1fvrZXYbgHAOL3KqKeEGVKhHYXDfjxwKdhOrXRR?=
 =?us-ascii?Q?PpdE+SSqp4N6BvmWb5PEcV25hdI1Mqp/3r4lyBQlt9R1VnfFJcXhxykzm50u?=
 =?us-ascii?Q?Pt7cgY/DZRu9qdqNP8UTlFgTBHvjXIyLyEc6jRYC4S1sVVfRBvhdFC91D1uu?=
 =?us-ascii?Q?h//p1VlFpmj5dE9R+9Z6qhtyWIrqKligo4NddIdBJ6eIvR2R6WQjCUsRTMro?=
 =?us-ascii?Q?NA=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b7bb3c82-72db-49c1-2871-08dd07eeadb4
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 16:33:05.5895
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 12ZuSI8xTKtsh/kF5cgv6Ao8njfUvRojFFW9km5zH6z50H5gIWPAWj074o/QS0GkFb7YhtyG1T+GOjpUFjiFcx38cmSn2HbWmcgGE1UoqHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB8947
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64288

Uy Ha via Lists.Yoctoproject.Org schrieb am Mo 18. Nov, 00:26 (-0800):
> I think this only works if I can interact with the storage (e.g an SD
> card) from my workstation, is that correct?

How did you run `gzwrite`? You can use dd the same way.

> Because my iMX6 has the eMMC storage builtin, hence it is not removable
> and I cannot access it from my workstation.

Do you have a SSH connection? I flash new images via SSH.

