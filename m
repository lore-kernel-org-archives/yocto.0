Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0897C3601A
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 13:33:41 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.46])
 by mx.groups.io with SMTP id smtpd.web11.13308.1743687216031622268
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 06:33:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Mxj/JIja;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Mxj/JIja;
 spf=pass (domain: arm.com, ip: 40.107.103.46, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=w/kFme09pWqn+nXvxSlLFnBoLBM5B8A742mXefSmHfehukqjpNkfbUGjcaOsjY3mTPqtatYtb1CwXEpUOdlcB7jA5Z3yjp6v0jFvGlpLj6hjbcjPirMbPAm1WADrfGvpUR/36L9Rf8cFVUDC28YhlbPI0LAkBgMkk/tzQdq0WEmWQ2U4f8Alz5WAlRBo3TWL8eWwWk3ufSNs4EIwr9U/Lx4gkB308TdcY9i2vlnAynxSC9LSC/PYWGf/ajmSUFxcJuYJIkEyjmRa25xj9xR2No41UcHr6RFAWwrZZ0SaeD0wssGDQkab03GFwHX2xWxVNpOTb/Qt/EErr5ZeahqXUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AORIRmuA+jHLm7VbRbfA6FgTY7djbRpgL4hnD4lRsm0=;
 b=gzRXK47LbCxZa+QQJcC7MhdktZ7RApuWNA1BABvvuGMQ+eXxvvA+MR/s+ihbstP2Cmf2TkhYmYytX36ygz7bSLmT/tE+wSyduRDjZQFYVIRcau7V/YiJwtmSNFR1e+esDKrS4s34hedBu6PcrDVThiw29A9sWcq0iE/CAuVhO11OiMD2oh7u8yZDBP5fPjTqsL/JmgQzTNisUCZm7/Np2ohCJk/XkeBGQIO7mZMRNAe5Ck4IwFBGFmDu+j61SkXaL0HXTb2G11MScy7mkiOXPqc+aYS9ab5MRINvPYQN5aMbQaBNMNpp7DzVvdOYNKoI1RWw2Goroamu7wQF5AFHhA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 4.158.2.129) smtp.rcpttodomain=gmail.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AORIRmuA+jHLm7VbRbfA6FgTY7djbRpgL4hnD4lRsm0=;
 b=Mxj/JIjam/7IsL/LaceavC67iAgUrLxwpTgtz7j00tfYTAJa2K+XFhRdFy8CWxLJNvCnMV/78edwLADdMFqR3Tn5w61CNv+ySYvxWRCMdi+yntm40kcVYN5tG1E51JxG5jH0m4zxnlhSreFdPGiSoVF5a97tGYWBKkIY3dLhX18=
Received: from DU7P190CA0026.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::10)
 by AS8PR08MB8875.eurprd08.prod.outlook.com (2603:10a6:20b:5b7::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.45; Thu, 3 Apr
 2025 13:33:29 +0000
Received: from DU2PEPF00028D07.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::f7) by DU7P190CA0026.outlook.office365.com
 (2603:10a6:10:550::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8606.26 via Frontend Transport; Thu,
 3 Apr 2025 13:33:28 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com;
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU2PEPF00028D07.mail.protection.outlook.com (10.167.242.167) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8606.22
 via Frontend Transport; Thu, 3 Apr 2025 13:33:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ke7YET49ZPc2WggN/spGlfD1FusvfuPOyPJ3/UYHEZj+ZtE+Wwf7Vr0FadjwOKVNGNpbQpre3OyCf92MPk/TbkFaTQLo9UdjYTMxd+p62kTNGkPKC0hEGnQJbr2hBVSMwWX18Vy/e1Ri2Gt/ZK/06+eP0q560agn131oMW1Tuen7Wdnz1f6Nn/S/rthoM9TREoPsTf2jlCcIoPZr74J8KDzk+Hv57D/iF3+JqqEIKStefCRL5h5TWZMZ0omYLVklUqfPVoaHDoGWRSqq7CscvOj/bPJ9YuY4vysiUU+d1/xw8nR0O6AtP2X6RDHdNzauAd8BTAtJe/EpMzqVgvmFeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AORIRmuA+jHLm7VbRbfA6FgTY7djbRpgL4hnD4lRsm0=;
 b=Obr1uGFNnbsTxX1+wRK6GdWzhdhXfolBENNnt2/BRTsirkI+FQZ0Iap9ix5nZ0lJ5IkU4rZMmk/iL/NNdLKShhq1jzunn18qK0nieKq3lPzJ8+zx428tb+sqvcam4cdQe8tnZlcfa9nTJZTN4FHTCq/9ZCohRwrVzfHO2SLrJYlTQ8RYRzl/63eCNe3kOc17NN7K+Qz3dMqhNQ5DD6cU/B1rTkagjUWfKr9ImrxBfYsnKTYPqAuyqLd4DzQ8FPQuJal+JiE6dm31GbtLeBN0nAhZ81Z+3VGgEqzmqs6btXiPYOHCZyTJ/MiPc5F4zUFrM5LHu/F+w87xMpdoH9fNCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AORIRmuA+jHLm7VbRbfA6FgTY7djbRpgL4hnD4lRsm0=;
 b=Mxj/JIjam/7IsL/LaceavC67iAgUrLxwpTgtz7j00tfYTAJa2K+XFhRdFy8CWxLJNvCnMV/78edwLADdMFqR3Tn5w61CNv+ySYvxWRCMdi+yntm40kcVYN5tG1E51JxG5jH0m4zxnlhSreFdPGiSoVF5a97tGYWBKkIY3dLhX18=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8573.eurprd08.prod.outlook.com (2603:10a6:20b:55c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Thu, 3 Apr
 2025 13:32:55 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8534.043; Thu, 3 Apr 2025
 13:32:55 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: sateesh m <sateesh0457@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Replace Bash with Busybox
Thread-Topic: [yocto] Replace Bash with Busybox
Thread-Index: AQHbo4KTQBaZVuNofU62gV3kpwu2EbOR7YYAgAAD/ACAAAE7AA==
Date: Thu, 3 Apr 2025 13:32:55 +0000
Message-ID: <C4501304-D718-4B44-98D9-99073B77F19D@arm.com>
References: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org>
 <C198FB4C-838E-4396-A25C-993A8653AF78@arm.com>
 <CACsETSvLz2P6+YJBD_QPeCg2Mgt_QHtGejuiyyaOuWAXO7MU5A@mail.gmail.com>
In-Reply-To: 
 <CACsETSvLz2P6+YJBD_QPeCg2Mgt_QHtGejuiyyaOuWAXO7MU5A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8573:EE_|DU2PEPF00028D07:EE_|AS8PR08MB8875:EE_
X-MS-Office365-Filtering-Correlation-Id: dc4750db-812e-4e1d-5cb0-08dd72b41d77
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?ZVZ5N1pBRmR5OU1XcGVEVVloeVgwOVpYZVN5all3a3UxUmg1enlKSmY2RmlQ?=
 =?utf-8?B?aUs0TUYzOXEwL3Q3dk5kc2M1cnc3QjJiUjZhbzl4MExQYnR6czA3UGtadmc5?=
 =?utf-8?B?SVFHMDQrOXR1NHE3aVY5YWI5NGFQUWJpd0ZpakJqL0N5QkQraEIrdExDd1hN?=
 =?utf-8?B?eDBJQ3I0Ry8rRDgyUEdCZFQvMGw1dHBHVDdvWWdHa3FUTWVWUEEzSEdmcDRU?=
 =?utf-8?B?azlhTld4RFovMGhneXVxaUwwME1UQzN3SFhCWDdhRm9sREJsdWpONzc1dGI1?=
 =?utf-8?B?T3lEcnN2aE1DQkxmZ1BweHZQaFlFNFJaQkNGTmJJbk0rSFhUM1kzNXpzN3Jm?=
 =?utf-8?B?bnJiTUZpNnlib2NON2VVVU9nYXJzdnR0MW4yV05LWW8wQW1KVjJpc0M2M1B3?=
 =?utf-8?B?RVV0cGtqUkt0SnJXTkJhV2I5Vkl0L04zWlJvUmNGSnQ3U3BDRGRQd2M4bllo?=
 =?utf-8?B?dGRXb2wvSDI2ZS8vSU1wNUtrNC9sTVZCQ2ZmQVM2TUJiQ29iVGFjMVpqMU8v?=
 =?utf-8?B?emRPUk9VZlZxUFVqVUF2TDdheHlWbFZ0MTVROFZGaCtvWnR4YldabkFVUXFs?=
 =?utf-8?B?STVtWms4V05ITUdGeHF0dkpFbkJkby9MdCtER3kzMTBxOWVvakttQm0zUTdt?=
 =?utf-8?B?eWc2ZUx2ZmZucFBhZFhPbHNxcDFudkNWZUJQenVyYlhPOUllOWUwelVHM29Y?=
 =?utf-8?B?V0xCQlFKTjdaME82OGN6NFgwdkxJQkE1MGVwSXVGZlhJMEZEVy85Rno2Q0h0?=
 =?utf-8?B?cWQ1ZlkvZjZWTEJJRnVyc3JNdy9leURvUEtxQTVJdHRXejhMWkRGQzF6WHVv?=
 =?utf-8?B?dkZva3BtRlJGZFpWb2Z5SklFWGV5bGdPTC9wOGxIZWtvaGJoMHlSQ2R0dnF2?=
 =?utf-8?B?MHV3QTNremRlenNROTVUUE9TSHpvWlk2bjZFRnkzR1BxTVhkSm0wbk5YRkFq?=
 =?utf-8?B?NlBpS21vZkltdVJXWjlWOG9zd1R1UFZrZnZsMVhEazZoY2d4ZlVmcDZueDdo?=
 =?utf-8?B?V1h3c0EyMXJuRGlCV2VaR0twUHNlVSt4T3RKajViOHhVOHE0dUNHdml1U1NX?=
 =?utf-8?B?MEdPOS9pa3RsYmhaU09UNm83bkZLUmQ4TlQvTmhtbUtwTzRoK0xneTVzTnN2?=
 =?utf-8?B?b01kdlZ0SVlLUXdzc1JzZ3FyR0YxVGFQYTl2NUdPN0ZiK2VMSEJGMDl1K1BC?=
 =?utf-8?B?RURLYXJUYUtwMWJvclkyNldiaDNpdm1uNG1sK2dRdGV5ZnQ2YUhzQjByeDBo?=
 =?utf-8?B?SldzbFJrTzgzM0pTNHlYWCtyc0pMS3dPNGM4eEdQakVYb0NPV3RQRSs0YjJF?=
 =?utf-8?B?bzMwTHRnWFFKK2R1eUxFL1A0eDAzV3lGWmhiK3dSMGNKMmNkdkgzekpIekx1?=
 =?utf-8?B?bzIrYnR3Tlc2dENQK094bk9DMnhoYTltMW9yK2Rlc2xRNUFvV216S3JabGJh?=
 =?utf-8?B?U1diTW01ajE4QzJCNFBoWkRNbzVRbnJQVEZKYkFBb3dPeEU4U0pUTUNBV0Z3?=
 =?utf-8?B?MTg3TDFVS0d6djJHS2NlMGdXSnNhamFvcldIbEgwT0FveTd1bi8ybDBEZjJK?=
 =?utf-8?B?NjlCV2pndUNGdU8zTEMxOFNCZ0JaQmR4UHZGOHhaYStUTHJUQXVJNjVGT1p4?=
 =?utf-8?B?VmlyMnhSOGM2MWdhMFhKeWkwTVZ6OVYwaU54akJmeWtOQnVPUVJEZjNZTE9J?=
 =?utf-8?B?U0RIaUVUOXkreVZVV1N6QVhxY1UxY2NQUllPaTFKc2piSm5nY2d4Z1FJbU1z?=
 =?utf-8?B?YnZTbmQ1dzRRVnNndnJJVTNEanhRekdSQ1R2U3c5OVM4b2x6R2FzUGJJOUdT?=
 =?utf-8?B?T0VJMHpqUFh0NXlvTjl6TFgzMVlDazBBa1BmcnNPYmZVYVBQc2JxWjVWNEtZ?=
 =?utf-8?B?Y1g0OTYzdVNlK281MkJjMTBNdkp2M1hLTm8rNHY4M2szam9YRndFNVlvRkJr?=
 =?utf-8?Q?dxPn9zjigE1GFEFOwr9vHq23rR6JgkPl?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <300C977F159F74428CE91D4C2DCE477D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8573
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028D07.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6eecc230-3ab9-458f-4adc-08dd72b40a78
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|14060799003|1800799024|36860700013|376014|35042699022|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YWJnTkx6VGtLdDZOQzJibTF0TGl6d3I4R1BzRzlLOUhjRkFpNEtEQWtMY0lh?=
 =?utf-8?B?eUR0b3I0clV6VU9NS1o4YWpETG8rdmZRRnZXOVMzZkR3WTJGb1VRU0NXUFZP?=
 =?utf-8?B?aEhyV0RqVU1JQ2Q4VGJJSFlkamtvbi9RbUNZZVAxSmp1am5aY1VNQUpKUUxX?=
 =?utf-8?B?aURmSm8wNmltdzlWRjN4Qk5nNlVXdy9wT01JOU5aQjE5MUxVaVlpWTJWb2pD?=
 =?utf-8?B?eTk4MkVxdXZEN2w1RkJMalJ3WWZQVU9XWUxUejJsRUFwbFk4YjY3ak5XeUFh?=
 =?utf-8?B?MVJaZU91WExJa2VJeG5NMzdlTEVtNzFFUC9LY0ZuZlE4TmtMVCthN3Y2bzNW?=
 =?utf-8?B?UkVwQUJiVFNGb1J2WElwSnZ5a1FXUlp4S1p2SklINjdNY2NKL1VwSWswLzNW?=
 =?utf-8?B?eW1oK2dNcTE0Y011ZklFZ29aVS80d0MwWDBBVjBCNk10TGNablhpR0J0eU9I?=
 =?utf-8?B?MkIwRUxSNFF4QVp2WXg1V1F4eGxtQlVFMk9PR2ZlT0J2em5ETHNtS1V2KzJH?=
 =?utf-8?B?TW5LM1pVZE5ob1RScEdkMVM4T0NEY2VIKzhBT0NnQ3Y4TXUwZE5xaU9aWWZF?=
 =?utf-8?B?WW1WMXJnRkpNcDFaRjJyS3NKSWFUeThCM04zMURGc3MvY0tWZTZncDBuWFhk?=
 =?utf-8?B?WnFhWURXQjF2OFpEZm42Snh2OTlqcllHdDJZeXZSNkd1MlRNNDBSQ0FQYnZF?=
 =?utf-8?B?dGJoNm81ejJHQkY0Y3lOcm5pM25sZnA1QlRIcHRvdlVmYzhpYkcrZEJDMFhO?=
 =?utf-8?B?ejdLalhNUnhsUEpQeGZ4Si9wNVN0Wmo4SUo4WVlId2ZtczBCNHB4ZS9FdHNO?=
 =?utf-8?B?b0VCQkd6SmtwTFRXS0RpR1lCSG1sZ29HTVFBQkNMNDR6TjVHNjBCOG5yMW1i?=
 =?utf-8?B?VThWVitCMnp3UVYvVE94M21hM21RRzdJSGl5YkR6MnQwaUt6c2NOS2hzakMr?=
 =?utf-8?B?eTg2dlZ6NHNqekNJRDhrc3RlWDdqbTNrWWN1TTFtRlRhU1JvRzNWVGRsMk1H?=
 =?utf-8?B?SllVVTdFTkhTeW9CczNsNzYrbVZFNEoyODAwcXVMZzUvT28vOEplRkljU09n?=
 =?utf-8?B?enFlK0V6VGtFc09Xb2QydElVSEZpL25sdGJSUEVybHpXdGpFa2NtUGpKWGxC?=
 =?utf-8?B?a2xmcThqNDVWRHlOOVBzMUI0ajNYdHlyWTZmdWR5cEoySUhWY1VPREN1MzJx?=
 =?utf-8?B?bDVmNHp5QlFmcWhGc2NuaGtLUndZbE1rQUMyRzdOQWVIQWhOTXM5OVVvcS9o?=
 =?utf-8?B?bk5GWFNwaWlCa0VmQ0dlVUdVblpTVUZkRW90bEdVN2dPNFgwWVVVRC9VSEtm?=
 =?utf-8?B?Mi94bGZkazl1QWZnRThZangrVFR0M1JPWC9VTnpVTXNhVzZPV0ZrK0Q1TmRh?=
 =?utf-8?B?bkRuVC9tVUZiZXBlNWFCWXdRbDVOOSt0Vzkwc1VRWCt1OHp3NVJtUjhQMXIv?=
 =?utf-8?B?dC9nYkNOOEl4Q2lDWXU3L0hzdVhLSy9tSGxRWERvSUtLVXlQZ0tlcG5IWkR4?=
 =?utf-8?B?M1pqT0QyZGFOZDBCbjVVVWNRUUZiYTgzTHNSYjZKZ0NNZ3UxdHFGc0tvWFBk?=
 =?utf-8?B?VVZoMTRHUHdjY0JGZjFDS3lrNDlZSGFQTWpHSWZtOU9tRi9JUjlFVDExTkRG?=
 =?utf-8?B?MzlFMmUwY2xKa3QvZ2l3Y1dXUEVMQXo2TExrcE9NdWdSOGNENFdaWXN5SU1E?=
 =?utf-8?B?UFphOTdLUzdxdHVtUDh4WmhReVJ5Q3hSWkNpUnUzTUtlMkcwU0JQT2MrRitT?=
 =?utf-8?B?aGR0UCtDYnlWRG1SWXVYQnFmM3k0cDlmdnp4TXdLWnBNUXUveVIyTnM3WFB5?=
 =?utf-8?B?ZkFmTlRVMUZPMmNHNEJXWHpML2s1S2M0TEVFb0FBZ2JENVRDK0lHd09aK0g0?=
 =?utf-8?B?UlJPcUdaRnVhUFBSRlVjcWVnaU1KeExUNE5WWEVhbGJTLzdOa09kSDhpaTNZ?=
 =?utf-8?B?Q0dDeTdnbmZFMVBjcU9NVWpMZUJrTUViZUhJZWtnMEc4NlF4RDB2aVZCODla?=
 =?utf-8?Q?MpNEJ9vuYpAf2Zxv6ZwnnnXd5ubDPw=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(1800799024)(36860700013)(376014)(35042699022)(7053199007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 13:33:27.0051
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc4750db-812e-4e1d-5cb0-08dd72b41d77
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028D07.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8875
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 13:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65084

T24gMyBBcHIgMjAyNSwgYXQgMTQ6MjgsIHNhdGVlc2ggbSA8c2F0ZWVzaDA0NTdAZ21haWwuY29t
PiB3cm90ZToNCj4gDQo+IFdoaWNoIHNjcmlwdCBJIG5lZWQgdG8gd3JpdGUuDQoNCkkgaGF2ZSBu
byBpZGVhIHdoeSB5b3VyIGltYWdlIGhhcyBiYXNoIGluIGl0LCBzbyBJIGNhbuKAmXQgdGVsbCB5
b3UgdGhhdC4NCg0KWW91ciBpbWFnZSwgcHJlc3VtYWJseSwgaGFzIGJhc2ggaW4uICBZb3UgbmVl
ZCB0byBmaW5kIG91dCB3aHkgdGhhdCBpcywgYW5kIHRoZW4gZG8gc29tZXRoaW5nIHRvIHN0b3Ag
dGhhdCBoYXBwZW5pbmcuDQoNClJvc3MNCg0K

