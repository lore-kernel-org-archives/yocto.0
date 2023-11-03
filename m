Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF385C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 20:55:09 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.70])
 by mx.groups.io with SMTP id smtpd.web11.64530.1699044903812622681
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 13:55:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=BbW7HHzO;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=BbW7HHzO;
 spf=pass (domain: arm.com, ip: 40.107.7.70, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=UVhA12c9q1ZFbgxMG0RikH1JUSQNhTYMLppLRX04O+N10GPfQW/JX4sKOkF1TgiD1KNZ2SCmxKrF+f6gHka0nThHjBzpUPlzRNc7R6NT7LX3rDqi8kGHTpMgP20DEHrYcy5xq8xNqBv3gnOO5vumfCBKSwspgwqquSXtdcX9808EBoz7X36kGDnUAuNO7O2MpTbsNjjx/8Wn2CbzkGZudep+DcszTgyvR4b5734uehELNZJ0/WQjZz8cwc0Yhd4gVQGpOqWSN8S9nN9K5p7kMIS0MXMBSPdYKomDMjtP+eDJ8/g5RnVtQtS4nTbe7KmOZuxrNXAsBnXHdNs6096W/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQBUa0u9Tde+/CPcInJepqDfPfv7falAM30/Tv1V1fo=;
 b=QFAHGjz280mtO5IGGo54zesacv5ZxnXVNP47Ybr6urqigEjVE+mAqdvBoB1uA4nM12t9bJzVzFLH7WHVtTRfD92jhGaF7uhsj0z62eltlLG0UbBWyDlBVIQWcsfXvtV2Y4u54hBFGI5jXfi8hcZothasUaJOEYa+d9Nhvk/lkAYJuiG95tGnuGJwUO7gRouANDynaE5tJh0AaS8OTDFwRDfuWpMwVmNFstQftjZmLMmbo2kIRq9qdgPP4DuFdfDA38wLDwHgKKRpfdwLN7qpVzdxKfI2n0iNKTU3+afhF58V+6xOD5uvM1BzKDnvTqQov+/B81v+2dwuy44RtQrvaA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQBUa0u9Tde+/CPcInJepqDfPfv7falAM30/Tv1V1fo=;
 b=BbW7HHzONlGQTWHt83Z4UcR+v4uJaBZz0JPvroN1iokBriti3FPItcmfx9lCwj7+byLBkZktVd750tif/OBXD0zR99ow50Ocn9jDpgd24YH8Unb1RzuGYICvvnaVwYs++cO5NVAcOs9WumTMS7/2e5gzB9ybm1K6+qaQHmdHFBk=
Received: from DB7PR03CA0083.eurprd03.prod.outlook.com (2603:10a6:10:72::24)
 by DU5PR08MB10398.eurprd08.prod.outlook.com (2603:10a6:10:51f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 20:54:59 +0000
Received: from DU6PEPF0000A7DF.eurprd02.prod.outlook.com
 (2603:10a6:10:72:cafe::d4) by DB7PR03CA0083.outlook.office365.com
 (2603:10a6:10:72::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.22 via Frontend
 Transport; Fri, 3 Nov 2023 20:54:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000A7DF.mail.protection.outlook.com (10.167.8.36) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.19 via Frontend Transport; Fri, 3 Nov 2023 20:54:58 +0000
Received: ("Tessian outbound 385ad2f98d71:v228"); Fri, 03 Nov 2023 20:54:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4e59cf91a5e73a90
X-CR-MTA-TID: 64aa7808
Received: from ce01e254ec3b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id C87DF8DD-F118-4811-A343-675E710288EA.1;
	Fri, 03 Nov 2023 20:54:51 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ce01e254ec3b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 03 Nov 2023 20:54:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVRHFM2aj3L8N0YDHCtlISGkup2O5VSoXMIrhTRefm8VsWd+vQTmXGQPb0bSVWIBeQNJH6Ae4ognCiILq4Ltmwzw0U8dAeC7T0pAoa/9Pypz/xwW/xTm5VB8zcOTKQQXn3xKZOV2H1QGLb9lEmJvXM47p1Ufr31IaWcH8Ijj/XKMiu1n34OygYJm/pdDSN1yeHWuzFP+L4fQQpxrqS8DQ9ay0ghGb0fD2ftTJSz8sWFKltqYgTJtrNkldPYNArqmlix8VjDzPYbbE9+xKkkbAV/Vsc1Tq0MtZjq/xXeMsdaHyn1fK8HBbRmc+bYN4l1RAf1mlsRzrz+Y53ys0qjVNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQBUa0u9Tde+/CPcInJepqDfPfv7falAM30/Tv1V1fo=;
 b=LYpdm6zXdiWlkGJGsIW09MK/XdoqQYQNcz4gshUYZU/T78kZnWczE52AjupCI3IBFTXfnGT6y/24Ka5skDi+Jy2D74psLK+Mr7LkuQWK2ho/wuT2ugCxmhKhswcK8B+cHjphKYYZNc2dZ/wJiTPwNE4mSioo+bndcYDerchRef/DHk8VE06cfTxKEq/lWdv7P8wbUMmKKZamrGxzTP2ci0wVk7RYK/eW8yYAb8bAVO6KRSHAGRiiTShxkUxgg2KdVzfOnAeM2baKcMUJfVURKB/UySMHuQC9oS6Go41CNoJEtVPdxO8R2L1WLZANMOIiJACb3z2PGd/ePw1e0AQxTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQBUa0u9Tde+/CPcInJepqDfPfv7falAM30/Tv1V1fo=;
 b=BbW7HHzONlGQTWHt83Z4UcR+v4uJaBZz0JPvroN1iokBriti3FPItcmfx9lCwj7+byLBkZktVd750tif/OBXD0zR99ow50Ocn9jDpgd24YH8Unb1RzuGYICvvnaVwYs++cO5NVAcOs9WumTMS7/2e5gzB9ybm1K6+qaQHmdHFBk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB8034.eurprd08.prod.outlook.com (2603:10a6:150:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.24; Fri, 3 Nov
 2023 20:54:49 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6954.024; Fri, 3 Nov 2023
 20:54:49 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "roman.leduc@univ-pau.fr" <roman.leduc@univ-pau.fr>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: Private: Re: [yocto] [nanbield] meta-intel-fpga layer support
Thread-Topic: Private: Re: [yocto] [nanbield] meta-intel-fpga layer support
Thread-Index: AQHaDmas5Z+zSV3zHkqctefHa2f+NLBozP2AgAAlK4CAACD8AA==
Date: Fri, 3 Nov 2023 20:54:49 +0000
Message-ID: <40A4B9D5-E62E-4375-9F6F-2DD9C1EBCACF@arm.com>
References: <D461A548-00F2-493D-A23B-B386C0525168@arm.com>
 <28854.1699037801644657109@lists.yoctoproject.org>
In-Reply-To: <28854.1699037801644657109@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB8034:EE_|DU6PEPF0000A7DF:EE_|DU5PR08MB10398:EE_
X-MS-Office365-Filtering-Correlation-Id: fb76e570-34e6-4170-8569-08dbdcaf244a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 9DLex/xMQnI4IFjWl3BIPrpg8OGMMlZtd7SBCi6Nw7rUS2D1ODAtysSoPmBzAwBd3QxRQPgfqHQ02LsAD6vVbaPgZLGkCv03HjDJoHePbGfkjbRCHETI6r1Q/nb61GKlP8HDmhUpP2IJ8sHJOqxFE4NhXvgskUiBBx/R191J+m1P+SQlWVpaP5t0HfyyZuxc0k5kDAEaJMzRJ7KL3FVtBO8Tz/gTJ74rkmS/47ncO+LpoGTvyALPQ/6tOmlZKvKjcKStZi9C86DSkfRSEw6X6P3En8y1nCttWRG5i8v/1D+DLAIt2cx4jzIJ/q7L7q7us0KLQY6xchqVEjZV0Nu1anOGOThDwJU4rvDx0Q5/Eec9vZ4QkhP691LdsPuuyZM/e6HJpXjuobZHDopNqxS9orRCQ2h3cZiEz+cxtDlj5/bfDnfVTuwy9gaUHu84xJqmGthT3ypZgtQed7KZTmxeCBs8zNXDxsxofyu9N3Y0sB4/8QqPgTGsJnQ7TSkUqmptorqjUTe/d/IaHrV5k7Up4h+wUOHqRfGp2vTI2QGwzXm3ligYi8t32Hved+DlBzfvNssdk9C2OyDvCQ2wgxYpMCI3WBh8BCWPaABFbs3uhBZq4wt3foO/SSR8oewlKmIqdlvJ7IzFsOf5BxJbIKqTDg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39850400004)(396003)(366004)(136003)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(53546011)(6506007)(71200400001)(6512007)(6486002)(478600001)(83380400001)(26005)(2616005)(2906002)(5660300002)(41300700001)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(316002)(6916009)(91956017)(4326008)(8676002)(8936002)(38070700009)(38100700002)(33656002)(36756003)(86362001)(122000001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E4EC6F3A95B174BBD80E1481144CF06@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8034
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7DF.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f0f40ea5-ad22-4459-b049-08dbdcaf1e97
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QnszHDyN6EbJZ6/Zp3Ww14s91jcV8PUwryKtOQJAtcStOhPuN+V3mShkLMtdL0hQEwUuPfeww4yWgQsSNxzUcjIJ9zhJ7plq6A4P/wzsx/Kp8o7vI+yuh5aV7+vlzlFG04jHPoLP85Cr4OBaaxiG2RcscRK8x8XO67DoHGpQr/+lTJZLKmsnmUv4xzxrj+pqnEc5TgNCLnitS4As9CxADYWGJIpA7LcgbmncO7HVE01z/c7Kc30BF/AqkU8JjEKYH2W70hcIJc/QUh7L/Fa8PdCI/hgLFy/VKbE3jsaDuv3HVURTsDkPeJkx++AuxyAzPr8tUWYt/syyUFQ5zQ7X7Enn6F8eItCJ3K9xMGxMv1GSoCwYINR0bK3CH9GcpF9VUSao6Z2dwZkPflP0zGrBw3ZZbQZN8Z03h9i7jA/eXYiZHYdzexHYa7XcbifxwFZyEq5cSsahj4/JoGl+e6jH9UkmZGufxPs9JefErbMDchfcKQyjh5zeeEiYSR8nz1CwoUiI6FBVFvz6RZ1c6Ay0uUK7BWKZJlbHdwMs/XLhqM0YWrR1PpSBpz5obT3M6YkOORfL4Jc29Ro3FXoMTqANZVo+JYriQZakJCTJMH1Rgs2CDyF99SZeMV/NDLDFCTHpUP2pWPyttTCpOgcuSudloy+GXlIwHiYXgOB3RfTsoVi6YJXuMyxSu6aoGA8eZt6QVASNnXCAhKuPhjoaXd/BDZC8t7n+lXf5XuIQeVYofWlJ9+FTPOX2wGcPs/QliVvS
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(39850400004)(346002)(396003)(136003)(230922051799003)(1800799009)(82310400011)(64100799003)(451199024)(186009)(46966006)(36840700001)(40470700004)(478600001)(6512007)(6506007)(53546011)(6486002)(2616005)(83380400001)(26005)(70586007)(2906002)(336012)(70206006)(41300700001)(5660300002)(316002)(8676002)(4326008)(6862004)(8936002)(47076005)(36860700001)(36756003)(86362001)(33656002)(356005)(82740400003)(81166007)(40460700003)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2023 20:54:58.9308
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fb76e570-34e6-4170-8569-08dbdcaf244a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7DF.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10398
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 20:55:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61607

UGxlYXNlIGRvbuKAmXQgbWFpbCBkaXJlY3RseSwga2VlcCBkaXNjdXNzaW9uIG9uIHRoZSBsaXN0
Lg0KDQo+IE9uIDMgTm92IDIwMjMsIGF0IDE4OjU2LCByb21hbi5sZWR1Y0B1bml2LXBhdS5mciB3
cm90ZToNCj4gDQo+IFRoYW5rIHlvdSBmb3IgeW91ciBhbnN3ZXIsIHlvdSBhcmUgcmlnaHQgdmVu
diBpcyBwYXJ0IG9mIHB5dGhvbjMsIEkgdHJpZWQgdmVudiBpbiBtYW55IHdheXMgYnV0IG15IHN5
c3RlbSBkb2Vzbid0IHJlY29nbml6ZXMgaXQgOg0KPiANCj4gJDp+IyBweXRob24zIC1tIHZlbnYg
ZW52DQo+IC91c3IvYmluL3B5dGhvbjM6IE5vIG1vZHVsZSBuYW1lZCB2ZW52Ll9fbWFpbl9fOyAn
dmVudicgaXMgYSBwYWNrYWdlIGFuZCBjYW5ub3QgYmUgZGlyZWN0bHkgZXhlY3V0ZWQNCj4gJDp+
IyBweXRob24zIHZlbnYgZW52DQo+IC91c3IvYmluL3B5dGhvbjM6IGNhbid0IGZpbmQgJ19fbWFp
bl9fJyBtb2R1bGUgaW4gJy9ob21lL3Jvb3QvdmVudicNCj4gDQo+IEkgdHJpZWQgd2l0aCBweXRo
b24gYW5kIHB5dGhvbiAzLjEwIGFzd2VsbCAsIHNhbWUgYW5zd2VyLg0KPiANCj4gQWN0dWFsbHkg
SSB0cmllZCBhbnkgb3RoZXIgbW9kdWxlIChzdWNoIGFzIG51bWJlcnMsIHBpY2tsZSwgYXVkaW8s
IHNxbGl0ZTMsLi4uKSBhbmQgaXQgd2lsbCBnaXZlIHRoZSBzYW1lIGVycm9yLCBpdCBzZWVtcyBJ
IGRvbid0IGhhdmUgYW55IG1vZHVsZSB0aGF0IGNhbiBiZSBmb3VuZCwgSSdtIG9ubHkgYWJsZSB0
byBsYXVuY2ggcHl0aG9uMyBzaGVsbC4gTWlnaHQgdGhpcyBiZSByZWxhdGVkIHRvIHdyb25nIGVu
dmlyb25tZW50IHZhcmlhYmxlID8NCg0KTW9zdCBtb2R1bGVzIGNhbuKAmXQgYmUgZXhlY3V0ZWQg
ZGlyZWN0bHksIGJ1dCB2ZW52IHNob3VsZCBiZSBhYmxlIHRvLg0KDQpUaGlzIGlzIGxpa2VseSBh
IG1pc3NpbmcgZGVwZW5kZW5jeSBpbiB0aGUgcGFja2FnaW5nLiBDYW4geW91IGNvbmZpcm0gdGhh
dCB5b3XigJl2ZSBpbnN0YWxsZWQgcHl0aG9uMy1tb2R1bGVzIGludG8geW91ciBpbWFnZSB0byBi
cmluZyBpbiBfYWxsXyBvZiB0aGUgc3RhbmRhcmQgbGlicmFyeT8NCg0KUm9zcw==

