Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C6EAC7EE2E
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:52 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.67])
 by mx.groups.io with SMTP id smtpd.web10.54681.1686561882261586564
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 02:24:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=HsAqCAxx;
 spf=pass (domain: arm.com, ip: 40.107.6.67, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y50K78G1XCqwKmUG4Tjl/cymG12tAqKXsEh1hm6gPro=;
 b=HsAqCAxx+zRYlwuuLU0NOXH7fH33PqwBPGP8rVOiSJ3gMjVi1JTH2zcsQ6Yj3NUGBN/R5zRidweXVWrZrKMqyxjhnFdpy6G1mPvnYIqxyHAHMEt++17hDmE0PsdiEYPKIMldNK8YAUVI7y5c9X04Pmk8wSGfsiicawrkHvZeaMs=
Received: from AS9PR06CA0511.eurprd06.prod.outlook.com (2603:10a6:20b:49d::6)
 by VE1PR08MB5805.eurprd08.prod.outlook.com (2603:10a6:800:1aa::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Mon, 12 Jun
 2023 09:24:37 +0000
Received: from AM7EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:49d:cafe::c9) by AS9PR06CA0511.outlook.office365.com
 (2603:10a6:20b:49d::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.33 via Frontend
 Transport; Mon, 12 Jun 2023 09:24:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT054.mail.protection.outlook.com (100.127.140.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.20 via Frontend Transport; Mon, 12 Jun 2023 09:24:37 +0000
Received: ("Tessian outbound 8b05220b4215:v136"); Mon, 12 Jun 2023 09:24:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6faa24ae3e135f93
X-CR-MTA-TID: 64aa7808
Received: from 93e978f8b256.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0C819455-E229-454D-A148-76509C269899.1;
	Mon, 12 Jun 2023 09:24:30 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 93e978f8b256.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 12 Jun 2023 09:24:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2xmqXgRCuZ+keDCxgD34005fOs6CKGFmLvfwMVX3Fy7oUX5melWJSKMD46OUPAxY+YGUy1xyEyxV3XmXuVtTWL7Aa0vDquk+gvveEQHBKSze5FBDP4+Rxz21+mcPTPEe/qj40G3M/zmeoRq8f1246oBTiKkMeeqmxGOUy2Dp8QVXx0mjqIz75+FkYLMwWJjCDs/572gzcFOQNfoaCTkvyjOtcEPmn1PqkHv822ROp2Ye/ypOTj8AaS8SHRhGZ3dGBnI3Y3bDDKsvG/fUNGBwcDCqgj+XzZqQPl8O4cJ90iZ9wlkoASX3cA6v9/kmUOVMKZkgJxJ0CJ9c7zQp4dWzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y50K78G1XCqwKmUG4Tjl/cymG12tAqKXsEh1hm6gPro=;
 b=Yl5yH6uuXFjPQnc/OQT2sLK8Uex2YyB4+3gskt3FpQuqKliC5yCXHtHjta3L37JbW5Cf809oJZUFFTHNNPqHyXQMkfgcVovgdZ+PwGDyW2No7t9vUDhbgFWblnOkdWgV0aBW2tCkeC8GJQVW6QM88ITUwZxyYdvrV/o6h9LCHF8WmslwfwCR76Jy5OmwHmqmsGCPLAA75HJQ0x2OCIvA2LpyitNksKnA1AyRHCUOhWzXNjcYtG46L+iBfwrIwwwbjlttJLfIqeCf4enWdsdpgHiOYU5SZDegtlt7Gu/9qV1fAnGq5SwC9Nz2+jjfjbC6396ZX9tCdd3lGnzdgGCIeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y50K78G1XCqwKmUG4Tjl/cymG12tAqKXsEh1hm6gPro=;
 b=HsAqCAxx+zRYlwuuLU0NOXH7fH33PqwBPGP8rVOiSJ3gMjVi1JTH2zcsQ6Yj3NUGBN/R5zRidweXVWrZrKMqyxjhnFdpy6G1mPvnYIqxyHAHMEt++17hDmE0PsdiEYPKIMldNK8YAUVI7y5c9X04Pmk8wSGfsiicawrkHvZeaMs=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by DB8PR08MB5435.eurprd08.prod.outlook.com (2603:10a6:10:113::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.39; Mon, 12 Jun
 2023 09:24:28 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::9200:30:234f:50e3]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::9200:30:234f:50e3%6]) with mapi id 15.20.6455.039; Mon, 12 Jun 2023
 09:24:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: =?utf-8?B?5byg5a625bKt?= <zhangjialing@loongson.cn>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Submit a new layer meta-loongarch to the layer index
Thread-Topic: [yocto] Submit a new layer meta-loongarch to the layer index
Thread-Index: 
 AQHZmelQPXnJgsAaXUy0IixCsyvAHa+ArvqAgAEbiQCAAI4AAIAEGAAAgABNEoCAAC3rAA==
Date: Mon, 12 Jun 2023 09:24:28 +0000
Message-ID: <F2CE772D-124B-4F73-8282-EFDBE0F9FC2E@arm.com>
References: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
 <F3C5E126-A6BC-471B-B054-5918881B5B7F@arm.com>
 <d30745fa-6a9b-c36a-282c-6ea2ebef1b5a@loongson.cn>
 <8918F74E-0EF7-4BFA-8B89-55312F8490AB@arm.com>
 <dad6e312-8b1f-1cae-b4a5-87cbe6d944a7@loongson.cn>
 <9872223d-85e6-6c26-e659-b593e5e3f8ff@loongson.cn>
In-Reply-To: <9872223d-85e6-6c26-e659-b593e5e3f8ff@loongson.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|DB8PR08MB5435:EE_|AM7EUR03FT054:EE_|VE1PR08MB5805:EE_
X-MS-Office365-Filtering-Correlation-Id: 69e20bf8-e978-4e60-82c3-08db6b26d779
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 JsHSWKLhc1sW58bY9x3B+OKdn5WQd9GwLucRifAOG3sCk06GO9CZqJ1ji7RGqJ8IJexEnJ1i/VHq8h7TCxQH/gCc+lUnLmmnUM/vc30HjzI+5paH+WPewVmALtdWSWvafcZw0mlQs+IYcEFF87Vc2GwJbCwXncOyU37M+b2QLKb17hxNtr8irgusiauhT3Jjm7nQrG3EWs5AMMws/mLVHM0oLDH5PigLWVUPUDc6RUgjMIwhmbeFrmeUDvacPz2K5qqqKntRencSTKOwy8ulzOb0fj0mwN0Zfkyx5VP6P3mKfCd7+a+ulP71NDbcpiJWAZ6IfA9DK1TFrevjROJJxk/pNeXQ7yY1+x9IFtB9PTgS4Z07Zf9DGNclhIKZTWLUK4gPGklLD0ZnM3UuGKC8v0liPAe1S+LP3K0fldyZz5NAGDaQVR5vAXmEEMOpM08Vulgusp7ATZOquDblAn2lC2T9e0q+XoOrdzNM+V4vXFbU909PHiQUA5panWGQOj3i1Q6hpGVcaIs/tNJ0GOjHXLaNJxfK0+9vmrVstsIN4K23atvDp8NE/ZJgcIuI7pKTQCInDT6JYdXfiXYdZNwuAzs9rCxZo79Jaj9ZhSC+CEM1FMi5zjOd+a+01vCAovvvmjWWzvvoD5nXR41rMU0O8Q==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(39860400002)(376002)(366004)(396003)(136003)(451199021)(6486002)(966005)(36756003)(2616005)(38100700002)(86362001)(38070700005)(122000001)(33656002)(6506007)(6512007)(53546011)(26005)(186003)(4744005)(2906002)(66476007)(4326008)(6916009)(64756008)(316002)(91956017)(66446008)(66556008)(76116006)(41300700001)(66946007)(5660300002)(71200400001)(478600001)(8936002)(8676002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <E3E694D0081E504690521A55DB0902D9@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5435
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT054.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a69a3792-8975-489e-dce7-08db6b26d26d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LxgkBQo0+eGt8vKJM0z/j+UieHqiur+b2nd1x3RGkGyT8T2Hb9R8mfZOIcqRg4XiigQ5RSML29zeklcGp5wtF86OUCXr2rhE1/pPgYVfenMBASBVMlJ34vFyU6WAcORDEmlPp2eAHJ7w9+5KI/1ibjzRVUHVLDDb+5QXCgnub41Lc+CudPpqo/+VIDWxSMSOXlpVKKLdz+kkSt29ZoxnjeOpk5DE22UEJPv2JwTlHk43Z9is5706+M0Z12aHo3PmMUX8sLieuN+dukrmDPXFbTZWwkIGUH/uEF82mYW6x1OowmfRqv1vmq2G81aL8bAsunfiizotHHMuSHcCcCsSRhnLJUgbF2TgU7rVmNg0BbPKSCN0bxcMg+RoH/bH0s8kh9XDGkkD+Fypa4uj2r/PCO7Pf1o6VzpBX+mgdUwRmInP81BhV/lupsJoE86hbf7mdgsi4hmW1fOKRctp28WBCjGtnwgcNS9lYxgCVgqMPga/6AOcVnBQcWbu3ixV6Cmazh/XZBttHqP4OcZKYHTBV9wwV1cFcuH7vx04/VU+o1COLfi1/egk6hRbEw3526/yEvcjhEcADT7TI/CoIhL1oH90A9zrvJX8WYjf9Ro1dukA2KPQtkVDTGBiMDDqIz/jdYUkY6aDg62STvnrqlAUbMsZmmQlqx9V6wi1iUIv9muMo2otG0slFIWWGatgq191zR/6Da36mlSX9xoXZZjRmw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(346002)(376002)(39850400004)(451199021)(46966006)(36840700001)(5660300002)(8936002)(8676002)(6862004)(4744005)(2906002)(70206006)(70586007)(966005)(6486002)(4326008)(26005)(6506007)(6512007)(53546011)(316002)(41300700001)(186003)(36860700001)(356005)(82740400003)(336012)(47076005)(2616005)(478600001)(33656002)(40480700001)(82310400005)(36756003)(86362001)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2023 09:24:37.0426
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e20bf8-e978-4e60-82c3-08db6b26d779
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT054.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5805
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 09:24:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60248

T24gMTIgSnVuIDIwMjMsIGF0IDA3OjM5LCDlvKDlrrblsq0gPHpoYW5namlhbGluZ0Bsb29uZ3Nv
bi5jbj4gd3JvdGU6DQo+IA0KPiBIaSBSb3NzOg0KPiANCj4gICAgICAgICBJIGNhbiBvcGVuIHRo
aXMgd2ViIHBhZ2UgaHR0cDovL2xheWVycy5vcGVuZW1iZWRkZWQub3JnL2xheWVyaW5kZXgvYnJh
bmNoL21hc3Rlci9sYXllci9tZXRhLWxvb25nYXJjaC8gLCBidXQgdGhlcmUgaXMgbm8gbWFpbnRh
aW5lciBpdGVybSBpbiB0aGlzIHdlYiAsIHNvIEkgY2FuIG5vdCBlZGl0IHRoaXMgbGF5ZXIgLiBD
YW4geW91IGFkZCB0aGlzIGl0ZXJtIGZvciBtZSA/DQoNCkRvbmUuICBZb3UgZGVmaW5pdGVseSBm
aWxsZWQgdGhhdCBpbiBjb3JyZWN0bHkgd2hlbiB5b3Ugc3VibWl0dGVkIHRoZSBsYXllciwgYnV0
IGJlY2F1c2UgbWFpbnRhaW5lcnMgYXJlIGFzc29jaWF0ZWQgd2l0aCBicmFuY2hlcyBpdCBnb3Qg
bG9zdCB3aGVuIGl0IGNvdWxkbuKAmXQgZmluZCB0aGUgbWFzdGVyIGJyYW5jaC4NCg0KQ2hlZXJz
LA0KUm9zcw==

