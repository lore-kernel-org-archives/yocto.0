Return-Path: <niko.mauno@vaisala.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B98C44524
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 12:40:31 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.113])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10590.1768999224579268721
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 04:40:27 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@vaisala.com header.s=selector1 header.b=c/TJlz7b;
 spf=permerror, err=parse error for token &{10 18 spf.protection.outlook.com}: limit exceeded (domain: vaisala.com, ip: 52.101.70.113, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Co9PmGLGQELTe3FrkkKFaLtCIGW0C/GA5ou7KA+ir/o+6bJKDlY31vdF2NshxcLNzrdC/ZRLosl5G4vWq7ieqT1H8Y0vwf5wSCYuvoglM5LJTnAnQsxuY7XgPvx4Nj9vj36PCoRKaGaPBFCMSjhJMa7Xb3d8Jqc6cKaHEwgIMAfXzkI0Nga51nYjT4seka6N2EbO9WoE9Zg4bKpMjKU7z7V/Jft2asavcwCfk51D2Nj7f79JGh1SYfmfpHcUCwJF8sWkAt88Z+0pOOwOSLxCmCHup/VXn3K2EEReKqdeVN3a7L5RIqJ+mB6AWFaixElxd5UkwRxBfmaxtwAh+jjQpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UBfZ0KGuYs3RsyNjfuR8ZbF8fP2sjGxzf5o5Sk8FIvU=;
 b=kVyJ/hVaVYgT1RuBXIxbaPvzDOziXnItutovBzROgulKYnI+RZ/cC6uBECDh8Jubq/MREz1iK+0Z0Kl5w4PepjthF1CTKUoZI094RWreO38z35wRWKvQ9djupe9FU9Qi82V40mOJjDn6JjdJloa1DpesuiyVY3HPLTk9c9/bRW5NBXMZ6s6fH0psxVrJvXlilrR9ooc67IMKeTdQhQ/tqx3xYDLpvWF0hKX1LrJRJOhdCpG6uK+yqg3ETJgiYkA8YYHKh1549q/XbUg8IMaaD2Ca7uZJ0pGmHCtNh3UrQnYsM3OqXdtBIbLzPDlmr3+RZRj9cJq5zAxFq8+zs6c9Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBfZ0KGuYs3RsyNjfuR8ZbF8fP2sjGxzf5o5Sk8FIvU=;
 b=c/TJlz7bcEarkKVWLPqc1HwqbrFIDddJRCeChn0mk7T15JuPGkp6MRa/6kRKl6BmNVSEBA0OaI+CobFiRh72HRZF31pq+0wsD/aHY1FPqRY+Ap+zocu3b3oFx5YtdjeIRi8nRhdC3Eo14vQDmWDH3EMmipI1s7/Xsduk/O/eAeRp4zVuZNjBVAXXnX8Pc6de2H2sdOSzNfV7osIFSDZUOWkGsf30YOtWRIImEqLcqL457Gg7NYNiF6aTp4T5X067N2U8Mmo0lMLrXvN4NAVhYFEWD0MdI6+D7Gq18z1faV4kPwsPsQ2dLKy1I2wGOR6v98UfP34aJJSD2dEaqIMnnA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vaisala.com;
Received: from AS4PR06MB8447.eurprd06.prod.outlook.com (2603:10a6:20b:4e2::11)
 by GV2PR06MB9874.eurprd06.prod.outlook.com (2603:10a6:150:27c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 12:40:18 +0000
Received: from AS4PR06MB8447.eurprd06.prod.outlook.com
 ([fe80::af93:b150:b886:b2bc]) by AS4PR06MB8447.eurprd06.prod.outlook.com
 ([fe80::af93:b150:b886:b2bc%5]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 12:40:16 +0000
Message-ID: <39e25689-f4d2-40d3-8495-00aadb0c331e@vaisala.com>
Date: Wed, 21 Jan 2026 14:41:14 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is
 Released
To: yocto@lists.yoctoproject.org, chee.yang.lee@intel.com,
 "yocto-announce@lists.yoctoproject.org"
 <yocto-announce@lists.yoctoproject.org>
References: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
Content-Language: en-US
From: Niko Mauno <niko.mauno@vaisala.com>
In-Reply-To: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: GVZP280CA0026.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:276::17) To AS4PR06MB8447.eurprd06.prod.outlook.com
 (2603:10a6:20b:4e2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4PR06MB8447:EE_|GV2PR06MB9874:EE_
X-MS-Office365-Filtering-Correlation-Id: 08ce219a-c425-44eb-3b94-08de58ea3a8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|4022899009|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?sr1Nw5XxhZUI89i74aLNKWB8Mjk9v2o/BEMC1CqvvEvfpXdWAT8U2hoP47g3?=
 =?us-ascii?Q?WdAwroxAqUWa72VMv+NpgGhHzCh/WfijpDNQebQiRYKNJbILf/N3Y1dqRYFm?=
 =?us-ascii?Q?8zjs/aJM7iwPXV7DkgSvIW+IKK/El4/pawARtWrI+XT0JK/VnfbOXPSrH5CS?=
 =?us-ascii?Q?fIsfwSXLKujqxzYj3DC729c1hGb/cscTVr/8fuQ2zGGb2FGowJZEnYq5QgXv?=
 =?us-ascii?Q?2YxIUEkm9iF9G8Mqq6jLUoQuF5zJyhp66H1iLXk7z3cfXQEuMQeAVtV6zusy?=
 =?us-ascii?Q?LzeFcD0wm7neE5iI1rGgwsCB8OSoVE8zKbL2KBsynH7wFht0S2EZSFqeQzlq?=
 =?us-ascii?Q?t6zuNsgxFjtn3ZQDIm8H050/8vNQ4ZQs2gDYb6RIfSb1HG1ASj786vIOtN4L?=
 =?us-ascii?Q?5C2lflVXhuMFGGu6YxsChWpmlhiBI+WOCCAx0oqUiokaOtFxjZEo6lAnGyD5?=
 =?us-ascii?Q?i8KZtUihk9NsrEkt13xzTzw1/yNSmxOKFsd7xdwFf3Wj+ZpgNh5R0+kmpAlo?=
 =?us-ascii?Q?YBUYbVslnp2XHhuRMjpZVFlVoUUvVcNvh6XcO9eJ5p4N4Xi15YYVv06jHi9O?=
 =?us-ascii?Q?UNId/ImV1aEoKIuw/nEx0DcDgJFcu7+pYcZfyPvpoFU2gc69ZaDSRztVE03Q?=
 =?us-ascii?Q?9W7VPTBKt/WP7ZmM2e7p9JHoRPH6cm1k1ti+RMdwOxEzwbEvsI89bG2RfdTk?=
 =?us-ascii?Q?/F3VJ4dT7ma3hPJw6EqZDYhk+NDS3XejW/ll73n9k4JHtLYxB6DWGIuI568Y?=
 =?us-ascii?Q?cgYXIeVRcL/JxsYO0qHVXWtM+sU27R1cEO8wJcQlNNvv9PJnZ/STH1szoz6O?=
 =?us-ascii?Q?Sp7O/JnkziaahwIhLYyS9lO3H69Q46yfkPInJVgsowapOVh+kJNqe5ZGEdEL?=
 =?us-ascii?Q?xZHfIJFi/jZTvfA4GOBeAWFKkVswKTn8X7kVpj4rIJW8dltcz7uOlSE+nkRl?=
 =?us-ascii?Q?1BsTkJgybKJxcsuo/sJLEWS+XCgx2No7mvG+7r1CBppI3BfDoduOul9x8cTB?=
 =?us-ascii?Q?rBkSuBXmDBoMs5xyRj8qMF3Li/JJ9VV+YpAfCh5iSNAZIVYiMYe558Hov+go?=
 =?us-ascii?Q?8ddd/Noatu2okG8vXzY9cDRqr+HPmLRX1/kHs9gPBtBErceTEoWDFJR2SAay?=
 =?us-ascii?Q?YlW3lUnG+E4hCTcd5KuqFYiqMUBe3aIi8jhxoUZWdRPBBqS2AtCfODaDRAZc?=
 =?us-ascii?Q?capR8uuF1beiAghhipG8R66tj4rFhtFtR4EHKDTQ5nMm5q7JNyMrfCaVUcKE?=
 =?us-ascii?Q?edtUweqdwy0A+xUdFnxX/kpayR+OMFuNHAlo6ArrKd8smFxw5KpOMTTwP/eZ?=
 =?us-ascii?Q?HgAEKzk93gZKp9yGrVeKtzMWvolTKbILZIPf/7WwUpgluqct64cbF9PWOFbw?=
 =?us-ascii?Q?+aFVExnPrOBRc+PQcgDAN5zeuHqWohxxmkvZ+VNUJbGky+KD/ByDG3rNFB0A?=
 =?us-ascii?Q?L7jHyQaTsNXsKgpTqfVHbKjlUhRF0JyxmCJNZJni/HEXjFH1sz5edBgAxTPp?=
 =?us-ascii?Q?Bu6Pzwgt77YnSRtTjkpg4veynGtb7uy0Zc81?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR06MB8447.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(4022899009)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0hccx+ox+QPYDsgLHpxK3+WLkoD4LqhR/ibWFAALWyIil/12mO0+3rAVxwYj?=
 =?us-ascii?Q?oF6PUKfunuYMCmNMQJVlUNlXGKevg0cUK+vNzqKlAgQwXgTQ0yER/2h5Z+3m?=
 =?us-ascii?Q?w8Kq04x7a6fmX8RE6pL9kjieId6QpqK79w2oXfpYAESf4wzuby2L0Unuwwn+?=
 =?us-ascii?Q?VXJZJ5UfbnoxnnPPzsATBnp/FcZ3fmKcSELA4TJOobHbnbiMGjxbgXRcuWVa?=
 =?us-ascii?Q?xVnUJD+MavXg9hGdkuJc3oH+wc9Bcv1LNQF1YvmV9ENGrRsCqotFgCV1dzX2?=
 =?us-ascii?Q?bAuQLn0vs9ZbX878TEK0gkxhtvxmNrHEGJOe8uJTYKfJ8PAkyFUfhlXVSInh?=
 =?us-ascii?Q?0aIssbHnS5ON5N46Yug6ieTdUGe6aCtGw6Tpib6LMFzH31lxPe/FanK19LQB?=
 =?us-ascii?Q?1aqQjZdYxONjYnE6x4+5SSkTiZgr9DfV2cnuKrBmE0rrb1ztPXcINrDbbFnH?=
 =?us-ascii?Q?4Oibp1YkaO+baqfBqWLO3yYeG+QTwqZWM8ZCDnVOreB8OojE9vZOPUwymumf?=
 =?us-ascii?Q?ztEn17u1AE0205BDDPInpoKjBoUa3ms/MTGG2/RUqP6wDG67dzkpxxhCAFq3?=
 =?us-ascii?Q?ld3pr6G72oN8QCsOqS8MJprm5JSDthf5lljvbuU2fwHuz5QS0uo3+eKgS7rb?=
 =?us-ascii?Q?uMAZi8gWExtwNUsdhBCBeFqz1rIx8T6WE6AIQ0iBr2SbthQKaEWlmFma8M6/?=
 =?us-ascii?Q?km+7sfzCvIQeM5zHY9FXdkGFiSMoYAkHiPk9E2thsuqgDm1TyURq+kkkp5LZ?=
 =?us-ascii?Q?k7m7KiT4r4/M/R/B/nOE9h/vdK8q5jcqMpCNasW1in2AB3n0vJXSktLPoJep?=
 =?us-ascii?Q?4VoBEXIjCaTbjBRa0t+S1iRddK983QH3GHLQz7ozcdlphbR4FneXiH0RTvkl?=
 =?us-ascii?Q?IjdzEI/8l0wCRO290gXCCfuQ7sCwhg8JcR+w1oScFj3b7iA7UsQxRyXJZhwa?=
 =?us-ascii?Q?DrJh4VpHsfOLT72ZeSsEkA+jaVrFwxAtL4kHgT8lJhQqoqscRIt5AMDTjPM3?=
 =?us-ascii?Q?s/04uzVAIDMUNIb/KARbJBUfdZpUPulFB4dqaDxfi9G1I1aA+/9IUyJogMCE?=
 =?us-ascii?Q?X3v/VKMugwLB0mZHGyW3gCApzB/Hrcg+ArQrnOFt5WCiE5c1auynoyNHrJZc?=
 =?us-ascii?Q?WljW0mylLnlyLOegqVcllDrvRUhk5c1kSRwdslym/ez/SUeBlpI8X3PREusW?=
 =?us-ascii?Q?71x3m54o0PZx2Y3WDEUdQnHpRwAVI9AXcsYcuSrZzWfAYw3vpYw0l+bu/rOo?=
 =?us-ascii?Q?bBwjZRJnYQ9DluPRukYh0S5hJumb3vRtn5zc0tdnDCLgsXuSoI94CpdR1qcl?=
 =?us-ascii?Q?UAO0QU9KnKB6HoTtZMhzcl/hjRF5nLKijVNK9MiofZ+Hs45R4lmTKom+s11w?=
 =?us-ascii?Q?QDv5K8prW4kE7Z5IK1Ul/Sn4PX6Vf5aMZrxWYg9OxP3oFFwY/6xAS0Ngx3cv?=
 =?us-ascii?Q?MjgSynKp7n0yMTOR2NOqi5QhrYRth6Xaq6fFvFok2VFSRvM1p7xDoLiccVtN?=
 =?us-ascii?Q?ABXS5LuArPtfQhSyrYiMN02Qtdo/4AIqqqYxeGlstB88UcbMnO/6AErU3YS4?=
 =?us-ascii?Q?m9hKJiK7s7fe6q816aHdME7tj9d5FpknVasTReEizp7hQyLF6578j9N+x6A3?=
 =?us-ascii?Q?2CdFuDeUjmqisfODa6082ZKGlbwwznLhaXtgYnEMQaenw4tUQzhBCk1RvLs2?=
 =?us-ascii?Q?/M3U+lr8tbQNp8dDe6oCr6GO1MDwTv/8rfSOMQAHCJcfD+bCDVE14tXsQu68?=
 =?us-ascii?Q?8NfDQePdI96gtSLbYapbCXTocL+xV3U=3D?=
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08ce219a-c425-44eb-3b94-08de58ea3a8e
X-MS-Exchange-CrossTenant-AuthSource: AS4PR06MB8447.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 12:40:16.2433
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V6WIo8H7HW+vvfJ9uPTtexoEy6Ir/5vHeE7OixkBbRIWwj8snq52wMTMspj0AuzZQiYOsJAp/4htVtca2DlNzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR06MB9874
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 12:40:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66170

On 1/21/26 12:02 PM, Lee Chee Yang via lists.yoctoproject.org wrote:
> Hi
>=20
> We are pleased to announce the Yocto Project 5.0.15 Release is now availa=
ble for download.
>=20
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983=
ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://downloads.yoctoproject=
.org/releases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe7=
15c.tar.bz2>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebc=
eb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://mirrors.kernel.org/yocto/yocto/yo=
cto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2>
>=20
> A gpg signed version of these release notes is available at:
>=20
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOT=
ES <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASEN=
OTES>
>=20
> Full Test Report:
>=20
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport=
.txt <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testre=
port.txt>
>=20
> Thank you for everyone's contributions to this release.
>=20
> Chee Yang
> chee.yang.lee@intel.com
> Yocto Project Build and Release
>=20
>=20
> --------------------------
> yocto-5.0.15 Release Notes
> --------------------------
>=20
> Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen o=
btuse failures in the execution of tar in various tasks after recent host d=
istro updates. These newer versions of tar contain a CVE fix
> which uses a new glibc call/syscall (openat2). The fix is to update to a =
newer pseudo version which handles this syscall. This is not included in th=
is stable release but we aim to include it in the next one.
>=20
> --------------------------
>  =C2=A0Repositories/Downloads
> --------------------------
>=20
> Repository Name: yocto-docs
> Repository Location: https://git.yoctoproject.org/yocto-docs
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
> Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518
> sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-docs=
-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4f=
c505e8386693306b6a90b0064c0518.tar.bz2
>=20
> Repository Name: poky
> Repository Location: https://git.yoctoproject.org/poky
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983=
ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebc=
eb45edc7a8f0f6d5f4fe715c.tar.bz2
>=20
> Repository Name: openembedded-core
> Repository Location: https://git.openembedded.org/openembedded-core
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
> Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
> sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-698=
8157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad98397=
8ffd6b12bcefedd4deaffdbbd1.tar.bz2
>=20
> Repository Name: meta-yocto
> Repository Location: https://git.yoctoproject.org/meta-yocto
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
> Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815
> sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto=
-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa333=
3cda3a4ae4706ce6577b987ba3a815.tar.bz2

Hi, curious if the 'yocto-5.0.15' tag for meta-yocto is on appropriate comm=
it, since the layer compatibility at that point seems to be whinlatter, not=
 scarthgap: https://git.yoctoproject.org/meta-yocto/tree/meta-poky/conf/lay=
er.conf?h=3Dyocto-5.0.15#n12

This seems to induce following error, when bitbake is issued:

   ERROR: Layer yocto is not compatible with the core layer which only supp=
orts these series: scarthgap (layer is compatible with whinlatter)

BR, Niko

>=20
> Repository Name: meta-mingw
> Repository Location: https://git.yoctoproject.org/meta-mingw
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-mingw=
-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec=
005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
>=20
> Repository Name: bitbake
> Repository Location: https://git.openembedded.org/bitbake
> Branch: 2.8
> Tag: yocto-5.0.15
> Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
> Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a
> sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8d=
cf084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c=
66a6639b5f117f554fde9b6b45a.tar.bz2
>=20
>=20
> ---------------
>  =C2=A0Contributors
> ---------------
>=20
> Thanks to the following people who contributed to this release:
>=20
> Adarsh Jagadish Kamini
> Aleksandar Nikolic
> Alexander Kanavin
> Benjamin Robin (Schneider Electric)
> Changqing Li
> Daniel Turull
> Deepak Rathore
> Deepesh Varatharajan
> Enrico J=C3=B6rns
> Gyorgy Sarvari
> Hitendra Prajapati
> Hongxu Jia
> Hugo SIMELIERE
> Jiaying Song
> Kai Kang
> Kamel Bouhara (Schneider Electric)
> Lee Chee Yang
> Martin Jansa
> Mingli Yu
> Moritz Haase
> Osama Abdelkader
> Ovidiu Panait
> Peter Marko
> Praveen Kumar
> Quentin Schulz
> Robert P. J. Day
> Ross Burton
> Steve Sakoman
> Vijay Anusuri
> Walter Werner SCHNEIDER
> Yash Shinde
> Yogita Urade
>=20
> ---------------
>  =C2=A0Known Issues
> ---------------
> N/A
>=20
>=20
> ---------------
> Security Fixes
> ---------------
> binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840
> cmake-native: Fix CVE-2025-9301
> cups: Fix CVE-2025-58436 CVE-2025-61915
> gnutls: Fix CVE-2025-9820
> go: Fix CVE-2025-61727 CVE-2025-61729
> go: Update CVE-2025-58187 patches
> grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE=
-2025-61664
> libarchive: Fix CVE-2025-60753
> libarchive: Fix 2 security issue (https://github.com/libarchive/libarchiv=
e/pull/2753 and =C2=A0https://github.com/libarchive/libarchive/pull/2768)
> libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable experiment=
al code
> libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 C=
VE-2025-66293
> libsoup: Fix CVE-2025-12105
> libssh2: Fix CVE-2023-48795
> libxml2: Fix CVE-2025-7425
> libxslt: Fix CVE-2025-11731
> musl: Fix CVE-2025-26519
> python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471
> python3: Fix CVE-2025-6075
> qemu: Fix CVE-2025-12464
> rsync: Fix CVE-2025-10158
> ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594
> sqlite3: Fix CVE-2025-7709
> xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231
> xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231
>=20
>=20
> ---------------
> Fixes/Feature Changes
> ---------------
> build-appliance-image: Update to scarthgap head revision
> classes/create-spdx-2.2: Define SPDX_VERSION to 2.2
> cml1.bbclass: use consistent make flags for menuconfig
> cross.bbclass: Propagate dependencies to outhash
> curl: Ensure 'CURL_CA_BUNDLE' from host env is indeed respected
> curl: Use host CA bundle by default for native(sdk) builds
> cve-check: extract extending CVE_STATUS to library function
> dev-manual/layers.rst: document "bitbake-layers show-machines"
> dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'
> dev-manual/new-recipe.rst: typo, "whith" -> "which"
> dev-manual/new-recipe.rst: update "recipetool -h" output
> dev-manual/sbom.rst: reflect that create-spdx is enabled by default
> dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sect=
ion
> documentation: link to the Releases page on yoctoproject.org instead of w=
iki
> glslang: fix compiling with gcc15
> go: add sdk test
> go: extend runtime test
> go: remove duplicate arch map in sdk test
> goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures
> kernel-dev: add disable config example
> kernel-dev: common: migrate bitbake -e to bitbake-getvar
> kernel.bbclass: Add task to export kernel configuration to SPDX
> libssh2: fix regression in KEX method validation (GH-1553)
> libssh2: upgrade to 1.11.1
> migration-guides: add release notes for 4.0.31 and 5.0.13
> oe/sdk: fix empty SDK manifests
> oeqa/sdk/buildepoxy: skip test in eSDK
> oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and PACKAGEC=
ONFIG
> oeqa: drop unnecessary dependency from go runtime tests
> oeqa: fix package detection in go sdk tests
> overview-manual: migrate to SVG + fix typo
> poky.conf: bump version for 5.0.15
> ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar
> ruby: Upgrade to 3.3.10
> rust-target-config: fix nativesdk-libstd-rs build with baremetal
> scripts/install-buildtools: Update to 5.0.14
> spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM
> spdx30: fix cve status for patch files in VEX
> spdx30: provide all CVE_STATUS, not only Patched status
> spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX
> spdx: Revert "spdx: Update for bitbake changes"
> spdx: extend CVE_STATUS variables
> testsdk: allow user to specify which tests to run
> vex.bbclass: add a new class
> vex: fix rootfs manifest
> xserver-xorg: remove redundant patch
>=20
>=20
>=20
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66165): https://lists.yoctoproject.org/g/yocto/messag=
e/66165
> Mute This Topic: https://lists.yoctoproject.org/mt/117378981/3618471
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [niko.mauno@vai=
sala.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


