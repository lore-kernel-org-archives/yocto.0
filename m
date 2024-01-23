Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1047C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 10:46:27 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.88])
 by mx.groups.io with SMTP id smtpd.web10.9251.1706006777809093550
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 02:46:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=GpMk7uCd;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=GpMk7uCd;
 spf=pass (domain: arm.com, ip: 40.107.14.88, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=C6UrmOUcoUSZ4VGPJwbHw9tpMoxU0IOBoivjPC2a94dJVzeeMg//wuaAPiRtVlaaZPIrI8lQM3uwZO0fhUwiHd3bT+CB6+LoMDJVhRT25Hd0BB3hZIpRwx0L9YZdKKvvul2Hik3vGSncUhl6GYmZgW9VAgvmaeyovPawGGL2V37PrLX2Ia6NeGanTK9JZArzqtJyTL5n5Y0x/3SxEuilSEJYUSZWeqI7KeVyRYNLliZVhFZOx/ms7bdVRDaXHq/PIFHWU+UYX+eo8ekFF//31ey5zErA4YWx/Risir5I0A5BYcKXmNmIjzda8bSpRyEvNZXU9MG5kX5RPyP9/v6R8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+U7WZ7Rd/zvGEZ9R/qWPeRwga8VPjyzjCVzEDuvcqA=;
 b=hZE4jjjNzaUFcVQ8WPT17TrU29JL8HZI8jRrS7W2jKq19RZFVq3CQiTXbTQnZZgSRK5a0GL2uoHBS94ucyZz52kkqxWboaB3As6xPVxyJkIIVinS9tmtIxAXTN4ttgPTlv0LMyZVLt+sCGnMTpq+3r49xhkhAsR/pB70HB8cmwZ8AyBM+CmChyeoKtsJMBtWHm1bJJAu21X9/2R/pCb6zK3XanT83bCbte0NAWxxfkmx+2oYYklHXieW6Sqg8iSxDt8tvlSHQTizvB+mxRTzKKLth5ZgP6aJwCpsU1kuS4eZR+wRVMJXIn3uCb7aRHOIvbpmMRhWYFj95i4O772bZw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+U7WZ7Rd/zvGEZ9R/qWPeRwga8VPjyzjCVzEDuvcqA=;
 b=GpMk7uCdxmkdLr3a3jrY7RcnJQrHiD3JvGLQ21D89g0frYZ+9cRx6QnbUXB17oRAxD51ufSoc38Y49++yb4j9GrEfmIvyL3g21kal/qHX0QnuBa4YUm2RXKDT5d7H4gcTxp4/Gzrx5UnTOTvlLlvjTtdhL9m1ZiLaJTX7wlOeSY=
Received: from DU2PR04CA0308.eurprd04.prod.outlook.com (2603:10a6:10:2b5::13)
 by GVXPR08MB7728.eurprd08.prod.outlook.com (2603:10a6:150:6a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.31; Tue, 23 Jan
 2024 10:46:12 +0000
Received: from DU2PEPF0001E9C6.eurprd03.prod.outlook.com
 (2603:10a6:10:2b5:cafe::78) by DU2PR04CA0308.outlook.office365.com
 (2603:10a6:10:2b5::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.38 via Frontend
 Transport; Tue, 23 Jan 2024 10:46:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C6.mail.protection.outlook.com (10.167.8.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.14 via Frontend Transport; Tue, 23 Jan 2024 10:46:12 +0000
Received: ("Tessian outbound 1076c872ecc6:v228"); Tue, 23 Jan 2024 10:46:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 05eca693e2a5f0d8
X-CR-MTA-TID: 64aa7808
Received: from 850a80f1d09b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E8DCF67E-17BA-45E8-AD15-7DB470665B56.1;
	Tue, 23 Jan 2024 10:46:05 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 850a80f1d09b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 23 Jan 2024 10:46:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRULsli9TDS/1umNyXMcZyt8Kcwq1pxGgGkcf35wcCOp5fIUomdUHz/GxaUm0GIyft35VJZkZ/lLcqSytrDh10hER+soV20YLgkvJFHRP5mxDd45yUX3ECbazB4TmaTYTXhARY5/7ZNnSmbeFV/MhF3GBOKpmiJ9XPOo3PDW4Sdp+f2zui8j05BBlDoqK4ae7Hp7dugWrbftgC5uur4ZID9SqbcUSaP4i1T5ER9XcJMIIaZefn0AXJutcc8b1623Oixzg1ziiypcHQGXtndIoZUSUHZX97hNCE3yQ+3wy/TTx9fWlWC4nIWeVjN5dzio3Yaqp67ZzIS0HQf2pkQoPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+U7WZ7Rd/zvGEZ9R/qWPeRwga8VPjyzjCVzEDuvcqA=;
 b=nBbmBCxiNSbv+mEvx9XMxMRqXkyyQsgnDd4ocxm1dTAAIZKxTrgi29/Rz5OuuE4IkhOeixpjzR0CzFL6qenPbUSJpGR6dSdz5Fi023RgJT9eyMwhf8syC/N1vzXkSg812DDr9OhAnWSiTF22JpYJIzRLSGCL3P6U5NdVWRBsyEgu7suiW8YtthRUtK4/XQOw0rGl0KtOLbrJPF1No3Lacd6qseZHTfukB3mHUuI1oNMjs9S0QCrawpWJ+YnruxITWw1MLc+fawvAA/56gJHSoNZX7ULK3oZ6vx/DgaRrvkLeNrTHhIUsKhQEdgYGFylAjTqVBP6jy7yN8W4Umh5w1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+U7WZ7Rd/zvGEZ9R/qWPeRwga8VPjyzjCVzEDuvcqA=;
 b=GpMk7uCdxmkdLr3a3jrY7RcnJQrHiD3JvGLQ21D89g0frYZ+9cRx6QnbUXB17oRAxD51ufSoc38Y49++yb4j9GrEfmIvyL3g21kal/qHX0QnuBa4YUm2RXKDT5d7H4gcTxp4/Gzrx5UnTOTvlLlvjTtdhL9m1ZiLaJTX7wlOeSY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBAPR08MB5814.eurprd08.prod.outlook.com (2603:10a6:10:1b1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.36; Tue, 23 Jan
 2024 10:46:03 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7202.035; Tue, 23 Jan 2024
 10:46:03 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "mfatheree@opto22.com"
	<mfatheree@opto22.com>
Subject: Re: [yocto] initramfs is isn't trying to mount the actual rootfs and
 is not doing switch_root #kernel #yocto
Thread-Topic: [yocto] initramfs is isn't trying to mount the actual rootfs and
 is not doing switch_root #kernel #yocto
Thread-Index: AQHaTV9JBvxTV+9H5EisPPzrycnZL7DnN+2A
Date: Tue, 23 Jan 2024 10:46:03 +0000
Message-ID: <417AE3EC-2806-42DC-BD2F-2B426A9A445E@arm.com>
References: <0jSC.1705947445084193330.SNVv@lists.yoctoproject.org>
In-Reply-To: <0jSC.1705947445084193330.SNVv@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBAPR08MB5814:EE_|DU2PEPF0001E9C6:EE_|GVXPR08MB7728:EE_
X-MS-Office365-Filtering-Correlation-Id: df7a0be1-beb4-4f3b-11ab-08dc1c008423
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 m0+dheWFcBMqAsyK2zCqhD0bXn9SCanUIBzyL0CHvkqXpP/zwpdxJlU3y7AfMTaYw46+R0mlVdU3qFy1KVyg6HbgtoHFjqwgVVQh7N6FqkAJpk+rh+V3kO0I2ix4qqqwqzZ8my6Ao+jH0gLVZ+nZ2m1//GII1BsMxuS+sWZ+TZvAnSzbX92cdBct9gyazLPBw7bExBaSWPjYKjdBwGTgT6o3uGgZccXnZ+jY9U7nzfppbzVrnXJpSPydNXr/Sc64GB5QX4/pee2Li/kbL5MmItlb7NM1UVdaort1riQQGp8+pR6Ny3ZAW3vmKFKIlOYd5NUDjHdc/mC4OB4qP8q4yMeiVQv43KsWGnURLw95La1J/1475s2sBfASFmWNDWc1rMeH/GFFU0YOOK9JszKMkvGsJRkOqtwwUOivpGIzmEEbChT91j1qHTS477Kg3+4KWZY6gK9TNQWZM2Q+yu34h5cK/+GwMy+rfhMhWTF+Hn0HIbOsc4z7FQwq/WtIJK+HxLcsgnOz9DS04RtG2J3A9tdnh1mRfOP1SnhF44vk8ZRw3c+pU31yILSDhMG3pnLDgphrirmxUQUZQyztqzWJHhrEO6eZcxKjgCYfP+ihwp8fR7ylsq6VtVICNFSekKTCI6AbKcg4k1g1CGCE/Bp2jQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(39860400002)(366004)(376002)(346002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(86362001)(53546011)(966005)(6486002)(478600001)(33656002)(36756003)(38070700009)(64756008)(26005)(2616005)(2906002)(83380400001)(6506007)(8936002)(110136005)(66446008)(5660300002)(6512007)(8676002)(316002)(38100700002)(122000001)(41300700001)(76116006)(66556008)(66946007)(66476007)(91956017)(71200400001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2127F6BFC72F3244BEACE35F18E77025@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5814
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	88aadd2e-19a4-4e39-64cf-08dc1c007ed7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ovXm58tulJl25t4xeGogIdJrcg+sqXnkbTzan1Kb8HMExgdK58kKEiXOBmewZOg6sBKrYzBeIMgvf9okSM6MOf995tv1CVhdbJnuNQXOzhgrSMGylyZ+SbPC3ZdYhrYb6bTHFpiX/64PObPdvO4bF5bdHYz0b8phoqluhGIO7HKDz57t4MUqnohcD2y/4jvPywmdtFUqnYVoiEMAf69ZWTYuXvgCu+UvQswopp6muY284pxnOSpurvRUokJcmWxuP4keesddfxzPNnqlfvh0dMIHkAgIt4sKIGIZ30ext6DrQXiHj1nzcCV94ITGiiOLStjUYtr6g3vhc6S9BPjSwgdqnMnuaNmusuP1RBBf0bQAyYK7057aAOepWdGaQuUV1lmpRPOiRaOvLuARtsyu6Y68IokdLaUqNab/CY/h846/ieXyHGenjesAI3qS7iAvOjC0hykIcmVktYyavNB+5g4bEUxYQhCHejM81JPG2s8Wswe5YU7uV1IkK+Njn6rofDQxxWIAG+8HZDh+7W9ar/kGMm8UimHxCOZxhwyQNfBbquCfyYepZo1KOjzJWMrIL51jo9csABknr7IllXuK5LhWa+Xm9pj4kISjVVCcWp35ea5PrnceVNhPyy4y9jSR1tn7DYgG0c6dx8n3tOVtvM6BanqvPBh6bJTuzEenm5ZBVt9kBHkaq6rc/pyg4Z23jTgU99yy2NgZPcYyoU1bxJP9CrclC5zGIfRHzeoccT0=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(346002)(39860400002)(376002)(396003)(230922051799003)(82310400011)(1800799012)(186009)(64100799003)(451199024)(36840700001)(40470700004)(46966006)(8936002)(6486002)(33656002)(8676002)(966005)(316002)(70206006)(110136005)(2906002)(70586007)(5660300002)(86362001)(82740400003)(36860700001)(36756003)(47076005)(6512007)(81166007)(6506007)(478600001)(53546011)(356005)(2616005)(83380400001)(336012)(41300700001)(26005)(40460700003)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 10:46:12.2236
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df7a0be1-beb4-4f3b-11ab-08dc1c008423
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7728
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 10:46:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62242

T24gMjIgSmFuIDIwMjQsIGF0IDE4OjE3LCBncmV5bWF0dHIgdmlhIGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcgPG1mYXRoZXJlZT1vcHRvMjIuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiANCj4gSSBhbSB1c2luZyB0aGUga2lya3N0b25lIHlvY3RvIGJ1aWxkIHRvIGJ1aWxkIGEg
ZmlybXdhcmUgaW1hZ2UgdGhhdCBoYXMgYSBrZXJuZWwgd2l0aCBpbml0cmFtZnMsIGFuZCBhIGV4
dDQgcm9vdCBmaWxlIHN5c3RlbSBvbiBhbiBlbW1jIHBhcnRpdGlvbi4NCj4gQWZ0ZXIgYm9vdGlu
ZyB1cCB0aGUga2VybmVsIGRvZXNuJ3QgbW91bnQgdGhlIGRldmljZSBwYXNzZWQgdG8gdGhlIGtl
cm5lbCBhcyB0aGUgInJvb3Q9IiBwYXJhbWV0ZXIgYW5kIGRvZXNuJ3Qgc3dpdGNoX3Jvb3QsIGl0
IGp1c3QgbW91bnRzIGV2ZXJ5dGhpbmcgdG8gcmFtLg0KPiAgDQo+IEluIG15IGluaXRyYW1mcyBp
bWFnZSByZWNpcGUgSSBoYXZlIHNldDoNCj4gIFBBQ0tBR0VfSU5TVEFMTCA9ICJ1dGlsLWxpbnV4
IHVkZXYgYnVzeWJveCBiYXNlLXBhc3N3ZCAke1ZJUlRVQUwtUlVOVElNRV9iYXNlLXV0aWxzfSAk
e1ZJUlRVQUwtUlVOVElNRV9kZXZfbWFuYWdlcn0gJHtST09URlNfQk9PVFNUUkFQX0lOU1RBTEx9
Ig0KPiANCj4gYW5kIEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgdGhlICR7Uk9PVEZT
X0JPT1RTVFJBUF9JTlNUQUxMfSBzaG91bGQgaGFuZGxlIHRoZSBzd2l0Y2hfcm9vdCBwb3J0aW9u
IG9mIHRoZSBib290IGFmdGVyIHRoZSBpbml0cmFtZnMgbG9hZHMsIGJ1dCB0aGF0IGlzIG5vdCBo
YXBwZW5pbmcuDQo+IElzIHRoZXJlIGEgZGlmZmVyZW50IHBhY2thZ2UgSSBuZWVkIHRvIGFkZCB0
byB0aGUgUEFDS0FHRV9JTlNUQUxMIHRvIGFsbG93IHRoZSByZWFsIHJvb3QgcGFydGl0aW9uIHRv
IGJlIG1vdW50ZWQsIGFuZCBzd2l0Y2hfcm9vdCB0byBvY2N1cj8NCg0KJCBiaXRiYWtlLWdldHZh
ciAtciBjb3JlLWltYWdlLW1pbmltYWwgIOKAlHZhbHVlIFJPT1RGU19CT09UU1RSQVBfSU5TVEFM
TA0KUk9PVEZTX0JPT1RTVFJBUF9JTlNUQUxMPSJydW4tcG9zdGluc3Rz4oCdDQoNClJPT1RGU19C
T09UU1RSQVBfSU5TVEFMTCBpcyB0aGUgbGlzdCBvZiByZWNpcGVzIHRoYXQgYWxzbyBuZWVkIHRv
IGJlIGluc3RhbGxlZCB0byBoYW5kbGUgcm9vdGZzIHN0dWZmLCBzbyB0eXBpY2FsbHkgaXTigJlz
IGVpdGhlciBlbXB0eSBvciBpbmNsdWRlcyBydW4tcG9zdGluc3RzIHRvIHJ1biBhbnkgcG9zdGlu
c3RhbGwgc2NyaXB0cyB0aGF0IGNvdWxkbuKAmXQgYmUgcmFuIG9uIHRoZSBidWlsZCBob3N0Lg0K
DQpUaGUgaW5pdHJhbWZzLWZyYW1ld29yayByZWNpcGVzIGhhdmUgdmFyaW91cyBwaWVjZXMgb2Yg
dGhlIHR5cGljYWwgaW5pdHJhbWZzIHNldHVwIGluIChzY2FuIGZvciBkZXZpY2VzLCBtb3VudCwg
cGl2b3QsIGV0YykgYW5kIHRoZXNlIGFyZSB1c2VkIGluIGNvcmUtaW1hZ2UtbWluaW1hbC1pbml0
cmFtZnMuICBJIGFjdHVhbGx5IHJlY2VudGx5IGFkZGVkIHRvIG1hc3RlciBhIHNsaW1tZXIgaW1h
Z2Ugd2hpY2ggX2p1c3RfIGZpbmRzIGFuZCBwaXZvdHM6DQoNCmh0dHBzOi8vZ2l0LnlvY3RvcHJv
amVjdC5vcmcvcG9reS90cmVlL21ldGEvcmVjaXBlcy1jb3JlL2ltYWdlcy9jb3JlLWltYWdlLWlu
aXRyYW1mcy1ib290LmJiDQoNClJvc3M=

