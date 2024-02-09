Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF89C4828F
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 10:49:05 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.89])
 by mx.groups.io with SMTP id smtpd.web11.8577.1707475742193936486
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 02:49:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=4pvWRdHr;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=4pvWRdHr;
 spf=pass (domain: arm.com, ip: 40.107.6.89, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=cKUDoleMLugbukeIRJhNXWsUqQn/IUBN5w7uE4uYe6aM4Q5eSXKJpWZuEzC76vyMyt2Zi/iqKmswS6iPwXPaZSwCJIwzT0XFtD9mGKlhlQgisLDWsi1c5fFKsnJaL2jQJMOjInlbElIPcCUhy1N6rfaMdklN5zewvdq+iiyoAQzOYfn3IjyB57kd2mxiQ8ZW3+q+yJ+X9U751nJrT5cMMfep4MK9L7Y7H57yAsBWk78+wldd9gW8WUYIhwUeAagKNc8jZdSNXIvCtpDOkC5uC3LaJNI29FsLX319dkscAh3g/FO9qZC4Qz9V+FfsbriUAUn2OnJuXGvccOUclJjPBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7MG+6tdqjhQSScoNapYdshN8ibMZMLhy552XZRaXy2c=;
 b=M1CqbJwDUFid2MgYIJWfl7XAiKlwFPce3qkpEOS0TtzIZpt+y9mR3eUnOF64RaY9XDoRytScgTpcKXur6rgF0Gi4pRoumvEdtfwhiJgQigRHmYaYG8h6SMroJWz9h8CtDamM4CKCIdEzLNmiWxZvlnHsfk42w1OtzT/BTeV0j59C453/H8yRt502BRy2ry0Nb9BqQtRpPlSgc3H8sNRLWHawPzsIGfUW8JCJnBd/huiT+5gvhVLTk5yO/5gEH6MmNvgdnIonLzYpyF/9JxIOiTIthiIP1y+pQJHtAHWmrU+h9m7Ckot+yVr8axo64AZH2CVh0KjuwjMdBs/faR/hZQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7MG+6tdqjhQSScoNapYdshN8ibMZMLhy552XZRaXy2c=;
 b=4pvWRdHrfq9Cpr2yw4Y2WvwthQyvC06bbVgpo8TEsm0nDwhHM3HvN7AQ5N/xw+sfHW9ZKleHH8bLTuJrEtSHpGW12DwrJHAqRop6TEY4iKM3lIoJyYXObNsoOgXNEzTcdrB+maSbDEdtDEoXhXRSy09vQURhT4uCEKnU7ElhR4g=
Received: from AS9PR04CA0176.eurprd04.prod.outlook.com (2603:10a6:20b:530::8)
 by VI1PR08MB5374.eurprd08.prod.outlook.com (2603:10a6:803:12f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39; Fri, 9 Feb
 2024 10:48:58 +0000
Received: from AMS0EPF000001A0.eurprd05.prod.outlook.com
 (2603:10a6:20b:530:cafe::96) by AS9PR04CA0176.outlook.office365.com
 (2603:10a6:20b:530::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.25 via Frontend
 Transport; Fri, 9 Feb 2024 10:48:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A0.mail.protection.outlook.com (10.167.16.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Fri, 9 Feb 2024 10:48:57 +0000
Received: ("Tessian outbound 31df1b57f90c:v228"); Fri, 09 Feb 2024 10:48:57 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c98dfa303345ba62
X-CR-MTA-TID: 64aa7808
Received: from 66069f3460b2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 6A40AAD3-3ED2-42F2-9AD0-52CDFB7D02A1.1;
	Fri, 09 Feb 2024 10:48:50 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 66069f3460b2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 09 Feb 2024 10:48:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGSos2Xc6Y16w0kUDECROEhAg4ti1+4/do/2NdLIwNzxCsGGCamhMagvghNKDFe+ATcx6boPI6oBX9wrzdSwzG89x0hlNpLn8vH4qvTIT6PKnKYqlDpqvZI5xAKSO8cD6WvxvBjjxmmpuwjHTsypc5TALV8V1d3WjfV4eLSCDSuBlEjW1QY9hHz8JaAilR+81BAjKxG2+hkfThnjyHAz7xXP69M1377V3226IoUsQdOz3S6eHAL+eV4ErJ3otBFrh+s4+H+FyLGuyz4D2QU+5ydWmLWbEU9CfsTzt5P2mM6dbIodhMRrhytNhSeKPrPePNB3nJOL0S+kkcu6Gopb4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7MG+6tdqjhQSScoNapYdshN8ibMZMLhy552XZRaXy2c=;
 b=BMsHGeJGxpRs5FaBvPhpaOkOK6bAMEZKkIbY7ciQ7yyjoi1gd/Uj0oTocaTk4Plemdhd4uLTcbaufYDJoPStDIYBpf+/yQFskgAHlaeNj/iIYzHQLigvDaIE26+x7X9tpQJtaZmcW0n74BVZCifKQRoxamfutpSKr+2nKmYr/AtLlhv/qUTGDdQ1Seelybkp0Bmr0li755bRim40EgV3cRbPsE2A4uLQ4KkYLdmegOeNZ+MCsgJ7uI7QlXR7fgC4N8RjNGyB2KeXr779cKliJHY/fF3V7nnBZDX4DhUaJWCaXGA0KKdeo3SCInwUY3fVZx7vxtCmlbl8mloyJ4hzvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7MG+6tdqjhQSScoNapYdshN8ibMZMLhy552XZRaXy2c=;
 b=4pvWRdHrfq9Cpr2yw4Y2WvwthQyvC06bbVgpo8TEsm0nDwhHM3HvN7AQ5N/xw+sfHW9ZKleHH8bLTuJrEtSHpGW12DwrJHAqRop6TEY4iKM3lIoJyYXObNsoOgXNEzTcdrB+maSbDEdtDEoXhXRSy09vQURhT4uCEKnU7ElhR4g=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB10183.eurprd08.prod.outlook.com (2603:10a6:102:368::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.26; Fri, 9 Feb
 2024 10:48:49 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7270.024; Fri, 9 Feb 2024
 10:48:49 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"hassanchattarki@gmail.com" <hassanchattarki@gmail.com>
Subject: Re: [yocto] Moving yocto SDK to GIT
Thread-Topic: [yocto] Moving yocto SDK to GIT
Thread-Index: AQHaWx6vmrHs90plDESjZnWhS3vjZ7EB1NUA
Date: Fri, 9 Feb 2024 10:48:49 +0000
Message-ID: <E9015E90-7B49-4CB1-914C-6483241B6A6A@arm.com>
References: 
 <CAPJWBngiASed1Y9WaKCSj+t10S=2X6XoQQVC6HRyQAGk6+jmyQ@mail.gmail.com>
In-Reply-To: 
 <CAPJWBngiASed1Y9WaKCSj+t10S=2X6XoQQVC6HRyQAGk6+jmyQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB10183:EE_|AMS0EPF000001A0:EE_|VI1PR08MB5374:EE_
X-MS-Office365-Filtering-Correlation-Id: c5423cb0-2664-4f07-9f42-08dc295cb7e8
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 NS8Dz2FFjMVfoKa4I5n67wNNB3afnIb2VSSyEPfYQT2kwBW6IzAnIxvbvRUbkUHlfhnJjgGDZfG9/6YSyZjHX1lKM96EvwxJ/xPcgZTpy1mGGBjin8SRJs91hYUuhtl0zJQE8LNny1yAcivNgYOx9RkL4ThEf/UfBLyQDdu71Bz4RY4KmmSPOpoCRJ9CMGIWt9WcaKay2OavS91ZFraIpbNEHtXqRXJQNroPZQu9S1BSDtYR6+34soa8elfUg4j0BVfSEUwQCrrxEDjLAkeH5ROXBGtuNT6SgAvN/V1Ncf484bS0wrlwga3KVJ3JQO7M1bwfd8TZfU4RLK+vT52fwRKQTLpKRCuGo42mLkVdCCjd+wFxRWQ7wCCYv9Ge12W7M+Pc8OI9gRxzh6WMM2dvrtygoS3XPEMk/0L7s6X52+MnVihLfSxN9CpCFYBL+Zm5WsT47Nz5Ww6T4llLXJ5QP1s/FYwhf8dMEr5K5u4gRE0lDY6axthpQC9uPDvr277428ctoXeHdH22UmMWPgKQIKqK+MsKSsOyMghca87FNasrx7kyc0DZur/NZQ9ZwXAOpqfRGBo+fgL1+V+2t7FYjvNAEPLoKDLStdQSszMWD5Q4bMpbMfrw+xAhaysxMl/T
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(346002)(136003)(396003)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(2906002)(66556008)(64756008)(66946007)(66476007)(76116006)(66446008)(8936002)(8676002)(5660300002)(4744005)(41300700001)(36756003)(33656002)(2616005)(26005)(38070700009)(38100700002)(122000001)(86362001)(83380400001)(6506007)(53546011)(6486002)(71200400001)(110136005)(316002)(6512007)(478600001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <60AADDAEBFA5AF4597BFDC9ED6041632@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB10183
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A0.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cca7bff5-715b-4b8f-23b8-08dc295cb2bf
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+EnwhwtVmZpG424UNsS/zFmq6sV2D5ocPAy/rPhm5ApipPKqKz7FVNky/FiABBb3PCJok5GWsScQLU6lJLqL6y+GJDepUi14BEHKA1HCk2Kwgape1KMda/GwC42u0T11Zs717+JCEZ7AH4Cb8QEzIsmyo9MZLSenvP8+79cMR6cpiowc71ItYoYzVjJmknOi4J0bJ0AIjNxnnADhmp3vaAYh1gyb4ZKIIa7aevsTkAyfTjilaUFvx12qHId0AfVC8B3VI6xQf4AyVvBFlraVokN18v3S+EB3KCEfxnBa1aFw1aOXs9jpdY2g39V44LqdJwpw5kHR32AnCvnx5TyBTLyEQI7oeCxMedJFhD8Prj9awW02bl93OpAyFZyN7w66+gF0v4f9Lrcit5iNHUXpW3N/80EVqzDoJyQclazoLqPmqQveoDtgV46F5+6jK2jMF+yCpuSebkn++CKH4R6OSzNJQcGsUkLRvr9CM3+zOMYDm89aRho2yNyqO++u6e3fZZ2w3F3NOqfr1HTS27ZoNIDl36xlCMTQnFWHtiDmMVQgyExTVLoM5BjvYDXkIY8OPPNlxRAM3RkF/DySIo0W91njXNxUIKNhtVXRKMQEpWg=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39850400004)(136003)(376002)(396003)(346002)(230922051799003)(64100799003)(82310400011)(186009)(1800799012)(451199024)(36840700001)(46966006)(41300700001)(6486002)(478600001)(336012)(5660300002)(2906002)(70206006)(316002)(70586007)(26005)(6506007)(2616005)(6512007)(110136005)(36756003)(33656002)(4744005)(53546011)(86362001)(8676002)(8936002)(356005)(82740400003)(81166007)(83380400001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 10:48:57.8504
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c5423cb0-2664-4f07-9f42-08dc295cb7e8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5374
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 10:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62447

T24gOSBGZWIgMjAyNCwgYXQgMDY6MTAsIE1PSEFNTUVEIEhBU1NBTiB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8aGFzc2FuY2hhdHRhcmtpPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gQXBhcnQgZnJvbSBhbGwgdGhlIG1ldGEtbGF5ZXJzLCBkbyB5b3UgZ3V5
cyB0aGluayBpdCdzIGEgZ29vZCBpZGVhIHRvIG1vdmUgdGhlIGRvd25sb2Fkcywgc3N0YXRlIGNh
Y2hlIGFuZCB0aGUgLmNvbmYgZmlsZXMgb2YgYnVpbGQgZGlyIHRvIEdJVD8NCg0KVGhhdCB3b3Vs
ZCBiZSBhIHRlcnJpYmxlIGlkZWEuDQoNClB1dCBpbiBnaXQgYW55dGhpbmcgdGhhdCBjYW7igJl0
IGJlIHJlZ2VuZXJhdGVkLCBzdWNoIGFzIHlvdXIgbGF5ZXJzICh3aGljaCBjb250YWluIGFsbCBv
ZiB5b3VyIGNvbmZpZ3VyYXRpb24pLiAgc3N0YXRlLWNhY2hlIGFuZCBkb3dubG9hZHMgYXJlIHNp
bXBseSBsb2NhbCBjb3BpZXMgb2YgdGhpbmdzIHRoYXQgY2FuIGJlIHJlYnVpbGQvcmVkb3dubG9h
ZGVkLg0KDQpSb3Nz

