Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD50C2A09B
	for <webhook@archiver.kernel.org>; Mon,  5 Jan 2026 11:36:30 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.27])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.62218.1767612983119363733
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jan 2026 03:36:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=hdc9lfEv;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=hdc9lfEv;
 spf=pass (domain: arm.com, ip: 52.101.84.27, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Ctfb41wO+SaWIADbhkjpzr9emHAS472lerUs5IE1K+kzNhdpGrGxNUT0p7Tx3sLRmjVj4R4DagI2+2hW+Bkhnwe3sbaJRdZyk8dj/9WsYyw6eylWDt+OKJCQetxGkTzYXCbBHKj3cQMy8x0UQ+UhvmqYIZCfrpC1FpSUpTwl2+U76/bOJnvJ2A9cggadSxsUlxjME83RvMHW81dhgk8DiIUZAXcm/3SMjTmU5bY1LcyC/F+2yUSkgNKwHEhEZqKiltksC8ukd9X2U64VuCVCaxmYlRFi1+vfDi2QyLTeLDyDK0CabqBFNiEkkOl2g/F6TFr4+92+7q3f+Fu6dEdNLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P5KG7sM2G9GdSy39gLJPRs0B0zKRYxbCpR5sTRL4H4M=;
 b=lfX7JaK42lxXd7ydFV946VYL2Pff3s4En47uHmCxqh56KXw5vaKsROCsMjEfyueTiMww9Db8bvUydARwU/SdP5NneOW2L9wM/yKiP3qjgKyoX6YHi/OumSDrd6GzBG1WXNsOUwUs3Kv6utcK2bBFmnTulO5ZZSBoATTRRxfRNrMV3tfkF4z4ToHkxNUE73suW9SkfNNvfK6h9632AGjUwgl2P0fmhootEnv+edDXT9HLSRas4eihRlciYsiQvZUbW1sqRqM6otGUpvRbw09XmtgpfyT7AthPv0BXAn6LfY0QoenxHeXUvgmF6yiAn9Ov8PIgMqlpHANyWl+U1UQmbA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5KG7sM2G9GdSy39gLJPRs0B0zKRYxbCpR5sTRL4H4M=;
 b=hdc9lfEvoB+5KHA98SdwNiMBS412tw9r2VH440m1bQzEII8VBWTCA7bHiD2zLK0VU0/0Bsz9P+AyBXyegZl9GOKgmDZrTCGmy2cunPTkIDkbKrQyjdyQJS115ZxxWjUFaxPLCnprqPk3HLvOTNiNrvOVxuS8HnGtFgvlIyUOjHM=
Received: from AS4P195CA0005.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:5e2::14)
 by AS8PR08MB9069.eurprd08.prod.outlook.com (2603:10a6:20b:5b1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 11:36:16 +0000
Received: from AMS0EPF00000192.eurprd05.prod.outlook.com
 (2603:10a6:20b:5e2::4) by AS4P195CA0005.outlook.office365.com
 (2603:10a6:20b:5e2::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Mon, 5
 Jan 2026 11:36:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AMS0EPF00000192.mail.protection.outlook.com (10.167.16.218) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.1
 via Frontend Transport; Mon, 5 Jan 2026 11:36:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xfzw/CQqviv8P6opqsS5iuQ6akNDA5DwITcZNctgRvaciLKJNhXBVuxQW7a3QWyh3eOObOG38vrSNXlgJBABEG2ITGACaZ6JKuhD9rsumAKtmOpHHOXwkKITrjKcZRfVHrlPoD8EeirulvnXf5Ux2OW0N32kOfx02yy+at6Ct8E15NLiLoup0Bo3NuooLfDREfyzlYhVKSdXr/b3GtOdBVsFtmNMvkZCeOjZyY56pjvZfrO7CZiflMHn8I/K4eQJSc6uBQ/1Of17VcflP/qGkC2xRm8ys3EXIWcMYuDtD4T0rD+rDMVtY9t64hWYhTDWl0tYmWLmTCSNk85xqfEc9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P5KG7sM2G9GdSy39gLJPRs0B0zKRYxbCpR5sTRL4H4M=;
 b=m0cnXl9vlR0pcVK6M4NHSyEiCUqTPIZpLkdee6KFZmlYqdKYtiBw40PfUOQA/guaXK3PnZT/0p+iKrsZbbNpMwsREjynz7mxseLi76IEaIXzMvAph5LLeB7FUxDg5cCnpNCvLD0WIQ8wZk2qvRwz0MSVNzwzhGi9dUdVHu8550y8CJpJA3/3cvplB0I40LeFdAd3H97x0GkntjZJozQU1u3a4yoXref6uoh1hvFJA9/9JvLQwLQWQsMF3naa14M5PwDscY3lq9ArFwXR9IVTC/BNGS8Wt7r/I7gWhxu5IiUIIWCwBJKw8aCKnprrQDXfPk1gHmTc366anE1hgyIE0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5KG7sM2G9GdSy39gLJPRs0B0zKRYxbCpR5sTRL4H4M=;
 b=hdc9lfEvoB+5KHA98SdwNiMBS412tw9r2VH440m1bQzEII8VBWTCA7bHiD2zLK0VU0/0Bsz9P+AyBXyegZl9GOKgmDZrTCGmy2cunPTkIDkbKrQyjdyQJS115ZxxWjUFaxPLCnprqPk3HLvOTNiNrvOVxuS8HnGtFgvlIyUOjHM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB10411.eurprd08.prod.outlook.com (2603:10a6:10:536::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 11:35:12 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50%4]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 11:35:12 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"daniil.klimuk@3mdeb.com" <daniil.klimuk@3mdeb.com>
CC: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>, "piotr.krol@3mdeb.com"
	<piotr.krol@3mdeb.com>
Subject: Re: [yocto] Dynamically load patch series from fetched repositories.
Thread-Topic: [yocto] Dynamically load patch series from fetched repositories.
Thread-Index: AQHceNYe+MQ/FmrioECkPC4BMxEPGrVDfPwA
Date: Mon, 5 Jan 2026 11:35:12 +0000
Message-ID: <5E833BE4-1E22-43E4-A99D-8BB0FA077982@arm.com>
References: <ec947ba6-a232-4ee2-ae6f-17e51fdd6d30@3mdeb.com>
In-Reply-To: <ec947ba6-a232-4ee2-ae6f-17e51fdd6d30@3mdeb.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB10411:EE_|AMS0EPF00000192:EE_|AS8PR08MB9069:EE_
X-MS-Office365-Filtering-Correlation-Id: dd31d767-ad2c-4a44-f179-08de4c4ea2e3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?V3QwZ2s0MUR2Uk1tZjdLRjlSQ2xzYVlXOFJGdGNrQ0dJbk1ITjlyTWNFbC9M?=
 =?utf-8?B?UTV6SjZ0ZkFkWlQxd2hvM1VMZjRDVFVMQWRzY2VrMHlLaGxpcEJvb3pEWmJr?=
 =?utf-8?B?NXI2cWdrS3hsaVczSGNndHNqWHZ4Nk5sR2pEK2MwOEdNckVJUHRkdk9Da2Fj?=
 =?utf-8?B?Qkc1aStoWWt2dnZZcUlFemE5SmFHSFo3RjRxaTBmdEJsSjZ2YWhyS0F5cnJK?=
 =?utf-8?B?SjJGRmNvcGJyaEZROGVyV0NFU1ZIbFJRc3MvazF4enR5MmV6enRBSjk3UTFT?=
 =?utf-8?B?YUw2VjBCM3pEeFU4UDZuZ3BJeXU0Yk1DYkRHaVk4bTlVdW8wd010UmdNRVJl?=
 =?utf-8?B?blVjQTJFOWQza1hHQ3NGUi80a1l2TFlYT3VmcE1XczBwVzJCZXZ2M09jeUcz?=
 =?utf-8?B?aEtRM1ZMTUFiZUZLVzY1SFpsbkRnZ2x1SVdNWEowUHphSWw4bklGUXR1TG1C?=
 =?utf-8?B?RE5iMGRzQ0lxZkNNb0Z1SFVqNVY4YTZpZVh6QjJPVXE2VTNpWm80QjJsQ0xu?=
 =?utf-8?B?VHRuNG8yRHh3cC8wZmlES1RjYncvZFpFYnExTlEyNVhZTWo0NmlPMVUzZ1Ix?=
 =?utf-8?B?L0VMNDFGSCtaTXlxSzlOYW9uYW9IOHFhUjRmUk1nVlZVcEFzalRXYVpsUWM2?=
 =?utf-8?B?UkRkdUUrc0NQQk1CNXZ4Z1dxMTRoRkRyT25tanp4SThBcGo4ZFFkclNYSWdO?=
 =?utf-8?B?d2VCUW5Jb24xYnZZY0l2WVRoSm54d29nK0pVMW5jUTV2bDd3YS93WXYvY040?=
 =?utf-8?B?czNjTlcxT2FraHdyaUNwd3JLU3dieVlTNHNnZ3FZYWNyS1o5VFR1WE5rSEQy?=
 =?utf-8?B?TWY4L2pMM2RGTmpzbFFXcWFRZmlicW05YWdhR2h0WlhuN0FqQnQ3UkE2bTVC?=
 =?utf-8?B?cU5FTzdkb2U0emF1U0xIZklNKzhncitnNkRxcUpodHhnay8xN3pkOWozT0lG?=
 =?utf-8?B?UCtoZ2Zhbk52dlZ1NkhGVkZZUWU1dk9WL29hQ3pPK29qMHg4ZW5LQmZzdG8y?=
 =?utf-8?B?czFZV1J3aG1NdGhNT1kxY3RZUnFlTWY0Y0Y0S29kSDcwZ2IybEp6VW00bjlC?=
 =?utf-8?B?MVg5VVdTSkdUWUV0SkJqVE5mS0pFTWNBc1FaQXNkV2x6SjFCU3h6M3B6M2Nt?=
 =?utf-8?B?WTZmSU0xL0oveXpTRDJkVDZPaVdNYnNsUlU2OGVESEZhUmRXWTAybkRKMklQ?=
 =?utf-8?B?MDI2STJqNVFoazRNSTA1bnRhOFZ3bHZpaHRic2hQWU5uT3gxMTRwR1BGOUhW?=
 =?utf-8?B?QlhNRmRGYWc2bEJnK3ZPTldJUXB0b1haOHN5aEV3YUFOYjRyQkg5elhNMUtE?=
 =?utf-8?B?TzlMN0E5VXhmY09aMi9vSUVseDlWd1BNV1BHZ1NqR0dRbGF5b1ppcDg3M2wx?=
 =?utf-8?B?M3A0eDNxL2dlL204dkVCdmhuOGVqNjVyNDI2ZUJrOU5NVmQxci9rVndmWlpp?=
 =?utf-8?B?OC96UU50T0JCNzAySUtiMHE4MUxDMDJBTVJEWDJVWnA2UnlGME45WXozbndh?=
 =?utf-8?B?LzhFa1RnZDgvNVNFR2hjVGJMSlBCRW1pZVc3dnV2WHZCSkpxdWF1NTRYcTR2?=
 =?utf-8?B?VlRCVGQyM1ZpVHRWSHNhNG1La0FZRmhneFllSjFhb2MzWnMrMVlYV0tIUStv?=
 =?utf-8?B?c29Lck9VRm9WWE9rNzVKRWg2U3JWRDZtZHpPQjV0ejd0WThIUDlNUGRjRm5N?=
 =?utf-8?B?bjdVMm5lRUh4TVlKV2lRS0p2RlZsRWtwWWlhem1jZzZxd3pYcU9vZkVDRG9S?=
 =?utf-8?B?K2MzKzhRL1lBNlB1WUxuY09jRXZMYWcvZ1V2TkYwOUw3Zkxnc1c2N2YrT3Vr?=
 =?utf-8?B?aUVsY1hlaWNPcTQwTHcrYWRVRVF2eWZVNXAyL3E3dnlWNHNGdVMwNmNaV2pH?=
 =?utf-8?B?amEvcEdzeFdlOTZGRmtZTUNuQVBmVGdZQ29iNzR5aFlhNHRUZjJZaXNqZ3dx?=
 =?utf-8?B?Wk9sd0NmY1ZUVzdvcW16MlpwNWc3V1lTbkJjSlJ1MXExZVArMXFXdTExRHo2?=
 =?utf-8?B?cFlnVXpDVThhbGhNVk5Zd3JNWjRsaThlNEk2VkNCVTZJQ1lTbWNRNEh0K21r?=
 =?utf-8?B?VThqb09HTndrSGwrQjFEcFNhdU5HcGtNWWtJQT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <90C9C2FCD56A044F9D458BA53C303FAE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10411
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000192.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	18fe24c9-decd-4d41-6b43-08de4c4e7d26
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|14060799003|376014|35042699022|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T0VlanN2L3M4cGswU25PNUh3Zm5hSjNaTHhFeHFDeHdmV1BqaUZBaWtycVlx?=
 =?utf-8?B?aE45Z3hNWVNKM2NRVzlsdUcrUUJhU3l6dDJya3Y3REd6dW1nOXE1dEhNVmZ5?=
 =?utf-8?B?S3pPREU2ZjJSamNrRGNWZ3I4WlZ3ZjhsNHcxcUJacDV6NnlpcmhWNUtNYnlU?=
 =?utf-8?B?d3A3MWRXYklYS0Z5TzcvWjhyUk91RzR2K1pNdkhESFFrM1R4ZDM2YzJCY01Q?=
 =?utf-8?B?aHhQMGQvaTg3YVo1dFJyZEhzRldpT1FsaDNEUVpnM0xjYmRxZ3ZVdEVFa25Q?=
 =?utf-8?B?bCs4ZXE5NVByd1AxNjhQbjcyaFRlTmp5ZnVKaUZNMERMeG0rK3Evb1lPRmpr?=
 =?utf-8?B?ZzR5OVhxSGRuYnh4NGhsa2lVMm9VK2FEMGxmVUk4Y1FRYkhxalNNTkRERWlM?=
 =?utf-8?B?RkhiZkVYZlFQM1RCYmVuL1cvSFBWbzhCeDF2YmlXQ0wrY3JUQ1pXSVZuQUta?=
 =?utf-8?B?WHgyOUU4MlB2cVdzb3V0bXk4dVdPZTc2YzNZeVBkWjI5ZmNsaHB0dXlvNHk5?=
 =?utf-8?B?MUo4cHFONmVYcTZTN1RRWDMxaTBWWlN0a011VmZlY1NHYVljMGFOMy9uZzQ0?=
 =?utf-8?B?NFEybDFZU0dPMUFKT3Z1VEJzL1FHYUs5VkwveFpZL04yUVE0WHVBSzd5ek9J?=
 =?utf-8?B?RGg5aStUWURzSDVsL2gxNnFkQnA2T1JBaWNsYmo0TzlUb2MyWE5ZZE1CRHFR?=
 =?utf-8?B?YkdNY245d2NKeGJzdmEvbGhTak5WSE9KdGVBdndTV3g0N2FZaFJjMjFLWGJr?=
 =?utf-8?B?dGRHdFRzdFNxTFBUa1hhNmYyRXF5N0JzRDN0TENBNUpBMXdMYWR4RWxsV2dn?=
 =?utf-8?B?MzlrNWNyRklMdGFzcHRrVFB6b01XWUh2ZGw5YjRyeXhubk9kN1A3ZGRFVnZT?=
 =?utf-8?B?NFBFOXRxVmFuM09QeGV0UXVES3VEQ3dFUUt0YThBbUVFSEo1SnhIaGt0ZnpJ?=
 =?utf-8?B?QTBxNjA5L0dESEswT0hWTG1DMHVPdDFFa0hZZVpUdUxqZm1Tc1JCL3VwL2hQ?=
 =?utf-8?B?cFMrU2M4U2NncGdSU3BBY3RVZVFPdkNtbHd2YTFMZVNPUWVnbTdhaHBmUUhy?=
 =?utf-8?B?OWxTalNWQk9FOUQ5bzhBZHJVVEp1ekg3eEhhajdRNWFBem9OWkZZTWdRMnZN?=
 =?utf-8?B?Y3hvMWJtWjBDYy92ZmpYYTU0WDA0VjFkMk96WTVCdXM5QjRWc0ZXN0lNdXQ0?=
 =?utf-8?B?TlBBU3RWMUxFWFFlWGtTSVkxcVIvcFJoc010Q04reEt4YXVTU3B1bzZXWW94?=
 =?utf-8?B?Y0VnVEVyQVlRamljZTZHSlVuOXd0QzVZQjV0WlpmbDNWbmlZUjJEb2Z1K0pF?=
 =?utf-8?B?OUFpMDlxZUczaVoyVm9ldDlNcTdXanArUVNFZFNlMTloOHNYcE84Q1RGbjJV?=
 =?utf-8?B?MDlKSHhQSDVXVEFsOWtFcDZJK3hpSDRYay9MQ2g2MTdSNC9yTDlwRStPYTdS?=
 =?utf-8?B?WUZEamVkMlZwd3BjVTJrVzZPbWE4NEFVdG1QSFAwOFpYaUlCTXZjNG1YTWwv?=
 =?utf-8?B?cFc4a2lUcEpNTXl3TElnaFptOFhYZGN1VXlpQ1hDalFsWXdid2dyNlhBaU9Q?=
 =?utf-8?B?alRYVDI4YmFWRUUrS003UW9TVXRuVHJVS1FvUVVQc0tSaVRtaEMvM1IyZW5z?=
 =?utf-8?B?R3BqOFUwU0xybGlIaFpBREhOZ3A4Q1RXN0pQNzZVVWV1UUVETmpnOS9TYmRu?=
 =?utf-8?B?bW9rN0NLM2FrRURwSE0vc0U3UUlCRkJ3TEFDVjNNMm9jR0Jkb2M5YnJCazQw?=
 =?utf-8?B?UFU4c2FPenRLVHBTYWhpa2pQYlo2b1lpNk5TK0FzMXhGUDg1amdnaS9zZG15?=
 =?utf-8?B?R3BQa0pYUVdPK20wejBxUG9JMnBRZzVCbXJ3N1BZMkVLUzJqNVQwS2plcmx5?=
 =?utf-8?B?MllvejlHOEphT1FqUm5TRXZPSVk3RGdCbU1zbDFRbUNMLzMyQ2xOOEhzOWNn?=
 =?utf-8?B?bWllSVVRU1JpazZ1WlgreS9JYUluOE1xUWtDc1R2U2llcEZ3VGc4UkVSRUZG?=
 =?utf-8?B?c3UwUDhOL1ExTXN2cXRUMnNGQ0U3WVV0S2ZLRG95Ym5mbHNyazdqUWhwN0k0?=
 =?utf-8?B?ZGJIQ1VQUU9ya3JlNTVjbWFIY0lyMWVvTGt5UDhpekUvV1JheHVGQW1EeVF1?=
 =?utf-8?Q?PwgOWnGmXxkdOQFoPC6PzceFt?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(14060799003)(376014)(35042699022)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 11:36:15.6170
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dd31d767-ad2c-4a44-f179-08de4c4ea2e3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000192.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9069
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jan 2026 11:36:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66131

T24gMjkgRGVjIDIwMjUsIGF0IDE1OjE2LCBEYW5payB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8ZGFuaWlsLmtsaW11az0zbWRlYi5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6
DQo+IA0KPiBIaSBldmVyeW9uZS4gSSBhbSBsb29raW5nIGZvciBhIHdheSB0byB1c2UgcGF0Y2hl
cyBpbiByZWNpcGVzIHdpdGhvdXQgYWRkaW5nIHRoZW0gdG8gbGF5ZXJzIGFuZCB0aGVuIG1lbnRp
b25pbmcgZGlyZWN0bHkgaW4gU1JDX1VSSS4gQW4gZXhhbXBsZSB3b3JrZmxvdyB3b3VsZCBiZToN
Cj4gDQo+IDEuIEZldGNoIGEgcmVwb3NpdG9yeSB0aGF0IGlzIGFkZGVkIGluIFNSQ19VUkksIHVz
aW5nIGVpdGhlciBnaXQgb3Igb3RoZXIgYXZhaWxhYmxlIG1ldGhvZHMuDQo+IDIuIENoZWNrIG91
dCB0aGUgc3BlY2lmaWMgaGVhZCBpbiB0aGUgcmVwb3NpdG9yeSAgKGEgYnJhbmNoIG9yIGEgY29t
bWl0KS4NCj4gMy4gTGV0IGRvX2ZldGNoIG9yIGRvX3BhdGNoIHNlYXJjaCBmb3IgZWl0aGVyIGEg
InNlcmllcyIgZmlsZSBvciBhIGxpc3Qgb2YgcGF0Y2hlcyBpbiB0aGUgcmVwb3NpdG9yeS4NCj4g
NC4gQXBwbHkgdGhlIHBhdGNoZXMuDQo+IA0KPiBUaGUgb25seSBwcm9ibGVtIEkgc2VlIGluIHRo
ZSBwcm9wb3NlZCBmbG93IGlzIHRoZSAzcmQgc3RlcC4gU29tZSByZXBvc2l0b3JpZXMgbWF5IGNv
bnRhaW4gcGF0Y2hlcyB0aGF0IGNvdWxkIGJlIGFwcGxpZWQgdG8gZGlmZmVyZW50IHRvb2xzIG9y
IHBhY2thZ2VzLiBBbmQgYSByZWNpcGUgdGhhdCBpcyByZXNwb25zaWJsZSBmb3IgYSBwYWNrYWdl
IEEgY2FuIHRyeSB0byBhcHBseSBwYXRjaGVzIGZvciBhIHBhY2thZ2UgQiB0aGF0IGlzIGJlaW5n
IHN0b3JlZCBpbiB0aGUgc2FtZSByZXBvc2l0b3J5IHdpdGggcGF0Y2hlcy4gSGVuY2UsIHRoZSAz
cmQgc3RlcCBzaG91bGQgYmUgcmVzdHJpY3RlZCBzb21laG93LiBBbiBleGFtcGxlIGNvdWxkIGJl
IGEgdmFyaWFibGUgdGhhdCB3aWxsIHBvaW50IG91dCB0aGUgcGxhY2UgaW4gdGhlIHJlcG9zaXRv
cnkgd2l0aCBwYXRjaGVzIHdoZXJlIHRoZSByZWNpcGUgZm9yIHBhY2thZ2UgQSBzaG91bGQgc2Vh
cmNoIHBhdGNoZXMuIFRoZSB2YXJpYWJsZSBjYW4gdXRpbGl6ZSBvdmVycmlkZXMgdG8gY3VzdG9t
aXplIHBhdGNoIHF1ZXVlcyBmdXJ0aGVyLg0KPiANCj4gQW4gZXhhbXBsZSBvZiB0aGUgcmVwb3Np
dG9yeSB3aXRoIHBhdGNoZXMgY2FuIGJlIGZvdW5kIGhlcmU6IGh0dHBzOi8vZ2l0aHViLmNvbS9E
YXNoYXJvL2Rhc2hhcm8tcHEvdHJlZS9mbGFzaHJvbS10ZXN0aW5nL2ZsYXNocm9tIC4gVGhlIGlk
ZWEgaGVyZSBpcyBub3QgdG8gY29weSBhbmQgcGFzdGUgdGhlIGh1Z2UgYW1vdW50IG9mIHBhdGNo
ZXMgaW50byBkaWZmZXJlbnQgYnVpbGQgc3lzdGVtcywgYnV0IHRvIGhhdmUgYSBzaW5nbGUgcGxh
Y2Ugd2hlcmUgYWxsIHBhdGNoZXMgYXJlIGFkZGVkIGFuZCBtYWludGFpbmVkLiBPdGhlciBwcm9z
IGZvciB0aGlzIHNvbHV0aW9uOg0KDQpBIHJlcG9zaXRvcnkgdGhhdCBjb250YWlucyBwYXRjaGVz
IGZvciBpdHNlbGYgaXMgc2xpZ2h0bHkgdW5oaW5nZWQgKGp1c3QgbWFrZSBhIG5ldyBwb2ludCBy
ZWxlYXNlKSwgYnV0IEkgZG8gd29yayB3aXRoIHJlcG9zaXRvcmllcyB0aGF0IGRlcGVuZCBvbiBh
bmQgc3RhdGljYWxseSBsaW5rIHRvIG90aGVyIHByb2plY3RzIHNvIGNhcnJ5IHBhdGNoZXMgaW4t
dHJlZSBmb3IgdGhlbS4NCg0KV2XigJl2ZSBnb3QgYSBjbGFzcyB0aGF0IGFwcGxpZXMgdGhlIGlu
LXRyZWUgcGF0Y2hlcyBpbiBhIHRhc2sgYWZ0ZXIgZG9fcGF0Y2g6IGh0dHBzOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvbWV0YS1hcm0vdHJlZS9tZXRhLWFybS9jbGFzc2VzL2FwcGx5X2xvY2FsX3Ny
Y19wYXRjaGVzLmJiY2xhc3MuICBJdOKAmXMgbm90IGlkZWFsLCBidXQgaXQgd29ya3MuDQoNClJv
c3M=

