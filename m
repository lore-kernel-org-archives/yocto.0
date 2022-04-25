Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DFFC55188
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.62])
 by mx.groups.io with SMTP id smtpd.web10.26935.1650876231626998417
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:43:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=fdTp8cXq;
 spf=pass (domain: arm.com, ip: 40.107.21.62, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xh2EcOKZ5oEnCGq0dPF05FAtA2apv04Q27mayhf+KRU=;
 b=fdTp8cXq6aJsz7h2/xhr4KC6MdMKNjWsmDHMC6/ZzMdt2mw6rn+VfQcxxU5ZhD602gF17CgA1hCxHqMsn45Keeit9VgjoW3YRGKXfJXh11Oy4VK2k392mw93prV90BmR+QXEvlBgn7ZNYb48xxrjlg0+7giLaN1GSqncXX2qWpY=
Received: from AM6PR05CA0027.eurprd05.prod.outlook.com (2603:10a6:20b:2e::40)
 by AM4PR08MB2787.eurprd08.prod.outlook.com (2603:10a6:205:d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Mon, 25 Apr
 2022 08:43:47 +0000
Received: from VE1EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:2e:cafe::f0) by AM6PR05CA0027.outlook.office365.com
 (2603:10a6:20b:2e::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21 via Frontend
 Transport; Mon, 25 Apr 2022 08:43:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT012.mail.protection.outlook.com (10.152.18.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.14 via Frontend Transport; Mon, 25 Apr 2022 08:43:46 +0000
Received: ("Tessian outbound 9511859e950a:v118");
 Mon, 25 Apr 2022 08:43:46 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5c4025bba064d0c0
X-CR-MTA-TID: 64aa7808
Received: from f37ffcaa3a82.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7A8E6775-5E27-4429-9542-66092E11FA19.1;
	Mon, 25 Apr 2022 08:43:39 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 f37ffcaa3a82.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 25 Apr 2022 08:43:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEF444dGGYPu8Woo+gRKjpNLjmUwrZMi3CVfHniqzbkbH/A4qisKO3IwdbuL8AKcLbpDM4BWly0A8t4etnohSFHfDWvmdOclV7rr9JaA05HZk3ya1D3Oa1vBTuTGDwwppi8q4omqq8sOviBsuXwXqickEox4t5iAw13y5SlpO/o8NcyZUm5xMdq6X9mOKAr8iyud/Q6ez8QbpqgMNWYBDQ9AR/dPOJIrG2YvUyPUaeHibrEkfeUJKoZfwCA0+VH+N6ubO3yOp7t1z60VYbBueVO9oM1wVDRyr0eGNd98/rWCSkbk29NnMVlF7Lgc/w+0KW88KkSEfVAwZOX7NCLL9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xh2EcOKZ5oEnCGq0dPF05FAtA2apv04Q27mayhf+KRU=;
 b=oABATpX1Sn/1QqrBZKdIDD4gytG1m+rJjKDvNbXnaO/LvxaD/tHT7yxhGm6aibVVrbNx3dNDcd8F0gsnkOawARJnXSiX1CG3SnREMkk6LA8/8WVY63tu3ScYFtfC6jxSefC0iqFIBFNPkZgLh3ckos/Xy0T7zbW8kZKruPYF2Ebg/P/d1YXk3QLJ56o3G9KjtTk55gpQqCOxrsXGxWD46J4QqWlj4ryHXug+X1CKUO9gyTJq8IAkyL/N1hTW6nN+tTkq6dn1RaQmvj9aCygPfUaLcw44+xS1CRzHgVawIK1cTIoFkl7aiqBfWh04/4+B9PZHlHl3mAvvX7j7dJ0u6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xh2EcOKZ5oEnCGq0dPF05FAtA2apv04Q27mayhf+KRU=;
 b=fdTp8cXq6aJsz7h2/xhr4KC6MdMKNjWsmDHMC6/ZzMdt2mw6rn+VfQcxxU5ZhD602gF17CgA1hCxHqMsn45Keeit9VgjoW3YRGKXfJXh11Oy4VK2k392mw93prV90BmR+QXEvlBgn7ZNYb48xxrjlg0+7giLaN1GSqncXX2qWpY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB7PR08MB3498.eurprd08.prod.outlook.com (2603:10a6:10:4c::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.19; Mon, 25 Apr
 2022 08:43:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::8af:d35b:6628:5013]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::8af:d35b:6628:5013%5]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 08:43:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "abongwabonalais@gmail.com" <abongwabonalais@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v8] Add a banner on the
 old documentation docs.
Thread-Topic: [yocto] [PATCH yocto-autobuilder-helper v8] Add a banner on the
 old documentation docs.
Thread-Index: AQHYV1re0JtzsHi0Rke2E0qw3bVbVK0AUmUA
Date: Mon, 25 Apr 2022 08:43:36 +0000
Message-ID: <2A4FB498-1DEA-4080-995C-1F11E8B13796@arm.com>
References: <20220423214039.29457-1-abongwabonalais@gmail.com>
In-Reply-To: <20220423214039.29457-1-abongwabonalais@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3693.60.0.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 700f980c-99b7-4863-da92-08da2697b669
x-ms-traffictypediagnostic: 
	DB7PR08MB3498:EE_|VE1EUR03FT012:EE_|AM4PR08MB2787:EE_
X-Microsoft-Antispam-PRVS: 
	<AM4PR08MB278745CF231D2556ED9CFFE5E8F89@AM4PR08MB2787.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /gAc9fhog/I3M3rrlqYpmvU1Q17U6zKjgp1wov0cgFy8ZSWPw9TjRLgCdslYp1mjm8nkrIy6Q+Pn0zLO8yBkR3RuYpCXoVRAcQiAp8aSthDroP/XPU6o5TNRD7yQSuB0eGcQPnqZe0aLo9V1Jf62Lj6uWT5ye2RyevTz5Nw4NJGKkzxone40FKVb9Tx+2X8+IG+6CRqgmZkV4ee5eGnbxF12uIHpxL4jGiO2w6YPeCe2tcD/0F8xfA6yDePhSYx/nmtbFCYLc43qGRKLLddE30lIawgClLuM+NzbotuHk32rvp35qDT44tuSw7SpQEla2skRkjBuM8qI7NTYiJIOMrydphJUQPgEWj3iveqMb5uoKuBpTW+9n5gwoPaVIOJNZcgon3h/C6ikcmDTGabDQ/YFgGYVL4+boizMieD4arj9APhLFM/yqBC7d23GS5GILjYFZ+3XudsVX6P2opi8pZ161rKgJuBjKLB0enXW4t048lJUeTzOvcEmInMk8TGc21HsLoiCTeQB3nqTcV4Vs0i9ybWuEdZh8FRhiXm0oW+GbcnPT7r4LA4epBIMhQTdF27nrmaI81H55r/tYptrlJqTtGn2uySw8kjrH7Wv+B9/3j+ddychCj9HSygixPGmHFcv7QOUCQOnfLR+JJy8dG0wAtk+BUD+Hg19RONCVUf1mme20JG5LRzcf7RRiSieJQJRQwFkbZ8uut0IvezA6eNeck0oqGRSBy5Rg+vRsER5s7DpqXKsir7CZhwBXqYN41Aq4KJTj6mA10A+MXRG7vUVBKKlGFa1fx8i2+SqtHP23LTXRzsLhB7wz+nRHUFt
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(91956017)(86362001)(26005)(6512007)(76116006)(83380400001)(64756008)(66946007)(66556008)(66446008)(6506007)(66476007)(508600001)(8676002)(4326008)(71200400001)(166002)(6486002)(38100700002)(316002)(6916009)(38070700005)(36756003)(122000001)(2906002)(8936002)(33656002)(2616005)(5660300002)(186003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <FF184A596B6DEE4A85263D2A2773C3A1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3498
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT012.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	00d26f68-3112-4af1-dffc-08da2697b030
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g1aapNFO1vJHMrFp4RdbtzkOMbtzQ4F74mWC/sj+ZbTS6HMASX3cSHVBfGN4KqyRHzte0xa52Cctvjgdey5txusJRDDL/iyndlnTsZyl6+7zxZFisbuFNB0OJlxT7j38l/DRCQUtcmzbVD0z1XNqSKxXa7umzcGjobN4JGQJ9BZrTBPkGglntO+TIGbV0/ViGtsI9MFfviVMQmr/wIdI57Xlm8Vmwtlp5cPV8/HQikfWzRg69Q7xfiTjgLJkCRLKn2La+LzFLExqCeeHjN0bfAxEKque7Ti1RSEs/5ltqpePlbCJ1RVf4WAE4eOrx+PSihRPJcHtjHgrSVemXgLO3MpBbjog8nDBQ3cSsCJhha09vneUXidvfV7AaR7RHtOJMmpQmAtCUG11NkiyP+lmk+xMb7YPwgrkbhh6qqyeiQylwJszGRJ85O+KeTUNm0Lj3sMJtCV097n+PrjKN+OTMiglkDHQ6H9qn9Sj43gnoipC1MgUCMKGpp8BYECimBvAqiPxJ1VlVPhFBv2ZINSTljuk6AOYAWiQwa8iqcbeCdKjCMA99/o64XqNnGfhowvb306sKLAEyK1sbx4uyiJToMLXOmLdyDvQVk7tOm8Muw7QbOWtpUzmq/a1e1f+gxDZyrYbtsxAsdzyPbRG5TuZILtkLjtGpaeu/pOgCIe3VD/ZuEFp4xmHc4XJupI1wOlLfA3LwBdpAJQ9R20P8fYw60T976mOtGO9RRGkZ4teIzVhhYZ6HiOWUvXxe4110bZhxVscpW4heOT7DjAU2RcvbQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(46966006)(40470700004)(36840700001)(166002)(6506007)(508600001)(70206006)(81166007)(86362001)(316002)(6486002)(83380400001)(33656002)(2906002)(356005)(36756003)(6862004)(4326008)(8676002)(2616005)(70586007)(186003)(47076005)(336012)(8936002)(5660300002)(26005)(6512007)(40460700003)(82310400005)(36860700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:43:46.6935
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 700f980c-99b7-4863-da92-08da2697b669
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT012.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR08MB2787
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56875

PiArZnJvbSBsb2dnaW5nIGltcG9ydCByb290DQo+ICtpbXBvcnQgb3MNCj4gK2ltcG9ydCByZQ0K
DQpUaGUgbG9nZ2luZyBhbmQgcmUgaW1wb3J0cyBhcmUgdW51c2VkLCByZW1vdmUgdGhlc2UuDQoN
Cj4gKw0KPiArDQo+ICtodG1sX2NvbnRlbnQgPSAnJycNCj4gKzxkaXYgaWQ9Im91dGRhdGVkLXdh
cm5pbmciPlRoaXMgZG9jdW1lbnQgaXMgb3V0ZGF0ZWQsIHlvdSBzaG91bGQgc2VsZWN0IHRoZSA8
YSBocmVmPSJodHRwczovL2RvY3MueW9jdG9wcm9qZWN0Lm9yZy8iPmxhdGVzdCByZWxlYXNlIHZl
cnNpb248L2E+IGluIHRoaXMgc2VyaWVzLjwvZGl2Pg0KPiArPGRpdiB4bWw6bGFuZz0iZW4iIGNs
YXNzPSJib2R5IiBsYW5nPSJlbiI+DQo+ICsnJycNCj4gK2xhc3RfZGl2ID0gJycnDQo+ICs8L2Rp
dj4NCg0KQWRkIGEgY29tbWVudCBleHBsYWluaW5nIHdoeSB5b3UgbmVlZCB0byBhZGQgYSA8ZGl2
PiB3cmFwcGluZyB0aGUgbWFpbiBjb250ZW50Lg0KDQo+ICsgICAgIyBwYXR0ZXJuID0gJ14zLjEq
Jw0KPiArICAgICMgZXhjbHVkZSA9IHJlLnNlYXJjaChwYXR0ZXJuLCBkaXIpDQo+ICtkZWYgbG9v
cF90aHJvdWdoX2h0bWxfZGlyZWN0b3JpZXMoZGlyKToNCj4gKyAgICBmb3Igcm9vdCwgZGlycywg
ZmlsZW5hbWVzIGluIG9zLndhbGsoZGlyLCB0b3Bkb3duPVRydWUpOg0KPiArICAgICAgICAjIGxv
b3AgdGhyb3VnaCBhbGwgZmlsZXMgaW4gdGhlIGRpcmVjdG9yeQ0KPiArICAgICAgICBleGNsdWRl
ID0gc2V0KFsnMy4xJywgJzMuMS4xJywgJzMuMS4yJywgJzMuMS4zJ10pDQoNCkhhcmRjb2Rpbmcg
bnVtYmVycyBsaWtlIHRoaXMgaXNu4oCZdCBhIGdyZWF0IGlkZWEuICBJZiB0aGUgaW50ZW50aW9u
IGlzIHRvIGFkZCB0aGUgd2FybmluZyBvbiBhbGwgdmVyc2lvbnMgZWFybGllciB0aGFuIDMuMiwg
dGhlbiB0aGUgcmVnZXggYXBwcm9hY2ggdGhhdCBpcyBjb21tZW50ZWQgb3V0IHdvdWxkIGJlIGJl
dHRlci4gIEl0IG1vc3QgbGlrZWx5IGRpZG7igJl0IHdvcmsgYXMgcmVnZXggbWF0Y2hpbmcgaXNu
4oCZdCBsaWtlIHNoZWxsL3dpbmRvd3MgbWF0Y2hpbmc6DQoNCnBhdHRlcm4gPSBy4oCdXjNcLjEu
KiINCg0KQSBnb29kIHNvbHV0aW9uIHdvdWxkIGJlIHRvIHVzZSBwYWNrYWdpbmcudmVyc2lvbi5w
YXJzZSwgYnV0IHRoYXTigJlzIG5vdCBhIGJ1aWx0LWluIG1vZHVsZSBzbyB3b3VsZCBuZWVkIHRv
IGJlIGFkZGVkIHRvIHRoZSBidWlsZC4gVGhhdCBjYW4gd2FpdCwgdGhlIHJlZ2V4IHNvbHV0aW9u
IHNob3VsZCBiZSBnb29kLg0KDQpBIGNvbW1lbnQgaGVyZSBleHBsYWluaW5nIHdoYXQgdGhlIGV4
Y2x1c2lvbiBpcyBmb3IsIGFuZCB3aHkgMy4xLCB3b3VsZCBiZSBnb29kLg0KDQo+ICsgICAgICAg
IGRpcnNbOl0gPSBsaXN0KGZpbHRlcihsYW1iZGEgeDogbm90IHggaW4gZXhjbHVkZSwgZGlycykp
DQo+ICsgICAgICAgIGZvciBmaWxlbmFtZSBpbiBmaWxlbmFtZXM6DQo+ICsgICAgICAgICAgICAj
IGNoZWNrIGlmIHRoZSBmaWxlIGlzIGFuIGh0bWwgZmlsZQ0KDQpObyBuZWVkIGZvciBvYnZpb3Vz
IGNvbW1lbnRzDQoNCj4gKyAgICAgICAgICAgIGlmIGZpbGVuYW1lLmVuZHN3aXRoKCcuaHRtbCcp
Og0KPiArICAgICAgICAgICAgICAgICMgb3BlbiB0aGUgaHRtbCBmaWxlIGluIHJlYWQgbW9kZQ0K
DQpPYnZpb3VzIGNvbW1lbnQsIGFnYWluLCBhbmQgc2V2ZXJhbCB0aW1lcyBiZWxvdy4NCg0KUm9z
cw0KSU1QT1JUQU5UIE5PVElDRTogVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgYW5kIGFueSBh
dHRhY2htZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYWxzbyBiZSBwcml2aWxlZ2VkLiBJ
ZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90aWZ5IHRoZSBz
ZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9zZSB0aGUgY29udGVudHMgdG8gYW55
IG90aGVyIHBlcnNvbiwgdXNlIGl0IGZvciBhbnkgcHVycG9zZSwgb3Igc3RvcmUgb3IgY29weSB0
aGUgaW5mb3JtYXRpb24gaW4gYW55IG1lZGl1bS4gVGhhbmsgeW91Lg0K

