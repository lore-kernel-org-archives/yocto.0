Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4041DC6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 11:01:16 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.76])
 by mx.groups.io with SMTP id smtpd.web10.98444.1679655674495223119
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 04:01:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=+H3LaZHn;
 spf=pass (domain: arm.com, ip: 40.107.249.76, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GvQgtKvNYWZRGh7lVjhhzE3tnfWR0+IvwujhfrjniYo=;
 b=+H3LaZHnKIzTGl8ZUFaDGFIN2xjVsB/njUj2FUPFwooWIOL0vzS+TTw8ICaqNw5NyBzGbVYVRQoTctifRnBmCcRLNTpLRNTT9B5UuBpbP4v33QiR52RhH+iAq5VRP/KA+vdI7/plvAHDL99AP4afr2wA5tZOMIst3j9av3yArVs=
Received: from AS9PR05CA0053.eurprd05.prod.outlook.com (2603:10a6:20b:489::33)
 by PAVPR08MB8847.eurprd08.prod.outlook.com (2603:10a6:102:2fd::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 11:01:11 +0000
Received: from AM7EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:489:cafe::90) by AS9PR05CA0053.outlook.office365.com
 (2603:10a6:20b:489::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38 via Frontend
 Transport; Fri, 24 Mar 2023 11:01:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT028.mail.protection.outlook.com (100.127.140.192) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.22 via Frontend Transport; Fri, 24 Mar 2023 11:01:11 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Fri, 24 Mar 2023 11:01:11 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1c8ec5e9d599c9d7
X-CR-MTA-TID: 64aa7808
Received: from b27c93a04ba3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0633C9AF-DFD1-405C-99B5-883A0459E0C3.1;
	Fri, 24 Mar 2023 11:01:04 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b27c93a04ba3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 Mar 2023 11:01:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UwjJAWw0UyK+XWa12nPVI1gyQPo+P9hRM73kGievAD/qZ6hg/FZf6uWRynyeJWwl0SaHiIrVKI6LAnGbDNhhonmER1LwpUqITHnWhnJfbrQfQk1CSbZy7jLDvP7LHY6SOGQ5zi2EJavlqJiauUpas1sU4qWPVk3cfXLhpWO/acg2k/0TjUPtUJizxTEKlAFsWS8i9AY7NxBjfBfda6QWCIhoULry7ed301+v4xaOu0k2d1FiWG46qjlg7vkazsGKmOnViIzWpmanblR8G1J+4uYZtnYzXJ575vplBwkdM1uIvF/bDvwSii3gMNlkoT0U4j4M1wKrf+RYaXQ/C2x7HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GvQgtKvNYWZRGh7lVjhhzE3tnfWR0+IvwujhfrjniYo=;
 b=gbY+OMbeAGi2pAHvMOiU/wmac8i7nrDmYseZpVb8L651nZ2qIIVfYC4OvoiuTMwBY9xoSsM+MaK6jQ7UxlZkAAWxwUa8ljBP1WGmqp0FeXsA0e0viU0p+w8IJWipSBHe07nQMgagvzgWZbIYN+1kKlgwXsQNXPICY56D1Z6iqqAobxA+mJcnOdha7Wohf0JCcKHp4cR7VCuvTSd7An2jxHQFQQYBtsf2WCLYyvLR7A3y1jZf4J5HzP2nqFkiK5snwwroF0V5bxkuMo+9kSi2+fOp9mJgcXIMbCTdXVofVSkAJ/UQmGfHddRedWesoevzPgRiTOF64e6W82EY15mKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GvQgtKvNYWZRGh7lVjhhzE3tnfWR0+IvwujhfrjniYo=;
 b=+H3LaZHnKIzTGl8ZUFaDGFIN2xjVsB/njUj2FUPFwooWIOL0vzS+TTw8ICaqNw5NyBzGbVYVRQoTctifRnBmCcRLNTpLRNTT9B5UuBpbP4v33QiR52RhH+iAq5VRP/KA+vdI7/plvAHDL99AP4afr2wA5tZOMIst3j9av3yArVs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GVXPR08MB7845.eurprd08.prod.outlook.com (2603:10a6:150:1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 11:01:02 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6178.024; Fri, 24 Mar 2023
 11:01:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "rudolf.streif@ibeeto.com" <rudolf.streif@ibeeto.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Network Isolation and CMake FetchContent
Thread-Topic: [yocto] Network Isolation and CMake FetchContent
Thread-Index: AQHZXN+KeMH0pQ8oRUCSuMNbUUUaF68JxguA
Date: Fri, 24 Mar 2023 11:01:02 +0000
Message-ID: <541C3F08-617A-406A-BCA4-5D1C1442294B@arm.com>
References: <2efc4ead-5dbb-1a47-3068-0fc388b296f7@ibeeto.com>
In-Reply-To: <2efc4ead-5dbb-1a47-3068-0fc388b296f7@ibeeto.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GVXPR08MB7845:EE_|AM7EUR03FT028:EE_|PAVPR08MB8847:EE_
X-MS-Office365-Filtering-Correlation-Id: b89d22fc-2471-4b09-46c1-08db2c571422
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 vxm1PIF4clOsao1ohgnIRbelehHBd5sS5QXGZi4I/Zf6oThdzFHibXhRm/phKE1dfYDKEk2thK3MgFJDyZ/n6NL3NjsoIvO97LftAI7Ap63HtLj3zbshPnw1MKac3Qs/N5oWq8mM51HzqTHHDphhCXa2KujyOv+lcDleprqAMHeC/PiSA2KippDbiFIn0qXlDLWofX/ZrjQvRuL78nTzH0Sjb9Rqj02T0i1ZQKJMQ4jqUOF59myzmAWynUOva9W/HS3hHPyCGed36+tFPQWcXjsDNwlzbMXmOdBwRGbKWjFWZGL8pSJS6TXcw5mNoYODQ9WO8TJ1KSrZo5QyKYey1Kk0GreA3WZcBFCW62lnuopwXGKGOQUSPtlSEmZ2JQ7jhEKRZRA+Z6sEfO70eL1twhpebfhth31yhKr5lB1lciKdxji1iSEpS6JTIEGjKw+C88r/lzx3QDEaZv5VhKEdZBbM8XZ7Y5WuTZ6HFD9HsNFDGZCl/amt6ATLYaX/KCFlqSiWvKYdNgXnZIDS9R5Zewx7D6IIuPs9OGuWtM73izBVA9SnlhgzjJM52rqrV3Bih2sj//azMY9MGCRDsLKfHQaYt2T8SQQ0BMoGDkjqVPeQjEyMLcRyIy1jom8jAsDYjV5VlulWiM+/P1CeBEGXTv52vP7Waz6AONZKW8xEKiI3xmd7cPxR/ZNwzkE4JYKGFaAYCl0OaaiaPcJaYxSRG4FZj2z2ILEYV+1Tl0WNMM0=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(346002)(39860400002)(376002)(396003)(136003)(451199018)(478600001)(8936002)(5660300002)(41300700001)(66946007)(4744005)(66556008)(66476007)(91956017)(8676002)(4326008)(66446008)(64756008)(6916009)(86362001)(36756003)(33656002)(71200400001)(186003)(6486002)(122000001)(26005)(6512007)(38070700005)(6506007)(38100700002)(2616005)(53546011)(83380400001)(76116006)(316002)(2906002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2DEC045C17BB0B418BF9BC040C52DC31@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7845
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c575c8e5-e07e-4265-e6be-08db2c570e98
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6Nu2l3WHzF5KPJnzRRQNihau7XtOJfW57iv1W5wHxyz/co6oe6r/fvQDx7b6o162GDgxyhP6lLVhxJ4k94/FNTmcv7wLtDHRYN0JcyyRk+GSO1Bb9tOA7ITliFHHUMGko3Fx3RJHr3ql4tMrqVrT3V9Kr+WMfnqwm8xhheblEe016xumXeLZmiMFFaaJR7ISHDYgA5yFnTj0QDOr/BITAGQ/DRQVaT00iizfXmal3eq0OAkUrBKOokmD9aOVyZVy5je03xZO1lW8shY8Cj7l/njTjgIt0h0xpzVvhILbW+KxemhKgur/vrtTu2lEcdlBGu3J4OHfE4OhKKrKHB0Ix8ihYR5gaITZZYwmE29LzMdK3sXgpST7VC7sErFw3KMzyn7Tn3IBc1HBuZF1k8UzVKSWVkGcBKCAOu+TXQha3m605ptfTnhUpb2OOlQcF9tkZ9I5JQs3MsT6TvLpDRgdYb1NgpdVTe60H48rnVsTglFivnZY/wdgT4iiKTwf3VfcR1dZMLmqXrCuDCSFbotnhnOiDTPQhx9PH9eTR8VL66AuvtSR3vMJJKwU8fiuxeAT8cEr9HuHYt3PifW4qGqxIGYe7FDxPkkQ5HYzjbxvhO4QMeYGVoJOPrOGHyu3c0AnBQPQ/cOF23KQtEx8yexY5FKKIKZZI88N9CNX0uqJkBAO/j1yEpp94xeBv3vLaSgIffGaLHgbhSdoXDDD/GPzEw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(396003)(136003)(39860400002)(451199018)(46966006)(36840700001)(40470700004)(40480700001)(356005)(2906002)(40460700003)(36756003)(83380400001)(2616005)(336012)(6486002)(186003)(478600001)(82310400005)(33656002)(86362001)(36860700001)(70586007)(8676002)(4326008)(70206006)(47076005)(6512007)(53546011)(6862004)(4744005)(6506007)(8936002)(26005)(316002)(41300700001)(5660300002)(82740400003)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 11:01:11.4155
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b89d22fc-2471-4b09-46c1-08db2c571422
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB8847
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 11:01:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59514

DQoNCj4gT24gMjIgTWFyIDIwMjMsIGF0IDE2OjU4LCBSdWRvbGYgSiBTdHJlaWYgdmlhIGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgPHJ1ZG9sZi5zdHJlaWY9aWJlZXRvLmNvbUBsaXN0cy55b2N0b3By
b2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEkgaGF2ZSBhIHZlbmRvciBwcm9qZWN0IHdoaWNoIHVz
ZXMgQ01ha2UgRmV0Y2hDb250ZW50Lg0KPiANCj4gSXQncyBzaW1wbGUgdG8gb3ZlcnJpZGUgRkVU
Q0hDT05URU5UX0ZVTExZX0RJU0NPTk5FQ1RFRD1PTiB3aGljaCBpcyBzZXQgaW4gdGhlIGNtYWtl
IGNsYXNzLiBIb3dldmVyLCB0aGF0IGRvZXMgbm90IGZpeCB0aGUgaXNzdWUgc2luY2UgbmV0d29y
ayBpc29sYXRpb24gcHJldmVudHMgdGhlIENNYWtlIGZyb20gZG93bmxvYWRpbmcgdGhlIGNvbnRl
bnQuDQo+IA0KPiBJIGhhdmUgbm90IGZvdW5kIGEgd2F5IHRvIG92ZXJyaWRlIHRoZSBuZXR3b3Jr
IGlzb2xhdGlvbi4gSXMgdGhlcmUgb25lPw0KDQpZZXM6IGRvX2NvbXBpbGVbbmV0d29ya10gPSDi
gJwx4oCdDQoNClJvc3MNCg0K

