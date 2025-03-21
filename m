Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16992C36000
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 16:09:31 +0000 (UTC)
Received: from outbound.mail.protection.outlook.com (outbound.mail.protection.outlook.com [40.107.162.71])
 by mx.groups.io with SMTP id smtpd.web11.3809.1742573365480633035
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 09:09:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OlLp5UY8;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OlLp5UY8;
 spf=pass (domain: arm.com, ip: 40.107.162.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=p1Eb9vAmzGnCt2KFZR/BUuxvwApvg3Gu1Y7TqfOig8bD9oru1dM7H5XgxzFdaPAiuzo+kwnu/xEyS31GJ4tP2IAJApRHSLUUNzIAta/+Gmyg5i4f0POkN80RyCiupT5CpA2nQ/4js640zuvp6C8FpKxvB3V4m+q22DId0iJw6ohF+JIZ52+JfmHjEweYUTt6lN9r4P8Tx+TEZn5fnDE53tfLLDYrAU2gziHX+udm14QyCjnUu4sMtNS5wrvQqyXi8+za9EClRxdqABGaqfA3YMat1wM4tUur2qwtcd85UNLNXmXoR9d/IeyhN5YYu4za1CQVNQJw55krZki7/zqpcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hm8cmDffAy3caVj+wM6CFeVjRr4ez5pae93v6onlf8g=;
 b=hxrC6FfiVDsAn4Dp7JHn74KJaBLhrMHi4DmR8Ptki3ziIfj6mIwgvRYQUVQfcRgjGzb+FSJQ2mPyVolKP2bulKaBsBKOlJZRM1oUceK2G8vHREFmfl4Z18Vcvj/45Ny2ZiC4J3A2wVi1FxO4YSR6b448dVZDc7AJbudtN34kksUX3ohhT24a1r90zqsYpchatX2A80nd1YLCCo7+8sMW/NMd+uyjBjvxljGJpv9WKOMsikyXOrZ7HoEYZnXJtBc4Fk2XuXwSMrzPWquMAtzQQIVo0mBwyRg2s1I/+Ccx0pV71NZpm0oDaHV90471uNdnXIixHahlI5hnk2r5zgf/4A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hm8cmDffAy3caVj+wM6CFeVjRr4ez5pae93v6onlf8g=;
 b=OlLp5UY8qh5dS7xhicDMZpU1OlWj+WNizCyBU+rSPETCVCDJNJJxSsY0M5Q4JI9Q/LeZilDAvQ2NUV28E+yb4YyXnuhfFckcLvn5VPNTBLeCqzOTD1ut5WT5BjAoiOPuIsYL3q1i7oZPwQtx/cpngEJX0p4F99O8igrZf0UDBlA=
Received: from AS4P195CA0022.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:5d6::10)
 by GV1PR08MB7731.eurprd08.prod.outlook.com (2603:10a6:150:52::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Fri, 21 Mar
 2025 16:09:15 +0000
Received: from AM4PEPF00027A5E.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d6:cafe::4b) by AS4P195CA0022.outlook.office365.com
 (2603:10a6:20b:5d6::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.37 via Frontend Transport; Fri,
 21 Mar 2025 16:09:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00027A5E.mail.protection.outlook.com (10.167.16.72) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.20
 via Frontend Transport; Fri, 21 Mar 2025 16:09:14 +0000
Received: ("Tessian outbound 5b84e532c19a:v597"); Fri, 21 Mar 2025 16:09:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c8092e8321cfa0f4
X-TessianGatewayMetadata: NEd/QxhymwL6V9IoCFJcHLMLJacrWBWEyDXnk9BmAtguf1MZ82VRTv7bH2C8OgyyjcIdFOiidxsE3yJi3xQ4Pp948Zqs6dWBSUiu2GOsO4y3aFKs1X3K0Ey7fNHyuYmjzUgoN26IvAhWkXtanv1zJp6osvt/yg4EkxSbeq8Y65w=
X-CR-MTA-TID: 64aa7808
Received: from Ld9f37c7636b3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id C0944B8B-76C0-471E-9402-ACC2360DDE5D.1;
	Fri, 21 Mar 2025 16:09:07 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Ld9f37c7636b3.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Fri, 21 Mar 2025 16:09:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RSNwGqyVBYp6jibAH0nr6kMZicGvEVkrDo2yuQMj3mCqYCaTiMZ7aRZcAuedCNaN37MNAaT8rZUIOOgtnIPrkD22lU1v/jhmIsXMLV2XhPOqerXh+GKKdlojFk6XKNLjiSeVFadL+psmhBlrbPUqtsU6kPYdRy9QWuCVTQI0oa86sUiGsLKVkJNr98Cipo8R01IooDHpcAA0QO7mpn8ANinZ/pUUVLMb/9OzSCyJHG/WtPo6RY0FKcacZuR/hOvLrLR8/p88CydlB86SeO9uLMqrwp5qymk1tm+/3VtU7eItXlYfuJG/hovwKJQSOdml+1/ZKU+1Ouzy4YEO9NJvww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hm8cmDffAy3caVj+wM6CFeVjRr4ez5pae93v6onlf8g=;
 b=g7w5AeU6bxoomCPk589/AfXXHP0FNfDtVVN5KZ2ErXVE63PCfCyK2EQ4YF6JMMxNaZZIkvZRgkrMo7pT1TD1ZpnW8CXYsImp32iQZb/9IFtUB/qEkuZW7bT+K6qMj5Din/kzKCWqIb0Y9GUlYl7aJuFlv5C5xpo/gLc4Sddd1o5Vc3SCMwVYYVm3Aqg36LRenQcTLsn7XFl85OCGy0l7R5nPYZDPnh/qTht9Qzrl7hsgoYG+pV9BipC2Au7pDbQVJqD+oY54P2jzK1vtqyJNNnRnE4+PJzLf0DweHtSFVCE8srLi9IO5Xy19zCyjdnXub/HCgxTWkuv0hn6LKo9emA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hm8cmDffAy3caVj+wM6CFeVjRr4ez5pae93v6onlf8g=;
 b=OlLp5UY8qh5dS7xhicDMZpU1OlWj+WNizCyBU+rSPETCVCDJNJJxSsY0M5Q4JI9Q/LeZilDAvQ2NUV28E+yb4YyXnuhfFckcLvn5VPNTBLeCqzOTD1ut5WT5BjAoiOPuIsYL3q1i7oZPwQtx/cpngEJX0p4F99O8igrZf0UDBlA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB11146.eurprd08.prod.outlook.com (2603:10a6:150:1f2::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Fri, 21 Mar
 2025 16:09:03 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 16:09:03 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
CC: "william.martin@muxen.fr" <william.martin@muxen.fr>
Subject: Re: [yocto] Using a python3 native module during do_fetch
Thread-Topic: [yocto] Using a python3 native module during do_fetch
Thread-Index: AQHbmceKYqMQzN+EYUOBH/jJrOW+2bN9RnGAgAB9FIA=
Date: Fri, 21 Mar 2025 16:09:03 +0000
Message-ID: <E33BA13A-D829-4451-93C3-EFA52508C0A4@arm.com>
References: <975bd8bc-c4a8-4927-ae48-fde101bfbf7f@muxen.fr>
 <CANNYZj_TXTHywFvqqxfCEqW9pCRiU_36-Sbmhh0s+bPLtTQWMQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_TXTHywFvqqxfCEqW9pCRiU_36-Sbmhh0s+bPLtTQWMQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB11146:EE_|AM4PEPF00027A5E:EE_|GV1PR08MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: dbcd04e2-a098-4674-820f-08dd6892b97a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Z1RlYnV6ZXpUTmlObXl1QnVQYnlhbmxLNlJqcldlMXM0UHFweHhvV2J6OWVK?=
 =?utf-8?B?Z090MHlpczgwUUpCRjNRUXdBajNNUm5tOThaS1VRM1hmZmpGL0oxd1p4alg1?=
 =?utf-8?B?K09iNHBQODR2TVZTNmgwRjRJTUprYlY2WkhOQ1pETjN3MitNOXNjNHVFYzI5?=
 =?utf-8?B?Z2ZiZTgxUzdYNjZmRmRORjEzeGlvRlAwWmtNL0JXeWxGMzJ0c1cwWHhMQm1H?=
 =?utf-8?B?RTI4R3dWb0RRMmR4NkVYeUg5dnJrRUF5M29nR1p6eHJKdjZuMm51WnRjUm9u?=
 =?utf-8?B?dlUyZGtaZzRha2NjRVRUTmhJMS80bCt6NjNlSkNKREpmMXBTL1RwSmNTcEx2?=
 =?utf-8?B?M2pZakRMYzNmVTBtQTNiZXNjemY3QlNublRyc3pmTXliM3RZTGxvTlRiVlZs?=
 =?utf-8?B?SFBSQkVRcGlDQVZlNlE1WEpEOHkvWTlVYnBKcDU0SUM5M25pemNFd093Vnor?=
 =?utf-8?B?N3hCcFpEckVqbTBvQ3dPNW5tTTNMMGNqVitLTzgvT3FkTVVZV3JKUFJyQUN2?=
 =?utf-8?B?bjArN3hqVDl6YzBjMlpFSTB4Sy8zNzVQdk9QdVp3c2pLekZBUlA4RnBlQ1cx?=
 =?utf-8?B?VW5vcit1Nzl3czN6eGFtUHNnR0ZXWHppR1JocTdkSlRSMVlXWmhSYTlGblBx?=
 =?utf-8?B?bk8xUW1HRldQWC9EZlFHZlU1WTFWbDFLNkVjN1ZWNTk4TFlUeGNXeG5tN2RX?=
 =?utf-8?B?NVFESlo4UVJmVmtiZGRheUVUa2JNREpEZ1U4YVo5ZSt6UkJkVjV5Y204TkFN?=
 =?utf-8?B?RlpCNVVPUkgxc1FZWE9kR1FkeUt6SS9rVE8rdVJBMkdaZ3RZRFV1NGtoK0Yv?=
 =?utf-8?B?czBWdjlVQTNZOHNwZ1VXTnQ1R3V4VnFDNHN3YUE5d2V1VFdOY2FTa3ZlK3Jp?=
 =?utf-8?B?WW9pa0hkakJFemNiTm5KeFlVY1NYRXR5UnFjWUdQYjZVNGV4bWJXbUJjRlo3?=
 =?utf-8?B?VlFTbStCVkZVa3ducFFOTVBrem9uK2Z0cGg2M2UwQ242NzNDS3JTUDRnWS9P?=
 =?utf-8?B?VU5FMkxPei9Ib0V4cDBockg3ZUwzdTNWbGJ1OStrQzFnNnhyUWNHbWhoS1BO?=
 =?utf-8?B?d0tMVTNuRXVUbVR5eVcweUh5Z3FnV1ByV0psWmRnbGt0cEFjSUY3di9ZbFll?=
 =?utf-8?B?azNoVzdjWmorVEZKRjJjcDVSZEpHV0syVVc1Q1JraFFzOS9Hc3Nmc0xUKy9a?=
 =?utf-8?B?ZEtEM0Y1OGN1M1R6NDg5K0ljaVJlRm1KdHEzY0lTd3BoNTdhaFFsUnB2WjR3?=
 =?utf-8?B?NUZwb2dIUFYwRjVsY245eVVSaFlQdDJNdVFZdC9qbEZrNTlDQ0s4WDNBWW1O?=
 =?utf-8?B?UzdjZlRlRFNrVWV3aHo3RUxBUlREZVRlaXFhZGlMM2VKQnZtejNRdDB6eGwx?=
 =?utf-8?B?eXUzeEVMSUVrRHl2N2xVbXRJRW1MYTZCcGFhejlLQ251blJmbU1HRGczbTRr?=
 =?utf-8?B?SG1WdDJuS0hrMTNiaG13VTM5TkxwNnFkL1EvdmZDU2FibHBxMFovSjRZd1VO?=
 =?utf-8?B?NUxTd1pIMy90RTVVakkxNUZreDE2T3JCRVdkdTJpN0JGUTQ4NDUxaDdyZkIw?=
 =?utf-8?B?ZkZ6TXJpckI2MFBMVitRMXRGM3NldVBJYkNETkNHZmVKV2ppRXZ5SHR2V2lq?=
 =?utf-8?B?VDRlRzlNSUl3RExZZFpZZUZPVU92aCt6Yys1eFZ2YTdST2lSQkZoNjM5Ujcx?=
 =?utf-8?B?R0RaaVFZdWN6N3o4NEU1RVRyck5mMXFrU1pMWXdSZ0JWWWw1Mkg4aStnVDRr?=
 =?utf-8?B?N3BaeDA0MnpvVUdJYkxiOUkvbXA5YUdFMGVnQmpyNHFUak5PSTF0QmJvY05x?=
 =?utf-8?B?TFVsTnMveVY3UkFLVldsMzRpQjVETHo4cFJuRVNnNWJNNGh0dFE0aWN3VUZp?=
 =?utf-8?B?bll0eldOZUh5WlZvZ0IxZE5VaFQzUVpNTnVCdzJCQTE0YVJvamMyTTl3Mlp6?=
 =?utf-8?Q?SdciRR48AeUU1GRvAfnGGWrIqjaWIpHu?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E53FE8AE788CD4991612A3853C00375@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB11146
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A5E.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6b822410-3c5a-4a79-61be-08dd6892b319
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|35042699022|1800799024|376014|14060799003|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VGhtN0FwcDZ2V281YWprclE5ZFIwN0U4eXJFTThPeDhYNzFVTlkvVjZQQnps?=
 =?utf-8?B?aWoyQVZaWnVoTmNYZ0lzK3lXNUM1RFUvUXZtZUNFTmh4dkJ1THkxOWV4ejcv?=
 =?utf-8?B?dHl3cVlYenRPQTlsWURlTW9Od3pDYVRVQkIwMmhuamFmdDhHeldldTFLYU9H?=
 =?utf-8?B?dG5JL0RaTGw3d2ZHem10K1NkRnNaMDl0K2RTbzN5WFlOZ0pweDFLUVNlV1Bm?=
 =?utf-8?B?VDdHMzEyUklTSzZySkREemc4bmpuYzFTVmFtNWk2dVloUFlYd09RcFVpZkZK?=
 =?utf-8?B?ZHJsTTliTVNwdkgxNjVhVWlNbEl5em1OMVRJTk5zSEtnUHV0alBpZUVnVU5Y?=
 =?utf-8?B?RlZkbTRRNlNPTlBUeDBhRjJRQjNmcFc1SWE3NkU5Rk1aTVFnZE5Sb2M3QlVS?=
 =?utf-8?B?c1M0Zmo4ckFoeHFZVW9vbm1CZEJpd0Z6UkFYVmorUWo5ZFB2RWprYzhjVmRi?=
 =?utf-8?B?bVgvblNCM1hOT3QxV1VyeG5UdHc0YWF0WCtCVGFuT0NwUjJ4M2hGa3Y0U3FZ?=
 =?utf-8?B?Yi9yelBJV1RNQzNhdFd0VmdXRWt1QXZKN0tjK0hISGhHTGFtbjVEYUM2b1ZO?=
 =?utf-8?B?UndrU2NGVW1ZL2hEM0h1c1ZyV2dHOWxTd3lrOEx6WjRQN0RvQ0tDR2pMZU1T?=
 =?utf-8?B?U0xYTFNiVDlmMStEc1lWdFZZOGxuT2lENzRzQmhoTEdJNGY3ZHBDMVQrVDhn?=
 =?utf-8?B?NjU3anp6VVB5NFQzZG1YNzZkSFh4UTJlRGg3MTJrMHBQSnUrOVVTbC92S0ZT?=
 =?utf-8?B?VFZnbDdnNUZjZDQvWTRqVm54b1UzT0xFSUw1NVF1b1p6dkVJcVZkUGV3Szht?=
 =?utf-8?B?L0piRVBzUVVVdWtIUlBLVllSUzEwbzlCMnltaFpPRjZmNEdaYk96MURuc3BB?=
 =?utf-8?B?L3VLV1c2TTFhK1prWnkvMWQ1M25TN2M5YVZkeEZnZWJHZFYzbFlkWHE5Z2lx?=
 =?utf-8?B?QVEyQ1pkK0Fhbk1CMTRPSnZMUGJ5ZVpTVDJRdjVTZmY1b2VlekhyeXR0WGJI?=
 =?utf-8?B?Q01LYVRUSEVZbGlnTDkxTjJHTnVLQS80dUNNV3NKWXc1UkViS3dsZkwvV0xX?=
 =?utf-8?B?dWNWcnVsREsxQlZyUUZaRWVETUQwTWkwSzJXTU1sdTBEWlVHMnJCODEzTXNa?=
 =?utf-8?B?RjhadDVKdmMrZnNMdjZkZXJYdW81QU9kSU9qazRvTTJZbWxBMk0waWM4SkFS?=
 =?utf-8?B?UklqRGpDZlpCMFdETmliZllCb3pYaGFKWnJFSmxkaERQWWtlSWpaeHZGWE5L?=
 =?utf-8?B?SVVNdE82MkQvRkFadlBZVk9aVks1eFVSOWZtNHZxNVd6dEZkTHBzTmZnYkY5?=
 =?utf-8?B?T1Zqb3llbUtEZGZRM0E2U0pHVURBZVBZcW1IYlJLTmc0bDBjMktnNis4d2RN?=
 =?utf-8?B?NDJGdmRENzM5QmtPNjd5blk3b1VoazZhWis5a3Q2VnNXU2huYmU5bklmWk9l?=
 =?utf-8?B?aVRHVHRaeXVWYzBvM1FWdWs0NmhNRHRpdy90VjJDSS9zM3drc09wbWZsSThz?=
 =?utf-8?B?SEdRVCtrdmFvSVdrMVlYbXVIL3RqQzZ3b1UxdFdSeDQ1VmhzNWZVTmJjSUdR?=
 =?utf-8?B?U3RFWDRxRG1QRkJCTU5BV2VWV0s0VzR6RGxlaGo4NG5iZ1NJYjhkMzhjQVV1?=
 =?utf-8?B?N1dHQjdGc1owV1R2dGwwRHhjdFhJdFo4cUlUQ2h4endPRVhNMEZDSExrbmFw?=
 =?utf-8?B?blpyTGdwekw2c2d6RmZGYWZNY3FnZFJnbCtaVDVoV081elBNRi9EbTlsci9P?=
 =?utf-8?B?NlRQQlovdFI1Nklxa3FhOHF3MC9ZOEtqeHlEbmIrSERIY285UkI3UnlWV0x6?=
 =?utf-8?B?VnZzOFRwSjR5NVBaOWwyemhvZEFKRmJuZnVtaVVVVkZBS09welNtbWhObFdX?=
 =?utf-8?B?NndEMFFPTFNwUUtmb0hzYXFSbk4xKzhQQnpJUys2R2FEZzZrOU5NZUtLanlC?=
 =?utf-8?B?akVnd0owckc3ZHFhNDRIOCs0MUMwbkVvaFN6M3gydVNDK2I0QWd2ZHlQT0VM?=
 =?utf-8?Q?wFpwdXhX67kxJ1qMPopJKoYH5l4QNQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(1800799024)(376014)(14060799003)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 16:09:14.2337
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dbcd04e2-a098-4674-820f-08dd6892b97a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A5E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7731
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 16:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65005

T24gMjEgTWFyIDIwMjUsIGF0IDA4OjQxLCBBbGV4YW5kZXIgS2FuYXZpbiB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8YWxleC5rYW5hdmluPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IFRoaXMgaXNuJ3QgcG9zc2libGUuIEZldGNoZXJzIGFyZSBhbHdh
eXMgcnVuIGJ5IGJpdGJha2UsIGFuZCB1c2UgaG9zdA0KPiBtYWNoaW5lIHB5dGhvbi4gV2hhdCB5
b3UgY2FuIGRvIGlzIHR1cm4gdGhlIGZldGNoZXIgaW50byBhIHdyYXBwZXINCj4gb3ZlciBhIHB5
dGhvbiBzY3JpcHQgdGhhdCBpcyBidWlsdCB2aWEgcmVjaXBlLg0KDQpXZWxsLCB5b3UgY291bGQg
aGF2ZSB0aGUgZmV0Y2ggdGFzayBkZXBlbmQgb24gcHl0aG9uMy1zb21lLW1vZHVsZS1uYXRpdmUg
YW5kIHRoZW4gbWFudWFsbHkgc2V0IHN5cy5wYXRoIGJlZm9yZSBpbXBvcnRpbmcgdGhlIG1vZHVs
ZeKApg0KDQpGb3Igc29tZSB0aW1lIEnigJl2ZSB3YW50ZWQgdG8gbG9vayBhdCB0aGUgcG9zc2li
aWxpdHkgb2YgdmVyc2lvbi1hZ25vc3RpYyBweXRob24gcmVjaXBlcywgc28geW91IGNvdWxkIGlu
c3RhbGwgbmF0aXZlIG1vZHVsZXMgaW4gdGhlIHN5c3Jvb3QgYW5kIHdlIGFkZCB0aGF0IHRvIHN5
cy5wYXRoIGF1dG9tYXRpY2FsbHkuICBUaGlzIHdvdWxkIHJlZHVjZSB0aGUgbmVlZCBmb3IgcHl0
aG9uMy1uYXRpdmUgYXMgd2XigJlkIG9ubHkgbmVlZCB0aGF0IGluIHRoZSBjYXNlIG9mIG1vZHVs
ZXMgdGhhdCBjb250YWluIGJpbmFyeSBjb2RlLg0KDQpSb3Nz

