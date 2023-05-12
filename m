Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED2B0C77B7C
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 09:35:31 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.80])
 by mx.groups.io with SMTP id smtpd.web10.19992.1683884123983849409
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 May 2023 02:35:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=0Az6u27A;
 spf=pass (domain: arm.com, ip: 40.107.104.80, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0C1UIzsujD+mEWdY/gMBNaM5bFh7PvCDfX55ps/+REk=;
 b=0Az6u27ABTvNF1imJN9GInuumCZ+jLvWQvJH3biRbpZC8yGgVZlDwVEOut5W60G08lVCaaXZNEcAscL6CjQutVDLRTbXw5lKH8lIaSaT2MXRe0yAykgQYjOJvafycwKcV13FB3MA329Bt6zcrPzPGeZD81hb5+oAbnEfses9bMQ=
Received: from AM6P192CA0049.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::26)
 by VI1PR08MB10197.eurprd08.prod.outlook.com (2603:10a6:800:1bc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Fri, 12 May
 2023 09:35:20 +0000
Received: from AM7EUR03FT042.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:82:cafe::40) by AM6P192CA0049.outlook.office365.com
 (2603:10a6:209:82::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.23 via Frontend
 Transport; Fri, 12 May 2023 09:35:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT042.mail.protection.outlook.com (100.127.140.209) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.23 via Frontend Transport; Fri, 12 May 2023 09:35:20 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Fri, 12 May 2023 09:35:19 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: eea55d712368edd3
X-CR-MTA-TID: 64aa7808
Received: from df1330aa9d20.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 704135E2-7D59-4C79-9B93-0969BECD8E3B.1;
	Fri, 12 May 2023 09:35:13 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id df1330aa9d20.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 12 May 2023 09:35:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zs11xlm/7Z/eFsfChOfQ0vH4A23JvAlppU043uLLm1u7wc54Efe9i1S0DToe4h4LXbEo1PIHPRRIqKjXdNila/RZbWkJSCL975KGUAss47bZ0Nw7wCUGpZwj5BCLYAMSffQgR1NIXB/+0uw9TWetiOjxY6+6uxpv/47WeH3K76vwa0eKAcXZVaBL+AkW4HkEANmUDwovwVXtjkvwa+8ymV3Jg1jyLf2Yz9e1bZ7qkomgol3i+6toD3bwFyB/D7u3XYfhspF/TPNt7uaX0zM0pcKjRpiNBvn2jm+b608FW2DEbyuB/GpJKtZWwpzVlAY/Gn2HP4u/rw4JjiYtk3AUzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0C1UIzsujD+mEWdY/gMBNaM5bFh7PvCDfX55ps/+REk=;
 b=i+s4/nI9ONEKoUm1IFNiqkpzvccyH4xt0JoSBBaoCfrVQ3OrYQ7a7NLG4/pf5sjasVAXsoRss4BMj3qsEOzU/zzvZSDERImRhkWsAiVBusbRNhV1EJsTXBa3yOsef8CZD6dyaPqEvTf1Mk8lEMPFFLvPX+U5MzOX/7gCdcsHMtLNCZMeLkpxkOjypCWF/e5QzDyWZkBgnDP1rwunYG8h/zvZFMoRMHFM8zMTDhJe7zY/bwdTj0uFMqGqKeXjr3Cs4CMmEK3NRi9rIZy+0KDv5tWie7Jn0yu1TxqJR0U7EK5BVWye8YqE97TxL6GaJy+6GEAd0Dj1OEbjOPFkl0PmXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0C1UIzsujD+mEWdY/gMBNaM5bFh7PvCDfX55ps/+REk=;
 b=0Az6u27ABTvNF1imJN9GInuumCZ+jLvWQvJH3biRbpZC8yGgVZlDwVEOut5W60G08lVCaaXZNEcAscL6CjQutVDLRTbXw5lKH8lIaSaT2MXRe0yAykgQYjOJvafycwKcV13FB3MA329Bt6zcrPzPGeZD81hb5+oAbnEfses9bMQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB10122.eurprd08.prod.outlook.com (2603:10a6:800:1c8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Fri, 12 May
 2023 09:35:09 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6363.033; Fri, 12 May 2023
 09:35:09 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
CC: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
Thread-Topic: [yocto] openssl/libffi build broken for musl/cortex-m7
Thread-Index: AQHZg+xdc/lbEVrmR0OoyezJ+iWY1q9VChOAgAA2nYCAAR52AIAAAwuA
Date: Fri, 12 May 2023 09:35:09 +0000
Message-ID: <DC50ACAA-3952-40AE-B025-EE31B64BB0E9@arm.com>
References: 
 <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
 <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com>
 <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
 <CA+-BmJazdjxrFFZjstWfZiTX5VZGiJuK-7Mqoo81Yr9LgWNZVw@mail.gmail.com>
In-Reply-To: 
 <CA+-BmJazdjxrFFZjstWfZiTX5VZGiJuK-7Mqoo81Yr9LgWNZVw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB10122:EE_|AM7EUR03FT042:EE_|VI1PR08MB10197:EE_
X-MS-Office365-Filtering-Correlation-Id: b5df17ae-acda-499c-cb99-08db52cc33f1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 UI7gSkvzTK4Xahz6XbcTQ+3F5/7q0wCOQyNb/rzk/ZtmOgd0PrLR0qQvLzFG9at62GdAQockWiLofWAPmY2P35lv2NQpHJNfEp2/u/NxtTWk6OchYoojMEUhIjXmCVMtWRQ8jGv5KmPEpbkF68ET2TmUmJ56M8481T9EUVzYkLuzEBwo88JcgzNtMdjU+q9QHHa7Vi1QR9EXt46uLHD/AzGLFAR9ljM+T37RlL1cCwlKGQafSxHuKR1AN/omxLn4Via/GkQ03ie1YKOf0NauCwyBK+48ffPBwRd/44O/35VQ9KF7V2bXovygRaSqx/ogpXllEYolbAYr5akyjM2yG3GJ5d9UJ3qCvnSrlhxDZqTN8iEYCqZWAJ5EgTQoqjBc5tAtlNSNsaO0wze96IDfGUmeJ+h+S7O+zByoDzPZHIuYFJfxPUxS4cumaM57EqoC5J9e+6LYoattN0ICzco5I4giku9aJRxy1q8t4Jd/9S5J4jy6y884SN1FaQMIj3AkPYVRUizMXwlzAgDGjiapDV9rhd/HJUXYQQSPV9Qn7W4L1TAhdsynoGKdu4Y8CWlakY8mj8vTg7xgtOhzOALYCKzRCVXTawJmkiBkwTLwHAfELsMvZL8NSsSHsXYtBQYMKaTdFaXAFiXHvfoHHcQkEQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(451199021)(966005)(36756003)(33656002)(6916009)(66476007)(83380400001)(66446008)(38100700002)(122000001)(316002)(38070700005)(66946007)(5660300002)(8676002)(64756008)(86362001)(8936002)(76116006)(66556008)(41300700001)(2906002)(71200400001)(91956017)(6506007)(53546011)(186003)(6512007)(2616005)(26005)(478600001)(54906003)(4326008)(6486002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <037AD1CBD54D784781332738B1FA26E7@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10122
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT042.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c89d820e-25fe-4a9b-26ab-08db52cc2d94
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qtoT2FNAvF9ys8DUwzj55TfQuL/CI2d3hLuh5QDuI0Yti/PVkacXorNE4qK7qc8Fc4rcFlBzW5Na+RBGF2rTO2Y9XHOjyL5rRFOfbn8GHjGJ1lIpqcAFgjnWBOBNU7qXHjbFvnOmOeep92PcS3ZXNZmmvMGSFO7vGPE//7t+DOiVhIrAK0o84vWt08Qq4r6NFhjAGAiceyZcCbEM+HpcNfRBleHmFLj7nBDabe+M4YWAdkkxXgKV0LF1jdIgc87ORYBl7vohH5BBufxS9d3czFZ7lH5d0q26QKSOAtDpR8vnhr3kaqaY8kJ41+1KfXF/I4CBABtm7moPe4VTcUGzszjDqN05Zvl2OdUm9vD12dpzA8NOFj7WO+bz1zwWD+CM+di0QewPd336i+bhJcHBY+jruxjTzD1gSWFyFjmQRajcGf4ENmnOhBRKtDoWuDr3KO6q32z2hiuhd2Q33Kc2FdpT1LHybG1hfy3UUGzsakZIKeYPLyb9AlVY9SH20NU/oZTsbBlq50oCPcgdX43dszunp+cMdU/P4S9uhLecxeMN5906WsYMBpzGp8HSZ7MqE49V21YYxLzGsEXWolO7ALgKWtXJ89QAO3gahm4JJxWpJQ0XFtZ2yjZ7EviYAloHdd61MwAiY7FsBjGZcqGvUmCz5PwFedT/cfR6R+e8a0yB4aS/HbOvLtpI8tXzf275C8FIQQ38MNehdSawPTwQK244UnVuh/FAqMYt0hOCEIA=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(396003)(346002)(376002)(451199021)(36840700001)(40470700004)(46966006)(81166007)(4326008)(5660300002)(40480700001)(356005)(316002)(478600001)(41300700001)(336012)(36860700001)(83380400001)(54906003)(47076005)(70586007)(70206006)(82740400003)(40460700003)(2616005)(6862004)(8676002)(53546011)(8936002)(26005)(186003)(33656002)(6512007)(86362001)(966005)(82310400005)(6506007)(36756003)(2906002)(6486002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 09:35:20.0878
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b5df17ae-acda-499c-cb99-08db52cc33f1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT042.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10197
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 09:35:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60002

T24gMTIgTWF5IDIwMjMsIGF0IDEwOjI0LCBBeW91YiBaYWtpIDxheW91Yi56YWtpQGdvb2dsZW1h
aWwuY29tPiB3cm90ZToNCj4gDQo+IFJvc3MnIHN1Z2dlc3Rpb24gdG8gcmVtb3ZlIG9wa2ctdXRp
bHMgaGFyZCBjb2RlZCBidWlsZCBkZXBlbmRlbmN5IG9uIHB5dGhvbiBzb2x2ZWQgdGhlIGlzc3Vl
DQoNCkkgaGF2ZSBzb21lIGxvY2FsIHBhdGNoZXMgdG8gY2xlYW4gdGhpcyB1cCwgc28geW91IG5l
dmVyIG5lZWQgdG8gYnVpbGQgb3BrZy11dGlscy4NCg0KPiBidXQgSSBub3RpY2VkIHRoYXQgdGhl
cmUgaXMgYSBzaW1pbGFyIGlzc3VlIGlmIFBBQ0tBR0VfQ0xBU1NFUyA9ICJwYWNrYWdlX2RlYiIg
aXMgc2VsZWN0ZWQuDQo+IHdvdWxkbid0IGl0IGJlIHBvc3NpYmxlIHRvIGRpc2FibGUgaW4geW9j
dG8gY29tcGxldGVseSBwYWNrYWdlIG1hbmFnZW1lbnQgZS5nIFBBQ0tBR0VfQ0xBU1NFUyA9ICLi
gJ0gPw0KDQpJbWFnZXMgYXJlIGNvbnN0cnVjdGVkIGZyb20gcGFja2FnZXMsIHNvIHRoaXMgd291
bGQgYmUgdHJpY2t5Lg0KDQpVc2UgcGFja2FnZV9pcGsgYW5kIHlvdSBnZXQgdGhlIGxlYW5lc3Qg
cGFja2FnZSBtYW5hZ2VyLiAgSWYgeW91IGRvbuKAmXQgaGF2ZSBwYWNrYWdlLW1hbmFnZW1lbnQg
aW4gSU1BR0VfRkVBVFVSRVMgdGhlbiB5b3UgZG9u4oCZdCBnZXQgb24tdGFyZ2V0IHRvb2xzLCB3
aGljaCBzYXZlcyBidWlsZGluZyB0aGVtIGF0IGFsbC4NCg0KPiBBbm90aGVyIGlzc3VlIEkgZmFj
ZWQgc2luY2UgbXkgdGFyZ2V0IGlzIE1NVSBsZXNzIGlzIHRoYXQgYnVzeWJveCBlbmZvcmNlIHNo
YXJlZCBsaWIgYnVpbGQ6DQo+IA0KPiBodHRwOi8vY2dpdC5vcGVuZW1iZWRkZWQub3JnL29wZW5l
bWJlZGRlZC1jb3JlL3RyZWUvbWV0YS9yZWNpcGVzLWNvcmUvYnVzeWJveC9idXN5Ym94LmluYz9o
PWtpcmtzdG9uZSNuMTE1DQo+IA0KPiB3aGF0IGlzIHRoZSByZWFzb24gYmVoaW5kIHRoaXM/IHNo
b3VsZG4ndCB5b2N0byBzdXBwb3J0IG1tdSBsZXNzIHRhcmdldCA/DQoNCldlIGRvbuKAmXQgaGF2
ZSBhbnkgb2ZmaWNpYWwgTU1VLWxlc3Mgc3VwcG9ydGVkIHRhcmdldHMuICBJZiByZWNpcGVzIG5l
ZWQgdG8gYmUgY2xlYW5lZCB1cCB0byBzdXBwb3J0IHRoZW0sIHRoZW4gcGxlYXNlIGRvIHNlbmQg
cGF0Y2hlcy4NCg0KUm9zcw==

