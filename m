Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A00CC77B73
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 10:30:12 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.43])
 by mx.groups.io with SMTP id smtpd.web10.4142.1685961007584425491
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jun 2023 03:30:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=kxvNaB3B;
 spf=pass (domain: arm.com, ip: 40.107.22.43, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l83rIlwS2dnU9d9KnE6/H/iLI42EgPun/UWGHZtM9DM=;
 b=kxvNaB3B8Jhv4F6vV3+1vBgnh6/0SAoybGsZB8f3iL+8GyUDEAsHVdOPwpsmdqZizLvBK4C6NaEDFEcbW/0lO2Gn8jqopiLihq1Pc+nL2wouke3SFosf1cAherHLP5yCAjx9Yodm4lN1WVjealM71mPzVb2X29aZNxB+PD79y5Y=
Received: from AM0P190CA0004.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::14)
 by DBBPR08MB6153.eurprd08.prod.outlook.com (2603:10a6:10:20e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 10:30:03 +0000
Received: from AM7EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:208:190:cafe::9e) by AM0P190CA0004.outlook.office365.com
 (2603:10a6:208:190::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33 via Frontend
 Transport; Mon, 5 Jun 2023 10:30:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT003.mail.protection.outlook.com (100.127.140.227) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.19 via Frontend Transport; Mon, 5 Jun 2023 10:30:02 +0000
Received: ("Tessian outbound 5154e9d36775:v136"); Mon, 05 Jun 2023 10:30:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 10db3c1b54b906be
X-CR-MTA-TID: 64aa7808
Received: from b9b9cb30f209.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 352C7E2B-464C-4248-A722-F580C6C159FD.1;
	Mon, 05 Jun 2023 10:29:55 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b9b9cb30f209.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 05 Jun 2023 10:29:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxLRGzQlXYZE2BwN+JPV55n/YDrdMgZc+PgPolnC/RXUZV3w3rpT0zO63f8QPxY2wSoIye0nBIyzomuLgWX4VPLnEy3fywfQZFEKp8Houf799o2Axhrq5ixC8C1zfaBrCWy7HqRy15GpA9OpW/rYOqhMiNZjBfRf90YkDjqViC49kwS7/tGkYgQU4TmmnCETeIMInJDxejxDcqLzt0gxEuBIm0EJKE07+D9Q/VRNlJdGzU2QnBx/lmRALqOHZS2lBexNzEoxYYv3HrI66wN/oHKU2QeGIGKnpJu5SZ0YA8wLuMmfUQ89oehoNz8JfTHEHsruc8SbUuc0PEzAJ2YkDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l83rIlwS2dnU9d9KnE6/H/iLI42EgPun/UWGHZtM9DM=;
 b=ad1Y3tUFO2pgzI/5t3d+NZw0J3WpA3Yt/Ax5BKscFMFWmvfe6CE6M4ZLVcAFbxpEVPwvm3zznbcJBI1ZJfk8c+tAiJEnB3yiUEhxCuH6vyGdQXqPWilJxzKsqCp3H1bt1gZrdqjymdcOuOkiqgwoUPAdoBGGXsSxjWNKdReSzOqcFiselfH+eGFyErYyNm7HAnZ7TBcPMNsv4w1oasZskOUbPjtD9RMn9Ed/Rq9z8370II1WTi48kcobCYDRcOVCG9c4KArvms761bkiRPLfvLAcGwK1960uUyyqDpqadx1JiiHCRPX4ygNogo3F0ndDNUSBy1Y3E+DqthVjAYSifQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l83rIlwS2dnU9d9KnE6/H/iLI42EgPun/UWGHZtM9DM=;
 b=kxvNaB3B8Jhv4F6vV3+1vBgnh6/0SAoybGsZB8f3iL+8GyUDEAsHVdOPwpsmdqZizLvBK4C6NaEDFEcbW/0lO2Gn8jqopiLihq1Pc+nL2wouke3SFosf1cAherHLP5yCAjx9Yodm4lN1WVjealM71mPzVb2X29aZNxB+PD79y5Y=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5553.eurprd08.prod.outlook.com (2603:10a6:20b:1da::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Mon, 5 Jun
 2023 10:29:54 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 10:29:54 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "jpuderer@littlebox.ca" <jpuderer@littlebox.ca>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Setting the nodatacow flag on a BTRFS directory
Thread-Topic: [yocto] Setting the nodatacow flag on a BTRFS directory
Thread-Index: AQHZj+YeZjtAqvLVWUmxsxSniFtM2698EXyA
Date: Mon, 5 Jun 2023 10:29:54 +0000
Message-ID: <0B3874BC-6BD7-49BC-AD35-98E85A868CAB@arm.com>
References: 
 <CAP=9gbuZrFrrNATXQMQ4FPtCC8bA2bcZY8c9J-75xtoi35eM+Q@mail.gmail.com>
In-Reply-To: 
 <CAP=9gbuZrFrrNATXQMQ4FPtCC8bA2bcZY8c9J-75xtoi35eM+Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5553:EE_|AM7EUR03FT003:EE_|DBBPR08MB6153:EE_
X-MS-Office365-Filtering-Correlation-Id: ea319381-1047-46fe-94ed-08db65afd26d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 7VhKL6+9BEak1aTibviFJXPoasGO9zhNJ6tFb+pMhInm3+eups23rYk7V9c4mDHBONZKJPs08ewiYqfmQvf3iOc9zSVKRejXp+Vtnfnv/tp4z322WuU/EYacFpPMbZV7ZPJtqS0TktqAeGZrdLGjq0MWOvMnnhHxIbATZB4zEPu9BY4HXsvMzBmHjOCc+aK5PHlXKh9/AHUKjKSPv0MW59u3xn6m7ESpDwGXxw0gCZGMmem5ZV9KTlTV7VM3ws7QQnLejEqQh2IPGb0Li3h3NnbhgHZAywX2I8WWSgMEW4+qmuzO17XmBBLwnfemdf4OItBq/22euM4PsQ6QPB70wkItfP6uhL7uLOXQbSrllaNvQua/1Z5QG+rslEkIAGuGXib5LazIR3GOjMbt+zL3BmPFmMJIuXAKt24eisLuVcyW1Z4CMNClfFUkyg5VS1i0inHklExEwCpgM/ZDuOnUF6ontQ0rdPia7QNyHnSbMk7t208NZkvfqBF2Xwf1r9jsUvVkgcu+JlL6cWCkFPWIwy3XD0Uc2PvAWdytdKzGi8DX4o0D9PWSxQ0AZxM0izqXHKeTT1LDVgCu79i+OOLG/7YLjUgERood3gZxDcEySPu6gj0VMUMqgziWiRRF2g7YXiRIV/bE0AfToHT4egxdDg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(451199021)(71200400001)(478600001)(8936002)(8676002)(5660300002)(36756003)(38070700005)(2906002)(4744005)(33656002)(86362001)(4326008)(6916009)(122000001)(91956017)(64756008)(66446008)(66476007)(66556008)(76116006)(316002)(66946007)(38100700002)(41300700001)(2616005)(53546011)(6512007)(6506007)(26005)(186003)(6486002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <091E316A85D365429E4DE6C7776A14B4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5553
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT003.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	db76b084-cdf8-4fdb-e26a-08db65afcd47
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DJp0ZMfTlg3f3OdONZ3hEMEIjX1nYeQ2mEtgTnlKvld+NrGg4ayxraknXM1dA13xkk9KAu/SiMK/LqUJbLwkSPD8vh62uU9GSCkvIWwDJzojAaj+Z8AuYkNCpSbiE90XOruOv1rhnYDJLRaaUKINsB3X6KanEf9h9uPl34a+W6/UjeoZ9PGUduGl6XPzsqoiG4rCw1a3yeUXf+ztU5UgXSHMvY32O01LzsGByHY4pD472ph2P1SUTkn/5/Bop4UBmBPvqXIE9bEgBXJWjtqdjdGYeq69y93OR1hONY6x14In8PtoAPydVX6Wxgc4OMMdFemaZG3THoDsjS5n3uAZgITed+H3i9lNIwhoUMyRHIAxBIZv37kNdFoGsZjn1gvvT8gL+BsdZ2BgVuQUB97ynVNjRwl16D4yIAtKa+q/cIaUgsxh7cax1i8+LCkfSuowk98ZV9Q4H+Er5ZhABQbvYCS/U0NCXJ8DCzay2q96oum3muUwkrzaiVHi/rmZ3cB3ZhzAqLlyjRyX/AQaqHAjVmyE9d0/Wq44VJgIjFLeey767V9En5rNie1/yKKmo+09TWKCYXJmjHP8WtVMNXqMaOEeRL5rQsFMf5QTyP0yvFHMoVYtzFXBxH8iemQMz5CFzd0yxym4Z66UGhPIqepruCWh3QkNhEGJeaB0xnoPAKP6j3eyH7yyqexmWwlC3G6W6YvXymqalc+KyP4B/+cX7HNtdt01XZnXwwsOsyS1w8TYg08yHcFq56FuDW1MTEpD
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(396003)(39860400002)(346002)(136003)(451199021)(40470700004)(46966006)(36840700001)(53546011)(6512007)(6506007)(2616005)(41300700001)(6486002)(336012)(47076005)(36860700001)(186003)(26005)(82310400005)(40460700003)(478600001)(40480700001)(4326008)(81166007)(82740400003)(356005)(70586007)(70206006)(316002)(8936002)(8676002)(5660300002)(6862004)(2906002)(4744005)(33656002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 10:30:02.6511
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea319381-1047-46fe-94ed-08db65afd26d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT003.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6153
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 10:30:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60179

T24gMjYgTWF5IDIwMjMsIGF0IDE2OjIzLCBKYW1lcyBQdWRlcmVyIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxqcHVkZXJlcj1saXR0bGVib3guY2FAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IA0KPiBIZWxsbyBhbGwsDQo+IA0KPiBJJ20gdHJ5aW5nIHRvIGZpZ3VyZSBvdXQg
aG93IHRvIHNldCB0aGUgYG5vZGF0YWNvd2AgZmxhZyBvbiBhIGRpcmVjdG9yeSBpbiBhIEJUUkZT
IGltYWdlIGF0IGJ1aWxkIHRpbWUuICBOb3JtYWxseSB0aGlzIGlzIGRvbmUgYnkgcnVubmluZyAn
Y2hhdHRyICtjIDxkaXI+Jy4gIFVuZm9ydHVuYXRlbHksIHRoaXMgZG9lc24ndCBzZWVtIHRvIGJl
IHNvbWV0aGluZyBzdXBwb3J0ZWQgYnkgZmFrZXJvb3QvcHNldWRvLiAgSSB3b3VsZCByZWFsbHkg
bGlrZSB0byBhdm9pZCBkb2luZyBpdCBhdCBydW50aW1lLCBvciBtb3VudGluZyB0aGUgZmlsZXN5
c3RlbSBpbiBsb29wYmFjayBtb2RlIChyZXF1aXJlcyByb290KS4NCj4gDQo+IFRoaXMgc2VlbXMg
bGlrZSBzb21ldGhpbmcgdGhhdCBZb2N0byAqc2hvdWxkKiBiZSBhYmxlIHRvIGRvLiAgQW0gSSBt
aXNzaW5nIHNvbWV0aGluZz8gIElmIG5vdCwgd2hhdCB3b3VsZCBiZSB0aGUgY29ycmVjdCBwbGFj
ZSB0byBpbXBsZW1lbnQgc29tZXRoaW5nIGxpa2UgdGhpcz8NCg0KV2hlbiBhbmQgaG93IGFyZSB5
b3UgdHJ5aW5nIHRvIGRvIHRoaXM/ICBJZiBpdOKAmXMgYXQgcm9vdGZzIHRpbWUgdGhlbiB0aGUg
cm9vdGZzIGlzbuKAmXQgeWV0IGluIHRoZSB0YXJnZXQgYnRyZnMgZm9ybWF0IGJ1dCBzaW1wbHkg
YSBkaXJlY3Rvcnkgb24gaW4geW91ciBidWlsZCB0cmVlLCBhbmQgeW914oCZbGwgbmVlZCB0byB0
ZXN0IHRoYXQgdGhlIGF0dHJzIHN1cnZpdmUgdGhlIHRyYW5zaXRpb24gZnJvbSBhIGRpcmVjdG9y
eSB0byBhIGJ0cmZzIGltYWdlLg0KDQpSb3Nz

