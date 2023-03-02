Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C6CAC678D4
	for <webhook@archiver.kernel.org>; Thu,  2 Mar 2023 11:08:09 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.82])
 by mx.groups.io with SMTP id smtpd.web11.12792.1677755282648687544
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Mar 2023 03:08:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5HfgqYyP;
 spf=pass (domain: arm.com, ip: 40.107.20.82, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vKkqyhRyPhGiKXUaBk5Cp6wCecsXLpQlQBjqHyJlcnQ=;
 b=5HfgqYyPG3wU2hVfaV3zCN5rZ1XKDQ9/wH1he8j3+fGr/fqujmV6npXOD8RtYK8DUoBpBJ/qhI86h88pPVQ5PY5C2uLAqWD7eXh6fP/7lJ9X0wgD8hqYIzV0yc7ZCQAAbilYfGfKGIWvwDd5pFicanbfBqXH5iBmDRkxlKr5IsE=
Received: from DB8PR06CA0049.eurprd06.prod.outlook.com (2603:10a6:10:120::23)
 by GV2PR08MB8074.eurprd08.prod.outlook.com (2603:10a6:150:76::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.19; Thu, 2 Mar
 2023 11:07:56 +0000
Received: from DBAEUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:120:cafe::f2) by DB8PR06CA0049.outlook.office365.com
 (2603:10a6:10:120::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18 via Frontend
 Transport; Thu, 2 Mar 2023 11:07:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT046.mail.protection.outlook.com (100.127.142.67) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.19 via Frontend Transport; Thu, 2 Mar 2023 11:07:55 +0000
Received: ("Tessian outbound f2a8d6d66d12:v135"); Thu, 02 Mar 2023 11:07:55 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: baf9260cf1496e08
X-CR-MTA-TID: 64aa7808
Received: from 89784050ac3f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B133D9B2-4924-4236-81E2-4A668C143054.1;
	Thu, 02 Mar 2023 11:07:48 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 89784050ac3f.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 02 Mar 2023 11:07:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sr77vELIVihtLgaMOM6hDDs9mrZmjiTtjIJdKgY7n0PSj6m8lHOuWHC4MDXY0ALsZECSO+WohGKbBSnPkePQ8532MdEUFQ5o1z51jHTHCpGDSB+ZJHzfqQSqwB1g9/afa27URNodrrwGz15Zea3V0mxBCNXfYwUnKxG9YeEGglSKC7qVwWeq7gU7txltZqzytfZyrjdROnNqKP3hIUSkmP9m4KsrYJPL567Qhs0yBZQxDjpPtNqLmZMFYG3XmjgXQvrWR3HBcgtiLsNaDYZwkKbjrgIlwi7YiTWMlzjdTxjC7RzA33W4DYuqyeE02uns/+RmCrc2qB2GEv4ufoJ+Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vKkqyhRyPhGiKXUaBk5Cp6wCecsXLpQlQBjqHyJlcnQ=;
 b=aJzrbTDynrZ1Hlrd+iSVuqgTvBhjSj8Gfe0vEkA1ozEK3uwqBekS1aYddsgnOJltmKIjbc/zIu3CrvxbhmfK2jgdqjRCiaTOBJblC4KA2oAFgeyFqC0h9wkCX9yDAGLHcTJgQjXFc88/TJe4O7ztLxdpK7bFdq4sV2BXzHcJB0Y7JfcRvYwXOwgPnp6GV0xMPGHmNITU/YVTHDaoFkxqA7Q1I9I8j0MtBsRy2SSkVVY8Bz32a/MrbirbmfrGz1Qo4shJ/gvwz3jEjAEMNATMB1O7zCYzWFFXGRY2TlfUexEMLZrzi0gF/+k/DZ45m5ubQ8y7CHQpiPP9Wzc7uIwNLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vKkqyhRyPhGiKXUaBk5Cp6wCecsXLpQlQBjqHyJlcnQ=;
 b=5HfgqYyPG3wU2hVfaV3zCN5rZ1XKDQ9/wH1he8j3+fGr/fqujmV6npXOD8RtYK8DUoBpBJ/qhI86h88pPVQ5PY5C2uLAqWD7eXh6fP/7lJ9X0wgD8hqYIzV0yc7ZCQAAbilYfGfKGIWvwDd5pFicanbfBqXH5iBmDRkxlKr5IsE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB6458.eurprd08.prod.outlook.com (2603:10a6:10:258::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Thu, 2 Mar
 2023 11:07:47 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6134.030; Thu, 2 Mar 2023
 11:07:47 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "sethu.m@calixto.co.in" <sethu.m@calixto.co.in>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Transaction error after trying to add systemd
Thread-Topic: [yocto] Transaction error after trying to add systemd
Thread-Index: AQHZTESshnTLuczSUEiGS/Os29BESK7nVduA
Date: Thu, 2 Mar 2023 11:07:47 +0000
Message-ID: <FA3E9DBA-A83D-4E44-A210-33EBB398209C@arm.com>
References: 
 <CAFjAHzH+jooWbRcnwcG+upchU1n5JWJ0+mUTe8GoFZkbc_aSjw@mail.gmail.com>
In-Reply-To: 
 <CAFjAHzH+jooWbRcnwcG+upchU1n5JWJ0+mUTe8GoFZkbc_aSjw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB6458:EE_|DBAEUR03FT046:EE_|GV2PR08MB8074:EE_
X-MS-Office365-Filtering-Correlation-Id: e7a2aea9-936c-4381-d4a5-08db1b0e600e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 OW9144tuPH89dlgaBKlX8fFj/hg4WIbMt4UJkQ1um0p/sc7YDnDw5hO5FudBvMmVgXaNX/eclR9ssFtA7302hc15kFAHueCo583ZYWahfuMKzKQBocjkFpGvehC9LZ68VFYbjZd09OUn+CePWC06IRiJjJh8YkkKfTKkchD4kFqNnBRLifPUl4BXeXG66PJhdqod31bbhUrB5QRyAKdcLvzs52cZh8xJi/lliNED+nJH/4qs4rBrUNYVkoc2Ghe5/dCLoJa8+WPrUWSaBJkUCfG37TFII9f2s3/+DRS+pVoA5OhiP75BGDK20jm0OyfL6fRhhs4IFhwoPmF+ZBzsjvdNh/mVQCIqFcSx4vI1Kd6Xwnuny8ESPf9bK7v6RofwdtgKdu5D7jzp3zWE6JsDM7B9fgrbkFX7RIeaRK2aMCsSxH0oyNNWz2q3QYfF52/mzG1xicCSJDLNqnns9ChMdCM9IKDCLfoHqq5edq0XnOKAFysFfRalOcokxxX5tI5OE/56j8DDhVW4Ic/9G3fSiam0qiX+6yPqxzp/ZJ6VD1NZp69XA/2RxW9IboCxtU1s2tBsaxqsWqyOIytDHmnILrsSs7BNKXUhw6IDD+BhQdnpFsf1SmzGl01ogYHzdQZydZsoncjK6dO82SL0ImzOsTzsConGbq3zk6x1D2Ts2MamaGxlpBTU10qin92nEw5rI6SZ02gLtB6IYqBU/hezy57sU530JhCpZfokk8fSEwc=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199018)(5660300002)(4744005)(8936002)(6916009)(4326008)(41300700001)(36756003)(83380400001)(2616005)(316002)(66946007)(91956017)(66476007)(8676002)(2906002)(33656002)(66556008)(64756008)(76116006)(66446008)(122000001)(6486002)(38100700002)(26005)(186003)(71200400001)(6506007)(6512007)(53546011)(478600001)(86362001)(38070700005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <00677F5C22773A48973494F4E70AAA41@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6458
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT046.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	37a77b0b-47d5-48a3-532f-08db1b0e5b12
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zrJI4WDfMMsoyOXOQnr7yYDtciZl4S3ElQVlhNeD84+xAXMQarvcL03zB4zDqqWR+uTDcjXEYbczez2dYNm7zGQiLP2Vs8HoZWzYy040ujwNJJAz9Judvq7WrW3k60rluz3DNzr0nSoUWkL9Sh7AQAEwNbxVDr3yeEqUIoFgg9cxNHUqoKt/3cSSlveDOsknwaFFOJz9zG/h8OP6HQoP/nIuf5TThL1vZt7c06+JeFMBOHfHqGtsF8DjpiWBWKNreE7W6ORxvdJXWgOD6lMJC2QaKVOYHDpadmlyJHq59yBAPiBVhWUvQ2NdajgbJc/kJUxwIJCHU2X6AT2cKIK6etniWNFR61+sjb5PYdjJ8d2/yvDr9WHv5P1heZ320sREpkEaTFp6TXa6Lb6mCNxw+9LrcV64v83pfsaVyVks/76uKC7RY9gnr0JstEDGj0PGou+D/8+pDSXwU6cX674Wb/a1umpXx24hugjex+A0/yHBFNsdaS6IgJi+uTskSU4EOcex/VVF++VFMDdNMncOmwvn2rhY9/WKhrWewZltl79HqDyVtHF614CT7qFirIfQuprDK/nAD9sDNehxi3WTZ92EgKk2uLt02/5ort3GQG1C2V9kym0FD1SImraulbq0j9VwBXCKYMsSo+c/6wTuf7Ch1nzysjQLkAPmVis3arHo9yAUnT3VhO0zurq9YHi2e5f810kO/TvI2PvXf5IQWQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(346002)(396003)(39860400002)(451199018)(36840700001)(40470700004)(46966006)(70586007)(70206006)(186003)(47076005)(2906002)(36756003)(40460700003)(40480700001)(86362001)(6486002)(478600001)(26005)(6506007)(53546011)(6512007)(33656002)(356005)(336012)(2616005)(316002)(4744005)(8936002)(41300700001)(6862004)(81166007)(82310400005)(5660300002)(82740400003)(36860700001)(8676002)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 11:07:55.7977
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e7a2aea9-936c-4381-d4a5-08db1b0e600e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT046.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8074
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Mar 2023 11:08:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59333

T24gMSBNYXIgMjAyMywgYXQgMTM6NDUsIFNldGh1IE1hZGhhdiB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8c2V0aHUubT1jYWxpeHRvLmNvLmluQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiANCj4gSGksDQo+IFdoZW4gaSB0cnkgdG8gYWRkIHN5c3RlbWQgdXNpbmcgdGhlIGJl
bG93IGNvbmZpZyBpbiBsb2NhbC5jb25mDQo+IA0KPiBESVNUUk9fRkVBVFVSRVNfYXBwZW5kID0g
IiBzeXN0ZW1kIg0KPiAgVklSVFVBTC1SVU5USU1FX2luaXRfbWFuYWdlciA9ICJzeXN0ZW1kIg0K
PiANCj4gSWFtIGdldHRpbmcgdHJhbnNhY3Rpb24gZXJyb3IgLg0KPiBIb3cgdG8gcmVzb2x2ZSB0
aGlzIGlzc3VlPy4NCj4gDQo+IERvd25sb2FkaW5nIFBhY2thZ2VzOg0KPiBSdW5uaW5nIHRyYW5z
YWN0aW9uIGNoZWNrDQo+IFRyYW5zYWN0aW9uIGNoZWNrIHN1Y2NlZWRlZC4NCj4gUnVubmluZyB0
cmFuc2FjdGlvbiB0ZXN0DQo+IEVycm9yOiBUcmFuc2FjdGlvbiBjaGVjayBlcnJvcjoNCj4gICBm
aWxlIC9zYmluL3RlbGluaXQgY29uZmxpY3RzIGJldHdlZW4gYXR0ZW1wdGVkIGluc3RhbGxzIG9m
IHN5c3RlbWQtMToyNDQuNS1yMC5jb3J0ZXhhOGhmX25lb24gYW5kIHN5c3Zpbml0LTIuOTYtcjAu
Y29ydGV4YThoZl9uZW9uDQoNClNvIHNvbWV0aGluZyBpbiB5b3VyIGltYWdlIGlzIGNhdXNpbmcg
aXQgdG8gaW5zdGFsbCBib3RoIHN5c3RlbWQgYW5kIHN5c3Zpbml0Lg0KDQpZb3XigJlyZSBub3Qg
ZGlzYWJsaW5nIHN5c3YsIHNvIG9uZSBvZiB5b3VyIHJlY2lwZXMgbWlnaHQgYmUgcHVsbGluZyBp
biBib3RoLg0KDQpUcnkgcmVtb3ZpbmcgdGhlIGxpbmVzIHlvdSBhZGRlZCBhbmQgaW5zdGVhZCBz
ZXQgSU5JVF9NQU5BR0VSID0g4oCcc3lzdGVtZOKAnS4gIFRoaXMgZG9lcyBhIG1vcmUgY29tcHJl
aGVuc2l2ZSBzd2l0Y2ggdG8gc3lzdGVtZCB0aGFuIHRoZSB0d28gbGluZXMgeW91IGFyZSB1c2lu
Zy4NCg0KUm9zcw==

