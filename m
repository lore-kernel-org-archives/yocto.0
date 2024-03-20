Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0059BC54E58
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 10:55:21 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.77])
 by mx.groups.io with SMTP id smtpd.web11.40864.1710932117175638339
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 03:55:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=8FWI7nFU;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=8FWI7nFU;
 spf=pass (domain: arm.com, ip: 40.107.104.77, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=idNw4pT/ZGKHjwkDjKGbfEp6PU6mJqUnD+SWIkxq4sZx2BF/t4DdV3qxdkJbAQZkvSVSTMpI37CE8nV1P4PnSO9hHgduMalv0fLgzFG8UXNs3rvDBgnBXbpnakq0eX5csGdI9Yq5026caIIy8aGSHm9/keAfG2Zmf+kgluI6iKue6Azahp7Yr5fCnUc4caIJOASj0F5M/7a7n4pKYjRX7NwtNC9a9N3oqZqQWQuFoLQ8bJ+qeG33SytZdqbL4kUwjyqPksDIDa+xopKA7DfSETh1+7dwHYVM6sCDmG92aB9thfBnOs1HCMY+jbHAs44d1vRvpZ+yu9g7bDfkAIlfjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fpHAy3bn/Mp3u4S1MSrLVaqN4c/P1uRDkvJIs4+pWVs=;
 b=WsNojp/IcibCFNTbrsZmo7J1x9ITSgeDMksWHU7uTXTzG9OJnixmk/N9MMmofYxx8lyD6RsMY5CfLYRXpbP1sD6ZN0pVTl/rH7wu07UABhj6ANOBuq2jJ2fr5rGPztg526wi+aCorRbzst5qHTIfwkAfG0HGPyvHy8gQmPECbLZ3Ut7DFB0JElSrFNeouQGTi8nF4hyoTld0rryeCOt4OkN5CJnzfzTYf5uDyNq2/pG1APVwi6hw0TDA+ngaPg/yni3Y+fxw2k5Aph0E8zeIsw2uHrzUqQgkqoFtulu9/hSW5VLqux+MX1X0ReKIL4JXz+QWoxlzxyGi8DBk3x4a5w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fpHAy3bn/Mp3u4S1MSrLVaqN4c/P1uRDkvJIs4+pWVs=;
 b=8FWI7nFUfVbH/cdCZsH1d/cmtUW57ZzA6h+SJNSBcYeezqbr7/c8HXG2ltQrk1l4Pj4gdM33aOo7lVu0vkHMMgBzfNPb3Cu3uTGKT6q5gVanaoHTXBLT5M+yzUWmm0h3b9xEeoLUoNTwsc0HapGp9wvZTkIyeJTRk6n+gWvX1gg=
Received: from DUZPR01CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::7) by GV2PR08MB8344.eurprd08.prod.outlook.com
 (2603:10a6:150:c0::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.31; Wed, 20 Mar
 2024 10:55:13 +0000
Received: from DB3PEPF0000885E.eurprd02.prod.outlook.com
 (2603:10a6:10:468:cafe::48) by DUZPR01CA0044.outlook.office365.com
 (2603:10a6:10:468::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.28 via Frontend
 Transport; Wed, 20 Mar 2024 10:55:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB3PEPF0000885E.mail.protection.outlook.com (10.167.242.9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Wed, 20 Mar 2024 10:55:12 +0000
Received: ("Tessian outbound 5ad6c4395be7:v300"); Wed, 20 Mar 2024 10:55:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4a819ca6e09ed47a
X-CR-MTA-TID: 64aa7808
Received: from 95d6ac35a1c2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id EC411501-9FE3-469B-BE0D-F7A6EA6EB8FC.1;
	Wed, 20 Mar 2024 10:54:31 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 95d6ac35a1c2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 20 Mar 2024 10:54:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMk8LDLXSRwtE5JsrNKj3Nio+GcZO6PWMKFdF+BWW5+bP+ncgmCwDrsI/XWBJm2BLXrB7o4g2spRbniJbXO6kSnj/GZCqiQOMz+e5yQuWWrUh1+0vddTPcu46CnKLUTt9odmj4KT/X/OngEHSjjUUJtOSe7zOj7fcY7CaP5s8n5tK3GKPLguj5pfqYQJt9AQFuWFrfl7YKo2nSZbPpLMcnyA4siqKvWugTv0aYkqAQemW4hIrGpuq5b/9WQLfyll+MfWVAaiElK+MbY4xz6z2v0/DeP/2b7HbaaYPll0MFqAopbTDgDG2sITX3UpCebcIXvSI0/VqrHUvSaaMKcJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fpHAy3bn/Mp3u4S1MSrLVaqN4c/P1uRDkvJIs4+pWVs=;
 b=igaXlrZodylieA99aePPdZBxfRAzqnRkA+gWppcWrkXk4n3+IIUNQrixsleRwiTTuYdHQEKk8mCPQswI2pcWYHBHakV5WyKGi1DvD0541J3SiJ8T33dwQQMZ+vDHrMHpirF8bbz23UKqjFz0XbWZGkAoHbn2YHlFsGcxrFKUO3NEC2/pG0HsQO3TUGFEOWq0JCjVZvFAiL4d4weQb383OmVwUFVlRIONoTtu+gUdWbuUZ16p6rloH/BjQXBxU7/8D9ttqiXokZzNa9nvf3EI32uY6hKTo5eBk6hfvv/4UCiSR2s9eK801zpzANJtF8BrYcOLiD3LotFXtIjCoPWuyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fpHAy3bn/Mp3u4S1MSrLVaqN4c/P1uRDkvJIs4+pWVs=;
 b=8FWI7nFUfVbH/cdCZsH1d/cmtUW57ZzA6h+SJNSBcYeezqbr7/c8HXG2ltQrk1l4Pj4gdM33aOo7lVu0vkHMMgBzfNPb3Cu3uTGKT6q5gVanaoHTXBLT5M+yzUWmm0h3b9xEeoLUoNTwsc0HapGp9wvZTkIyeJTRk6n+gWvX1gg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB6154.eurprd08.prod.outlook.com (2603:10a6:10:1f4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Wed, 20 Mar
 2024 10:54:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.025; Wed, 20 Mar 2024
 10:54:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
Subject: Re: [yocto] make a-quick quick again (and light on the AB,
 particularly arm)
Thread-Topic: [yocto] make a-quick quick again (and light on the AB,
 particularly arm)
Thread-Index: AQHaeqnNbVcbLWMf4EaPMs1K8WaSFrFAdJUA
Date: Wed, 20 Mar 2024 10:54:28 +0000
Message-ID: <E09C30F2-732B-4047-8BDA-72C67FDA2788@arm.com>
References: 
 <CANNYZj8WgSAT_jZw0yqeQSQo=ByBcrwcMSz28AOPEhthGvfcvQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8WgSAT_jZw0yqeQSQo=ByBcrwcMSz28AOPEhthGvfcvQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB6154:EE_|DB3PEPF0000885E:EE_|GV2PR08MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e743774-3088-4a4e-fcca-08dc48cc37f9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Q2gfScdzKVXrhqtS1e1/r1qWn8OamU5XWeWP4OA6+AgL2lW4egZYbnw49kYeDIFT+4zlqx7r87+lsK4EiplDBQQoCT9/gb3CS5mgKUSglEiXhhDCUgxd+LHCGIb5/JoguMOAouyXefWBn8z0CJqpLqWF2hXyUJGuNbt/1ggTXfgyrvAxNX0LMfp1yhOi4muOwLJJJeINstVzhArNMWjvGKDsVC0Iom+rBoavmkcnV1hZuT3mtGqg8lf12L3veVNXf99ePk0zudB1WI67k2rWIWDwCfM0UV2FLJxj291qztoREMIcpN+XbzDYM6UH7PE5863EJchA/4fZbuobhft3xkV93OWWbJ+heh56UHiLzdgEO+oHH7zcGoYRKMK2lKx7/stKgVJ9387AqMVYnN2J2phVlMEppJFKfD9F3TfkxKbHJgaWNdUh5Ghd0atCgeAqc47x8NJicVD7z2PV0bNgWhllddjzFPw3Q/XLLwoB45f3UZpP7w+gV/qv0Qks6SwHQdwxZhLoN5ddNvG8h1xsmDdSfFqrgdzRxYSQUot2ZafH8pJCBah717NE3VWsCr3cJO/rpMwP6sDn49zLE0u/2NHAVY2iEgAY0oQRNTmP9883Tw0jhRI/srNXqnpY4/OKZ0ZbZt+FnW9GVAqP7qk2HXVPlPqZF2aJoEdI6t8BIp4eJhi58NAVFY/iYRyX/XwcL5e881SMkItKphOQEeFLVuBfntpaekK9AoVJh4C1ZRs=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D444C413FE703D49BC445C788CB23E68@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6154
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB3PEPF0000885E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	41a154d6-a7a0-49c0-167a-08dc48cc1dc1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	deH5H0PYWgSJDuDV8F99kfEE3P6/XbU+pX+l6jlta7BXOmyvXNajihXhS067bv/A5xODVoVHVT1uvKSilBOemJQE34yXEtvmXl/PbqIAldmX/J+vCXGBMnQtMO/spz4U8shx8WSWUykNk38gOSmvosGaPt7asb0/HLH5XvGfjjnQ+hxm1lk/87o4pUgXZbHvtDUc1muCBZIPfnysz+6H9PzMg1pfKKcIGma+MG9QJSGgCsw4N+G7KhY7vWTEPhRjBE9AwoIFwjPX76wR1Ewwh20D8UwogIWh6m+bmF/MelPEmB2n3qcI8UKyBxg1Y9lyp4mziVFZY2flKWcnv22juTF2CdmvdVzJXKJzowotCaB/+xY1ihG5dQhSdcsemnjqwUpwgof6fGFb5EUZybZHBLLB9iziMzBi9MtKVZ6sOs4L5ZCCCBwZspP0oVnU7547IC/vRPGABNFwe1KFjNOXzTsu0I+7dgsdwLubrkcVOuW525KlyGF4SqyH+0v+kM62hn6WexYonLfbHVl1dkLXNK799UE179zo2Lz2juY0jLjHycVw/kyT4DE3r2tU+O54Owhsvap347SkMAVU4nlBdoOeJdLUja+CS6n+efIxEn3XIQE+8hqMImM8APxr/b6oWUYFRqMP9YyjxDopGMR48C6IHWbzT5wsOsuCwxIsxNQOaw4xvnzaD4AnT2rHNi+PY/P5FmEKxcP3MIXcUebvu8LvZuxIXC+2e2my6Y0ja5DM+7gdbmXXutsya4C8mNFn
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014)(1800799015)(376005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 10:55:12.9426
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e743774-3088-4a4e-fcca-08dc48cc37f9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8344
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 10:55:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62801

T24gMjAgTWFyIDIwMjQsIGF0IDA5OjMzLCBBbGV4YW5kZXIgS2FuYXZpbiB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8YWxleC5rYW5hdmluPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gSSdkIGxpa2UgdG8gbWFrZSB0aGUgZm9sbG93aW5nIGNoYW5nZXMgdG8g
cmVkdWNlIHRoZSBsb2FkIG9uIGFybSB3b3JrZXJzOg0KPiAtIG9lLXNlbGZ0ZXN0LWFybWhvc3Qg
bW92ZXMgZnJvbSBzaGFyZWQgdG8gZnVsbC4gVGhpcyBpcyB0aGUgYmlnZ2VzdCBvZmZlbmRlci4N
Cj4gDQo+IC0gcWVtdWFybTY0LWFybWhvc3QgZG9lcyB0aGUgc2FtZQ0KPiANCj4gVGhlcmUgYXJl
IGFsc28gb3RoZXIgaGVhdnkgYnVpbGRzIGluIGEtcXVpY2sgdGhhdCBJIHRoaW5rIHNob3VsZG4n
dCBiZQ0KPiBhIHBhcnQgb2YgaXQ6DQoNCknigJlkIGJlIGFnYWluc3QgcmVtb3ZpbmcgX2FsbF8g
YXJtIGhvc3RzIGZyb20gdGhlIHF1aWNrIGJ1aWxkLiAgV2l0aCB0aGUgaW4tcHJvZ3Jlc3MgY2hh
bmdlcyB0byB0aGUgYXV0b2J1aWxkZXIgaG9zdGluZyB3ZSBzaG91bGQgYmUgYWJsZSB0byByZXRp
cmUgdGhlIHNsb3dlciBBcm0gd29ya2VycyBhbmQgYSBidWlsZCBydW5uaW5nIG9uIHRoZSBBcm0g
aG9zdHMgc2hvdWxkbuKAmXQgYmUgYSBwcm9ibGVtLiAgSXQgd291bGQgYmUgYSB3YXN0ZSBvZiBl
ZmZvcnQgdG8gYXR0ZW1wdCB0byBvcHRpbWlzZSB0aGUgYnVpbGQgZm9yIHRoZSBjdXJyZW50IGNs
dXN0ZXIgd2hlbiB0aGVyZSBhcmUgcGxhbnMgdG8gcmVsb2NhdGUgc2hvcnRseSBhbnl3YXkuDQoN
ClJvc3M=

