Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA6C07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 12:28:29 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.49])
 by mx.groups.io with SMTP id smtpd.web11.11702.1700051304822966486
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 04:28:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=gqsPZvsG;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=gqsPZvsG;
 spf=pass (domain: arm.com, ip: 40.107.20.49, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=g4qsruhmVlGl8Zx2czrUR9XT/GMAE9SXKCnr9r5AnttmHmc2+GLdZ9Prw00v96D6oj5W/mk+Vvr2gl85FgYNZxjUPYwpHMZlU5mf6F2+0ay3+xIy2PH1oAToO8PiyJ+Zo7D5xKmvI5GKIQYxtru3eyQwLzcGavgVRaKM3mXo9RkbdZYL6zhdR7QTbazGUTfRD1E3s9wKwVzf3S3g6zvwmwJz+kBh1NwEDjJLk307D1MVon4NtZ2VqvTP4YNNg6bS0uMrkqegI/BlcG6ijTGXkKo2n2KUKXxnT8p9ZEW961IXydqmZFQClfeammbnUF4rGtZ/kYOYNru1ibM8rgsq8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=++5N4XXqvRKQYSjvXfWF8VTYfxsVYuG/AuBN6O7Akk8=;
 b=YG8xbjuEXcvwKOmhx/oJ8nMZrzjEFGaZRbAVpHY/bmz3mktOdvojjLIxSQIgdDIuR+Nu3h2R57+yqTsPjSOEGvbHQ/gILx4WAMn5rBwWwjexvOkMjzubRvDGV2cdRptbEq6d09exN50kUZKLc+8AkmeLBz95KY52KijLnjUgVrp98yZ/FhpfjBPYHIVcan4HS8FLwrPdPyy2YLj+s9GD866tE51eMGtpoKkgCEFg/9C49H6z8PT4RGnQEdiFJYQYodWWimmwnk4FwjRA1vFtobQsfiryFz2wP6pAAYcdUQFBQEyBlFWoKtPPyWLKjqrl4hO51XiAAdf5DI429KwYbg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=++5N4XXqvRKQYSjvXfWF8VTYfxsVYuG/AuBN6O7Akk8=;
 b=gqsPZvsGWNdqbVwFo1XblqRL8ibvZC5eTI7dRsosQcRPOt6K79/G/Cvj1MkkKzIg9Zw4gzUAUVqCoF2sRYMhO8gvk3td5NbLxadxgVg2jfdrypH5t95m+FGXsP4a7/fmhzjWkXzYSkcY/Wepi4ACrOsreErw5E2JYjq86mDoF/U=
Received: from AS8PR04CA0166.eurprd04.prod.outlook.com (2603:10a6:20b:331::21)
 by DB9PR08MB8577.eurprd08.prod.outlook.com (2603:10a6:10:3d6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.19; Wed, 15 Nov
 2023 12:28:20 +0000
Received: from AMS0EPF00000197.eurprd05.prod.outlook.com
 (2603:10a6:20b:331:cafe::4e) by AS8PR04CA0166.outlook.office365.com
 (2603:10a6:20b:331::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.33 via Frontend
 Transport; Wed, 15 Nov 2023 12:28:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF00000197.mail.protection.outlook.com (10.167.16.219) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.19 via Frontend Transport; Wed, 15 Nov 2023 12:28:19 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Wed, 15 Nov 2023 12:28:19 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 35d1b4817331620a
X-CR-MTA-TID: 64aa7808
Received: from cfcd6a4accc0.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3F9B1854-6EAA-4DCD-BAAA-E18B13532839.1;
	Wed, 15 Nov 2023 12:28:13 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cfcd6a4accc0.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 Nov 2023 12:28:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lANOGwL+n8JGwQAr7oKiIiJcw27A+1bRlJ9TdOzrxwVhCgOuFR9cFm2Z/kNFHCaApDPIe5VXjEh/BEcRBt3/k2FuyC+sYqoc2HQGjYPLjtUmB30TzdepuA1tH9Hm2CMAYlQ3vE9rXME3/pgMWsDWLuvcopONBApkFCamoIpFmH7YhCNLOiVVUuGHRjUzQg3FgMP2Dui/CnQyyTCBaoUyqR94UQpQJ6PTMIjNFNIHv36gZfL2vRugK7H8hs/e+BwjnxK7nzIhp5eK7nGKulvp5d7TWiACM1xX2e34E+sASTpH8IyEOwKugGSwhP/nByw6hsSqvko240YtP9lNRTK3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=++5N4XXqvRKQYSjvXfWF8VTYfxsVYuG/AuBN6O7Akk8=;
 b=Qmb9Kdtzu7uO5UkrNkWzntYMfAw7gWq8ABFKrtHMdHBVQbB2qBV7jcHNnFrSOgqsHyAWYWzlGFaYq3Z3f++yzOisXr8Fn1G2xcwNEhLmWZ3jnTDP1YzQk2iDw2mkorb1AkWn91foBMv/VqS1WA6Ko1QXChu3XzoaePflKGqojGhons0w4XTErG6nZ0Qku58aZxWTQ4LqHjs0fokPlEH3Snh6SLJdySRKNQmS72pJMjf6x8VhWocZ+ao/i3Fi3qBgiFDMjEAnZHT+dl2e02JoGsdL9Uka9+5gRurbWKvI6+SJTwswOBVHhdIaOdC8fZROzMUEEjm4V+IK/4ki5fIsWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=++5N4XXqvRKQYSjvXfWF8VTYfxsVYuG/AuBN6O7Akk8=;
 b=gqsPZvsGWNdqbVwFo1XblqRL8ibvZC5eTI7dRsosQcRPOt6K79/G/Cvj1MkkKzIg9Zw4gzUAUVqCoF2sRYMhO8gvk3td5NbLxadxgVg2jfdrypH5t95m+FGXsP4a7/fmhzjWkXzYSkcY/Wepi4ACrOsreErw5E2JYjq86mDoF/U=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB10010.eurprd08.prod.outlook.com (2603:10a6:20b:64a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Wed, 15 Nov
 2023 12:28:08 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 12:28:08 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "j.casas@falconelectronica.com" <j.casas@falconelectronica.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Files copied to /usr/local during installation get
 removed misteriously
Thread-Topic: [yocto] Files copied to /usr/local during installation get
 removed misteriously
Thread-Index: AQHaE5t0T2Vi5tDswE2zDM4E6udkOLB5ajOAgAHjbQCAAAGMAIAAAa6AgAAGTIA=
Date: Wed, 15 Nov 2023 12:28:08 +0000
Message-ID: <13A07558-2632-4DD0-AA57-F7B1A4E09D83@arm.com>
References: <EC3AC9ED-7360-4446-9D86-C219A859EF55@arm.com>
 <17365.1700049933492029898@lists.yoctoproject.org>
In-Reply-To: <17365.1700049933492029898@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB10010:EE_|AMS0EPF00000197:EE_|DB9PR08MB8577:EE_
X-MS-Office365-Filtering-Correlation-Id: 071789e5-ddd3-43fb-7857-08dbe5d65a06
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 xRcHfbK8GayGTFeNA0jlrK+6I+W+GjXaHCM9BjenV6oKSTbrGITlMEnmcR84mG0Y1cM2/9Lc8RSRLjwAshbogpjuxAHmmk1nY21ZnNLLBZPHUnBnck3MIZyLCPmCNl7hrflhdksi4O5jVnOoSCnR4OQKIXesh8NNCaUPMFG68z0ONaFC9GCHyUQRcyoPjz1HxO5Db99Ww9PNTuwMWzq59Uswd6DQfQQmBDk67PpOGcthQ+9B5v6r1snMHFeW2DFRxFFqcNRBSru5eW3d8pU5n97oIWMkA/hircEOlzbMVlklRsMBy9pnCMV9oxpGcBGiiMOyEczTMOtJ3w5l4HHJn1CI7yq5CAYkO49fN++HzGcJmBVrUNnY1NNiElvbL9wBlg1kVGaBdGYiShbBOOCTCUoCSAXDuL2Obbip2zKJy3mPZtLV87Qyt2IseZUBSbThjZURw5VxpCa3QE7MNLciPsj4rEJD+QLeQXNFrdeGY3fX/316a9lXlnFdnWLdeenVaeH32AxmSDay6SJhfnZOVpm5jFyNK2rUYbaa9peHIr9ERhp4EmoTP3+fCFAMW8zbYzV+tmeSWDORHuo+T7L928vsSULDeJUf5cdvwTsmF1+HuMldTmOnd3+Zdc4jYauR91rU+WiEIx1zFHGjT1n6Eg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(346002)(136003)(39860400002)(366004)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(26005)(6506007)(66574015)(53546011)(2616005)(6512007)(8676002)(5660300002)(4326008)(41300700001)(8936002)(2906002)(478600001)(4744005)(6486002)(71200400001)(316002)(91956017)(6916009)(76116006)(66556008)(66446008)(122000001)(64756008)(66476007)(36756003)(86362001)(66946007)(33656002)(38100700002)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <76910169FFFFA14DB99A6AF157515E09@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10010
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000197.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bc8cb2a6-2ccc-434f-2248-08dbe5d65339
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BM4QDEKPhrpZv3+pU3z7syf5j0S+g4QSW/MYI1SHd6sZKq94Onb05BOmJSXAieS33GaEBMnCe7ewj35yHGS9LWsfIkW8H+6w8oFAeLMs3lgtrWWUSAdhygaUOGTSnggKTphoCuD58wX6XQLH3JhauNHakXXXJMscbpQHH7RbHlGjw4RW01ovXbkiY90zpkXW4lgSFH+m4Slvz27lwPu+SJdru1eHTkaR889NKLEdKC2gQz9ypZRM3tJ4zuJIcrcwXdGGWmVuv0oBVnVFbdMCTFB41IQo4l96RfpBY/mQgRYyLMqIl6q4mU4xX7x2ql7F99HiMxj2rYJxMLe16RMAEyi+aWbQ36kV1MQNc0Qo0ODTpzdSJtsfH9VMtVBBOHlvSCA/yHeCFO26VMQ1jpR19R5vWe4WA8vQhcWl+0HbIN6VVUwbLxy1uvuQirhqUICAe2pR9UTK8zoJbzkoRoVQ2y2CSypfrhjUGuzTU5+nYjjuIQX7dmMhYjjyanwnKxCnKltRud8wRG55a2ppX4muZFqwUXKSTnXdlMdymewKv4cHyiXhEYIjvH0igB8mnJU2txDj1dJJHGxaBuriPi67T9GpkpqMLtfXPPCxFZKeHr/Yze6sSFDDvwR9moQvyTdBnfsSY5+O7jhk2qgDCbzeLxZnY8q25a+QY2HlN/VxFuVEpmXkM4O/W1+pKwpVJgXe+HLX+fkEZ4T9pDbWcyzH2APOed0Y0ui7ucvnb5DwaBIg9YdvpaEJssPWTGbv7Wiz
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(376002)(136003)(396003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(82310400011)(46966006)(36840700001)(40470700004)(478600001)(6486002)(2906002)(2616005)(6512007)(5660300002)(40460700003)(6506007)(86362001)(6862004)(8676002)(8936002)(4326008)(33656002)(4744005)(70586007)(70206006)(316002)(36860700001)(41300700001)(47076005)(82740400003)(356005)(81166007)(36756003)(26005)(40480700001)(336012)(66574015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 12:28:19.8723
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 071789e5-ddd3-43fb-7857-08dbe5d65a06
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000197.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8577
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 12:28:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61698

T24gMTUgTm92IDIwMjMsIGF0IDEyOjA1LCBKYXZpZXIgQ2FzYXMgTWFyw61uIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxqLmNhc2FzPWZhbGNvbmVsZWN0cm9uaWNhLmNvbUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEl0IGlzIGluIHJ1bi5kb191c2VyZnMuIEkgc2F3
IHRoYXQgdGhlIGZpbGVzIHdoZXJlIHJlbW92ZWQgd2hpbGUgZG9faW1hZ2VfdXNlcmZzIHRhc2sg
d2FzIHJ1bm5pbmcgc28gSSBsb29rZWQgYXQgdGhlIGltYWdlIGxvZ3MgaW4gdGVtcCBkaXJlY3Rv
cnkgYW5kIGZvdW5kIGl0IHRoZXJlDQoNClN1cmUgYnV0IF93aGVyZV8gZG9lcyB0aGF0IGNvbWUg
ZnJvbT8NCg0KVGhpcyBpcyB0aGUgZ2VuZXJpYyB5b2N0byBjaGFubmVsLCBhbmQgdGhpcyBpc27i
gJl0IGEgc3RhbmRhcmQgcGFydCBvZiBZb2N0bzoNCg0KDQp+L1lvY3RvL29wZW5lbWJlZGRlZC1j
b3JlIChtYXN0ZXIpICQgZ2l0IGdyZXAgZG9fdXNlcmZzDQp+L1lvY3RvL29wZW5lbWJlZGRlZC1j
b3JlIChtYXN0ZXIpICQNCg0KQSBiaXQgb2YgZ29vZ2xpbmcgcmV2ZWFscyB0aGlzIHRvIGJlIG1l
dGEta3RuIHZhbHVlLWFkZC4gIEkgc3VnZ2VzdCB5b3UgdGVsbCB0aGVtIHRoYXQgdGhpcyBjbGFz
cyBzaG91bGQgYmUgZG9jdW1lbnRlZCBtb3JlIG9idmlvdXNseSBzbyB0aGF0IHl1byBkb27igJl0
IHdhc3RlIHRpbWUgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgd2h5IHlvdXIgZmlsZXMgYXJlIGRpc2Fw
cGVhcmluZy4NCg0KUm9zcw==

