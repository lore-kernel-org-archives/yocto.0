Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A3F5CCFA04
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 10:34:32 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.17])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14663.1762252470730260635
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 02:34:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=K2QMaNpe;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=K2QMaNpe;
 spf=pass (domain: arm.com, ip: 52.101.69.17, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=XVcN2bcqlSLyO9hC3Y3ixSZb+ID7RmuXIBJvKMGoQ6vp4RGT9aYgrzf7oju9AVjLxkuaTQqp2KmukN/CUlnMBEzg3wJ5ODmUOYq+kbbiiHnKwpAUZl6LPZwswndldQRtxHs/GTGvYcotJZmAKzpMx0xbZoGxAAGgf2+nbc1duLzlD7bGqyFz7bUQm3tHqePin65EG12pTVSU11o2hcuCLbILaCZ/w1EuMtEnjTBbRJLJOJa0O6cUgqHlYV1WLHB+eTEft7dfGHJL+Z1FenBVF243uC1EoJypo8ndsm81SFaGz/hD59CxdXf2WAy33ScF2L2kdgYUznVScgr/49sg1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cWXgNvMg8gYcsAKzeO4NRjjleUnZ0o912SJuYDk+590=;
 b=apA2MyZ+f1buIXqdMptf9xQyAZWo8/vmyvE5XbxnkljHpGMcfF9N3Vg39rqnnH8jJvFEUNuG2ydFcW8qH9p4RonM3FeLOETZ6ewga2eVSonMivFUF3xmMDqEClUoZk4GXyAiAJnpbAKHPxF7O2Ub1WD9qRNSiZnr30DVK2R5kBPeQ3HPxpSwALBKhxeA5P6H03MUXGLhFlU52w3yRCSucPZDNMcNdzfLmXoI6K+c8JIgcidLOJRxHPSXJe76WTI/RbJbtz8QlXa6bHnZHm8MNMXSPgvh+AsgS8kdx8mL+O20LwG1yBKgY2HrKl6siXEbJ59GwL2FBt085advGBRyVw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWXgNvMg8gYcsAKzeO4NRjjleUnZ0o912SJuYDk+590=;
 b=K2QMaNpefnMN0GMKr/z++gDCvqDeY1BvtygAen2PLNhgzlEj8QbNsqbe4pkNq8JE78YVVHGDJ80KeNT9/EERlt7GTzeMQs09KKUmdhOzVcRn7j4t3RtPcjxoxzXNKPo1HnMxKZU4wAltB849+b/gbOYzCUZ02vIEbfN3yZR/LWg=
Received: from AM0P190CA0022.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::32)
 by DU2PR08MB10186.eurprd08.prod.outlook.com (2603:10a6:10:46c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 10:34:24 +0000
Received: from AM2PEPF0001C70B.eurprd05.prod.outlook.com
 (2603:10a6:208:190:cafe::41) by AM0P190CA0022.outlook.office365.com
 (2603:10a6:208:190::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.16 via Frontend Transport; Tue,
 4 Nov 2025 10:34:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM2PEPF0001C70B.mail.protection.outlook.com (10.167.16.199) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.6
 via Frontend Transport; Tue, 4 Nov 2025 10:34:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dssuLFojfGuxZM7yrUs4e2QNlR1Xu2i/JaMNK9mL3sALc1dIUmtOGj2f/RGixzAUWVTysVwEVEZOKL3wN0Dh/yd4x/4gMIikTbYuLSiDOAsS4bWA/pKeWQfkKCalsL01sELFohW8g54WkkfcuplbxloODifom6ISSq1uPmTjVj8oCmRYAp+5DWWuKmEnampETiWBUJQVxlVAn7jAKdwAjx590Bd7s8QCNgfnynpKZHWZr1FFIycjNfIxRgyutE5uIDsEF7qp17zJoFe+wc7QHtfnWIQIeC8VDrEnS8IkMHYDFrUJKO90X3hQbOJPAKXwbZQP3VaC4Wot4IC6dYG5Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cWXgNvMg8gYcsAKzeO4NRjjleUnZ0o912SJuYDk+590=;
 b=b7IUAXeM5m1HnZLtPhhEv/E5ZaBgC+zk9ROdCTrZnCXDC1F4IPyCOtEIzZ0tn5NmjX9Rx3TbtzkGYCDHmTpdAe7HJ6KB8gyvLwOoS4kn0Rum6MrgAQBMKWb/KUg7LiGe3paQfmV3KT1fC5sOsf0wuXMdiX9JRMZ2YX7b6PxQwBuyBNCR5MKh+JuXHc4JOFw9kvolry3d88HwlUrMQ7h2pGuTNB/DvyvOotjqAlWQjoOEq3qjeV79OtX5EfqqY3PUafa7UV+K9Y+4/uMMVBAPd2CWSRwm7+28mVYZEjUVzw/pb33UBreEaZRgyloTDvjI3U1QqDdHHM8NGj1zy21ibA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWXgNvMg8gYcsAKzeO4NRjjleUnZ0o912SJuYDk+590=;
 b=K2QMaNpefnMN0GMKr/z++gDCvqDeY1BvtygAen2PLNhgzlEj8QbNsqbe4pkNq8JE78YVVHGDJ80KeNT9/EERlt7GTzeMQs09KKUmdhOzVcRn7j4t3RtPcjxoxzXNKPo1HnMxKZU4wAltB849+b/gbOYzCUZ02vIEbfN3yZR/LWg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8345.eurprd08.prod.outlook.com (2603:10a6:10:40b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 10:33:50 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50%4]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 10:33:50 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"dchvs11@gmail.com" <dchvs11@gmail.com>
Subject: Re: [yocto] SSTATE_MIRRORS not working as expected
Thread-Topic: [yocto] SSTATE_MIRRORS not working as expected
Thread-Index: AQHcTUA3oFfeOui8j0+q3wdfV05GwLTiUngA
Date: Tue, 4 Nov 2025 10:33:50 +0000
Message-ID: <22291E39-2C29-49DA-A0AC-D533042B4164@arm.com>
References: <Jl3X.1762229101233866192.c0ZZ@lists.yoctoproject.org>
In-Reply-To: <Jl3X.1762229101233866192.c0ZZ@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8345:EE_|AM2PEPF0001C70B:EE_|DU2PR08MB10186:EE_
X-MS-Office365-Filtering-Correlation-Id: a50488c9-91bd-4be7-e46f-08de1b8db921
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?d3VqVjdIR1M2NEFFQzFtNHdlWE1KaWdqVHBjdDBGZGw3TTRjTTEzSmQ0V0xi?=
 =?utf-8?B?cUhUbE1Hc1I4ZWJkK2w4RFNEN09TdkhZK3I4RUJlZG53bWVDNVlWbHJTWktq?=
 =?utf-8?B?bXMzQlZuOWxjU2N0MzJrbXN1RzFPZTlqQk9LL2Q3R2pwSFdQeGVQR3Z5Vm5x?=
 =?utf-8?B?TittekozRkt6dDRFYjM0UytmL3NWME41NkV4cUZkUVIwZms3WnBESHFndkh4?=
 =?utf-8?B?eEhKbXNxeU15K2V2UVB3N2tUNC9mTDZBRHVLK1NnM0ZEVCtMTHhIYldaTVFs?=
 =?utf-8?B?KzZqMkFTMlJVSnBjck1nem1iVXdzTTdSME42TnV6U2JWOFNxcEJTVFg1bUQv?=
 =?utf-8?B?SjY5UWJlNEZvanczWlpLNG5qbmU2VXRPWDdub2YrMXhYQ3dSTCtQSkdrb1BY?=
 =?utf-8?B?VXhnK0ljcmhXUDhNandMOG1XUU9sRGtiWHJjSGJDQTI3dW93eGJ6OGJFdmVL?=
 =?utf-8?B?bDVwTVY2Mk9NQ01NOFZGdDhYeE94RXpKd2VYMEpQZ0M0dFpOR1YzWW4yaTVN?=
 =?utf-8?B?dXpNdG1tSmFINk8rN3gwem5rclZxZ0lRa0gxZGtPYjZQV0pYTXJESkZKbTFy?=
 =?utf-8?B?ZEM2RUhPSzRTd0NMampReFY4QjRkU1NKT1Zacy96em9YMThuRi9ZRlJ1QUlq?=
 =?utf-8?B?U2V4czBVY0h5WkZMamt6aEgrUTNtQ0N6ZzN6dm54dzcwVHlGazl2Y0lISGZl?=
 =?utf-8?B?OExvUyszY3YrQkJtc2ROZjdEeS9uN2hUY1EvZk1zNVFFVUFvWTZNSWt4bXo3?=
 =?utf-8?B?THM0SkRIQmRQS0RSZlBWMFY1RjVMM3hPdHdPaXZEeThXb0w2VGFvbGJBUnA2?=
 =?utf-8?B?OWVKMkQyTlhFOWo3c3BDNGxSWkJqZTNhRVFIVkdNenNORElPdjJiODNXVXVR?=
 =?utf-8?B?ejZnV3FrQVVLa2tsYWphbW4ybzdMMWdyaThNdmtuaTg5cEIyeXl3NFRTMG9K?=
 =?utf-8?B?c3N6ZE1kWmUzbFp6alYrZDMrVldEb3Q0U3dRL09nOGNjWmNkVzV6UnNDak1k?=
 =?utf-8?B?N2FaTmN0dVhEY0JQU1VFWTJ5cDh2MTF2Y29yVmRjbndlazFtc0NTSjBEOHFV?=
 =?utf-8?B?Z2pUUFpqWVpsaERHSi91MzZmTFJndk9JeXcwMGtqMmJiWmdzV1VUUVYwZXB6?=
 =?utf-8?B?cys2SHN4QVp4NUViWFdCNEdtUjNvdElheTNNMDF2ZnZSVFFKbHZRakkvaUtC?=
 =?utf-8?B?eGVZem1pTXU2K0wyZ0tZdXd6MnpZVXpOYnBGT011bERkU3FybWwxRThwbjFL?=
 =?utf-8?B?eW4wTnh3S1hiblFDY1graWZhemNXNG12UlFUQXg0UHlzb0FwTTRZSUtpSldw?=
 =?utf-8?B?UFFlcFFHV0RubVBqd0RkR0F4U0puNVhsUzlQT3NKSTVoYTRUd0R0Q2w4NkVa?=
 =?utf-8?B?R0pWRGRBKzhHbkVDY2ZIZC9qa1NVK0FoekIvcXo4UldNZlc5QjNKRHNkUFc1?=
 =?utf-8?B?aUJ3OC9NeURpd3Y3ZDhKMW1DdzFHR0ZNVHBGNlE4TnMvZ29MQ0U5NjJydDdi?=
 =?utf-8?B?cWZoTTJ5SExLcFNEb1hxZ1Bic0FIWVRRWFRJbFF1TktBcFdRdk5pU3RKZ24r?=
 =?utf-8?B?ZTN3dUovOG9LMXRXZFhXUUFzeFUrNktkZEdhWnhOOTIwZStlNm1ydFJTdXRZ?=
 =?utf-8?B?N2JqWnNnL0IxZWpwOThTQmVKVVdkYnZqM05FWDRpUm8zTjQ5NlpJOGNjckNM?=
 =?utf-8?B?OWRMNCtVUWZ0blV1STBLZ3lXdHc2ZWlJODFWaE90YzJHOWxPY3ltVWVYOFJa?=
 =?utf-8?B?ajZWeG9mdFIxN1greXJEdWZzU09QMXdlVTQwQ0hzVitwRzVUaFVoekc2T2dk?=
 =?utf-8?B?OFQvQU5GRjJ3WkY2NHRPOVlpWTFuN09OSVVCc2ZaZ0VLRlJVZGVmeFVXN0dy?=
 =?utf-8?B?VE8rSVVDUnUvRmFKUUI4RFdaOUVpRmpSMTFaaTNnK0E1VEJxZ2FsbURYSmJ2?=
 =?utf-8?Q?Y3OYg2gD/2rudSuBTosn/As76s1JOznn?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <F70326879A91A74098E8CAB82BFAA98E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8345
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70B.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cc658a89-d397-44e9-242b-08de1b8da4f9
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|36860700013|35042699022|376014|14060799003|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NGh0NC9UN1ZXN0htZUVEaEt3Wnl0MnFZMXYvRlgwU0lvRW9rdDYwOWpuQ2Nq?=
 =?utf-8?B?amZzM3NRdlQ0cG4vRHNWQlkwbFRSVzJaKytwTEd1K0hMdWR2MW9NbVNsbkQv?=
 =?utf-8?B?SDJROFBMUWozWVZENThpK05haEFvWmJ6ZGFMbzRGa3BmZXFtNVBBcWxicWVN?=
 =?utf-8?B?Vmxaa2lObStSSmJMWHJJK091Y2hQTDNHUHozMXVwQ2R4bEtCY2hUdWZXWnRQ?=
 =?utf-8?B?TWZWWE5obnZiRkdwT2xGY2FQcUFlZFZrVTE3Qk5PUjYwMkZQaGl3a2JoZ2li?=
 =?utf-8?B?MXlZeDFQSlQ4MzdBMXcyUWQwVmdTVzU1bm1KQm50VlRham1yRUdPOUd6d0Ev?=
 =?utf-8?B?dEE0Y2x4Mmt2UEwybU9VckZ4YmtsR3BxbHhzN0dLZVdIRmZaTVIwNGovTTQ5?=
 =?utf-8?B?Y1k1QjkwNEU3TmtmUGtibUV4dHlLenZQVHd1WUx0UDFOb202YzB2T1Z0NUxs?=
 =?utf-8?B?c1hPdVFzbGhXUDV6TUVxUVQzWTNwVENwMUlZbjZLWUZ5MVRqTXFBbmdCTUxw?=
 =?utf-8?B?bmJ2K25uUm5KdTdKaVNEc015aWtBTlAvMUZNVjZ3OVNaYVEweU1YWU9rZUVk?=
 =?utf-8?B?VCtQempJR1NobEpTYjNsc3M0eUozVTZYcGs1c2lmY0hOek43OVNTc1dEMWhM?=
 =?utf-8?B?SG53MWZGdFRWY3hDTmdvZHpLL0syQUlJTGcwSnBnWURnOUlmMTk2NHpLWXlm?=
 =?utf-8?B?cXF2dm94allEcVAxQnF2a3llSTBTc05vbExkN3A3VGUwdDllSjBVbERxMDdU?=
 =?utf-8?B?S3VobzdGUnZtMEt5ZDhtSzYrOHRGYUdYVzJkbm9VWEkyRFkzN0FlUnVnNTlH?=
 =?utf-8?B?NGthWW5rNnZMUWJ0VmxJSzVwcWJQeExtQ3JvQ2RTM0RqV3JuaEFYbitwendq?=
 =?utf-8?B?OFVQbm93VHZBQXU4cWIxZkRucHN2L29BeVNCSHpmOUxhb0szbytqWksrMThr?=
 =?utf-8?B?c2lkQTdzczZYQkJ3K3FWdkdFODB0OHl1TnBhVXAwTk11aXZtS25CNDZkaXdR?=
 =?utf-8?B?NnNUZ016U25nSGhpMGgvdnA0Y1RWZng3Y21FNlVla2FDZVErWERXRURsNGZU?=
 =?utf-8?B?a0M4cHVPdkRBTW9IYndtNXpEZ20wNG01aW5EWTRFc3NpQmhnckhGWmFsRFQv?=
 =?utf-8?B?dDBlN2d2eVA4eGgwMHN0OGtjWXNJL2lIZ1hYckJ5RUU3dXN0b01lV1UxTmNr?=
 =?utf-8?B?RS9GSUx6WmJLTUoxSnRZQmlwTnByWnRROS80OFJVSmVNQ2JhS1NKWjdCRXpX?=
 =?utf-8?B?dHdNaWxTejQ0bnJMMUN5SE1sNHc3MHc2bHdoYWUra0NNK3NmSlRVMkxuakxE?=
 =?utf-8?B?S2drdmxEQWlXRHVWcDk3SkVuUk80cXdUeE1NZEhLb2pJeVRuY0NJa0tDZHZa?=
 =?utf-8?B?cW5xcm1uYlM1Yks4MDVvUmZWb3JVNHhyOFZtbDBHeTJ1SDdadFR4Nk1TK0Ru?=
 =?utf-8?B?Q2FzNVhJVExIODVmbTB2NGRUVW14b2w3Yy9Ya2ZILzFpK0ZmLzRsd1EwN2th?=
 =?utf-8?B?MjBCT2hUZDNBaS9QaXdNZFBzYWJIOVhzK1o5YjlXU3dQcnFVQ25zRGJJWWJq?=
 =?utf-8?B?TjMzRS9iQU9McE9TQnh3TDBNTG5oOFhkWThpeUNMNUFEQVZhNWtyL2RjRUQ1?=
 =?utf-8?B?L3l5MHZuUHoxR1Q3OXcxaG9BMzR3OHlNdTU5K2tQNS90NjFXSGV6eUZYaklq?=
 =?utf-8?B?VGwzTFd5SUNQQ1NOaVZoZVkzWThMR1YwT0kvV2ZUSkc1NnR0V2RlaVl0SHRl?=
 =?utf-8?B?RTd0VDI2cnYyTHFnNDByL0YzeUpHbG9PRUtFcWpOOXArSVhsZ3VEQ2dlVzdV?=
 =?utf-8?B?YmJpTGY4cnV3cEl5MHdGMkNDTURuckpQUGlxZTUwUFlYZUpoQi9oczV2UnJJ?=
 =?utf-8?B?WldWd0dJNmJYUklBYUlieHh4TVRLYi9oR1BIUU5mSWpvZ3gvZndsYm84Titm?=
 =?utf-8?B?NUg3c0tFOFdIRnVQTHVsTXhjZWhUWGppRmVKSmxTV0lvY29qOER1VWtic0F4?=
 =?utf-8?Q?05zGvg4yPMu1wDQE7rIT3+8AA31WXo=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(35042699022)(376014)(14060799003)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 10:34:24.3055
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a50488c9-91bd-4be7-e46f-08de1b8db921
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70B.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB10186
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 10:34:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65999

T24gNCBOb3YgMjAyNSwgYXQgMDQ6MDUsIERhbmllbCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8ZGNodnMxMT1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0K
PiBIaSwgYWxsDQo+IA0KPiBJ4oCZdmUgc2V0IHVwIG15IGJ1aWxkIGVudmlyb25tZW50IHRvIHVz
ZSBSaWRnZVJ1bidzIHNzdGF0ZS1jYWNoZSBhbmQgZG93bmxvYWRzIG1pcnJvcnMgYXMgZm9sbG93
czoNCj4gDQo+IGBgYA0KPiAjIFJpZGdlUnVuJ3MgU1N0YXRlLUNhY2hlIE1pcnJvcg0KPiBTU1RB
VEVfTUlSUk9SUyA/PSAiXA0KPiAgICAgICAgIGZpbGU6Ly8uKiBodHRwczovL3lvY3RvLnJpZGdl
cnVuLmFpL21pcnJvci9zY2FydGhnYXAvc3N0YXRlLWNhY2hlL1BBVEg7ZG93bmxvYWRmaWxlbmFt
ZT1QQVRIIFwNCj4gIg0KPiAgICMgUmlkZ2VSdW4ncyBEb3dubG9hZHMgTWlycm9yDQo+IFBSRU1J
UlJPUlM6cHJlcGVuZCA9ICJcDQo+ICAgICAgICAgZ2l0Oi8vLiovLiogaHR0cHM6Ly95b2N0by5y
aWRnZXJ1bi5haS9taXJyb3Ivc2NhcnRoZ2FwL2Rvd25sb2Fkcy8gXA0KPiAiDQo+IGBgYA0KPiAN
Cj4gSG93ZXZlciwgSeKAmW0gbm90IHNlZWluZyBhIHNpZ25pZmljYW50IGltcHJvdmVtZW50IHdo
ZW4gdXNpbmcgdGhlc2UgbWlycm9ycy4NCj4gSXQgc2VlbXMgdGhhdCBuYXRpdmUgcGFja2FnZXMg
YXJlIG5vdCBiZWluZyBmZXRjaGVkIGZyb20gdGhlIGNhY2hlIG9yIHRoZSBkb3dubG9hZHMgbWly
cm9yIOKAlG9ubHkgYSBmZXcgcGFja2FnZXMgYXBwZWFyIHRvIGJlIHJldXNlZC4NCj4gSGFzIGFu
eW9uZSBlbHNlIGV4cGVyaWVuY2VkIHRoaXM/DQo+IEFyZSB0aGVyZSBzcGVjaWZpYyBjb25maWd1
cmF0aW9ucyBvciBzdGVwcyBuZWVkZWQgdG8gZW5zdXJlIHRoYXQgbmF0aXZlIHBhY2thZ2VzIGFy
ZSBwcm9wZXJseSByZXRyaWV2ZWQgZnJvbSB0aGUgbWlycm9ycz8NCg0KVGhlaXIgbmF0aXZlIHNz
dGF0ZSBpcyB1c2luZyB1bmluYXRpdmUgKHlvdSBjYW4gdGVsbCB0aGlzIGJ5IHRoZSB0b3AtbGV2
ZWwgdW5pdmVyc2FsLyBkaXJlY3RvcnksIGlmIGl0IHdhc27igJl0IHVuaW5hdGl2ZSB0aGVuIHlv
deKAmWQgaGF2ZSBkaXN0cm8gbmFtZXMgaW5zdGVhZCkgc28geW91IG5lZWQgdG8gYWxzbyBiZSB1
c2luZyB1bmluYXRpdmUgKHBva3kgZG9lcyB0aGlzLCBidXQgeW91ciBkaXN0cm8gbWF5IG5vdCku
ICBBZGQgdGhpcyB0byB5b3VyIGRpc3RybzoNCg0KcmVxdWlyZSBjb25mL2Rpc3Ryby9pbmNsdWRl
L3lvY3RvLXVuaW5hdGl2ZS5pbmMNCklOSEVSSVQgKz0g4oCcdW5pbmF0aXZlIg0KDQpCdXQgZm9y
IHNzdGF0ZSBzaGFyaW5nIHRvIHdvcmsgdGhlcmUgbmVlZHMgdG8gYmUgYSBjb21tb24gZGlzdHJv
LCBzbyBhcmUgUmlkZ2VSdW4gcHJvdmlkaW5nIGEgZGlzdHJvIGNvbmZpZ3VyYXRpb24gYW5kIHlv
deKAmXJlIHVzaW5nIGl0PyAgSWYgdGhhdOKAmXMgdGhlIGNhc2UsIEkgc3VnZ2VzdCBhc2tpbmcg
dGhlbSBmaXJzdC4NCg0KUm9zcw==

