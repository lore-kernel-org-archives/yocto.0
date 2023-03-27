Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25A12C6FD1D
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 18:28:21 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.44])
 by mx.groups.io with SMTP id smtpd.web11.44124.1679941693245872753
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Mar 2023 11:28:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=q5f8AKR4;
 spf=pass (domain: arm.com, ip: 40.107.20.44, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/n37nqbtFpB8/Ralmm8209yUhMs97NCOgXESMhgFzU=;
 b=q5f8AKR4ABylrAbJKvFCYNLf909SJl/5QH3stjzcaob5hDyHppR5xdKf04T3hJeloMfPygQe0NX1zIN5pGTtRVjnTLbUKgKwhRPqjYicxJ6AwFCuTRW6y0ZILSxL90ZKPe/1lxdgpzK6NO8nL4kJlinnNbVd6z7LvpU3+jCTnS0=
Received: from DB3PR08CA0016.eurprd08.prod.outlook.com (2603:10a6:8::29) by
 PA4PR08MB7385.eurprd08.prod.outlook.com (2603:10a6:102:2a0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 18:28:10 +0000
Received: from DBAEUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:8:0:cafe::ef) by DB3PR08CA0016.outlook.office365.com
 (2603:10a6:8::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41 via Frontend
 Transport; Mon, 27 Mar 2023 18:28:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT011.mail.protection.outlook.com (100.127.142.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.22 via Frontend Transport; Mon, 27 Mar 2023 18:28:08 +0000
Received: ("Tessian outbound 3a01b65b5aad:v136"); Mon, 27 Mar 2023 18:28:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d99986dbcef51f08
X-CR-MTA-TID: 64aa7808
Received: from 5c8bdaa9d87a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id FC7C0601-DF53-4946-8ABD-3EE02E9BA39F.1;
	Mon, 27 Mar 2023 18:28:01 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5c8bdaa9d87a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 27 Mar 2023 18:28:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=df5w2GnBeyGWzcxM51TBPrd44UmVr/xTRwVwI2KI99Nz1vYmp/PrGlH2ti0qfO9HoPX/CtXWi5oMIZAVA1SVSfAnfJlDbt7VtWIgXlbKNoLXK/XMJuqNW+kPw+SD95wSAsHRt3y8PD7RhatAu9n1DIOJotE3Sd/N5gk2syqEb4ktvAi1l6KM5N89eiETE8volJKwa5pJbxggU2rRmfzy0ViQ7mCL8S7yWmHDlgna85AFsQPQ7Zbn+i3a3dcbrojaSl4C5a8nVmu86iNG67gZFLk2VIGEh8xf1Xd2a4NLIo0c6UQxHD83J44qsikXa/pX6w4dbeBGC/+x1jlGs3+vWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e/n37nqbtFpB8/Ralmm8209yUhMs97NCOgXESMhgFzU=;
 b=UTBzxhMPExLG9dvtNv60HZ+52sUoR0vcO4yjmD8eSfYKxeMdQfnLrTt+WMmS3Xqa7WHQHVbPGdD2UgJYB8N4QUD62Y5Dp4K03C3lwaTB/cqJvtTEgbVVIMAVXAK9n9gP+1EjOjvzhplij4bwMMMhvSRUtHWPImlX/JhJ1gTO80Kwg4030Vw5V+TbgTSi4AA4a92uaWu5vPrN6PPu7sw2e3dDciqGvu0MpIYMGDqB56hohRxrwGcd8gKVLgPVeiP4pt/J2L6Crz0MKCFnSQpgYl0QNeRbsJQXDyyYP4fwL+bqyG90HzwNAYF+Q6P0R96daQBgRvpYGfyN61LsjoILhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/n37nqbtFpB8/Ralmm8209yUhMs97NCOgXESMhgFzU=;
 b=q5f8AKR4ABylrAbJKvFCYNLf909SJl/5QH3stjzcaob5hDyHppR5xdKf04T3hJeloMfPygQe0NX1zIN5pGTtRVjnTLbUKgKwhRPqjYicxJ6AwFCuTRW6y0ZILSxL90ZKPe/1lxdgpzK6NO8nL4kJlinnNbVd6z7LvpU3+jCTnS0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS4PR08MB7949.eurprd08.prod.outlook.com (2603:10a6:20b:575::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.29; Mon, 27 Mar
 2023 18:27:59 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6178.024; Mon, 27 Mar 2023
 18:27:59 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "hrsourabh011@gmail.com" <hrsourabh011@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to add missing ca-certificates to truststore in older
 version of yocto?
Thread-Topic: [yocto] How to add missing ca-certificates to truststore in
 older version of yocto?
Thread-Index: AQHZYMpH4A2I4C+/wU2yvRVtb33sea8O8haA
Date: Mon, 27 Mar 2023 18:27:59 +0000
Message-ID: <C522C48E-CA7D-4527-990B-D5A6DA875AD0@arm.com>
References: <MWCT.1679934973535004564.JPB2@lists.yoctoproject.org>
In-Reply-To: <MWCT.1679934973535004564.JPB2@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS4PR08MB7949:EE_|DBAEUR03FT011:EE_|PA4PR08MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: 1daad7f6-31d0-4754-03a6-08db2ef103aa
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 wp7hXAhTzDF8FZjYOlmzDZez/CaCAjcTjjlmGtj/SZdZ+3hRQH+gE6QfYs57au8Df5VQh9JKX2PiqUs0bfLNCyRbF1OK+1u9aMqmik+oRe02F1pHFikOCS0GFWlptMNPiaag1MREB1sf9sURPe1fZSwUPXrJzZFfA4/Bor+3dlrKLo7UjUXEmhLPWiqb3ubYK0dqdP4d+S9pTbzeQRZN1982Uojy3VMnd9dCgDLV4Fdc4OUAhnot5Xyyzg6Nox/0asb7anlBEYRXZA8O0HN/0kzwW0HQazufUB4vTco26XTgSBHP+c3jnc7WHf7RLhLrsZwKZO9evd6rEAtG4O6ZuuWZxzIbEqqsTNnsTmj7qgZOF4J/3zLaDJiz6kkeb/gyySim0uc8iqHqlOmyydwGx3hHXHAdU7ODT6jxe+WJwG9moRoijee/D8mkCvOVgN2bdNqQ8WLwWd0CYmDKls4cbvzqOVowDl5ZNv44cl9BbXt9CyRbmSohG9MZxYeXezwEQLvTwD8Cdp27BSyo/GtPsOoP5sUKBI9cgECOB8VPjt5vHnjnvT2ral3i/pTfaOU1yBkRErp77fAv8iRvUfzBVAeM4DMQ54eGfLAFisrImnI9bNXm1N1CKUZF14qHDHuB
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(451199021)(66899021)(2616005)(91956017)(83380400001)(41300700001)(36756003)(86362001)(5660300002)(38100700002)(8936002)(122000001)(6486002)(33656002)(66446008)(966005)(478600001)(71200400001)(76116006)(64756008)(8676002)(66946007)(66556008)(4326008)(6916009)(2906002)(66476007)(6512007)(38070700005)(53546011)(6506007)(316002)(186003)(26005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2CD97F7D509D46419ECF3B0E96B2FD1C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7949
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT011.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b6c3ee5c-0416-4b75-764c-08db2ef0fe1d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	d8BDp9rsoosYanZswSrh+IbXwjKUIW6BeCaPbYOw8Myd2R66TJNO3ELcOCseMDovqVdOzbv4VRLO70dXHCCMjVPlusltNHlZDu1I3q1xjmn/0jqxHqvnWwJou1yCqoyXe0kQgHRam2y5dbWBm6MaEuKh3cQPd49cCkKWZbFAaqTSNcaE9XVV4lk/D9tTXvwbXgFda8dqTskj+QUaySVa2d1mswDpX5q0LQAWCepWfFqpsKbhD1w9m0TJYWoNUx2kQXnhd5d3nybQt+WvOQbm95jqDTyJkhnURK8ADfrz2eMNh+CGR9rhTqwgZoY9HumxyOBJc9G1niIrKEhYmqFmKKHUjCtoRkFDL3GZFUHMh4flpHQJlD8m3WTdzweaas82yN1PjBK9eniK1COO7naIToYvh+4BKi0Zdj7c5iFuGfKvLyfxmFR5Mlpss1ElCEBLpI5LwdmG4idw2/AVsGbUTogAaRIiJylMyP0HuLZwLM5sXvKws7ZXvwweq7hw2u69wlbqhVDd8NrgDOzJwwyHUehco1VVCTkDdl+Q50Ajb+u9zBOt/9kkJeKNxsQVrUq1DRnyZOGEZHdZKAWMgmv+0P08XLxyGXwL4JZiWs8E2D9NT2vgXpx0nuBDeu6nGccOOWfO1+sY3Ioo3KTC/SHpFrx0WMSukaE2IttFiYx1S2kMjkI5UP6Hhe7IvFaA7/f5
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(376002)(39860400002)(396003)(451199021)(46966006)(36840700001)(40470700004)(356005)(33656002)(40480700001)(36756003)(70586007)(40460700003)(86362001)(82310400005)(8676002)(70206006)(316002)(186003)(336012)(8936002)(6862004)(5660300002)(2616005)(41300700001)(53546011)(478600001)(966005)(6486002)(6512007)(6506007)(26005)(4326008)(47076005)(81166007)(36860700001)(2906002)(82740400003)(66899021)(83380400001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 18:28:08.6370
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1daad7f6-31d0-4754-03a6-08db2ef103aa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT011.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB7385
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 18:28:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59531

SWYgdGhlIGNlcnRpZmljYXRlcyBhcmUgaW4gbmV3ZXIgcmVsZWFzZXMgb2YgdGhlIGNhLWNlcnRp
ZmljYXRlcyBzdG9yZSwgdGhlbiB1cGdyYWRpbmcgdGhlIHJlY2lwZSB3aWxsIGJlIGVhc2llc3Qu
ICBBcyB5b3Ugc2VlIGZyb20gdGhlIGZpbGVuYW1lLCB0aGUgY2VydGlmaWNhdGVzIGluIG1vcnR5
IGFyZSBmcm9tIDIwMTYuICBUYWtlIHRoZSBsYXRlc3QgcmVsZWFzZSB0aGF0IGlzIGluIGxhbmdk
YWxlIGFuZCB5b3XigJlsbCBoYXZlIGFsbCB0aGUgbmV3ZXIgY2VydHMuDQoNClJvc3MNCg0KPiBP
biAyNyBNYXIgMjAyMywgYXQgMTc6MzYsIFNvdXJhYmggSGVnZGUgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPGhyc291cmFiaDAxMT1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IA0KPiBIZWxsbywNCj4gDQo+IGkgYW0gd29ya2luZyB3aXRoICJNb3J0eSIgcmVs
ZWFzZSBvZiB5b2N0by4gRHVlIHRvIG9yZ2FuaXphdGlvbmFsIHJlYXNvbnMgd2Ugc3RpbGwgaGF2
ZSB0byB1c2UgIk1vcnR5IiBidXQgd2lsbCBiZSB1cGdyYWRlZCBzb29uLg0KPiBCdXQsIHRoZXJl
IGFyZSBzb21lIGNlcnRpZmljYXRlcyBtaXNzaW5nIGluIHRoZSBPcGVuU1NMIHRydXN0c3RvcmUu
IE5vdywgSSB3b3VsZCBsaWtlIHRvIGFkZCB0aGVtIHRvIHRoZSBpbWFnZSBkdXJpbmcgYnVpbGQu
IENlcnRpZmljYXRlcyBhcmUgbWFpbmx5IGZvciBBbWF6b24gc2VydmljZXMgKEFtYXpvbl9Sb290
X0NBcykuIEkgYmVsZWl2ZSB0aGlzIGNhbiBiZSBkb25lIHdpdGggY2EtY2VydGlmaWNhdGVzXyUu
YmJhcHBlbmQuIEkgd291bGQgbGlrZSB0byBrbm93IGhvdyB3aWxsIHRoZSAuY3J0IGZpbGVzIGJl
IGNvbnZlcnRlZCB0byAucGVtIGZvcm1hdCBhbmQgYWxzbyBob3cgd2lsbCBjYS1jZXJ0ZmljYXRl
cy5jcnQgZmlsZSB3aWxsIGJlIHVwZGF0ZWQgaW4gL2V0Yy9zc2wvY2VydHMvIGRpcj8gVGhlIHJl
Y2lwZSBpcyBodHRwOi8vY2dpdC5vcGVuZW1iZWRkZWQub3JnL29wZW5lbWJlZGRlZC1jb3JlL3Ry
ZWUvbWV0YS9yZWNpcGVzLXN1cHBvcnQvY2EtY2VydGlmaWNhdGVzL2NhLWNlcnRpZmljYXRlc18y
MDE2MDEwNC5iYj9oPW1vcnR5IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5rczog
WW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gVmlldy9SZXBs
eSBPbmxpbmUgKCM1OTUyOSk6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3Rv
L21lc3NhZ2UvNTk1MjkNCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJv
amVjdC5vcmcvbXQvOTc4ODYzODgvNjg3NTg4OA0KPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJA
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWIgW3Jvc3MuYnVydG9uQGFybS5jb21dDQo+IC09LT0t
PS09LT0tPS09LT0tPS09LT0tDQo+IA0KDQo=

