Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC880C4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 11:46:29 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.80])
 by mx.groups.io with SMTP id smtpd.web10.98447.1701776781072838358
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 03:46:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=OFiECMUH;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=OFiECMUH;
 spf=pass (domain: arm.com, ip: 40.107.8.80, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=BjSQaqEXwIU0d84A71DaDvtGUqgszuT6AN8plP8x4l8cu1f0B2mOSiAS3Qsx3Hh/tlSfVGfivU6cj7ly0gJjiJZUWdsJx2nDe2TK8qPKz+Tt6TZPhrHyGoB49h4hQNch4DasVQhLctUTxVr2CIm+HFeLAdbvcyrL9MbZKRcKKIyCwjD5eH08mO+BBt733cpld5k6gp3ln3lgSY4p0ZcEq8QrnEfrL6ZNGxHyJdWMjcl+3xISuFSzj+NEhxsVC+I/zm8Y4xXZZDU0QmwVHIQqL3c7ZGfrU3czA3HOzmzVbJsq8MOirWEn2dygMnxQT2lhp2IUobN3rqBZa/5QXHxOdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+7xMaSIpK40FBTM5xuVFh134jO8T0v2uut3qkrjnd0Q=;
 b=EdAClgLlHEYI+ITNWGREsaOemJskTatc8lf8YiNB6R6CVnUUgWLZzYS1Oo4IECBvrnsQoESxfxh9xmJa8IDGMxr3R2eEfD4x6BTMgw62GLfLbfSsFFLAcLOr88/L7ZhN9idW/M1EBspy0Blkzz7Pf/JSY7wd5cSLW8JQw3jyaAryb6Oc7+F95kkv9o+vWbJzxbnci1iwaOxIvu4mPdYL4FvtOm8KcU1uAG2guJPUabNkosL/0T3AaWrO1N6zsUKyD02VJtCU3eDZyHKMKef321tV1VXvw/enaqJqqtd81VonSkzF+BrSPOW+J17OuF4sZUSYzu91ji18JKEm55JDgg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+7xMaSIpK40FBTM5xuVFh134jO8T0v2uut3qkrjnd0Q=;
 b=OFiECMUHiVvrr1E3+Jt0Av+3cZnfEI1QSc+AIpjouKS0iwouaSjEDuIzvHE5g6zVxail7HXhMFwGdndgO0hpDz6tSW5kBGfdHlxcHmBWhZI++uDJ7+6aiDNkuiKHP9YjFDHornONP8nOLv9y8QIIClhXKsyEZ8XEYxLUcs+Nn2g=
Received: from DB3PR08CA0015.eurprd08.prod.outlook.com (2603:10a6:8::28) by
 PAXPR08MB7368.eurprd08.prod.outlook.com (2603:10a6:102:22a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 11:46:12 +0000
Received: from DU6PEPF00009524.eurprd02.prod.outlook.com
 (2603:10a6:8:0:cafe::e2) by DB3PR08CA0015.outlook.office365.com
 (2603:10a6:8::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34 via Frontend
 Transport; Tue, 5 Dec 2023 11:46:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF00009524.mail.protection.outlook.com (10.167.8.5) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.20 via Frontend Transport; Tue, 5 Dec 2023 11:46:12 +0000
Received: ("Tessian outbound 7671e7ddc218:v228"); Tue, 05 Dec 2023 11:46:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d706cee829233794
X-CR-MTA-TID: 64aa7808
Received: from 073799f5c40f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B059AACA-D362-4B7C-927F-AFF0890AED00.1;
	Tue, 05 Dec 2023 11:46:06 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 073799f5c40f.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 05 Dec 2023 11:46:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZM9yxrOkbrkF/B+4gPwB8Li+yiFe1dGM0CJ+LgPeAxidgINYgpUZyQ50Zifi2qnXAQQv4+rNIrD9ifk7uj6PIyvdYL+JWIDDuXkmcSIsf5HapLd+0GhgBPAhZQHSN+Smu33vSPOmktWZQkKRIrhsY7QT3ZNfLciw7UwH1ua4Ftn7a6tGrHcMKb+BV3vC06iqTb7x7HQbE7RcPjJseGwFwd01/frZ3TwxhehssUKcf/7hAYQV7OA1R4g7qaXd4gvd8f1xxlynfkFrXeqSlcKzPhULaYJThF/Q9YA6NuI7v/9CMeKn6uPm3nQ63NicNieYIwNIYE5Fa6gNipMPaJV3hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+7xMaSIpK40FBTM5xuVFh134jO8T0v2uut3qkrjnd0Q=;
 b=fWGoOt3AP0ctPoUbUdWrPVtIPAr73tNT9rduVRftHyc2K/oP6LE+lovhyG1mV5qmqm+hrDexwLCKtEDn2bv/iPet9m3SWUqtTuZxRMDTAlTZYPRKp8O6oTAaugKoNnZSZHvNEmx5oU7yX6GTFfjgQRIApYd2Rgv6YlHCOvsuh0zXUikURwCxFCxLfOqeCZIi/9qRkJQgbc5u1+YUwWC3oKaxnNXrDWXh6gw9N4Ave6EUuBHCTqQ3rRShfLqx8m/dU41EuD9MzmuM/U1YPP0IL++KEgM7128GNx15vvfvrpBXSYgCHzxvjB6YNgaewWwL8m+a5FJsLRW8RWT6iRln3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+7xMaSIpK40FBTM5xuVFh134jO8T0v2uut3qkrjnd0Q=;
 b=OFiECMUHiVvrr1E3+Jt0Av+3cZnfEI1QSc+AIpjouKS0iwouaSjEDuIzvHE5g6zVxail7HXhMFwGdndgO0hpDz6tSW5kBGfdHlxcHmBWhZI++uDJ7+6aiDNkuiKHP9YjFDHornONP8nOLv9y8QIIClhXKsyEZ8XEYxLUcs+Nn2g=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS4PR08MB7602.eurprd08.prod.outlook.com (2603:10a6:20b:4cc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 11:46:04 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 11:46:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "eric_guinn@selinc.com" <eric_guinn@selinc.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #bitbake - Single Recpie Multiple Outputs/Build Types
Thread-Topic: [yocto] #bitbake - Single Recpie Multiple Outputs/Build Types
Thread-Index: AQHaJukSrs6x2GT7Dk24aCoP21K9KrCak2AA
Date: Tue, 5 Dec 2023 11:46:02 +0000
Message-ID: <338CCB51-62E2-4616-B16D-D13806B3C4C1@arm.com>
References: 
 <MWHPR2201MB1054EFB78B365E713E7A14599286A@MWHPR2201MB1054.namprd22.prod.outlook.com>
In-Reply-To: 
 <MWHPR2201MB1054EFB78B365E713E7A14599286A@MWHPR2201MB1054.namprd22.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS4PR08MB7602:EE_|DU6PEPF00009524:EE_|PAXPR08MB7368:EE_
X-MS-Office365-Filtering-Correlation-Id: 73c5cbaf-17f6-4300-bf35-08dbf587c7f6
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Z2iry6JkOQEGhIHV9w36DyE99hpjafzUhZp04jiTl8LVWuHo/5YPE16Rgg5Y0gBphQqU7AOi2bHg7i7fQmV32qAmpfuatvSvtgCrz2aJOR8Ndd/nYSxBE6/tmjg7QRBTI23ngpDkNQ9Qo+jKMBVIs3Uf7lU/ido3ARvmHQIEnLCCbMaRkxYZjaF41FPs5CKMQQnWZ+ikFxl76pX/BmbZ7OKnqbKIrNN+I6RMRZiu4rNkCCoa7bj+CPTph+INlqHv4Q1xfUvDY3DjKqMkS381aFR54fyT6vJokkMEPSrQZMAYcwbeEEmMqun4/q2e2wrBoRNmqlAViyMLACuTgZrbMSWj1J1KVfewKAu0b12GMIwqEvvai8qgzOvVzvhtaLxpldzQxCXfIU94AsHNgZ+CbasZ+1S8ViymODt4brzmblcJoQI6bYNCXbKrAFzDHaHBFPmTDNL7Hr/8SHlje9P/Vfx/kvQHK6dnmtarBjZTqaQk7oZ+FKPy+H3e2uKGXm4ovQpubVCpmDrB+ePLxkRvmcESP9R3xV6VZ7BJcEaplwcRDc4++KmuiE1fO7N21sRmKMoxElO2nW2vdvk40P7mBvcT3jcEVUk3oLmtJD7mgz+zSaL40Z58jLil/Cg5OHWLgUvTfUcvea293TzGnobeNA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(346002)(376002)(396003)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(2906002)(33656002)(316002)(91956017)(66446008)(66556008)(6916009)(64756008)(66476007)(38070700009)(76116006)(86362001)(66946007)(8676002)(41300700001)(36756003)(4326008)(8936002)(5660300002)(38100700002)(122000001)(6486002)(83380400001)(478600001)(26005)(71200400001)(2616005)(6512007)(53546011)(6506007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <3C9055D83F7E3748AB0F216F1D6A1346@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7602
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF00009524.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cd442d9a-bdaa-41ef-bf10-08dbf587c1e9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oxpekYHpHVEJBWTeRtljpNcyBzYDa7Po9odjhbm7+2vJla0ni1Gt8A54p/ywzwPR33b4ZSwqxpzGLoDONuD8qAC0mNkL/75JT389xR5sh7JJkAFx05gRqE2qgGSOlmRJnHI9sg8oHrE5UoWr39L4YoRbfll6tNR8EWv7yQqtInjjRAVQqQBMfZ6UjhAd5CrnLc6a6BvOXgKxyVqdvC0u3WSW8MeY+wrlvo1+8atCAxtULLftuEdFkJlmJBEdLBKAW4m4h+0wRCAHkfzeCzd3mRlw16lVHGmmPEApvn/Yj5vEPGW9ojma3mR27y4fiN61u1MG6VkIXMOyr5rL7usBrOP2MPupV/XOc9B4M0RkBINjm7bZYhbS+po6P+/ipKxG5J8xAd58kyT7Yku3+zX5v2Dc3xcG0xtcxFLuDkUmYxkw7f8jmKy1IhfzqfYV29PMRfJmcCgcF3YhEyHOJVU0JVhK7JMxJrPEeT8emSvacHv8QfonVcpt8TRLuiXl+YA2VnCZAB599QyVw7CH3IlVLxhaUHGgc1XHsy23zQjm2y8gojf1mWDXpt5lL9blJ3SXeYl4IuryHrOUltdofwVeteMpvrszHPyfNhx6N4UgxJI7hfmSCzABR5R1CU0vVeKDoI4+tUALAeeIVLqSR5XNEMmYH648inW1UOMa1cu+0YJkCRgnD5kPsLQSyTKpysEaGWnBVPKmCwjwfmlcwg8MwfyOoB7ewcpJrk0bcHYqdliO4KCMv8e+G97tvUfaVmYo
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(136003)(346002)(396003)(376002)(230922051799003)(1800799012)(186009)(82310400011)(451199024)(64100799003)(36840700001)(46966006)(40470700004)(36860700001)(40480700001)(6512007)(53546011)(6506007)(6486002)(478600001)(356005)(81166007)(70586007)(70206006)(316002)(26005)(47076005)(2616005)(83380400001)(6862004)(4326008)(8676002)(8936002)(336012)(82740400003)(40460700003)(5660300002)(2906002)(33656002)(41300700001)(86362001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 11:46:12.7127
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73c5cbaf-17f6-4300-bf35-08dbf587c7f6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF00009524.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7368
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 11:46:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61803

T24gNCBEZWMgMjAyMywgYXQgMTk6NDYsIEVyaWMgR3Vpbm4gdmlhIGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcgPGVyaWNfZ3Vpbm49c2VsaW5jLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90
ZToNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSBuZWVkIHNvbWUgZmVlZGJhY2svYWR2aWNlIG9uIGEg
InByb2JsZW0iIEknbSBmYWNpbmcgd2l0aCB0aGUgcmVjaXBlIHN5c3RlbS4gQ3VycmVudGx5LCBJ
IGhhdmUgYSBsaWJyYXJ5IHdyaXR0ZW4gaW4gQysrIHRoYXQgYWxzbyBoYXMgZ2VuZXJhdGVkIFNX
SUcgYmluZGluZ3MgYW5kIGEgcmVzdWx0YW50IFB5dGhvbiBsaWIgdG8gaW5zdGFsbC4gSW4gb3Jk
ZXIgdG8gZG8gYm90aCB0aGUgQysrIGJ1aWxkL2luc3RhbGwgYW5kIHRoZSBweXRob24gYnVpbGQv
aW5zdGFsbCBJIGhhdmUgdG8gdXNlIHR3byBkaWZmZXJlbnQgcmVjaXBlcywgYnV0IHJlYWxseSB0
aGVzZSBvdXRwdXRzIGFsd2F5cyBuZWVkIHRvIGJlIHByZXNlbnQgdG9nZXRoZXIgKHRoZXkncmUg
aW4gdGhlIHNhbWUgcmVwbykuIEkgbWF5IGFsc28gYWRkIC5ORVQgYmluZGluZ3MgaW4gdGhlIGZ1
dHVyZSwgc28gYW55IGFuc3dlcnMgcmVsYXRlZCB0byB0aGF0IHdpbGwgaGVscCBhcyB3ZWxsLg0K
PiANCj4gSW5zb2ZhciBJJ3ZlIG5vdCBmb3VuZCBhIHdheSB0byBnZXQgYSBzaW5nbGUgcmVjaXBl
IHRvIGRvIG11bHRpcGxlIGJ1aWxkcy9pbnN0YWxscywgaWYgSSBkbzoNCj4gDQo+IGBgYA0KPiBp
bmhlcml0IGNtYWtlDQo+IGluaGVyaXQgc2V0dXB0b29sczMNCj4gYGBgDQo+IA0KPiB0aGVuIGFs
bCBJIGdldCBpcyBweXRob24sIGlmIEkgZG8gdGhlIG9wcG9zaXRlLCBhbGwgSSBnZXQgaXMgQysr
Lg0KPiANCj4gSXQgY291bGQganVzdCBiZSB0aGF0IHdoYXQgSSdtIHRyeWluZyB0byBkbyBpcyBh
bnRpLXBhdHRlcm4gYW5kIHN0dXBpZCwgaW4gd2hpY2ggY2FzZSBwbGVhc2UgbGV0IG1lIGtub3cg
YW5kIEknbGwga2VlcCB1c2luZyBtdWx0aXBsZSByZWNpcGVzLg0KDQpNdWx0aXBsZSByZWNpcGVz
IG1heSB3ZWxsIGJlIHRoZSBlYXNpZXN0IHRoaW5nIHRvIGRvLCBhcyB5b3UgY2FuIG1ha2Ugb24g
UkRFUEVORCBvbiB0aGUgb3RoZXIuDQoNCkhvd2V2ZXIsIHdoZW4geW914oCZcmUgaW5oZXJpdGlu
ZyBtdWx0aXBsZSBjbGFzc2VzIHRoYXQgcHJvdmlkZSBlZyBkb19jb21waWxlLCB0aGUgbGFzdCBp
bmhlcml0IHdpbnMuDQoNCllvdSBjYW4gb3ZlcnJpZGUgdGhpcyBiZWhhdmlvdXIgYnkgZGVmaW5p
bmcgeW91ciBvd24gZG9fY29tcGlsZSgpIHRoYXQgZG9lcyB3aGF0IHlvdSB3YW50Og0KDQppbmhl
cml0IGNtYWtlDQppbmhlcml0IHNldHVwdG9vbHMzDQoNCmRvX2NvbXBpbGUoKSB7DQogIGNtYWtl
X2RvX2NvbXBpbGUNCiAgc2V0dXB0b29sczNfZG9fY29tcGlsZQ0KfQ0KDQooYW5kIHRoZSBzYW1l
IGZvciBjb25maWd1cmUvaW5zdGFsbCkuDQoNClRoZSBjb21wbGljYXRpb24gd2lsbCBiZSBpZiB0
aGUgc2V0dXB0b29sczMgYnVpbGQgYXNzdW1lcyB0aGF0IHlvdeKAmXZlIGFscmVhZHkgX2luc3Rh
bGxlZF8gdGhlIGNtYWtlIGJ1aWxkLiBJbiB0aGF0IGNhc2UgbXVsdGlwbGUgcmVjaXBlcyBhcmUg
dGhlIHJpZ2h0IHRoaW5nIHRvIGRvLg0KDQpSb3Nz

