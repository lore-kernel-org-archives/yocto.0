Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DDFEB64D7
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 12:36:16 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.85])
 by mx.groups.io with SMTP id smtpd.web10.9172.1687264567205679003
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 05:36:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=eRaHJNBH;
 spf=pass (domain: arm.com, ip: 40.107.241.85, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JGF558wOIiJxYbFY/EZ0T5XH6QfTlwHDvGbfiXqhAqA=;
 b=eRaHJNBHUXGKysqP+4JpG1jLi1CT8+m3sQ3BoRv4WIGeLRFv1xILTdOWGxbwhMr7JY9iLqkRJjZz1Yp3o3AfDJzqkouiDFxtZkMF/KKJPj9Ol+FXrXEgu4AR25FGLTH4GSfCxIzCqN3FxTW/5rE6h06WoxShI5JEzfUJ9eV7oX8=
Received: from AS4P192CA0007.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5da::19)
 by AS8PR08MB9117.eurprd08.prod.outlook.com (2603:10a6:20b:5ba::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Tue, 20 Jun
 2023 12:36:04 +0000
Received: from AM7EUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:5da:cafe::a6) by AS4P192CA0007.outlook.office365.com
 (2603:10a6:20b:5da::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37 via Frontend
 Transport; Tue, 20 Jun 2023 12:36:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT058.mail.protection.outlook.com (100.127.140.247) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.22 via Frontend Transport; Tue, 20 Jun 2023 12:36:02 +0000
Received: ("Tessian outbound 3a01b65b5aad:v136"); Tue, 20 Jun 2023 12:36:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 13ceadbde4279505
X-CR-MTA-TID: 64aa7808
Received: from dab5fae14dd9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 5FB17653-C664-4B2A-8CF9-EF4A30BD388C.1;
	Tue, 20 Jun 2023 12:35:55 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dab5fae14dd9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 20 Jun 2023 12:35:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guCveYlYzozYul+AriGON0CiUibvrB0kmlEVNyNzFE9T3dgA14a0aKu+QEc3r9p0O87L96MuWiPIRddlYi9k0ceSKgfAw2CJ8xZJQpmtB5eLxosWA0ykGfnZE4ttnJQJdpQ0mbKXccE6YeOQlyU7s05Zd4ji7hcaiO6lO3RJsM+slt8bp4XM8CFWkO90az9nUIq0rmgUUUW3fg7PD5i6UfPop8ukxKOTYx75H5I9pr5U4bkLZKu35vOMdRaMgJI1xb3UwTsLgRf3qAMCqo9Lc1vNdYl0LhwGBOu1Wyr9mv/mtDn6LU2/47c0mTqNMAgtD6XlMFv6T02l729nQoQ90Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JGF558wOIiJxYbFY/EZ0T5XH6QfTlwHDvGbfiXqhAqA=;
 b=FdeOdRC0zlUyIhEJjGYfLhBLLvvMQFPitV3eWgjLjhV1J86+qPlLlkAmUZ5UfSI8i9SF96C+KdiBczWG41IXJ5GBajbZX9Dn59hC7S5Yj4hqe69gzGxCiRP10dvzWeJ3XbFtW5Dzultq4B8r33p6ShCv/Z1LZfkpNBUUHgeNYJ89rWgML8tNcETjanNmKFWx6+TYWw6WmcW+QrXAtMDduILxbFK6VJhQuDYMXTOVvK2lPQmb12xTR4sIEJT7efRCbRWv/pDb5IJT3BZgLUKgezIdnkCvR3X755zm2civKGAdiBHbj1bNxk8zi+95us4NOmHTuBtK3OfmtDNaUq6e+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JGF558wOIiJxYbFY/EZ0T5XH6QfTlwHDvGbfiXqhAqA=;
 b=eRaHJNBHUXGKysqP+4JpG1jLi1CT8+m3sQ3BoRv4WIGeLRFv1xILTdOWGxbwhMr7JY9iLqkRJjZz1Yp3o3AfDJzqkouiDFxtZkMF/KKJPj9Ol+FXrXEgu4AR25FGLTH4GSfCxIzCqN3FxTW/5rE6h06WoxShI5JEzfUJ9eV7oX8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8164.eurprd08.prod.outlook.com (2603:10a6:10:3ef::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Tue, 20 Jun
 2023 12:35:53 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%6]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 12:35:54 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "sumit.garg@linaro.org" <sumit.garg@linaro.org>
CC: "Jesus.JimenezSanchez@verifone.com" <Jesus.JimenezSanchez@verifone.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Topic: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Index: AQHZosvMH8OS8Q69kEWXpYjGcJANdq+TmlmAgAAHgwA=
Date: Tue, 20 Jun 2023 12:35:54 +0000
Message-ID: <57D4D4FE-0D69-4C4C-844C-0260490012E8@arm.com>
References: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
 <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com>
In-Reply-To: 
 <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8164:EE_|AM7EUR03FT058:EE_|AS8PR08MB9117:EE_
X-MS-Office365-Filtering-Correlation-Id: ba2f79de-f6ed-4043-041a-08db718ae8d4
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 392yiPA5qqDN+ePHAzaDOFfsfu+k6rtQo21q85aUiNOEUggYLGh+/RYRKfaeZu6T8/gUSgJQQBARXF4aSgR1kjZnp3pWPPhk5oenQ2PDJJ8lGWXf4GuuqMePdI4Rgisbw7BpxWdRj7ranszNQVW92wy/9NMDrK2Kv891ZiROk5c9/3nCOlgK5ZC9YACy3qmb/z/VKlO6WqkFvkQJTr72E9Zs/lU5OSY/JlJKlAKOX4FHS/p22axW0mV50FL07ykDeRpCAJhdEjRdOd+uG4sKpkrg06V3KcpoP6tjmdstvjlUnxJsFm/n57AgFXHxpicSkgMIo6KXySiz0lObOlmwxGF0nWFTxAkhMV7ieGKbDcFfbgZqad1YVt3X3F8UpYnGVMBPVPzu6zsNP+3JH1NzzQVXTfSoOeqPwZKQpj3ZziizLJvNjGwkXLDyxViznmkscD9DbHXZwzNE+cHzX0JSI5CNddj9PoNf2f2I/7pG6DIXd7ZrUqYNlpWrglHRAlsNkvDpu0/6zxEktkVUQBLlndhESctVmG7PC8nEeYstrjlIYXUatcp9H6pAJAu8d7c8GI3+zvyCX559H5XxfpC8AomhpOb8IamedllfCKr+5gQw02qlPSCUWrp1iqD/BEcG0Hho51tFokwA+7iGdlEUoQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(366004)(39860400002)(136003)(376002)(451199021)(53546011)(66946007)(36756003)(8936002)(8676002)(66446008)(76116006)(66556008)(64756008)(66476007)(38070700005)(186003)(26005)(6506007)(6512007)(41300700001)(38100700002)(91956017)(5660300002)(4326008)(6916009)(316002)(54906003)(6486002)(2616005)(478600001)(2906002)(33656002)(122000001)(71200400001)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <95995B287DCCE8459410D773D6872F8D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8164
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	87799b31-5a12-48cf-c578-08db718ae3cf
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	A1Bw5VqqcE5Gev9231DKPVrWlM7cLpM5faBrXy5fnxj3rYBwown8SXL05FBzv6x8bp3uj5uhYeOmrKbsJPWDY7S44pg0pusS3XJsSP7VA/tBEo8vaUnqSJgHctBdeW+oKE+RW2aDm0JuuJgCH5W0/vygnYt3YbEntAQouesQByOK33cA58h0LU3frCyVsoQbV1gLxhXKeRylLPckQxRnMYgsmAEgqfQCiK5BB9g2yDwfMrAZAKE+Hfc1hhx+GmF6l690do8S+8M4bwV4JgXtpbTPwQOqS3hP3BV5PYMK33+itKp0ScTJSeUUaxzgXkq5MJNehrhPQM+TRTxFmji1Nejbax5P3kX2LDjfvAyNzQYwbwd8bA0JzbqayVVWaR45pB6pf56pImaGxA+X950DWYTUKbhYLoagHftjOWe9k8DPtRxANkgYNLH16KUD8EJTET50TjyxzhP/JC1DAfYb/yRwHJvn4alPDoEari4LAdFmscEj+ejvepacgJ7MGCRpr4Gt/fKbzKKs1/cleVEGiBvRS0eXGYguoBhWMZgZHmtTezRzd1Qxv+acarbCufDYmNPbbZON719CFDAjrYUTcSApvPG+hlnOhmGo3+6EGS2HkgeJrx0e7m4EwOVrV2VIu/FwhZ5EQJ13W1J5m0JBwhIpjk20wQ0hYqrRC9R932g0Fx3CWNRCvT12+hS0UbWNPbHacnvZkcZdXIIFYzJLiQWjW3xviFRt/3NES5oyPDpkTE15GXzpunaLYc3Oep+l
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(376002)(396003)(39860400002)(451199021)(46966006)(36840700001)(40470700004)(81166007)(356005)(336012)(2616005)(86362001)(2906002)(47076005)(36860700001)(5660300002)(82740400003)(4326008)(40460700003)(54906003)(6862004)(82310400005)(70586007)(8676002)(70206006)(186003)(8936002)(26005)(41300700001)(478600001)(36756003)(40480700001)(6512007)(53546011)(6506007)(6486002)(316002)(33656002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 12:36:02.8066
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba2f79de-f6ed-4043-041a-08db718ae8d4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 12:36:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60361

T24gMjAgSnVuIDIwMjMsIGF0IDEzOjA4LCBTdW1pdCBHYXJnIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxzdW1pdC5nYXJnPWxpbmFyby5vcmdAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBPbiBNb24sIDE5IEp1biAyMDIzIGF0IDIyOjAzLCBKZXN1cy5KaW1lbmV6U2Fu
Y2hleiB2aWENCj4gbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA8SmVzdXMuSmltZW5lelNhbmNo
ZXo9dmVyaWZvbmUuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPj4gDQo+PiBI
ZWxsbywgSSdtIHRyeWluZyB0byBhZGQgdGhlIGFybSB0b29sY2hhaW4gdG8gbXkgeW9jdG8gcHJv
amVjdCBidXQgSSBqdXN0IGdvdCB0aGlzIGVycm9yDQo+PiBgYGANCj4+IHwgY3A6IGNhbm5vdCBz
dGF0ICcuLi4vdG1wLWdsaWJjL3dvcmsvY29ydGV4YTd0MmhmLW5lb24tdmZwdjQtb3N0bC1saW51
eC1nbnVlYWJpL2V4dGVybmFsLWFybS10b29sY2hhaW4vMjAyMi4wMi1yMC9pbWFnZS9sb2NhbC9T
VVBQT1JURUQnOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQo+PiBgYGANCj4+IEl0IGNvbWVz
IGZyb20gdGhlIGBleHRlcm5hbC1hcm0tdG9vbGNoYWluLmJiYCByZWNpcGUuIEkndmUgY2hlY2tl
ZCBhbmQgdGhlIGBTVVBQT1JURURgIGZpbGUgaXMgaW4gdGhlIHJpZ2h0IGZvbGRlciAodGhlIGBm
aWxlc2AgZm9sZGVyIHdoZXJlIHRoZSBgZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi5iYmAgZmlsZSBp
cykuIEkgaGF2ZW4ndCBtYWRlIGFueSBtb2RpZmljYXRpb25zIHRvIHRoZSBtZXRhLWFybSByZXBv
LiBJIGp1c3QgY2xvbmVkIGl0IGFuZCBjaGFuZ2VkIHRvIGJyYW5jaCBga2lya3N0b25lYC4gQWZ0
ZXIgdGhhdCwgSSBoYXZlIGNvbmZpZ3VyZWQgbXkgbG9jYWwuY29uZiB3aXRoIHRoaXM6DQo+PiBg
YGANCj4+IFRDTU9ERSA9ICJleHRlcm5hbC1hcm0iDQo+PiANCj4+IEVYVEVSTkFMX1RPT0xDSEFJ
TiA9ICIuLi4vZ2NjLWFybS0xMS4yLTIwMjIuMDIteDg2XzY0LWFybS1ub25lLWxpbnV4LWdudWVh
YmloZiINCj4+IGBgYA0KPj4gDQo+IA0KPiBEb24ndCBwcm92aWRlIGEgcmVsYXRpdmUgcGF0aCBo
ZXJlLiBJdCBzaG91bGQgYmUgYW4gYWJzb2x1dGUgcGF0aCB0bw0KPiB5b3VyIGV4dGVybmFsIHRv
b2xjaGFpbiBpbnN0YWxsIGRpcmVjdG9yeS4gVGhpcyBzaG91bGQgcmVzb2x2ZSB5b3VyDQo+IGlz
c3VlLg0KDQpJZiB0aGF04oCZcyB0aGUgaXNzdWUsIGNhbiB5b3UgYWRkIGEgY2hlY2sgZm9yIHRo
ZSBwYXRoIGJlaW5nIGFic29sdXRlIHRvIHRoZSBjbGFzcz8NCg0KUm9zcw==

