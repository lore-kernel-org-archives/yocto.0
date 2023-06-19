Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98032EB64DB
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:44:32 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.50])
 by mx.groups.io with SMTP id smtpd.web10.3985.1687167869548414410
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:44:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=XmsboLQt;
 spf=pass (domain: arm.com, ip: 40.107.7.50, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SagnvliJLKEIrn075vzrir3y032/ytCrKnxToH0yBKo=;
 b=XmsboLQtV0AZxE/d/z6iBrEtoaDZ5opmTd49zWDP6/PPKLPT5D6iBduoQR3S3/WJ6UBqAFImwWjW1L3s/MJZgjKpdf7AyGSKOTOHLsn0YjO5epdkoCddKqDAQar0Sss3B6E/8jGFizgWbuUi4UokXUTZ9uyY56njv36CyANJUyI=
Received: from DUZPR01CA0071.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::16) by AS8PR08MB9095.eurprd08.prod.outlook.com
 (2603:10a6:20b:5c1::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 09:44:23 +0000
Received: from DBAEUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:3c2:cafe::c6) by DUZPR01CA0071.outlook.office365.com
 (2603:10a6:10:3c2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35 via Frontend
 Transport; Mon, 19 Jun 2023 09:44:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT003.mail.protection.outlook.com (100.127.142.89) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.20 via Frontend Transport; Mon, 19 Jun 2023 09:44:23 +0000
Received: ("Tessian outbound 8b05220b4215:v136"); Mon, 19 Jun 2023 09:44:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 05297e1c472c61df
X-CR-MTA-TID: 64aa7808
Received: from db43a05e162d.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id C0D93FC6-2695-4A25-A3C6-3A0694D1E749.1;
	Mon, 19 Jun 2023 09:44:16 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id db43a05e162d.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 19 Jun 2023 09:44:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h76zP5da13SXAUYSe228IOdkIau1AJHDCXerj0E7/L2SXhhFq+hmOUfFrPO8Fs0OpCx0Y/vLaPPd+y0UMEGab7zhGHUGQ0IWe9S0n6i4X0NSKlQG7Ipb6SCWlV2TuZAtdSkpRMRbv+U3J8qk0TMqoAhnvweyIWoEPn7HVn5auPrZzArArfy6jy2x+2ZK5M9iXMZswb7RBKWLDwQgs5UVvwVUszlyPernAuPQsczF4XIL/L04FI0742VAE7iisewIaBcJ+5QuIm8dDngVqSO/GFity2P/iHcgrujA8oBz2Frf5a2KEz/0kopleTmdgw5dUdDfnxLo3NEl/hESvZpGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SagnvliJLKEIrn075vzrir3y032/ytCrKnxToH0yBKo=;
 b=Z6g7m9weEi3w5K0B62KHs9Twsf0sb1e60HTfzbySq6iEb2TLhaoFn8qrHUzQ1dnymq9b8rSJRpqUEifPOWEejnANNXhvCr56V8Q+18rro8WYUCk0GAxqoPL35UDSMDFggwAGGQcw2o0J/MQgxTyn+Ppy01sA7SLGnvbXsZoEU3ypTlYTULRGDw6aWeRaY7KBGeDk8r/3l+B0h0I3EiryF8NZJJgNfHBfwXkJpA2gfK5BYtKUnt3phHYyMwjUHBgN+ziD7N+h+NHXvxgBS6w4rlz2Ece7w/w5gcOMmsdmRugTsZ9c97TGDuY5jj+raXsvH//+TEGIqZzwfO+R1NWfIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SagnvliJLKEIrn075vzrir3y032/ytCrKnxToH0yBKo=;
 b=XmsboLQtV0AZxE/d/z6iBrEtoaDZ5opmTd49zWDP6/PPKLPT5D6iBduoQR3S3/WJ6UBqAFImwWjW1L3s/MJZgjKpdf7AyGSKOTOHLsn0YjO5epdkoCddKqDAQar0Sss3B6E/8jGFizgWbuUi4UokXUTZ9uyY56njv36CyANJUyI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS4PR08MB7855.eurprd08.prod.outlook.com (2603:10a6:20b:51e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 09:44:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%6]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:44:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, Michael Opdenacker
	<michael.opdenacker@bootlin.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
Thread-Topic: [yocto] Going on supporting Ubuntu 18.04?
Thread-Index: AQHZookPUavabp9mjE6A8xpYpBrK3q+R1GeAgAAI54CAAALKAA==
Date: Mon, 19 Jun 2023 09:44:14 +0000
Message-ID: <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
 <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
In-Reply-To: 
 <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS4PR08MB7855:EE_|DBAEUR03FT003:EE_|AS8PR08MB9095:EE_
X-MS-Office365-Filtering-Correlation-Id: 472624e1-97be-418b-3d90-08db70a9c364
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 l6ifqj20tVaKNlVxLpRYLEaEvsKuwPl+2Ge7QJJqW0t6AmorKUXsz7HagKgvddCHPWdoWWjgeiziEgaSpyukQNE/1NYjqt/hMShPskfpAle9grP8nFWAfiyoz7keCyvIwaRynjojC7u5GLlPibXy8E23G04RRlKf5m5hNV91lRGb/i4LVO5/xNOrt27bGI7ymH2440HHe47tywWxhvEUHiS63kNR795SILEhNvSAmxRBoZecNnpX/wu8R/EkOZ8rwxdCU4X/OFUxdvmk0nIXg9lvOVUKWkwQp1VsubxuMKqUqhtFO7zQFYeRcZTpLvN+1apmPu0XybfUW4q+vUrJr5zUeSy9z6qcj+xWB06zY3uR6qOlKRTQ255o4ZM0YLcK0EdZlSRAfpgL1IhPiH/SUD/30JTzGmGvrXk/Lr9X/9HYIy34Sdv5N7e6PHY2oUZko9pzVfypL3Tz7byAJY+oS8n9qG0bE90iBFxj44CsAGNyIohwirTIunW42J/lS4xgnNkHdZu2gqOKKipc7/bQcFWanYPooaGFgEeOESUQOxUBc1ni9yGe6aE/6skPezGQg8TALriAJ6AHumY6acCyhSGCaH/SYae6h3+WnvMoq/XUozdSJa7ZVGad564RTWsFgmZWF8EBJ1Y5Zobf9mFonA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(396003)(136003)(346002)(39860400002)(366004)(451199021)(53546011)(186003)(6506007)(6512007)(2616005)(26005)(6486002)(36756003)(71200400001)(478600001)(54906003)(122000001)(91956017)(66476007)(76116006)(66446008)(4326008)(64756008)(66556008)(66946007)(38100700002)(316002)(6916009)(41300700001)(8676002)(8936002)(33656002)(5660300002)(38070700005)(4744005)(2906002)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0750873DE5B544499BB661B02003CBBF@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7855
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT003.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ccf0b818-5891-44fb-b0db-08db70a9be22
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3nxPUL0SEumIEXz4WGS/+6z45F16syjEUD0Kw7n4t+11pEINyz8oMenNFvQhg1bg7hPE8uTzJTTbLBnPDUPlYo+QjJkB4pu8Zk3o8eGt+g8sOvKmAQKfm6uxZobUwm+o+Ew0XjODzwpZ849szkVzIA9Av4yYTRfoKa3HpoOLaTOj4AQOMPEplG8iIGz4VZofxFZCeMtP1cKJVwh2NZPJ/M/hFPjAbaURksB1bLLeSMY06FofDECtJ7v1qwmp2yTwBdRcYE1nLIxeyKBpCAXzxiNuLepyTKaw4RDDB5JISomB87ykWaoM/61p7tEfTyOoHQ7ARxiN7uLq9Z6gWM/BpZ47R6zIY0fNUFZYxuSVQ32m5/l2TlO1JhYiy+tbqU7KGaLQriwceHNHbbcSkPjDy1j6apdLi122eqkXp7np1euSgfpi9YRBt8MxUNh8zxSkPdyVKfB1pYsOpJRsphnlc24WZgO5HNyGTPvSKnntRDktz1KDWZbXpjR2bIabQJe9WZXalwQpB0d0Dzh2vcUIbHSq1glFhg55jYG9bGRX5mnp69BLs329kGWqyFtdKArROB4S8qINkobAZv+uIFp2sasF38JoLOI2B+9e/nEPp79cpCLXrm5+u7vEkNpjTYwXYjODmDiLGzCFebbHjOLybpE7gg1MVd8b/B4mssMovcc82JiwLgJJf7kdH6GM+Fezi+p/vrBFtfUtvF3+vxh5/3etGb+TKCVGDXrgAoL2pd0=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(39860400002)(136003)(376002)(451199021)(36840700001)(40470700004)(46966006)(356005)(81166007)(336012)(2616005)(86362001)(2906002)(47076005)(36860700001)(4744005)(5660300002)(82740400003)(40460700003)(4326008)(54906003)(6862004)(186003)(82310400005)(8936002)(70586007)(8676002)(70206006)(26005)(478600001)(36756003)(41300700001)(40480700001)(6506007)(6512007)(6486002)(316002)(33656002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2023 09:44:23.2811
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 472624e1-97be-418b-3d90-08db70a9c364
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT003.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9095
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:44:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60342

T24gMTkgSnVuIDIwMjMsIGF0IDEwOjM0LCBSaWNoYXJkIFB1cmRpZSB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8cmljaGFyZC5wdXJkaWU9bGludXhmb3VuZGF0aW9uLm9yZ0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gVGhlIEFSTSB3b3JrZXIgd29ycmllcyBtZSBhIGxvdCBt
b3JlLiBUaGUgMTgwNCB3b3JrZXIgaXMgY3VycmVudGx5DQo+IHN0YWJsZSBidXQgSSBkbyB3b3Jy
eSBhIGJpdCB3aGF0IHdpbGwgaGFwcGVuIHdoZW4gd2UgY2hhbmdlIHRoZSBPUyBvbg0KPiB0aGF0
IG1hY2hpbmUuIEluIHRoZW9yeSBpdCBzaG91bGQgYmUgZmluZSBhbmQgaXQgY291bGQgd2VsbCBi
ZSBidXQgdGhhdA0KPiBoYXJkd2FyZSB3YXMgdmVyeSBwYWluZnVsIGluIHRoZSBwYXN0Lg0KDQpF
YWNoIEFybSB3b3JrZXIgcnVucyBhIGRpZmZlcmVudCByZWxlYXNlIG9mIFVidW50dSwgc28gSeKA
mXZlIG5vIHByb2JsZW0gd2l0aCBhc2tpbmcgTWljaGFlbCB0byByZWltYWdlIHRoZSAxODA0IG1h
Y2hpbmUgd2l0aCBzb21ldGhpbmcgbmV3ZXIgKG1heWJlIGV2ZW4gc29tZXRoaW5nIG5vdC1EZWJp
YW4gZm9yIGNvdmVyYWdlKS4gIElmIGl0IHN1ZGRlbmx5IGJlY29tZXMgbGVzcyBzdGFibGUgdGhh
dCB3b3VsZCBiZSBhIHZlcnkgaW50ZXJlc3RpbmcgZGF0YXBvaW50IQ0KDQpSb3Nz

