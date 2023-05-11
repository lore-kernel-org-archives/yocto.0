Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22DC0C7EE22
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 13:03:56 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.46])
 by mx.groups.io with SMTP id smtpd.web11.58227.1683810225894703674
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 06:03:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=4MpwikwW;
 spf=pass (domain: arm.com, ip: 40.107.105.46, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I7iJEEBD9kF8Z2F7VKEJPDwnXF2LsyT8CSJsdvYjvjY=;
 b=4MpwikwWYJIsKkiwfWjbmuDVt4Gnu9WWebqbAO+F4aYT6wWnsKWazijgo4SQ3MUZKAWgKXuoc+cuRf1xXUO42b74ZOfvkYexfzcJQALPi2jwdh1NHJLxxK9yj+TehiZDG6VWaHhCsgS9xlJSxLJwZjdGQoiTYlQgCEme5570tD0=
Received: from AS9PR05CA0277.eurprd05.prod.outlook.com (2603:10a6:20b:492::34)
 by AS8PR08MB9551.eurprd08.prod.outlook.com (2603:10a6:20b:61c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Thu, 11 May
 2023 13:03:41 +0000
Received: from AM7EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:492:cafe::29) by AS9PR05CA0277.outlook.office365.com
 (2603:10a6:20b:492::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21 via Frontend
 Transport; Thu, 11 May 2023 13:03:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT012.mail.protection.outlook.com (100.127.141.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.18 via Frontend Transport; Thu, 11 May 2023 13:03:41 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Thu, 11 May 2023 13:03:40 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 09b938fcd06b1f06
X-CR-MTA-TID: 64aa7808
Received: from 5e18fae76598.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 254F29A7-78F3-420C-AEC2-272FE382F1B9.1;
	Thu, 11 May 2023 13:03:34 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5e18fae76598.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 11 May 2023 13:03:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRXgjCCrqOJbpeik6hbuRqPzdk3DDhqJJJYOnxzK60/JFxl6PJCurUAh1oqR+SkIHeQYkf/VQPrdeTtQ0Os2anJf9lyrBiMUdhXTWapCTmceXN9UWj3i7hW6zDmHZBCOiRF6eXH2nYdTr425GOYLx22PqWwKZsQnJZSssJH1rrUJ8evZ5JvkYWUb2uxY6FyhEJn5DmHztgIhX5ZqvZdvsdwAHRUjeI9/DytYlnZDvWb1tIFsQ/AzpaF5qTtuA8dIl5pR2+7b5N8jn4iEAmupNZ6WInioDfQ8psRVSvx9mt1LwylphNq56gceghFH0E+OFQuMFf6YjIEO4fzcKohXxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7iJEEBD9kF8Z2F7VKEJPDwnXF2LsyT8CSJsdvYjvjY=;
 b=cZPOfmwjSJvl/VCmaYKRFNgNZ3SNxmTEOQxyO10fzFJLZxwXkea6/6OH2ybqZGIDiyiln3wDtbjNMfa0/SGvq35Qv6KWz1xQ5hik3qzSOCsK/m6Fpt8Un/XXAljoCx12CLUU2erVwa8QxT5zedhjR5aw5G1VWsqI2hznJxF96D5uQRcV/xiBIF7u05dMFSacrgCUIPVj5EqRQ/atizXMgUV+WMdtnGI6ZC64iTL9oYn52eaHNyMYDG0svbrHu+mS5ttXem1T+qdig9UCo1tfWP76TIadnbUZA9gHhyvDjh/2PsADccQUYRHv+9tYRdE31jGwzrnv2qTffsO8N1btHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I7iJEEBD9kF8Z2F7VKEJPDwnXF2LsyT8CSJsdvYjvjY=;
 b=4MpwikwWYJIsKkiwfWjbmuDVt4Gnu9WWebqbAO+F4aYT6wWnsKWazijgo4SQ3MUZKAWgKXuoc+cuRf1xXUO42b74ZOfvkYexfzcJQALPi2jwdh1NHJLxxK9yj+TehiZDG6VWaHhCsgS9xlJSxLJwZjdGQoiTYlQgCEme5570tD0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB4PR08MB9213.eurprd08.prod.outlook.com (2603:10a6:10:3fb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Thu, 11 May
 2023 13:03:32 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6363.033; Thu, 11 May 2023
 13:03:32 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "ayoub.zaki@googlemail.com" <ayoub.zaki@googlemail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
Thread-Topic: [yocto] openssl/libffi build broken for musl/cortex-m7
Thread-Index: AQHZg+xdc/lbEVrmR0OoyezJ+iWY1q9VChOA
Date: Thu, 11 May 2023 13:03:32 +0000
Message-ID: <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com>
References: 
 <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
In-Reply-To: 
 <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB4PR08MB9213:EE_|AM7EUR03FT012:EE_|AS8PR08MB9551:EE_
X-MS-Office365-Filtering-Correlation-Id: d31f09ee-f7b7-4951-4a83-08db522024b9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 LDmjT8SjBGlaa4R3Rqfn6ibde1Zayxn9JzMTzk8p2EXbo6fh9s1uJtBtBVDM6PLIrAj0BuYEPDQ7xlq5e12/Dqb/bInuyzOLWuQ51+CU7Dj3uIlmJ3NZqzsFzlln4dcW3Kb4bxSFDAZ5iw+Ln7EMGm/W5U9sU0x2MGxo5blFi9k2rhIvmwXYO0IigUuwF9B7jbeqLLjZLIcHehyMhJCqIdzvTGTuKWmE7+BtbxftDiT0V4oBnuOVc7++VEHlhaiOaPcFkyv2urI4i1buS2XMYSQQLFsxiI3ahrMOM4VhwSYnKhQ14RR6TECVgMdfMnERdvLaM+qGYZwkmSAloKOjxz2SqvwF+JGlyMqrQc/+QKJ+n8E7BbixHa6ANB9ippXpTWZzMbNzsUHdEyS2TfYqB0DM+M1cIMtpgwlpMWBafVpJjNSIF+CTruZqKFCay50rcNfv004HVzMlgbEuCS86Go5SLB5SXVo/4Buf7gQu70ofMOKeDuwAgIEJHtQSNNWO0lbDVb3jyXf9BXvdDgUuJ98yIvJpBvgN8+uQT2KLmzciNqGidVeDJy6lnkqKt8yVAkoRNKoAr4HPw+0sgJBioOTSMYFesu5Ba0k7dZju4HOI+Ax8uVPJg7wi7Z1WnptcoX4EJJWMIWL/Oc9OMfldlA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199021)(36756003)(2906002)(86362001)(41300700001)(38100700002)(8676002)(5660300002)(33656002)(38070700005)(8936002)(122000001)(91956017)(66946007)(76116006)(186003)(478600001)(4326008)(66446008)(53546011)(6506007)(6916009)(316002)(6486002)(66476007)(26005)(6512007)(66556008)(71200400001)(2616005)(64756008)(966005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D94C49873758C9438D64CF8A301808F2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB9213
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT012.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f6761d15-e7cf-4d66-7b75-08db52201f8c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RNAf+aansZ7ihTyxMc9rZn48xg4DVNDaAo3qzJw5YlxRDI8JXBK+Gf1u77oa8swI3xZssmBHzBMnY31j2MEA7Qi4EL9UzH+QuEdAmgF2JkpsZVskcqpu6r1eZ4lv5FEd0/oIaX1tunqhBHGWUceLAWMqL0TEu/r4gTSsSJ4jaQnm1ey3YNJ1yc9KvABkHa2xMTEx0hzsE4geIe/o6/9mL8pNN4PQWmXKKXhSd3bfA5a8sTmvtbR+APluNS7/5Bvj5xThY1y1N9Nc4RMr+ZINp4+VELJGfks0KzhlCRlmTpFmcgzft8mTcAz06WrsNwpup1uQuYpvUFsbFQS4JjcBanXJ4aqRw4w2RjKo7ZWAOFE/wPttHu4v76Wq4VNE9GzxBetCX/86uG9v33oL3Q3j7qRg/0mwedqBUvvuV0Q2I0po8IinNCS3rwcvFYghO/femJJuea+FEcjUnu49s9u9SpTVJjEssjruYuJiJZpsyZsHujdK4ykWL3AVagQSa2CdQUHbuGVrraQqHUJhzTuS7UPH6hj/GrkVefUr9I3UFy0RmhEf6sBhjc7hjCvD5OA6Jhj0pgrxeB6AlCMfN226IGGjtjB3c7rMe7XEjnAuz2SOg1EEqQ0gOtvCZ4epakKSR3jLOOHBvvWlIEy/6Ce3xo9QYF6uikRNW/EBSP1n7mc/pr8txrCyEWCtAZdLhzAQQzmWliLMjtUdUNGCbsN/ze4S9G7FndSuPkI44YPXSdg=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(136003)(346002)(396003)(451199021)(40470700004)(36840700001)(46966006)(5660300002)(2906002)(336012)(26005)(47076005)(53546011)(6506007)(6512007)(2616005)(8936002)(6862004)(8676002)(41300700001)(36860700001)(4326008)(82740400003)(356005)(40460700003)(70206006)(70586007)(316002)(81166007)(186003)(966005)(478600001)(86362001)(36756003)(40480700001)(82310400005)(33656002)(6486002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 13:03:41.1142
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d31f09ee-f7b7-4951-4a83-08db522024b9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT012.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9551
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 13:03:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59987

T24gMTEgTWF5IDIwMjMsIGF0IDEwOjM3LCBBeW91YiBaYWtpIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxheW91Yi56YWtpPWdvb2dsZW1haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiBJJ20gdHJ5aW5nIHRvIGJ1aWxkIGEgc2ltcGxlIHlvY3RvIChLaXJrc3RvbmUp
IGluaXRyYW1mcyBpbWFnZSBjb250YWluaW5nIG9ubHkgYnVzeWJveCBmb3IgYSBTVE0zMkZ4IGNv
cnRleCBNNyBiYXNlZCBNQ1U6DQo+IA0KPiBodHRwczovL3d3dy5zdC5jb20vZW4vbWljcm9jb250
cm9sbGVycy1taWNyb3Byb2Nlc3NvcnMvc3RtMzJmNy1zZXJpZXMuaHRtbA0KPiANCj4gVS1ib290
IGFuZCBLZXJuZWwgYXJlIGJ1aWxkaW5nIGFuZCBydW5uaW5nIGZpbmUgc28gZmFyLg0KPiANCj4g
VGhlIGluaXRyYW1mcyBpbWFnZSBCdWlsZCBicmVha3MgYXQgb3BlbnNzbC9saWJmZmkgcGFja2Fn
ZSB3aGljaCBJIERJRE4nVCBlbmFibGUgYW5kIG5vdCByZXF1aXJlZCBpbiBteSAgaW1hZ2UuIFBy
b2JhYmx5IEJ1aWxkIGRlcGVuZGVuY2llcyBmb3Igc29tZSBvdGhlciBwYWNrYWdlczoNCg0KSXQg
aXMgcmVxdWlyZWQsIGFzIGl04oCZcyBiZWluZyBidWlsdC4gIFRoaXMgbWF5IG5vdCBiZSBpbnRl
bnRpb25hbCBzbyB5b3Ugc2hvdWxkIGRlZmluaXRlbHkgaGF2ZSBhIGxvb2sgYXQgd2hhdCB5b3Xi
gJlyZSBwdXR0aW5nIGludG8geW91ciBpbml0cmFtZnMsIGFuZCBpZiB0aGVyZSBhcmUgYW55IG9w
dGlvbmFsIGRlcGVuZGVuY2llcyB5b3UgY2FuIHJlbW92ZS4NCg0KPiBJcyB0aGlzIHByb2JsZW0g
a25vd24gPyBBbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIGZpeCB0aGlzPw0KPiAyMDIzLTA1LTEx
IDExOjI1OjMxIC0gSU5GTyAgICAgLSBNQUNISU5FICAgICAgICAgICAgICA9ICJzdG0zMmY3Njkt
ZGlzY28iDQoNCklzIHRoaXMgYSBjdXN0b20gbWFjaGluZT8gIENhbiB5b3Ugc2hhcmUgaXQ/DQoN
Cj4gMjAyMy0wNS0xMSAxMToyNTozNCAtIElORk8gICAgIC0gfCAuLi9saWJmZmktMy40LjQvc3Jj
L2FybS9zeXN2LlM6MTA0OiBFcnJvcjogc2VsZWN0ZWQgcHJvY2Vzc29yIGRvZXMgbm90IHN1cHBv
cnQgQVJNIG9wY29kZXMNCg0KVGhlIE03IGRvZXNu4oCZdCBzdXBwb3J0IEFSTSBvcGNvZGVzLCBz
byBpZiB5b3UgbmVlZCBsaWJmZmkgdGhlbiB5b3XigJlsbCBuZWVkIHRvIHBvcnQgaXQuICBIb3Bl
ZnVsbHkgeW91IGRvbuKAmXQgYWN0dWFsbHkgbmVlZCBsaWJmZmkgaWYgeW91IGJ1aWxkIGxlc3Mg
aW50byB5b3VyIGluaXRyYW1mcy4NCg0KPiAyMDIzLTA1LTExIDExOjI1OjM2IC0gSU5GTyAgICAg
LSB8IC93b3Jrc3BhY2UvbWV0YS1zdG0zMmY3eC9idWlsZC90bXAvd29yay9jb3J0ZXhtNy1wb2t5
LWxpbnV4LW11c2xlYWJpL29wZW5zc2wvMy4wLjgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vz
ci9iaW4vYXJtLXBva3ktbGludXgtbXVzbGVhYmkvLi4vLi4vbGliZXhlYy9hcm0tcG9reS1saW51
eC1tdXNsZWFiaS9nY2MvYXJtLXBva3ktbGludXgtbXVzbGVhYmkvMTEuMy4wL2xkL3dvcmtzcGFj
ZS9tZXRhLXN0bTMyZjd4L2J1aWxkL3RtcC93b3JrL2NvcnRleG03LXBva3ktbGludXgtbXVzbGVh
Ymkvb3BlbnNzbC8zLjAuOC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9hcm0tcG9r
eS1saW51eC1tdXNsZWFiaS8uLi8uLi9saWJleGVjL2FybS1wb2t5LWxpbnV4LW11c2xlYWJpL2dj
Yy9hcm0tcG9reS1saW51eC1tdXNsZWFiaS8xMS4zLjAvbGQ6IGVycm9yOiBsaWJjcnlwdG8uYShs
aWJjcnlwdG8tbGliLWFybXY0LWdmMm0ubyk6IGNvbmZsaWN0aW5nIGFyY2hpdGVjdHVyZSBwcm9m
aWxlcyBBL00NCg0KRm9yIHNvbWUgcmVhc29uIG9wZW5zc2wgaXMgdHJ5aW5nIHRvIGxpbmsgQSBh
bmQgTSBjb2RlIHRvZ2V0aGVyLCB3aGljaCBpc27igJl0IHJpZ2h0LiBIb3BlZnVsbHkgeW91IGNh
biBhbHNvIHJlbW92ZSBPcGVuU1NMIGZyb20geW91ciBpbWFnZS4NCg0KDQpSb3Nz

