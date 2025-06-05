Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1AB2C5AE59
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 16:18:32 +0000 (UTC)
Received: from AS8PR03CU001.outbound.protection.outlook.com (AS8PR03CU001.outbound.protection.outlook.com [52.101.71.45])
 by mx.groups.io with SMTP id smtpd.web11.12019.1749140305176304982
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 09:18:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=L2bW/HP6;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=L2bW/HP6;
 spf=pass (domain: arm.com, ip: 52.101.71.45, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=wfdNw0PUzffK2vD5YcA13Pwbs/gh5YHqkdaSJvfV4pLHcnJqK1aiawUNBGiDJVS+VYy1KrpqcHC5O8m03Rs8ZWuzkOKUcmykVHK4tN4Z5PJ0BSPpTUTijeGD6jWgGUJ6ZuBXFCfvJgGemffLDQGcRRafZb1ZwufDy0+SSMMoL14Zcl1PQ1goDWaYx8E4KhZ7ddOohuakAR4Yazf4y4y2pWPQ6djmCFp6Bvt40smX90Pe53tniFGes+nu/a2Hil7+CrijqgeTmuUa5oMmD8T5l20n7Bpxd50BZEQ63M+4olydaN+q3SslK9Jp1HLDFJSl0p7Ig0pRTA2CfAXd502FAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15LPE0Un4BmbWaiH61z+Fc3oZlMdoGdShNo7u97X80o=;
 b=ZFqRsLx+KQth84tz2KRadUlbqBUuIO3/dzoh6xq5KtF0vV+wB/sGbFpyvctMTGODDZcHLs9LUldDXlCzYrS9jMSCCYXoz0omPGgjtCcf+tEz4MdwZbkJEJh7UG9nRaKYEk0/7++Bqoh6/BRXjVyVRIW9xfBVP+fCVu4E2DUR2Sdjw6OMdGCxYGz3DhsyMInRiPId5IZ9GcX+qXDDdx+/JgGTPEhoduzvlQ5RHsncjMWYTY3gRPRj+aCXlLY1BxpeZthfbOHeklm40BVeaaYhfFYnS8+Bsemy8OG96yG9j9XuwO/EnfEObIhXMukiHChFhniiDCiG5RtA4SPad9rdag==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15LPE0Un4BmbWaiH61z+Fc3oZlMdoGdShNo7u97X80o=;
 b=L2bW/HP6nqPDs7ImewFiTHJYf/S24TTw+lYVl3GVIQgGkCzBdxpC8pKUZeQ/1Jsigi9vKM2RuTPs2q9smb0b2j6FntfafWsFWLHx8kqKVZJL0zsJDuwHAnjM4hPFFJNO6zrWCEnzX2RkOz5zp0Opjx78zb+5Md29ioegSQOWXKQ=
Received: from DUZP191CA0045.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f8::12)
 by DU0PR08MB9106.eurprd08.prod.outlook.com (2603:10a6:10:470::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Thu, 5 Jun
 2025 16:18:19 +0000
Received: from DB1PEPF000509F4.eurprd02.prod.outlook.com
 (2603:10a6:10:4f8:cafe::39) by DUZP191CA0045.outlook.office365.com
 (2603:10a6:10:4f8::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.35 via Frontend Transport; Thu,
 5 Jun 2025 16:18:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB1PEPF000509F4.mail.protection.outlook.com (10.167.242.150) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.29
 via Frontend Transport; Thu, 5 Jun 2025 16:18:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bMYAGejWysGnd+vdYGsTfTm4a4uBfrArBC1CqFx68LeFK769GRSnyV1xFxuoA7y35IcINITqsVIk7vCL+P9GJ/Bs9ht/8kQ8YnHtkQB2EmDyyjKT5suusEwmR2g/bh4V/myH7YrQzQDrIbTQ8Gn5gwXV3zH+4TWNBjftsqJzkAsd3r/EYP4PmI+N0tx13Dv4gj/Tj0lPbmSBMsn1jLR09Hk+kr0kW2VKrR9O+DH9EdbPn22E8hxu25IYFQYrOKOm7ckSNmiRKjYuHqPVjzNo/z10ZPlKIposQWBjMU2aGUBFLAsad+fA77DDuQngLTC4lmd5lX+b+EQ1ti2YoUmT7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15LPE0Un4BmbWaiH61z+Fc3oZlMdoGdShNo7u97X80o=;
 b=LgKxw5Pr1xmVgCLtrEzt7n3nyKvdrH5gJU0691N0sIr8+VTrXyyeF5EhvL3/mY5gi/BLy6X6L8f2dBHM7G/AQVmUSRk85PR9YSDuNHzlWUuJ9c2nr35JdNhWnHClz/ojRE0kydDn6hdW/KcydBAw8wdNkuUvNnSD3e/lpXZ8gmp5o0N4OJhj4rfvGJqAZ78LeuTMgkvldjqgbryFa83HSHyiYpbbrXj4ujW8vwZ+mULMeJc6B6iF7bC1X3z74rYuzsQdv4R0R8NarjA+RCa8B3/txF5+QmUAVzbFbj/NwK1CE61pq9ZXmYkSU0KTXgdN9CU9Jf+YcH6rdHssbxQcog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15LPE0Un4BmbWaiH61z+Fc3oZlMdoGdShNo7u97X80o=;
 b=L2bW/HP6nqPDs7ImewFiTHJYf/S24TTw+lYVl3GVIQgGkCzBdxpC8pKUZeQ/1Jsigi9vKM2RuTPs2q9smb0b2j6FntfafWsFWLHx8kqKVZJL0zsJDuwHAnjM4hPFFJNO6zrWCEnzX2RkOz5zp0Opjx78zb+5Md29ioegSQOWXKQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB9833.eurprd08.prod.outlook.com (2603:10a6:20b:606::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Thu, 5 Jun
 2025 16:17:46 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8792.033; Thu, 5 Jun 2025
 16:17:46 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mimoghosh9@gmail.com" <mimoghosh9@gmail.com>
Subject: Re: [yocto] meta-optee
Thread-Topic: [yocto] meta-optee
Thread-Index: AQHb1gyboZ8euJves02fdK6hgAlVv7P0vpkA
Date: Thu, 5 Jun 2025 16:17:46 +0000
Message-ID: <9A65BA3D-1893-4124-BD38-B2D7352DEF9F@arm.com>
References: <2LPI.1749122640654962134.S5P0@lists.yoctoproject.org>
In-Reply-To: <2LPI.1749122640654962134.S5P0@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB9833:EE_|DB1PEPF000509F4:EE_|DU0PR08MB9106:EE_
X-MS-Office365-Filtering-Correlation-Id: 46025756-7616-42bd-bba0-08dda44c953f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?JC489uOQS/pbR/cgKxwgeCmXXjcVhWpsbvSpR8ii+BQWnplL2bmvhZjSC3ze?=
 =?us-ascii?Q?NnQQivNn/gWD77X9m0LNPmWuGYrn/F7eUqtt9qAOfNIhRc97hdYYFQFdrWSW?=
 =?us-ascii?Q?YhC4KP6AJ+rGQJWqF05VL6ZEAEw8IZarsfT4/Es95TAAs0asMQr/kw+mx8GF?=
 =?us-ascii?Q?IpsayHhFOM3GmSzLf5ywhM/kOp5yXdHZ4ht//Xv1UdgoOECdIPAE0pShJ0dx?=
 =?us-ascii?Q?SDc842BfwfluICeoSDlDYxgoLAFCL1SnY7lC0TUB7HiwXXumTE9bZ2mCRvsO?=
 =?us-ascii?Q?R4S22sHS9ciZrZf5co4YrTKfxbhMnNw28hWoDs6ZBXe7Y0qnitlZXV0Dt0XA?=
 =?us-ascii?Q?CWJrwmsFwPLlYxPCEoYala9xFJBMpB8o8ksverU668868atf3yr4dxq5Kdwf?=
 =?us-ascii?Q?qYtRdrkz7Hu+cgAnNcqyYCCEMo+weq9/dHP/l3etvKnJP7tnqlAgm94NhM41?=
 =?us-ascii?Q?ePn7KimezNQoLKOfpXcbYBGDnKB+6PF4+oFraKLXJlz4851VxipsulgUWszl?=
 =?us-ascii?Q?3itsCiuH2hggJayeG9Tq79F5j1+lt33cx7Cj3NprNB4sA7RzdRlC1d2KYkrL?=
 =?us-ascii?Q?PU2ZgLtWmxr6sS539Jp7tG1Ca1+SRMnFJmO8lUG6a9gEUoPcTXLInQCqRUgE?=
 =?us-ascii?Q?vWYFc+XFhkrXjp956Ui2iR6I5fWzPJ4KKw7gDUYLbhsLfsaz50RDUpaO+bJl?=
 =?us-ascii?Q?nIw/oedGqHTmUmO+A8n5aGvMx1H1cqWT7C3hJI6kfZAGcGsDirQ1I/Xy+DoF?=
 =?us-ascii?Q?BOE6umDiUECKJVGBAcNks1RVyvzfafgo4obX4bsccDU6L5A0k+DyUu6rS6So?=
 =?us-ascii?Q?LuSGI6BZrn0W2FTfhpbQaH3gv7StKuz1Dp7yDQHswtkDIVWYYz9hU4V+ZUDc?=
 =?us-ascii?Q?HEAOWJou2XY5nU/9RnHRzOWZwhQ2ObXWvvfunoKss/LCG/cSgIXRawDqk6qO?=
 =?us-ascii?Q?SPSFEcmP6/bQECeypiS1+KonmngkwDEtV8RPr3/Z+wZ6Hung6XACGQmdbX7K?=
 =?us-ascii?Q?Vz8Y8LZbqm04T+yxT1b8WRuFYpJpRaIDu7aNRcIx7DtsTnjqd/3ODC+eWHen?=
 =?us-ascii?Q?ROX4G2/O+WwXCg+43HMinF2MbgU/q9+2k+XzIte8FBYSauhMZX/GVFZxLB0A?=
 =?us-ascii?Q?vMEjoReKFUD/0mqTrFf+/q2T/cAsSzh3b41OmthJ9ocTSFSwk8eYyYj7O98A?=
 =?us-ascii?Q?2kjKM438lxghk9a2uaQlnoPKt78D7DOmlwaIJo5ub4+dLnO6zQO4Qfl8YJyH?=
 =?us-ascii?Q?KknCn0UDmfnzHfZ9PSdxYzTMpLgbnLO4kFMvuLBKySf6cOIf0K8z/MFl1g8E?=
 =?us-ascii?Q?aNBjjZjyATNIr44zscBQcYwTg7Kd280T1EMxY/TvcZbTpZqORy7gBa/S808k?=
 =?us-ascii?Q?UZ8MGbYnh45fmNpBgFisTr/l8On7kbST3tPml/uuZTT5kVfK+yELAI6iJNqE?=
 =?us-ascii?Q?Fm9I0Tkgdujf2oy5ZhX/NGx/gNPhcP/w?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <635C97398F732C4198A6453771E914D1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9833
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509F4.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d979cf9c-c58e-433a-4a62-08dda44c8232
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|35042699022|1800799024|36860700013|376014|14060799003;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?B1oFLMKVVCqeVpD/E4GTY+wd+ql6UU8kEO5JYa0H77hapnvk+FQL1qgKtIsN?=
 =?us-ascii?Q?whpOkTmCr87zyUmGh/XtmOWyi0jzowpH9Ky4ae88lqvLWzALSDR2rwIJBXk3?=
 =?us-ascii?Q?dgAHu+OxyB171akHZd2J7KVeHI6MnOs0BPpeQH68r3qvlZ5kU3ixcrknLfhy?=
 =?us-ascii?Q?pzxfAbZ19W/Xsnr9xV2FXfWsZmrsEJ8w7WuZs5gwL/m4yVzLcrWnZVI+Pdh2?=
 =?us-ascii?Q?JmemX6OQoFt5MmepxV7ZMBGAtv8FqqzXIoTo4kygW9TKmOWUqD43Pqjd/CmD?=
 =?us-ascii?Q?N84gbKdhp+/eA3KfuTRDDmrqmld7aS8pPOFC9AowUKkz4M//bUow0yZPlEuj?=
 =?us-ascii?Q?eCMk8F4ud+Rw9ioUMVP8VGDdmL3eRYOiYkQ4vURLvgjNt8IOHsilXCiJMNYo?=
 =?us-ascii?Q?V0I7jkJbYcCkCp1K5XH4jhYnOSnM/tWjkO8gai8b9KrIhgGAxinQiJcs/lEs?=
 =?us-ascii?Q?Ade4f/wwJ+Sw3aWvHo6KjNRuGUpqqm02jI0IspF1oQckTzqR0nJczevp/z2+?=
 =?us-ascii?Q?kROX5PW+Yi04sRDzC6wcmghXDNPEuKcJtxCXSXqKfbcShUFCdNEiowJYTQKo?=
 =?us-ascii?Q?PbuiHE1+rg5L/U9qWfxILLO5KyhxkmhDKou6trlhx+4MrqnAxeDLNiY+rzQV?=
 =?us-ascii?Q?MBKVBqYvGnLpqFAGlblDFInL8TVfIjYEAw9G+J0RIGWACfgn07SjBaeC+1/F?=
 =?us-ascii?Q?EQhHD6c7SwgJuuRwfnt7E7Q9O4cQ4bVOSWw2qewOBI+MYSQ1obUIT75lkLu2?=
 =?us-ascii?Q?VMabdv7QqHTUldB1J9GWwSd6Itly9XyldKvXUnp3dZyc17hYhUulAonB0Z1O?=
 =?us-ascii?Q?eZqyAJGRcSZMgu0nZ1OCkc95vr7Q/BH5QRIReJTx3cM9VwnFXXJ96+H53d4i?=
 =?us-ascii?Q?mNtiMuIKlBSn8bBFMH0Ijcoz71JcTEV5lk+FnvQn+wrSmlQxBQz4H9twBB2o?=
 =?us-ascii?Q?DjCX6hD+6fsS+K5BGlZ+zH+s/p1rqR77DPEUPYjKcIxs6PkRvXKRfKkV0+xZ?=
 =?us-ascii?Q?APSAEuCP5+DYCbbyT6kKmHNpAwA0M4jOB4NylP3M94vC9phOq64kebQv2TZI?=
 =?us-ascii?Q?g9+gOMEu2Z6nBAI3HhEt35P1Xz9r5GgwMelSeWavW9KOiEsbkhu5CTlGir12?=
 =?us-ascii?Q?vaUFG4UlKP+5nbXjdYXmmhGMAHTB/TX0nz+ip3ab5QQDqaaR8SlYdJOvarZt?=
 =?us-ascii?Q?iRLAbainZ4TWc+crppuF1F4wXJFGbSHq2g+Suyb5uC07NR7bZuf0M701+aqZ?=
 =?us-ascii?Q?h2y11JvQ35Ctkvg9l7Dy4+QyCsiRlyqve7K5FcgYKDS3ye+28fQZA1MsQlYQ?=
 =?us-ascii?Q?HyozajWcAcZJlhpfe0qwS2CLzDFqIoBShaLs+uwawyOx+KPUj5UQ9QxNBnWo?=
 =?us-ascii?Q?56n6Q6C87omBoTv2tUAcVzzaoKi8x5RgsBdP3dZxBwL496cDBuDgmqGZgMrC?=
 =?us-ascii?Q?F6zBWGSwrR933tDj7WM+zX7/ebEFTEm/HMm2o/D2NOFGBoc5bTDsxA=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(1800799024)(36860700013)(376014)(14060799003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 16:18:18.4355
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 46025756-7616-42bd-bba0-08dda44c953f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509F4.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 16:18:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65473

On 5 Jun 2025, at 12:24, mimoghosh9 via lists.yoctoproject.org <mimoghosh9=
=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> I was looking for meta-optee in repository.  I used  git clone https://gi=
t.yoctoproject.org/meta-optee
>   but it is getting failed as not found. Does op-tee remove or what would=
 be the issue? =20

Where did you see to tell you to clone that URL?

Long ago there was a meta-optee layer, but it was part of meta-linaro[1] an=
d was never hosted on git.yoctoproject.org.

Ross

[1] https://layers.openembedded.org/layerindex/branch/morty/layer/meta-opte=
e/



