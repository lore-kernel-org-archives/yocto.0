Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A5ED743CD
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 19:45:46 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.101])
 by mx.groups.io with SMTP id smtpd.web10.24133.1732131944670754668
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 11:45:45 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=k4L6Frm6;
 spf=pass (domain: navimatix.de, ip: 40.107.22.101, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a0HAXfMq7e7oopeQA11ak9b1dLj9k4QE6Cs30QreC0AQHApdvS1sEvQh0ZViqihLF5urqnjRjmQEYPNwAgShRrqYXS8foJNhnwkKtI6q/0Z8whWwT1LQTiSLSKEm9LRXC9MR/lrjLLqxPuptsn597ewG1fHmlsMFPP+kE8akdJHmU0EpWiCCCFd4LJPn9BG7Lwxq2Qxdw/72qiotMPqv80OvTe5B53wK9bYJnH9fxEEfjh++E/RTx5KSDbrOvShGBncfgRBibwjgfsEdEU+gEfoefovJvgQ3RKG59cWro80fmcg1jddFT2OzMebIRu3L/fuVoJjJCt1yLMaF6usbnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dFawMFMw09b7mf3TrTgvmTYFa734+aFvLXcQ3ibsx8c=;
 b=Cq7HOcBy+C3HEpBPwsiXUEmBjomNV2sQYufALOeAb/35gR1gbn50W3kpxWQc/V+UZezUtOdcANDsTCSWuU/c0NmsHYbDhFKHxDrVvnLbaSv1uvv8T+vKutTEoSQc70yYb3O9TiwT73X0doXqcCCeP2wdMLboY8/XNDXXrMxsU9BDLPlN7aeXuagKIdAoSlJGxyMQGO2Zi719wwktReUlxmjLq1FozDMVpbCioKkBLBL2nB6ZMRPFKXOFLZpCOkbWMvH2knGHIfP6we01Uqso28kMkzOVwilIHL6SilWsWQjQdOx/SU59yKijuQjvLtRY/jJotFgIODjrUWdWjYTfBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dFawMFMw09b7mf3TrTgvmTYFa734+aFvLXcQ3ibsx8c=;
 b=k4L6Frm6ylDySL1Go4mB+7uYoV2BElBrrhU2P8jK/BXN+ULPhlQlwwKQu7qJrkPCshTR9bTvQ6xjObni/lSDr9hwlFxUF0Bgh3e1Y0WLatn1Y6zz9B89X8ejw2ctvqjc4tQVQ8D82xcY5hYOnh1lOg/4d8e9+8y1X/tow6Er15c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by AM7PR01MB6642.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:1a5::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 19:45:42 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%6]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 19:45:42 +0000
Date: Wed, 20 Nov 2024 20:45:39 +0100
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org
CC: Gyorgy Sarvari <skandigraun@gmail.com>
Subject: Re: [yocto] python3-ctypes pulls in ldconfig when no DISTRO_FEATURE
Message-ID: <s63v5o7wal3wvuavdk7uucj37xq7dahhigg6uumukrtlcyivhn@pbvdid3eh55u>
References: <binf5wyli6frlazzgmotontazgt3isp4jmkbsdgr2yeoaxhkqj@nxde6f7dfkuj>
 <b01e51f4-9abd-49b5-8889-2f036f5e7eec@gmail.com>
 <1809C4858DF39E6A.32520@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1809C4858DF39E6A.32520@lists.yoctoproject.org>
X-ClientProxiedBy: BE1P281CA0112.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7b::19) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|AM7PR01MB6642:EE_
X-MS-Office365-Filtering-Correlation-Id: 298aab2f-c2db-4bb5-a6d0-08dd099beab2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?l6WO/mxoQBdhvbFBrBgVCSig+GjMc7hP9O1c8iQ7YKp1baHrykVm4eLdMRSd?=
 =?us-ascii?Q?1FowUHPa+/hgq0u/EnWFqLfa7TjM4orkSCG3QzaDqsWwKlgMvNFO8uRcA94K?=
 =?us-ascii?Q?Z7Wde1QpzBFLl5Vg1N/7QhTkOylMRWmYAupx0qIqRPvcMDSB1AYBnWINaWKX?=
 =?us-ascii?Q?UFA9QVWMOITIeIGLFP2EoCK/V7ApxKhi2fiZhf9sFBTmDuzi9V2KsdGS5qV2?=
 =?us-ascii?Q?s5lmIDQSAz+HsGaHJtHMw0CSeyOquelNvFzAcPw6pRUzxDQc2meV/bFOvu+Z?=
 =?us-ascii?Q?5SqjEKiAQFcD01i3SyibaexPtWNj1itiTXzkeGNFoVj4cadfkhzjS6O8Gd9H?=
 =?us-ascii?Q?T+3hTzfSzRa8iU/ruoTvy1cUtX4Dqk5dausEtnXcEvWkDiE+pjmVBV5vROVa?=
 =?us-ascii?Q?3p+mN5VMw4A6h6OxM7IRF2Sfl6237ihLO9BlsKUgOSB2/h9EjFJF4G4PjS7R?=
 =?us-ascii?Q?szvvnE6KX725B1uBOYVK9JMinI2346Ei7zzx7Yd+ZbrukaoGVUV7gIikiJJZ?=
 =?us-ascii?Q?KYCHl2+paQArLBFFv/Yx55cF0zYNQJCOdkN/MogGRC6P/QKw9qiCjnY7O7iF?=
 =?us-ascii?Q?Q0cAL+6/v+qJc54rDq7TCeKaPiHrmgFdkYL7aL3l2e8HJ+XTfxlDI84yzWMJ?=
 =?us-ascii?Q?FIUArSJJO8YqUlIItGymc0UU6XytFue7ZMF0f32W9VpeWDI9v0SAFZDMdw33?=
 =?us-ascii?Q?zTY7CIxKb+Kt72Dfoqa2KzUH5xif9OM+/dLCcDLR9cIWPRj8WUrcyf0N4cn8?=
 =?us-ascii?Q?2tvoswvLN/KMqBpz5Ly0Vfg/5f6lswWjDaqbDu46AKxMIAYmwGwDbmiXFzav?=
 =?us-ascii?Q?Q8HVFKuI+2l0pjvy3s2Fgg4OMAgcd8YqthV4bhoX4MpkpZzVNvYYlvjEFiTi?=
 =?us-ascii?Q?OVWf8O+hJNa27PTp8ez7V+/0nCD7xvKjLbxmQ94jTkbvTdbljErIHiUp+Wg6?=
 =?us-ascii?Q?pzcj193hduHqmox7CwVyQZO+221BK/4PlQQEjZNCw+ihYQ7ZGhXbaAZR3k57?=
 =?us-ascii?Q?luTKkjMl4gWZHmObqc5/Z9iVaJWG1Hz1NbRMuvh5zWoP0actoVon388jb/rq?=
 =?us-ascii?Q?LuRA1uToLWlUTEGajfBEMXw0o74kpaf7aC6wWSFQZMZDlK3gbXb6FynerXiX?=
 =?us-ascii?Q?yVbwpWahpSfD6YiysLgqkqsB8chFStbH5wmKDqxN2zAd+scWn7cz+rT5re/S?=
 =?us-ascii?Q?BNHyWQaY3tr3Xftdm1ckKFknJwCEQ6+EvyQc8pynuwzVnuDvc3tQc70KNmTY?=
 =?us-ascii?Q?plLXGB7WUP7ek09mz2eE?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?tRkZ+gCNpCJf+rRKEY1RcgMFT1MynmJiCfzrJ6Mu8tjZWfEZ4Gw8x4pVqo7E?=
 =?us-ascii?Q?p0o6+TStm1yykikG3qgmYxB3exjEdqfe8e2JnwhL5w+qY5BSbX6e7yE1tLiP?=
 =?us-ascii?Q?Tq9D2J2bP6VL8IPVLcuBIuVsbJeLxOcVHyQErYXjoIreCmGFAleTgtF5ODT9?=
 =?us-ascii?Q?qSsB0viVx2yUYgYxRQ0ji3hPWdDOZmNC/Ki34zmbMkEQfWhenNmCvUVN5dEr?=
 =?us-ascii?Q?aoyzgpm/Q8XHJVYjxV5weCG8T6fgawa79jJYv2WiAjWyXxegXBISGEWZ4WXS?=
 =?us-ascii?Q?kRj5nKzGJq3W2GctO55dCUzgs/VKWrR6+CgwuXzsl7vt37lZ3G0haLFIYNKv?=
 =?us-ascii?Q?M84Yo/Y6Ce+HPs+OG16XZrBorxaYyLQ2ZRt0I2dB1kcRAaZ80BYdkbYWF3Hp?=
 =?us-ascii?Q?wWYzgbCr/aPuJLTZINpKb0BeBBKZAOrJIUSDWJyAGe/seOPh+sPBsu8dS15v?=
 =?us-ascii?Q?biKaiJEvo7L2iFw4KE1fvBLNAJO9VHAT/YWeW9y4JQJ8nQhP2NOESqzdAzFf?=
 =?us-ascii?Q?T7IM1kcw2nib6BLSD3NUAOE9ROEq678K4PO0U/cSyneTesWNqBcLNxyJxDhV?=
 =?us-ascii?Q?MvSBEgqGfGhRJn/O01pXJXUeUk/JRyIGk+XokDp0gFw2cRPP7psJRlRmgFAP?=
 =?us-ascii?Q?blCEd8/4ajnSnoeqAP0N1n0H68Kk/WgERswcxcGFRcyUYfkxjbirXJ+NuTKf?=
 =?us-ascii?Q?cL1VbmpzajfLix1UsgLd0o3edwqlGI9O9DbkBKg1mIGjlwN0DvK88p2IHocJ?=
 =?us-ascii?Q?bg8It/Auj9cpqLDaTkP1Qg5sWhRq7D4LStzferKwR39NIMPn1CRipA4TAwQG?=
 =?us-ascii?Q?B6AY0Gywy4v+yOet1EznvAmrAOX42EEjX6lB+ANZtV8kClTCAs3MdCD43CNh?=
 =?us-ascii?Q?et8NrMI9qw6dnxQqFfL0SjdyDPz8JWvX6xYX8yRHkL0ajj9HA9aMSNF+vIuH?=
 =?us-ascii?Q?sKKQFmKJ+vcC6sK9nLRhAhs13RM9CMiEjbXturE5xkw2LzT5oS6zX2AqS0AR?=
 =?us-ascii?Q?tKYJ5Pq7+Vc2WWejMgifGJoga25tV7BzfNZdQu6CMZMKGWZQSGNON4uSb/V2?=
 =?us-ascii?Q?18Ex5BJcHVX36r200c3zGqJxm7XHoegU+W5dlrBflKTDCtImcMWj/YFbXMLD?=
 =?us-ascii?Q?F2KoqdqWDK9lHbMb0uA67/VvZaefJqgql05tDg0bgYWEMOHR2mxs5mmfOPBU?=
 =?us-ascii?Q?oWyYCUYuU9en8jh9BAxFg46zNVOE8T+RCiRV7qzguAet3EEL7TszePbGCtin?=
 =?us-ascii?Q?UPpGriWNcPoVX1vUAORsHAzM4BaEWbWblX/5bAjpY9dEBaaope4nUdWMA1vW?=
 =?us-ascii?Q?s/jyPfKn43Me9cIrHOOV8m8kNTnSlQwzoA76ihZrun6/42fxuyi8JU6hZgRg?=
 =?us-ascii?Q?FP/LebM2yZcdOIZyrm7zBqZBbowRwo1cMQf2IXVbjAEiofZRSGpRiIYK+8h4?=
 =?us-ascii?Q?7k7yU9MNepKvj+ZHLPvBsKBULXqVd1lpHDPts9Omwi9dpO7PkUrwAQUC934f?=
 =?us-ascii?Q?w1Z5absKq/GJeBJ+B1xIix1Ho4v8aNiU3jndIbWYqDNCA+iilvYszp1ergL4?=
 =?us-ascii?Q?D82N1V52WHNPWgyuptfwbpPd8R2bJNGq+vI8slpmvBs5oKR26kHw1rrt3z25?=
 =?us-ascii?Q?pg=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 298aab2f-c2db-4bb5-a6d0-08dd099beab2
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 19:45:41.9695
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZFFrxJgAXAhFlO5m7+D3cj7DDa7JRqaIaUbvxVc/NjL1ZnN110nrrwdcGpIP5jYjfZqRZR2ldDy4NwCsIWCguR0hZGj7zuK8KAUr5T2F3ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR01MB6642
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 19:45:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64320

J=C3=B6rg Sommer via lists.yoctoproject.org schrieb am Mi 20. Nov, 20:40 (+=
0100):
> According to GitHub's code search this is the only usage that provides a
> proper fallback:
>=20
>         def find_library(name):
>             # See issue #9998
>             return _findSoname_ldconfig(name) or \
>                    _get_soname(_findLib_gcc(name)) or _get_soname(_findLi=
b_ld(name))

For reference, this https://bugs.python.org/issue9998 is the issue named
above. It is about =E2=80=9Cctypes find_library should search LD_LIBRARY_PA=
TH on
Linux=E2=80=9D.

This also sounds like there are proper solutions, if ldconfig is missing.

