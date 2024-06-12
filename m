Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B989C27C77
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 12:42:01 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.79])
 by mx.groups.io with SMTP id smtpd.web10.10238.1718196119421896811
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 05:42:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JjCXffD3;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JjCXffD3;
 spf=pass (domain: arm.com, ip: 40.107.20.79, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=RefGV29vio5Fa+iGKa8E69vY83y5LKyyKhlaLVhwS9aFeDAaesaCqA3xG1dU1x+bFBDzskeoQQ0nAMjiFFO1U9IiqG1CRA1wPtndme2wt1rwqqRgZZPHZEyc6SQhxC2WywOn/G/R3wzLyn3awOZnqAnu8fRX5NKLQjruZK0CbpTNuBCQXCryrxkpcdCpmH1v8UaZHrQcPeaWRytMGrl4tMn6zuBCQjAXLj3Gn4FOttBWMMSfBMTaIb01q8VYsKzdKb38RdYMeRwLz553UttBGmGOFXQx/0qK+1kBLtx67mOd2G0m3lwg+h/aibjGTXSYraEHInwE84bowb17rcO42Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29XTf73VhDaC8YYOVJ2RtZKedXq+cGdRYrf2+Q70gGc=;
 b=EkBwY6/KqZvAPnfPVMQKl0e9GgS+yzfbrTfQ3U7cpGcYvpbP5/d1DEbB/0Cquz8+mwogAz582y1bwBBjISN/50PyO8O0jdCsCreo0jUDjw2NiAp5DrWnTi6n+UoiZIiy7rabypZVXW45x6zGZ8WxSDaWTrZmNmad1kBrDZ4TGTn+voyYe9mZVsspMwrFkIf1BZeVzzYVOik7yaxYpbqZy64UTCQtCOHxXp3S+/AgBszt0PXQ1OY3sSMTV6IiFCTlQpoVK37hTIbwVws6e8ud0VooqNoO94tC7uu7d/OivZQgU2g6TpHlQMxSTPSbvxiOBHKtQn4s2XsHzRIk40xS1g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29XTf73VhDaC8YYOVJ2RtZKedXq+cGdRYrf2+Q70gGc=;
 b=JjCXffD38faHxyZzBzz5RD5Vy+DZ6cLeRTAVHaJWiQrnKaR1ZC4IlehHw0mqCk/LmzgBBmXvNs2qmHv+n5YBQB6i8Ym0H2jtBGfIA1ap8MpJd0ZI4rZ7+WNwcOMFkjMWx5cug9WMRqwGELLEoHbjMivrx/0V1r4pXCXUGrN4vy4=
Received: from AM6P191CA0078.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8a::19)
 by VI0PR08MB10683.eurprd08.prod.outlook.com (2603:10a6:800:208::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 12:41:55 +0000
Received: from AM3PEPF0000A793.eurprd04.prod.outlook.com
 (2603:10a6:209:8a:cafe::45) by AM6P191CA0078.outlook.office365.com
 (2603:10a6:209:8a::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20 via Frontend
 Transport; Wed, 12 Jun 2024 12:41:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A793.mail.protection.outlook.com (10.167.16.122) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Wed, 12 Jun 2024 12:41:55 +0000
Received: ("Tessian outbound 949243bb8c19:v332"); Wed, 12 Jun 2024 12:41:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9cc7d7a42cc8e033
X-CR-MTA-TID: 64aa7808
Received: from 0889cfb38ff5.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 674EB6DB-8C2F-4B34-A127-702F74555079.1;
	Wed, 12 Jun 2024 12:41:48 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0889cfb38ff5.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 12 Jun 2024 12:41:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lujpq6a/Xxt583YbbYCCdNy91UmPVVxbvCm4ySFqiymHNq7DLFnJNzZnLzAh1VCg2udA8X/HyeC7jGoTHZJqd7k73NJ67wq0GILzDufKVppfXBWOYDW2mQa5skkLkkwYzQgZRZPVgGPVNoGEOyBlvFL7R4P/X7pwezH6Hd5QIu0T+ThMhZJ75E/Z33VxsZvZG5+Y1vGlRMaE+Uvd4Oxsfbl/wwPTSp59mkzqOi3+c/sSZWzkSa61nxe4vkGvzI26i09JkK2s/DTnWwR0NlDP+X/ihuDBpCG0EU3Z7llPPmtIiJONOksqjjM70WNUETK3y5TiMaPCQVWr+OQKktcgSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29XTf73VhDaC8YYOVJ2RtZKedXq+cGdRYrf2+Q70gGc=;
 b=Bu5GYLljszSecdiuszD3EE69jzTyG3URbEBoT1MM+MvPcIDmW4A49gVO16Mk9EFAa93/kGVNxxca+LxJAOwtiEjAQFBCNhBcphz3oUFIhYmM6HBCI0TudNYvrJOamjvofK+8UacRKbYKVK2YhJloLCAPROedJD4nAUnKNy+b//eXaAjQf4G1hgYdTPTFTy8M2p7JS8GBPVt6/nrp3cnLKar760cM3gfwvqSAmVO4K8ru2T8owPVPKZZcWj/2Us3wcCtBxCrv7w6VjI6P8nchwuNVuXzQNMbDaoVp5H08xljJvrs/9tIlyS7SdL54J5F29mfJieior5ryvvPbe0yw9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29XTf73VhDaC8YYOVJ2RtZKedXq+cGdRYrf2+Q70gGc=;
 b=JjCXffD38faHxyZzBzz5RD5Vy+DZ6cLeRTAVHaJWiQrnKaR1ZC4IlehHw0mqCk/LmzgBBmXvNs2qmHv+n5YBQB6i8Ym0H2jtBGfIA1ap8MpJd0ZI4rZ7+WNwcOMFkjMWx5cug9WMRqwGELLEoHbjMivrx/0V1r4pXCXUGrN4vy4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS1PR08MB7449.eurprd08.prod.outlook.com (2603:10a6:20b:4df::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 12:41:46 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7633.036; Wed, 12 Jun 2024
 12:41:46 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Recipe for using a custom Makefile with C source
Thread-Topic: [yocto] Recipe for using a custom Makefile with C source
Thread-Index: AQHavLWldDWl4j0vBki13epa7wL4SbHD+a2AgAAHG4CAABGFgA==
Date: Wed, 12 Jun 2024 12:41:46 +0000
Message-ID: <3C9C3677-6A6C-43A0-9982-68A3DE7D33CE@arm.com>
References: 
 <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
 <591DCA78-8AA3-4D14-9075-1C262B393630@arm.com>
 <CAPDLWs8pt44vmhrA=xG6i36cbDnL+A2orVFu7+z3Eox8oFj-xw@mail.gmail.com>
In-Reply-To: 
 <CAPDLWs8pt44vmhrA=xG6i36cbDnL+A2orVFu7+z3Eox8oFj-xw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS1PR08MB7449:EE_|AM3PEPF0000A793:EE_|VI0PR08MB10683:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d5ea15c-073b-49d4-78b8-08dc8add0aad
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230032|1800799016|366008|376006|38070700010;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?SnZvc3Q5aEt1clRlWHNoR0ZNOTYydXV0RnArWDFmK0xobHhXd0Z6M1ZaV0Fa?=
 =?utf-8?B?TzV2R05BeTZUY1d6Rnd6REw1aXZKd0YzeFpQV21lSWc5OWpudEFvSTFTSTFZ?=
 =?utf-8?B?UkREZHdGc3FwajlkTGx5ZkdHM3hBc1ByUEZibzNNSkI3TkJ5NmRuRVdXbjdI?=
 =?utf-8?B?V1oyU2NQVjdJd1JTYVI4cW9PRWtHaVk3TlhXSlNwajI1cWI3MndxbVhvVXZj?=
 =?utf-8?B?QjQ4M3c0enVUNU1iSURDVCtaZ05jM1NpYmZjd0JobkRTOXJhZDI3R242bitX?=
 =?utf-8?B?UTNjamVEbWxybGZDQlp2ZURlZVNUaTl0NDkxd3NxbEE1cms3aHg4aERnMUIx?=
 =?utf-8?B?cjZZd2ZaUFBMRERQNmQ0aTV6S3dicloyMkFKT1JwZldhclJBa05ZMWZSWDg2?=
 =?utf-8?B?WVFRYXNQelROWlNKeVJ5dXlJY0NFeUR5MGR1akhwSkRMUUJ1TUlJazlqYTd4?=
 =?utf-8?B?eVNJMWpBVjBYZTRwZldvaldSRmludGRkNzBSRXdDTmZvQmFvOFNGZVZHU3NH?=
 =?utf-8?B?SlNxdDh5WkRTY1gwbTdsTTVPQmQxa2RtTWRpb2w1d2Z3MDRiL1JNWnZlVmdN?=
 =?utf-8?B?ZDJ0UlZPQWpUY3ltTm5pbExoZVFUS1FZRS8ycUV2WEEyZWNVV0tOK3Z5WFpn?=
 =?utf-8?B?TGZxK2pSMS9WTVBRZHpXM2NRa2RTbkJtaVRsK016bGEzaU5kbVNJVFpjVmN4?=
 =?utf-8?B?Qm5NQktPeFFoZWRZeVFUZ3B1LzMrMTNlSmVPOWNweml6TXNDK3A5QzRSUTVN?=
 =?utf-8?B?VE5ENXNsNWY3MG1RWGFvUVB1VEJNVFNmL0dPN0t1Qzc3eXovT3c4THZOdG5K?=
 =?utf-8?B?RWV4WmRjNmhiczMzWGZ4SGgraTF2Y09SOVEyQ015aEdqVmYwQTYyMnRoVzRp?=
 =?utf-8?B?cXJiR01DSjFJZksxWW5QR1dTTTl1TDlMK24wWkxjeFdxd3dsb0lsR2RCUURT?=
 =?utf-8?B?NWxNdGsxTXNzUzJhOUF0ZDlmTENQRXlYbXJEcGt3aWlCS3BtcG5seDRRVmZS?=
 =?utf-8?B?czB2YW5nK0QvRjdJWWtCaTM4OEVNcnE1T01QRmtoODl6L3BJQVc5REd0K3Vj?=
 =?utf-8?B?cGkrZS9vdEFkK1RJcU9rOGsvQ0xkdmZNYXRYVzRxTElHdW0rd1V3ZUlxQVh3?=
 =?utf-8?B?MGhGWTllbjFQTzNtY09JUzgvNW9sZWx5dEdxa1VVR09Xb1BsaXh1MXJlczB6?=
 =?utf-8?B?cG1Ea1lUeFNqZ2dCWk5GNC9MSWhVTjNyVlV5czE5TllzZ29VVmFqT0JMUzc4?=
 =?utf-8?B?UTNaTythTjl0UkZyMWU4ZlRHYUJERkMrRnRMZ1pRTUNwd1BxSEhMWlVtVWkr?=
 =?utf-8?B?bzZSZVlIOGtRaWJ6Q25TcDB1bHorRDVlWlNRaW45Q0ZRaWFEbk5WUWNSaUVV?=
 =?utf-8?B?bzhKcHg1ZUNJREw1MWZpZ0NlTGJGTnlLbE1nVmhoT3NseWxiWDcvdkI4UkZa?=
 =?utf-8?B?VEt4UGFxSUJ5eURzdG0wanE0aFJOb0FCY251SHVvSHFReGxDMmJkTmlZTE4y?=
 =?utf-8?B?ZWlDb3dWTXFsNmhxZjlFckFKR2RRQ0VCYStxTDdLaEhxSitRWFc5aFhVTDRa?=
 =?utf-8?B?MmJGNndGdUdKT09zcnJhSU9jaDJKYnVaL2tITkhxYm9vSVpocXF4dE1CbVBD?=
 =?utf-8?B?STJIeFRFc0gxdG96MVgwb1djMDRuenV6WnVaZldoL0l6aUZtWnBFSE1YVVZa?=
 =?utf-8?B?azVua3lBZXdmL3UwZDBxRFJBbHB0dmlhQWRmVXZ6RGxRWU5qaTNyekZXNkR0?=
 =?utf-8?B?ZSs1SGRmMlM5WjVSSzhFay9SZG9qQzhnbEpoOUNiS25XcldTcHh0aW9zRG9p?=
 =?utf-8?Q?Y/nw9sRssl0MHxzauBZ4Tcpj7MVFglMijGBa4=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(1800799016)(366008)(376006)(38070700010);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <833B9EEBB27A3742ACCED127BDEBDDC8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR08MB7449
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A793.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f5a37ad3-2774-4e72-4274-08dc8add05a2
X-Microsoft-Antispam: 
	BCL:0;ARA:13230032|1800799016|82310400018|35042699014|376006|36860700005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TVFKbEl0MmhISTkxWkUrUkRrNWt1ZWhzNERRdGM1bnV4SWtORjVBOVFEMmVa?=
 =?utf-8?B?bEtxZFp2SlJaWjFEZDFkWG44bzl0TE5IYk9FaWo4SmNqUnJqWkUwMlJJcW1K?=
 =?utf-8?B?NFlkcEhtbjI0UHVkVHFvTUd1SjZPbUZlSE1XMVNzS1pvZ01PZHgyVTN0cnM5?=
 =?utf-8?B?ZHVUd2xUV1RGMnlkeldMZ29QdTgybzVXVTdaM3QxM25memZ2RHJTWWhiQzhy?=
 =?utf-8?B?NlNIMzcrTnVsa2pHZXpoVTBEODUrdCtqQm95ZDBRUmZ6bWgzaHhIaEEraWxa?=
 =?utf-8?B?UUVCUmFLRlJWMUo1S1dNR1ZxelBlWHFaRVhaSGhPRW00VnNrY0RlWmp5blNG?=
 =?utf-8?B?U1JwVTFXOW5kaFRRQkt6Tkk5eFFESU80ZXIvWTJKY3dmU1QyMlllQmYxR3VX?=
 =?utf-8?B?SG1RRzBwOElJb3VrL0ZEaWFLdnVuemR6bnNIQWdHek45U1dLU3FiczVQOWFN?=
 =?utf-8?B?RDE4eWRrQnZGNER6bzlpYmw3aXZvYkE5bnJ2MDRwTzVxdHhYQnBEV2kyMnll?=
 =?utf-8?B?WEVUSGV3VXlrc0RwbzU4SEJaVm4yYnNwUCtTUnpIVldLRWUramVIdFNaVDZh?=
 =?utf-8?B?UXV2alpsYXhIdXRCanppc1lLVlduUzZDWmFQYWFYdjFmUXZmVi84V0FQZmow?=
 =?utf-8?B?bDhMOHJ4YmlWdzJ3TnNhVUxvcWpoUE16MW1HeVZkT1MxNjZFdGorcFlkWlNo?=
 =?utf-8?B?UWNORG5FdTNpbmM0WWNRWTBZVWtzaTBITGJ5bStvdFpVMkl2NC9TendQVWJT?=
 =?utf-8?B?VThJL0pzQkx0L0hORmZGUURpRWJGQ29KSHNtc3ZXVm13QVpvNVVzVHJidWpI?=
 =?utf-8?B?b0U1RHp6ZGUzWWJqQ3FKYXVaOHRGVUpGS2tzVkhxQU1QREpwWURoSDBuanlF?=
 =?utf-8?B?eUw4Q3RYNDE5MCtxUHhZMnB4TmVEdEdxc2NhR09BU2psdXZidFZLY1F0OEdl?=
 =?utf-8?B?eEVBWmFpUW56Mk1ZaHllL2hHYk12ZVc1MTZIWnIvREc0dStpWUJRc1haTlR4?=
 =?utf-8?B?U1k5SDJHclZocWZuU2twMzYwaXE5TjV5SStQb000cGRjSW9WOXFxQUN6QXZo?=
 =?utf-8?B?VW5jSzZwRnc3UFhzeWhtWVpINnE3cVNPcDFCMTg1VmNrYkZVajBjeVB0TFds?=
 =?utf-8?B?Y3NlcUU5NlB0TTZRSThxUVJaenhuckc0RnZmN0dJekJYR29zbk1aeWNhdHZ4?=
 =?utf-8?B?WHdRNzUxWEh0KzdNOG5iZnJrUmNCeExVdEtzcElhUmh2RzRzZVNtalhLYWtQ?=
 =?utf-8?B?MVdGWUozcnhXakpZaGZjNVN6YjE3WGRBbENYYmZHbVpTNHh1aDVCR0VYeHVs?=
 =?utf-8?B?amV5anY5NC85dzc1Y0FaUVJDR0xLRnRKMFlhTEpEM3RhdkxKR1Y3dG5FVU4r?=
 =?utf-8?B?cWwxNkk3bVk2K3pvQUlzSlBldXArWVloZ0pyK0o3c1FBV1B1YlVXRGpndmF0?=
 =?utf-8?B?ZmsxVWdVdjU5MmlrOWJ4NEpuNVExeTBiS2xPMFNQME90ejdtQ1ZDREZTb1ZU?=
 =?utf-8?B?OThsb092ZnZCRGdKcmRXQ3ZuZXN0cVJIb0MvWkxJbXFoNlllSEJUOHg3RnFz?=
 =?utf-8?B?alZHVy90SkthbGtxMzJvRU1BM29lSU9xeEZSbnlzaEJLTWhwa3V1TVZjbStE?=
 =?utf-8?B?MGlKcVdhZXJtMlI4QytQOTJrU3dWN01HS2N3UkdILzB6SGNIaGxGMVNBazZz?=
 =?utf-8?B?K000S255cklWVVRkMVhVeEZkZGM1WEFBREJZVEttbVEybTRVVGJ0WXkzTXRJ?=
 =?utf-8?B?M2pQT1JhdkhOUFdsSUdQWjJPaFJUbUpLWHdVRTBSRU9jL0UxdExXdWpKSTc1?=
 =?utf-8?B?YnZRSEoxRUZ4K2gwS3JoN0tCYkhBZGVnSkxPUitrM3NkZUpmWGRXRWp2YXYr?=
 =?utf-8?B?TTdyQ2ZDcDRNVmxzT1VuSW9FRHFZYjVXUi9NbjdxenlXV3c9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230032)(1800799016)(82310400018)(35042699014)(376006)(36860700005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 12:41:55.0689
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d5ea15c-073b-49d4-78b8-08dc8add0aad
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A793.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10683
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 12:42:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63329

T24gMTIgSnVuIDIwMjQsIGF0IDEyOjM4LCBLYWl3YW4gTiBCaWxsaW1vcmlhIDxrYWl3YW4uYmls
bGltb3JpYUBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4gT24gV2VkLCBKdW4gMTIsIDIwMjQgYXQg
NDo0M+KAr1BNIFJvc3MgQnVydG9uIDxSb3NzLkJ1cnRvbkBhcm0uY29tPiB3cm90ZToNCj4+IA0K
Pj4gT24gMTIgSnVuIDIwMjQsIGF0IDExOjQ0LCBLYWl3YW4gTiBCaWxsaW1vcmlhIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnIDxrYWl3YW4uYmlsbGltb3JpYT1nbWFpbC5jb21AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+Pj4gDQo+Pj4gSGVsbG8gYWxsIQ0KPj4+IA0KPj4+IEkg
aGF2ZSBhIG5ld2JpZSBxdWVzdGlvbiByZWdhcmRpbmcgY3JlYXRpbmcgYSByZWNpcGUgZm9yIEMg
Y29kZSwgd2hlcmUNCj4+PiB0aGUgcHJvamVjdCBhbHJlYWR5IGhhcyBhIGN1c3RvbSBNYWtlZmls
ZSAtd2hpY2ggb2YgY291cnNlIG11c3QgYmUNCj4+PiB1c2VkIGZvciB0aGUgYnVpbGQuDQo+Pj4g
RnJvbSB3aGF0IEkgcmVjYWxsLCB0aGUgcmVjaXBlIGRvZXNuJ3QgaGF2ZSB0byBkbyBhbnl0aGlu
ZyBzcGVjaWFsOw0KPj4+IGJpdGJha2Ugd2lsbCBwaWNrIHVwIHRoZSBNYWtlZmlsZSBhbmQgZG8g
dGhlICdtYWtlJy4uLg0KPj4+IA0KPj4+IEhvd2V2ZXIsIHdoZW4gZXhwZXJpbWVudGluZyB3aXRo
IGEgdiBzaW1wbGUgJ2hlbGxvLCB3b3JsZCcgQyBwcm9ncmFtDQo+Pj4gYW5kIE1ha2VmaWxlLCBJ
IGZpbmQgdGhhdCBhbSB1bmFibGUgdG8gZ2V0IGEgJ2RlYnVnIGJ1aWxkJw0KPj4+IGhlbGxvd29y
bGRfZGJnIGJpbmFyeSBleGVjdXRhYmxlIC0gaXQgc2ltcGx5IHNlZW1zIHRvIHVzZSB0aGUgZGVm
YXVsdA0KPj4+ICQoQ0ZMQUdTKSB2YWx1ZSBhbmQgSSBjYW4ndCBzZWVtIHRvIGluZmx1ZW5jZSBp
dCwgdmlhIHRoZSByZWNpcGUgb3INCj4+PiB0aGUgTWFrZWZpbGU/Pw0KPj4gDQo+PiBZb3VyIGhl
bGxvd29ybGRfZGJnIHRhcmdldCB1c2VzIENGTEFHU19EQkcgYnV0IEkgZG9u4oCZdCBzZWUgdGhh
dCBkZWZpbmVkIGFueXdoZXJlLg0KPiBIaSBSb3NzLCB0aGFua3MuIFllcywgc29ycnksIGFub3Ro
ZXIgbWlzdGFrZSBvbiBteSBwYXJ0OiBJIHRyaWVkDQo+IGRlZmluaW5nIENGTEFHU19EQkcgaW4g
dGhlIHJlY2lwZSBhbmQgYWNjZXNzIGl0IGluIHRoZSBNYWtlZmlsZSBidXQNCj4gdGhhdCB0b28g
ZGlkbjt0IHNlZW0gdG8gd29yay4uLg0KDQpEaWQgeW91IGV4cG9ydCBpdD8gIFZhcmlhYmxlcyBp
biByZWNpcGVzIGFyZSBub3QgZXhwb3J0ZWQgaW50byB0aGUgZW52aXJvbm1lbnQgb2Ygc3Vic2hl
bGxzIGJ5IGRlZmF1bHQuDQoNCj4+IElmIGhlbGxvd29ybGRfZGJnIHNob3VsZCBiZSB1bnN0cmlw
cGVkLCB0aGVuIHRoZSBpZGlvbSBpcyB0byBfYWx3YXlzXyBidWlsZCB1bnN0cmlwcGVkIGJpbmFy
aWVzICh3aGljaCBpcyB3aHkgQ0ZMQUdTIGhhcyAtZyBpbikgYW5kIGF0IHBhY2thZ2luZyB0aW1l
IGJpdGJha2Ugd2lsbCBleHRyYWN0IHRoZSBkZWJ1ZyBzeW1ib2xzIGFuZCBwdXQgdGhlbSBpbnRv
IHRoZSAtZGJnIHBhY2thZ2UuDQo+IEFoLCBzbyBJIGdhdGhlciwgYXMgeW91J3ZlIHNhaWQsIHRo
YXQgYml0YmFrZSB3aWxsIG5vdCBzdHJpcCB0aGUNCj4gYmluYXJ5IGFuZCB3aWxsIHByb3ZpZGUg
dGhlIGRlYnVnIHN5bWJvbHMgaW4gLWRiZyBwYWNrYWdlLg0KPiANCj4gU28gbXkgcXVlc3Rpb24g
cmVhbGx5IGlzOiB0aGUgZGVwbG95ZWQgJ3Byb2R1Y3Rpb24nIGJpbmFyeSBzaG91bGQgYmUNCj4g
c3RyaXBwZWQgYW5kIG9wdGltaXplZCwgdGh1cyBzaG91bGQgbm90IGJlIGNvbXBpbGVkIHdpdGgg
LWcgYW5kIC1PMA0KPiByaWdodD8NCj4gQnV0IHRoZSBnZW5lcmF0ZWQgaGVsbG93b3JsZCBiaW5h
cnkgc2hvd3MgbGlrZSB0aGlzOg0KPiAkIGZpbGUgLi4uL3RtcC1nbGliYy93b3JrL2NvcnRleGE3
Mi1rYWl3YW5URUNILWxpbnV4L2hlbGxvbWFrZS8xLjAvaGVsbG93b3JsZA0KPiAuLi4vdG1wLWds
aWJjL3dvcmsvY29ydGV4YTcyLWthaXdhblRFQ0gtbGludXgvaGVsbG9tYWtlLzEuMC9oZWxsb3dv
cmxkOg0KPiBFTEYgNjQtYml0IExTQiBleGVjdXRhYmxlLCBBUk0gYWFyY2g2NCwgdmVyc2lvbiAx
IChTWVNWKSwgZHluYW1pY2FsbHkNCj4gbGlua2VkLCBpbnRlcnByZXRlciAvdXNyL2xpYi9sZC1s
aW51eC1hYXJjaDY0LnNvLjEsDQo+IEJ1aWxkSURbc2hhMV09YWUzLi4uIGZvciBHTlUvTGludXgg
NS4xNS4wLCB3aXRoIGRlYnVnX2luZm8sIG5vdA0KPiBzdHJpcHBlZA0KPiANCj4gVGhlIGxhc3Qg
cGFydCBjbGVhcmx5IHNheXMgJ3dpdGggZGVidWdfaW5mbywgbm90IHN0cmlwcGVkJzsgdGhpcywg
SU1PLA0KPiBjb25mbGljdHMgd2l0aCB3aGF0IHdlIHdhbnQgZm9yIHByb2R1Y3Rpb24uLi4gVGhh
dCdzIHRoZSB0aGluZyBJIGFtDQo+IG5vdCBnZXR0aW5nLg0KDQpUaGUgaWRpb20gaXMgdGhhdCBi
aW5hcmllcyBhcmUgYnVpbGQgd2l0aCAtZyAtTzIgYnkgZGVmYXVsdC4gIFRoZSBkZWJ1ZyBzeW1i
b2xzIGFyZSB0aGVuIG1vdmVkIGludG8gdGhlIC1kYmcgcGFja2FnZS4gIFNvIGlmIHlvdSBqdXN0
IGluc3RhbGwgaGVsbG93b3JsZCB5b3UgaGF2ZSBhIHN0cmlwcGVkIGJpbmFyeSwgYnV0IGluc3Rh
bGxpbmcgaGVsbG93b3JsZC1kYmcgYnJpbmdzIGluIHRoZSBkZWJ1ZyBzeW1ib2xzLg0KDQpJZiB5
b3Ugd2FudCB0byBnbyBhIHN0ZXAgZnVydGhlciBiZWNhdXNlIHRoZSBvcHRpbWlzZXIgaXMgY2F1
c2luZyBzdWZmaWNpZW50IHByb2JsZW1zIGluIGRlYnVnZ2luZyB5b3UgY2FuIHNpbXBseSBzZXQg
REVCVUdfQlVJTEQ94oCcMeKAnSBpbiB0aGUgcmVjaXBlIGFuZCB0aGF0IHdpbGwgc3dpdGggLU8y
IHRvIC1PZy4gICBZb3UgY2FuIGRvIHRoaXMgd2l0aCBhIGJiYXBwZW5kIG9yIG92ZXJyaWRlIGlu
IHlvdXIgbG9jYWwuY29uZiwgb3IgaWYgeW914oCZcmUgcmVhbGx5IGtlZW4gYSBzdWItZGlzdHJv
IHRoYXQgaXMgYSByZWJ1aWxkIG9mIHlvdXIgZW50aXJlIHN5c3RlbSB3aXRoIERFQlVHX0JVSUxE
IGVuYWJsZWQgZ2xvYmFsbHkuDQoNClJvc3M=

