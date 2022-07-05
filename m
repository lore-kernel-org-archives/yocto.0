Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521EECCA47B
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 14:24:39 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.88])
 by mx.groups.io with SMTP id smtpd.web12.84756.1657031074140089017
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 07:24:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=PPi77zTj;
 spf=pass (domain: arm.com, ip: 40.107.6.88, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=VbxJcx/TvpaP8mxYvbCQFj/rhloLTejxlJfi54dpzrFsCgW53lJo90bcy2iqbX/ARNtwQjiAP3JuUK5cUZqYq77rQGt1WEKHXM9WDnL99X1K1nu03eoIQv3vSrKun/CvlQM9u6QNguVcN+6zAZ1gyasEBsWN/XGZkuhLfGHWt8Iqf/bzZTjMRRNCB5P1H59QbxgjgyDJBT91K+CxPibyhJy6yCoYrsXtPF6wuh2tLJrPdTaLxH752BFquwTPO3XCHpfD+zYsha8R5wML560MhQJCI3wpeW3bo28XgDzgyOPUdodqQfqZu3NSUvOff5YHbrw9CVWRaR3sGABa5yfLkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YA1rX4B4j8nqfx7wcUjZFQIUgDaVWGIhqJt6Sg4+RcY=;
 b=QCeI0jTYdtUZMY+wab0PcQpPPKDeQw0d0Ox8DyRXEsK8IpOuxLx4DzYFCRu0GTQ5LkeyBonBiSNgPG79/nIHviaivmgfQc2KidVH/DTX/YQFhBPp03xmyclvqNG3ruSGoDeEZzVazBykHIPohk7YtSe8v09DMRuHwbfRCvY9pnYD9lMzMmwGLsu+L36ru67cUfNHVM9r8fBNaqXz3Nu5ObXZ4eZrrdH+u1JhTZLLCwDwYnKTjDJHJpWp6AUNdRfsCsS5cR2LF7nUhCwGZdE06/eJsxzkdPl7TdEumZOQgi52XdgJE8KXFf9KJlRzFWEmVwKiYz3MYSRxxFRVVs9NyA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YA1rX4B4j8nqfx7wcUjZFQIUgDaVWGIhqJt6Sg4+RcY=;
 b=PPi77zTjeVw3jWdhuKNCCbU8fWw4xOyH3AxL1oJjy0yLcqQJ2gYZhWGMtRod3jWWjVqVu9Bh+I5waAlhKpWsdGGRJddQRLcQhackV79q9c/I3jB+n6H67pNm3McD0vtKjrAJ4RZFAPFgxmod457v3O3DQQnPydw7CGPPpaZgZx0=
Received: from DB9PR06CA0012.eurprd06.prod.outlook.com (2603:10a6:10:1db::17)
 by HE1PR0801MB2092.eurprd08.prod.outlook.com (2603:10a6:3:4e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Tue, 5 Jul
 2022 14:24:30 +0000
Received: from DBAEUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:1db:cafe::96) by DB9PR06CA0012.outlook.office365.com
 (2603:10a6:10:1db::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14 via Frontend
 Transport; Tue, 5 Jul 2022 14:24:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT062.mail.protection.outlook.com (100.127.142.64) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14 via Frontend Transport; Tue, 5 Jul 2022 14:24:30 +0000
Received: ("Tessian outbound ef501234d194:v121");
 Tue, 05 Jul 2022 14:24:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dc54a9dd6daeddfd
X-CR-MTA-TID: 64aa7808
Received: from 8f34611d01b3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0FB9B2CA-6DC5-413E-82A9-DD271F50ED43.1;
	Tue, 05 Jul 2022 14:24:23 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 8f34611d01b3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 05 Jul 2022 14:24:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MOpYA1eX1u2qpJzLVwCCs4JL7spVxb/7sY8MQapmnJKWlpyKxy5sZ0gcGI0SYd+DcQvdKJgLYlBXYapw5DRL6orE5tEbVCl0Zy42t9Mv4NkNppFwYCONbHviIi3YrnteWKhT8x8BjzIXFkbJrkquzK3eBDn2yQzGqrnn8R6UHvhKehXm9Cf1IEqChIrC2/nVQnZiFa35SRx2gExDmIgISJCucn3enRrhJAtgAr8d9aHxN52sVAkF52Fyb9A3kPih8pM6zg/oG3rfR72az/zFBCBSox2fZzoc24DGG0gvU7Vnt8tN/ClmdANbtcxGOq642fzih2KN5V47FUeqkjWzPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YA1rX4B4j8nqfx7wcUjZFQIUgDaVWGIhqJt6Sg4+RcY=;
 b=PgcetcL/nImnJcpCBsMCuh8mV6w4WJAwfW/wmn7GytxV3oz9Hhxlicrz0Ag8hDgvwpiR3GlyGlUJmxcLh2lvvOrr31J5I0SnKGbuC6uLTojqHp1H8jj5bvdLFoIqdOCuOOFQJmaRb8HZYnPW0ebs5adzdgHqsFnv5lgmNrRKJ0Zfoy2NCpM2pvc5vwl4frMpWB3oHN/66UzLSms/md/CgQZw7eMG34I3lymguaPlwRQPlMqYXtCLug6qIOpKX+wbZaTf/zKWhjqFec+osD6PpzN3Y+O3pxic3LAUBB54ATYjkorFU3l0vsgYKgTuHyR+Mxunc5i2rnUaPXwSxwuCyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YA1rX4B4j8nqfx7wcUjZFQIUgDaVWGIhqJt6Sg4+RcY=;
 b=PPi77zTjeVw3jWdhuKNCCbU8fWw4xOyH3AxL1oJjy0yLcqQJ2gYZhWGMtRod3jWWjVqVu9Bh+I5waAlhKpWsdGGRJddQRLcQhackV79q9c/I3jB+n6H67pNm3McD0vtKjrAJ4RZFAPFgxmod457v3O3DQQnPydw7CGPPpaZgZx0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB2766.eurprd08.prod.outlook.com (2603:10a6:802:1a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Tue, 5 Jul
 2022 14:24:21 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926%2]) with mapi id 15.20.5395.020; Tue, 5 Jul 2022
 14:24:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "gauravsuman007@gmail.com" <gauravsuman007@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] cve check report package version mismatch #yocto
Thread-Topic: [yocto] cve check report package version mismatch #yocto
Thread-Index: AQHYkGtLSmrOUrldIU+hlObehkcEoK1v1PyA
Date: Tue, 5 Jul 2022 14:24:20 +0000
Message-ID: <E30745EB-143E-4CDA-9D62-9416C6DF18C1@arm.com>
References: <DRD0.1657024299174009146.HGxi@lists.yoctoproject.org>
In-Reply-To: <DRD0.1657024299174009146.HGxi@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: a42d3169-9db9-4b2d-1d8d-08da5e921317
x-ms-traffictypediagnostic: 
	VI1PR08MB2766:EE_|DBAEUR03FT062:EE_|HE1PR0801MB2092:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 S4DAGKU0EYcyFWowZ7cauCri4xSQr7vuSjZfEdSojNxjkDVIrtr4VK43nRDjgNhlZLC054fM7rvsZh9BaLxleTadAPWJ+6X1hzbaz6x9fNuPiiOy1/qfY6yVQB6PqojduQAIhfgBr32+ceNB0KzyQN95LtSF+dMrcX0lr4CFG8vTvQJvQyPZZx07ilQgQOL7qJW+Mq65nPdTkz9KfMICqDQ+0mb78n8nVR8RLmNqV+1kWpq5v+Goa7ezoJeyeXMWGnzI0KOfj7MGePjwcDfoTNZx83FagNPNyXtEorEw0T9LzlwhOL8NOCWTAjPb+FbWDqTPp8dzv8rKEx7nC6VIB9pC/yLcAHKEoXAolbBGB6biQHs/kfj2VJSadaCdP7haynpsDlEjtPU6R6BVbPydURqI87wS3MzBixjO9SJ5hDEBxdz/JPRSBYLMkry5OOjF88m2QYoY1QCykb9j6xghQuGm9S21r8SfnkENIuxmMzM7VLotwiy2pPc6khQDVjF3IHVQhrCbVunSs+D8fSsR7p4W+9buA4msZEI1Yl/t7BDfF8ShhDDWXUibF9QEUUg61Zj2ULWovdqMwoBmjGf+4vQVuZfj9OXKMeRwAtDrTz9cBsHSKCBedSS1HuMNobaT+TpKDbRN7vvc0qLsKCI/HptyeSXxV9XhutWYaHdh7WNwdO2xjxKGoe20EP8qCZBjvCo8HIOvtC71aDq3iZH2YSusO4AVDSUGOOGLJmYCe0KGmt+oPZW33TwdwK4TJda2kYiLsUokpQz899e6wVtUGy4s41hRbOc5JcCjCZC6fSpggIFq+9J3XcJ6pg25SwT4U4EBf5JtqKPJFIDXanWOpBykwFlP0JvR8LHgjXzuDuZjy4Y2b6vMn491uGoBktTq
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(366004)(39860400002)(136003)(376002)(316002)(6916009)(2616005)(83380400001)(36756003)(6512007)(26005)(33656002)(186003)(6506007)(86362001)(2906002)(5660300002)(91956017)(66556008)(66476007)(66446008)(64756008)(38100700002)(66946007)(8676002)(4326008)(76116006)(478600001)(6486002)(966005)(71200400001)(41300700001)(122000001)(38070700005)(53546011)(8936002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <724A73E2069FD34897D411B7E995808B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2766
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ac1d9b3a-53cc-49e3-61ab-08da5e920d26
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4dGDl+2vOYbDEOBwHfbW+qox5dNAk66U7iedYkXUl8M4EYY98tFZ6IeHbX8RndpoXsd+r66UQtBT0/a9hqY5wmm03Q0QyY0hpyGk5QVSHwNVLZDyUOgRolTVJVqtwoqy3PTNXsx7wxXrdIg502QGV3XO+HphE59bqNxvgZU+63mkJ5kRukefHEoyKlXydDUXo8L3bLglg5NpS+4OKJd9Cpus0hjAolvfd696ae+8oWMZfczS3kf6eJ5oSqE/Hvoc7W/kJm6rxfRh5Yqny2WfJNJM5FAteOuG11f1ofj9gIaske25nL/Mf6DbCGkj3lvgY7lss14dgnvgnv33hcsbnJboX4tiqAgErO7xpHzeNIyCJXTr5gvdEBht4LOzI8ysU2h+YzP4fVCnFgknz1WR2x5SJb2x9M6sDtpZLui5gn295KrR3kMR7gAIJGDFUasVca7smqccfE/hf4V9fa/w5tfrs8VVMYD0zLwDZVX6dq6tjgXjJL8k0yiHizY7lp5ToGB8lmKmtQ+GDN96ku+VgHmrTt41mdEM7Ue/YbuN6GEk1afK6pxyh17ovnkxHqOQJFwXMBMin+Z8Q6wSSrc+k9p+IDIOFEkO4FobDIYcyt9BMeqv26kC078sTn7OTyjhxIOw1YSj2o1QnWzOVCDiwfpjKbJo3QppkUlHpAekM8KeQIxG5rN1+kuaXyCk9Df4FMohZNm21ULoYs0fWTw+/5TqoO8zr0sWoIwUAhAHPPT2D1uGeWxnjfYlfWDaOnyp2bRQfxBQTXVVS+QDj25OYmJG+3IwFRozEwLgx0oA4VNT2RKlxRfzjtlTcpYkIKqpAsoZs4rwuL+x4M+4Y+raRg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(396003)(376002)(136003)(36840700001)(40470700004)(46966006)(186003)(40460700003)(81166007)(26005)(6506007)(41300700001)(83380400001)(2906002)(336012)(53546011)(36756003)(47076005)(316002)(966005)(6486002)(8936002)(6862004)(82740400003)(36860700001)(5660300002)(40480700001)(2616005)(82310400005)(478600001)(33656002)(86362001)(4326008)(6512007)(70586007)(8676002)(70206006)(356005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 14:24:30.4864
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a42d3169-9db9-4b2d-1d8d-08da5e921317
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2092
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 14:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57454

DQoNCj4gT24gNSBKdWwgMjAyMiwgYXQgMTM6MzEsIGdhdXJhdnN1bWFuMDA3IHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxnYXVyYXZzdW1hbjAwNz1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZz4gd3JvdGU6DQo+DQo+IEkgdXNlZCB0aGUgY3ZlIGNoZWNrIGNsYXNzIGJ5IGluY2x1
ZGluZyBpdCBpbiB0aGUgbG9jYWwuY29uZiBhbmQgdGhlbiByYW4gdGhlIGJpdGJha2UgYnVpbGQg
cHJvY2VzcyBmb3IgbXkgaW1hZ2UuIEkgZ290IGEgbG9nIG9mIGFsbCB0aGUgZGV0ZWN0ZWQgQ1ZF
cyBpbiB0aGUgcGFja2FnZXMgdXNlZCBpbiB0aGUgYnVpbGQuIEhvd2V2ZXIsIG9uIGNsb3NlciBp
bnNwZWN0aW9uLCBJIG5vdGljZWQgdGhhdCB0aGUgcGFja2FnZXMgdXNlZCBpbiB0aGUgYnVpbGQg
YXJlIGFscmVhZHkgaGlnaGVyIHZlcnNpb24gdGhhbiB3aGVuIHRoZSBDVkUgd2FzIHBhdGNoZWQu
IEhlcmUgaXMgYW4gZXhhbXBsZToNCj4gICAgICAg4oCiIExBWUVSOiBtZXRhDQo+ICAgICAgIOKA
oiBQQUNLQUdFIE5BTUU6IGxpYmtzYmENCj4gICAgICAg4oCiIFBBQ0tBR0UgVkVSU0lPTjogMS42
LjANCj4gICAgICAg4oCiIENWRTogQ1ZFLTIwMTYtNDM1NQ0KPiAgICAgICDigKIgQ1ZFIFNUQVRV
UzogUGF0Y2hlZA0KPiAgICAgICDigKIgQ1ZFIFNVTU1BUlk6IE11bHRpcGxlIGludGVnZXIgb3Zl
cmZsb3dzIGluIGJlci1kZWNvZGVyLmMgaW4gTGlia3NiYSBiZWZvcmUgMS4zLjMgYWxsb3cgcmVt
b3RlIGF0dGFja2VycyB0byBjYXVzZSBhIGRlbmlhbCBvZiBzZXJ2aWNlIChjcmFzaCkgdmlhIGNy
YWZ0ZWQgQkVSIGRhdGEsIHdoaWNoIGxlYWRzIHRvIGEgYnVmZmVyIG92ZXJmbG93Lg0KPiAgICAg
ICDigKIgQ1ZTUyB2MiBCQVNFIFNDT1JFOiA1LjANCj4gICAgICAg4oCiIENWU1MgdjMgQkFTRSBT
Q09SRTogNy41DQo+ICAgICAgIOKAoiBWRUNUT1I6IE5FVFdPUksNCj4gICAgICAg4oCiIE1PUkUg
SU5GT1JNQVRJT046IGh0dHBzOi8vbnZkLm5pc3QuZ292L3Z1bG4vZGV0YWlsL0NWRS0yMDE2LTQz
NTUNCj4gQXMgY2FuIGJlIHNlZW4sIHRoZSBDVkUgd2FzIHBhdGNoZWQgaW4gdmVyc2lvbiAxLjMu
MyBvZiB0aGUgbGlia3NiYSB3aGlsZSB0aGUgYnVpbGQgaXMgdXNpbmcgdGhlIHZlcnNpb24gMS42
LjAuDQo+DQo+IElzIHRoZXJlIHNvbWV0aGluZyB3cm9uZyB3aXRoIHdoYXQgdGhlIGN2ZS1jaGVj
ayBpcyByZXBvcnRpbmcgb3IgaXMgaXQgbm90IGJvdGhlcmluZyB0byBtYXRjaCB0aGUgdmVyc2lv
biBudW1iZXJzIGJlZm9yZSByZXBvcnRpbmcgYSBDVkU/IE9yIG1heWJlIG15IHVuZGVyc3RhbmRp
bmcgb2YgdGhlIHJlcG9ydCBpcyBpbmNvcnJlY3Q/DQoNCknigJltIG5vdCBzdXJlIEkgdW5kZXJz
dGFuZCB3aGF0IHlvdXIgY29uY2VybiBpcy4gIFdlIGhhdmUgdmVyc2lvbiAxLjYuMCwgdGhlIENW
RSB3YXMgZml4ZWQgaW4gMS4zLjMsIHNvIHRoZSBzZWN1cml0eSBpc3N1ZSBoYXMgYmVlbiBwYXRj
aGVkLg0KDQpUaGUgc3RhdHVzIGlzIOKAnHBhdGNoZWTigJ0gZXZlbiBpZiB0aGVyZeKAmXMgbm90
IGEgbGl0ZXJhbCBwYXRjaCBpbiB0aGUgcmVjaXBlLCBpdCBzaG91bGQgYmUg4oCcbWl0aWdhdGVk
4oCdIGJ1dCB3ZeKAmWQgbmVlZCB0byBtb3ZlIHRvIGEgbmV3IGZvcm1hdCB0byBjaGFuZ2UgdGhl
IHZhbHVlcy4NCg0KUm9zcw0KSU1QT1JUQU5UIE5PVElDRTogVGhlIGNvbnRlbnRzIG9mIHRoaXMg
ZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYWxzbyBi
ZSBwcml2aWxlZ2VkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVh
c2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9zZSB0aGUg
Y29udGVudHMgdG8gYW55IG90aGVyIHBlcnNvbiwgdXNlIGl0IGZvciBhbnkgcHVycG9zZSwgb3Ig
c3RvcmUgb3IgY29weSB0aGUgaW5mb3JtYXRpb24gaW4gYW55IG1lZGl1bS4gVGhhbmsgeW91Lg0K

