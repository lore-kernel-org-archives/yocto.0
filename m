Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0638EB64D7
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 13:52:36 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.50])
 by mx.groups.io with SMTP id smtpd.web10.10934.1687269154767875024
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 06:52:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=FSgGkALz;
 spf=pass (domain: arm.com, ip: 40.107.6.50, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FL+G4m79OpxYa7xC7v55LDuv1jbhNQaJ3SmPTV+D8gQ=;
 b=FSgGkALz+q8j1ENYOrZOeeIacVSLuFIu7F91CAFmUo+wGk5/dj4dHJvPE+8v3HvF6wxmwo93veCpDXkS+6qfkG0VAC8BKtQte9z1lQjx1LjjWxtVWBxu5NRHLLpCxNXrkxSR6lwDCqLSS9MwxiCMoliWod2FTh7oGDLWGS2c1P0=
Received: from DU2PR04CA0157.eurprd04.prod.outlook.com (2603:10a6:10:2b0::12)
 by PAXPR08MB6733.eurprd08.prod.outlook.com (2603:10a6:102:15e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 13:52:31 +0000
Received: from DBAEUR03FT020.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2b0:cafe::7d) by DU2PR04CA0157.outlook.office365.com
 (2603:10a6:10:2b0::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37 via Frontend
 Transport; Tue, 20 Jun 2023 13:52:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT020.mail.protection.outlook.com (100.127.143.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.21 via Frontend Transport; Tue, 20 Jun 2023 13:52:30 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Tue, 20 Jun 2023 13:52:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 377bb92cb36655f0
X-CR-MTA-TID: 64aa7808
Received: from 07e149ee5fd2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id AE67A73D-53A2-41CF-9DF7-BE192FB3E51D.1;
	Tue, 20 Jun 2023 13:52:24 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 07e149ee5fd2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 20 Jun 2023 13:52:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwdUHBUUI30XHLSdiypWOpSxfvT0DCOOk0YCwBmiW6wcmNToowldjsz1AKVvTNPgykh79PJZdk2VJMhUod/ZAVV7hMFKsK2usCCLImuxOCCybEulahanh2GwaDTN/rgNXoDFYYgwKUifDP5LlkzxdlNjFNV3hpI5vv+0cH2g50OEqw26LkwcrM7DYXi45e9R9Bc2gb7+oP5AezOOi5DWZfjzAYG09aQj+buN5GlEOmtM/Cgv6rDmwmJhUtLqYRv4xKFv+bRc0ifAam0/EO6IG9rlo1LB9vPTFIdv9YIoGb85R8yt75kyf5euoBs9nsVGkqfHEdMwVPp2t0jn4dRE0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FL+G4m79OpxYa7xC7v55LDuv1jbhNQaJ3SmPTV+D8gQ=;
 b=Wfg955oEJyJxuN4SEVLEbZuUHJsPxUC9mV8IgKnkJgYx9uEgVfGJdlOPIbaf//vJqDg4OdxoprJMZjFnEPB/l9H4/1S1ZIUKbPB/cQreYnKbfzj8+sLhYHgdOjcjiEkaIgDpKmvFHlcIZ85vV1ZEhpDG2rgAXMt9NLhh/FZ5oYkTOj3TDE2mO6l2m1I+ffaNQEblrxldzlUmd9ZynPp/YE7QidvfI0pyvRXcwDEHNzDQ2u7HiXnoGkIOE0wqDGTAXDmr0zcNejuHnAN8rmDPf/z7D82sUMBWW5b48Bq0eXWJup/05E0eV++ylr1m3P1Po90V963BEe6p0Tz6eLobEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FL+G4m79OpxYa7xC7v55LDuv1jbhNQaJ3SmPTV+D8gQ=;
 b=FSgGkALz+q8j1ENYOrZOeeIacVSLuFIu7F91CAFmUo+wGk5/dj4dHJvPE+8v3HvF6wxmwo93veCpDXkS+6qfkG0VAC8BKtQte9z1lQjx1LjjWxtVWBxu5NRHLLpCxNXrkxSR6lwDCqLSS9MwxiCMoliWod2FTh7oGDLWGS2c1P0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB7319.eurprd08.prod.outlook.com (2603:10a6:102:220::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Tue, 20 Jun
 2023 13:52:24 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%6]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 13:52:23 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
CC: Sumit Garg <sumit.garg@linaro.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Topic: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Index: AQHZosvMH8OS8Q69kEWXpYjGcJANdq+TmlmAgAAHgwCAAAwMgIAAB0OAgAACEAA=
Date: Tue, 20 Jun 2023 13:52:23 +0000
Message-ID: <B7E68CD6-45E4-4B14-9F9C-79C3B442E549@arm.com>
References: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
 <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com>
 <57D4D4FE-0D69-4C4C-844C-0260490012E8@arm.com>
 <CAFA6WYMjeAA8HKhw43Q_d8iSs7-gMfaSq16Lgdirdi0aL3fAfQ@mail.gmail.com>
 <PH0PR03MB57516615AFCC4F32BE740E34F95CA@PH0PR03MB5751.namprd03.prod.outlook.com>
In-Reply-To: 
 <PH0PR03MB57516615AFCC4F32BE740E34F95CA@PH0PR03MB5751.namprd03.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB7319:EE_|DBAEUR03FT020:EE_|PAXPR08MB6733:EE_
X-MS-Office365-Filtering-Correlation-Id: 00e35774-738a-4bcb-bfd2-08db7195978b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 8tLEMvolRRiOuqilDggH9U0NBsRL7UBJ4lApCYxivaxuOUblLqbI67JDOvCR5mME6kNbNF8TXR7lw+X0MN0Z5bCMblEf4OyWuNQKMeQolk5Gv3pTmU0KkH0DYu/5d1CGgwVJCE0RdWx8Tj3mD5ZQ4vFhBd3WqdAt+Mnkwk8PrlDeuZ2ul8aj6TthOzTFjcj2lykGfN2zf3vQVDw34xkO57gMjckBKpH6JSr90feveLDUGkp6s+mqTVPKopYwHiS7adeF3ro7sNuWke+PMpBNWhba4x8KCyEkO4zVXnZ5dGHq21cv1m30iQxXCAEvbcsJejFfCvKJ1WV1uDYNRhlSNAy3bFh1BgDLAVlcyA57IWgYhH2MhLs8vjvKjO5smVOfeu7QK8ugpUT9HEM3/7sZyXBURoy4RzxPlusc3MUgQm/bJIfc8JEL3lHuMmrLP9w0Q/bduNcCjrXSfDJ7SGqYK8PuuzTuUdZrIZZ4EOCBEyuf3OIYAQNxpOtfWul+Zpaf8bf57TVc0EbaLCzc6S3gT/ZysUqtC5oHMT+pYjJm+2/fvE+6dimSTaXyFC5DfVopXo9LQEZwlzISQhsmTgoXWcJ8IvtEeAb9hpcYxhIrJX1cuZo+Tup14AoEV6+kjISR8H099i+0e2leB9oBSL9y2g==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(39860400002)(366004)(396003)(346002)(451199021)(478600001)(2906002)(966005)(54906003)(6486002)(2616005)(86362001)(66574015)(33656002)(71200400001)(122000001)(38070700005)(36756003)(186003)(26005)(6506007)(6512007)(45080400002)(8676002)(76116006)(66446008)(66476007)(64756008)(8936002)(66556008)(66946007)(53546011)(5660300002)(91956017)(38100700002)(4326008)(316002)(6916009)(83380400001)(41300700001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <90719D703CD9D24FAB49D5852EBAD6C1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7319
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT020.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ad0034df-b29a-4545-6e59-08db71959357
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2FbKZVoabQOSXhGC1HGU6sVN9jvQu0PENnPXGIyTJ3Ff2W+pXZfkOTFQjqJ2diyJge6SL0lIfTxPvDU80d7vsVZ+tVmZqlK7k59tY/qLQM/b0C3Qts2vd0q+FQAtC+gqQQEQEm8Bw62DkEOsb6VIjEl37Tr0+a9YwGJDen8dlvtMUFee3Ke2cmnHgh4E/pyHjA2UDJjNPLMt7RXP638agNSm5jB1vtOmOkDAj5tEsdZy71Vt8+2zYcXMqQTItDAq3r/3cWBkGSmsX8Dfc/47q3ZJgxRmrn+WPR3tK5H77ZYy3p4B+4GNKpmUgHseJDYiMiKTgBfRFQND+DN2pKgb4gdiArhBgH4PrhHPzzCGyDvXTMb2s+QrTKRGYtqEWueQbCxB9MoVZagRouQHVntbmTq+moGGwhH8JYzr45fTyhGh4FCAcfBP1WopHJvFwJAMFPgN0vjTEP8+jGLKljARA0JqfuNwlD0vmD8MWHX4JX7uApI7LqVxan+jPHLup5cyTnAYyycAQF3/78w3H6rngs8kS4hI7H3GT9BypqRJJ27S0W7IvdQb7JuN8Zj9AXXsQJ5O5N5IEX1X7ixlE/GO9F7UMUPZXJxvun26k4q7AegItTZZf+VD1pQ5eaog8lnlS6TvAq6yAqe9bo/u5IHGVqOQbwzlRzAuWZ5gJ1iN1W7yzCQggZ8Yid/vp55gv5YJA9+Z9Ta2VUbBrJO+/eVu+8glH4ADOTtWLHBlWwVuc24=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(396003)(346002)(376002)(451199021)(46966006)(40470700004)(36840700001)(82310400005)(36860700001)(33656002)(40460700003)(36756003)(70206006)(356005)(81166007)(6862004)(5660300002)(8936002)(8676002)(41300700001)(4326008)(40480700001)(316002)(86362001)(70586007)(82740400003)(6486002)(966005)(47076005)(66574015)(6506007)(6512007)(53546011)(186003)(2906002)(478600001)(2616005)(26005)(83380400001)(336012)(54906003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 13:52:30.9641
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e35774-738a-4bcb-bfd2-08db7195978b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT020.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6733
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 13:52:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60364

U28gdGhlcmXigJlzIGEgbG90IG9mIHNldHRpbmdzIGluIHRoYXQgZmlsZS4gIENhbiB5b3UgcmVw
bGljYXRlIHdpdGggYSBkZWZhdWx0IGNvbmZpZyBhcyBnZW5lcmF0ZWQgYnkgcG9reT8NCg0KUm9z
cw0KDQo+IE9uIDIwIEp1biAyMDIzLCBhdCAxNDo0NCwgSmVzdXMgSmltZW5leiBTYW5jaGV6IDxK
ZXN1cy5KaW1lbmV6U2FuY2hlekB2ZXJpZm9uZS5jb20+IHdyb3RlOg0KPg0KPiBIZWxsbywNCj4N
Cj4gSSBhbSB1c2luZyBhbiBhYnNvbHV0ZSBwYXRoIHRoZXJlOyBJIGp1c3QgcmVtb3ZlZCBpdCBi
ZWZvcmUgcG9zdGluZyBvbiB0aGUgZW1haWwgdGhyZWFkLg0KPg0KPiBJIGhhdmUgYXR0YWNoZWQg
bXkgbG9jYWwuY29uZiBoZXJlLg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEplc8O6cyBKaW3DqW5l
eiBTw6FuY2hlekZyb206IFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAbGluYXJvLm9yZz4NCj4gU2Vu
dDogVHVlc2RheSAyMCBKdW5lIDIwMjMgMTQ6MTgNCj4gVG86IFJvc3MgQnVydG9uIDxSb3NzLkJ1
cnRvbkBhcm0uY29tPg0KPiBDYzogSmVzdXMgSmltZW5leiBTYW5jaGV6IDxKZXN1cy5KaW1lbmV6
U2FuY2hlekB2ZXJpZm9uZS5jb20+OyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBtZXRhLWFy
bS10b29sY2hhaW46IFNVUFBPUlRFRCBmaWxlIG5vdCBmb3VuZCAjdG9vbGNoYWluDQo+ICBbWW91
IGRvbid0IG9mdGVuIGdldCBlbWFpbCBmcm9tIHN1bWl0LmdhcmdAbGluYXJvLm9yZy4gTGVhcm4g
d2h5IHRoaXMgaXMgaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJ
ZGVudGlmaWNhdGlvbiBdDQo+DQo+IENBVVRJT046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBmcm9t
IG91dHNpZGUgb2Ygb3VyIG9yZ2FuaXphdGlvbi4gRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4g
YXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNvZ25pemUgdGhlIHNlbmRlciBhbmQga25vdyB0aGUg
Y29udGVudCBpcyBzYWZlLg0KPg0KPg0KPiBPbiBUdWUsIDIwIEp1biAyMDIzIGF0IDE4OjA2LCBS
b3NzIEJ1cnRvbiA8Um9zcy5CdXJ0b25AYXJtLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiAyMCBK
dW4gMjAyMywgYXQgMTM6MDgsIFN1bWl0IEdhcmcgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcg
PHN1bWl0Lmdhcmc9bGluYXJvLm9yZ0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4g
PiA+DQo+ID4gPiBPbiBNb24sIDE5IEp1biAyMDIzIGF0IDIyOjAzLCBKZXN1cy5KaW1lbmV6U2Fu
Y2hleiB2aWENCj4gPiA+IGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gPiA+IDxKZXN1cy5KaW1l
bmV6U2FuY2hlej12ZXJpZm9uZS5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+
ID4gPj4NCj4gPiA+PiBIZWxsbywgSSdtIHRyeWluZyB0byBhZGQgdGhlIGFybSB0b29sY2hhaW4g
dG8gbXkgeW9jdG8gcHJvamVjdCBidXQgSSBqdXN0IGdvdCB0aGlzIGVycm9yDQo+ID4gPj4gYGBg
DQo+ID4gPj4gfCBjcDogY2Fubm90IHN0YXQgJy4uLi90bXAtZ2xpYmMvd29yay9jb3J0ZXhhN3Qy
aGYtbmVvbi12ZnB2NC1vc3RsLWxpbnV4LWdudWVhYmkvZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi8y
MDIyLjAyLXIwL2ltYWdlL2xvY2FsL1NVUFBPUlRFRCc6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rv
cnkNCj4gPiA+PiBgYGANCj4gPiA+PiBJdCBjb21lcyBmcm9tIHRoZSBgZXh0ZXJuYWwtYXJtLXRv
b2xjaGFpbi5iYmAgcmVjaXBlLiBJJ3ZlIGNoZWNrZWQgYW5kIHRoZSBgU1VQUE9SVEVEYCBmaWxl
IGlzIGluIHRoZSByaWdodCBmb2xkZXIgKHRoZSBgZmlsZXNgIGZvbGRlciB3aGVyZSB0aGUgYGV4
dGVybmFsLWFybS10b29sY2hhaW4uYmJgIGZpbGUgaXMpLiBJIGhhdmVuJ3QgbWFkZSBhbnkgbW9k
aWZpY2F0aW9ucyB0byB0aGUgbWV0YS1hcm0gcmVwby4gSSBqdXN0IGNsb25lZCBpdCBhbmQgY2hh
bmdlZCB0byBicmFuY2ggYGtpcmtzdG9uZWAuIEFmdGVyIHRoYXQsIEkgaGF2ZSBjb25maWd1cmVk
IG15IGxvY2FsLmNvbmYgd2l0aCB0aGlzOg0KPiA+ID4+IGBgYA0KPiA+ID4+IFRDTU9ERSA9ICJl
eHRlcm5hbC1hcm0iDQo+ID4gPj4NCj4gPiA+PiBFWFRFUk5BTF9UT09MQ0hBSU4gPSAiLi4uL2dj
Yy1hcm0tMTEuMi0yMDIyLjAyLXg4Nl82NC1hcm0tbm9uZS1saW51eC1nbnVlYWJpaGYiDQo+ID4g
Pj4gYGBgDQo+ID4gPj4NCj4gPiA+DQo+ID4gPiBEb24ndCBwcm92aWRlIGEgcmVsYXRpdmUgcGF0
aCBoZXJlLiBJdCBzaG91bGQgYmUgYW4gYWJzb2x1dGUgcGF0aCB0bw0KPiA+ID4geW91ciBleHRl
cm5hbCB0b29sY2hhaW4gaW5zdGFsbCBkaXJlY3RvcnkuIFRoaXMgc2hvdWxkIHJlc29sdmUgeW91
cg0KPiA+ID4gaXNzdWUuDQo+ID4NCj4gPiBJZiB0aGF04oCZcyB0aGUgaXNzdWUsIGNhbiB5b3Ug
YWRkIGEgY2hlY2sgZm9yIHRoZSBwYXRoIGJlaW5nIGFic29sdXRlIHRvIHRoZSBjbGFzcz8NCj4g
Pg0KPg0KPiBTdXJlLCBzZWUgWzFdLg0KPg0KPiBbMV0gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL2cvbWV0YS1hcm0vbWVzc2FnZS80ODA5DQo+DQo+IC1TdW1pdA0KPg0KPiA+IFJvc3MN
Cj4gPGxvY2FsLmNvbmYuc2FtcGxlPg0KDQo=

