Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F4FC54E67
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 14:09:40 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.84])
 by mx.groups.io with SMTP id smtpd.web11.23218.1710511771563901495
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 07:09:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=bB68gBbY;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=bB68gBbY;
 spf=pass (domain: arm.com, ip: 40.107.13.84, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=NJAjDT7m18BSQaKFU1ov56IeBusue9hTL1goKJcJ8mbBs12ubmMRgEDCtlRAlB0AEWO+G68UPJX5YxG+WWJ+xNBCmFCpiusOZRIV/nofNldjGJreBLQsVeXfjyWoArJ/pSXG8JB/UiFR5lLvwN0+yfURJSVe03Ikts9KfxfgPkj6NGoEqWHQwBorAEAHWoE96Rs+RBc64Lw5APc1stWpfut5jD3Kq1fOgEe3JOENw30/t4RTtYwki6a0V3BLlwDG79crddJ69RRLPb7LmLV53jVmQoYBUkrjnhd2RlvqOlywUCDn+n9jFcf19kcOYlrU55UiLYEIPKrEeTB3Oijc6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upIQpCukNvvgDuwGecIjwR7Rg+CAmknMk+8ejHk1tyU=;
 b=b0zcWSqnnfIdYvl3KnxjWwS4yfcY8mBceV2kc1O4Oa06/dIkL8eHwsjCgzsZap5p7QOllYqV+0yn4miX5xIgN6zvtmgVK7Ttfcuxtp+kmjqrLrV0eagWG8IF8QQlNWyZQAJuT0/XvZslTFgUmQ3J8q/jryj5RB2jSxZYmjWyhOjcrjnQC5rjcHxByM0kINKFvXZaptBUYbj8x5v28OFTJuNuzymMud/VjXdubiv4DXkfx3TPXLJPod0Lv77bC+RV4jScXhej5NEgNltgjg4xNPc7+b08sw4ZScPRhpQrQNEywJ59iAnxONgEV3tXKvGKkt58u7WTR6pXnEvQg71qMA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=upIQpCukNvvgDuwGecIjwR7Rg+CAmknMk+8ejHk1tyU=;
 b=bB68gBbYxpSkARXrUA7VYUngQHvrwFjUnAB4BGBqtpHMlQbKUQvwdxoTzendVsQJGGylAU0NkfindYigAC42G+Vy787lCsT7Hwd/5SC2M3ElZsP5ZAH2w8VrOl4VFx1WPw5bXEVHKseDeX8UulOukLl1T/6/SbO2Bu8AO5Pq9zo=
Received: from DB8PR06CA0016.eurprd06.prod.outlook.com (2603:10a6:10:100::29)
 by AS2PR08MB9739.eurprd08.prod.outlook.com (2603:10a6:20b:605::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.22; Fri, 15 Mar
 2024 14:09:26 +0000
Received: from DU6PEPF0000B61E.eurprd02.prod.outlook.com
 (2603:10a6:10:100:cafe::8d) by DB8PR06CA0016.outlook.office365.com
 (2603:10a6:10:100::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.39 via Frontend
 Transport; Fri, 15 Mar 2024 14:09:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61E.mail.protection.outlook.com (10.167.8.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.12 via Frontend Transport; Fri, 15 Mar 2024 14:09:25 +0000
Received: ("Tessian outbound 6a48a1f51a3c:v276"); Fri, 15 Mar 2024 14:09:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5032ff7d237fac33
X-CR-MTA-TID: 64aa7808
Received: from dc19ac8b4c0e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id CF07BCB9-E0D6-4BB8-B65C-2D850CC75F41.1;
	Fri, 15 Mar 2024 14:09:18 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dc19ac8b4c0e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 15 Mar 2024 14:09:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0R+c02JKTW084Jx3KPc0tjaahoBoKubGJVHZhLtNCiizPimLXL7KmUQJ/CJRxEx0BKt3tgHjLavm5O6dCg3Qf1UjPYr9jwcyKBwopL/ehu+8GuRVoxVTEzFY0X+xAkRQ7PceQAz/M2XXgZbaWPjkvjkCVfddZ8VLtkqv45UBlJTLEB4WX+nYCIR9zZIY/bp9LQnVi4CVVguBfsLsGsiRmHXCrchkO655EddApZhUZjAmrq3sk6rPH0XO62acYIoD4p+lQhEPJ14QVJUefF7bK2fvr97H8GWwgnfJrjXWOJ+OPh1flSnyK5pkRbR+BQOYUrmWfKzjWabu8SW6e2n5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upIQpCukNvvgDuwGecIjwR7Rg+CAmknMk+8ejHk1tyU=;
 b=GHm/RSFdzX9gBrxHQaadEP1p+pfFnel1k1tEr3sXvlAiWAmhZHQNRW7tWC6+jU8C+doMWracUL/SQsNOeFEmkmz1ZLKGW0Sb/ox+s/dfT5aEnC9SjYTXEGiiJx6NDIYFDR7K5wXphUSAK9KrImIqOJZg9aUORXHzP4Vo3cQUnsC4WhAciFSnVe61nBpNJmYaMcJwcyM0yzuog6wS40/5KcxaPHSUj8Z5pzt6uiDlefNYoRjEcIQydvteunstNkDghH68oliTjVQ1wP45M2oKK6AtrcpZfGk8AUclCGbFCUYY/3Pd0rRn85Q711LTEpYX4VeByCyxzEHuHl9y2lgtqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=upIQpCukNvvgDuwGecIjwR7Rg+CAmknMk+8ejHk1tyU=;
 b=bB68gBbYxpSkARXrUA7VYUngQHvrwFjUnAB4BGBqtpHMlQbKUQvwdxoTzendVsQJGGylAU0NkfindYigAC42G+Vy787lCsT7Hwd/5SC2M3ElZsP5ZAH2w8VrOl4VFx1WPw5bXEVHKseDeX8UulOukLl1T/6/SbO2Bu8AO5Pq9zo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9370.eurprd08.prod.outlook.com (2603:10a6:10:420::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.22; Fri, 15 Mar
 2024 14:09:16 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.020; Fri, 15 Mar 2024
 14:09:16 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Ashu Joshi <ashujoshi35@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] No module named pkgconfig
Thread-Topic: [yocto] No module named pkgconfig
Thread-Index: 
 AQHadh2okc2nrOjyi0eA+JzyJ3lgp7E3iyuAgAADpYCAAMadgIAAYSkAgAAdAYCAAATcAA==
Date: Fri, 15 Mar 2024 14:09:16 +0000
Message-ID: <2DF6E060-BB57-410A-A385-9C522F3F0572@arm.com>
References: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
 <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com>
 <CANx9H-AQ3i-AHzzyGGOoTqbJPCmRpCSF8a8CzqsT=fti_kpxfw@mail.gmail.com>
 <CAKjBKDOAkciZQkVV9eBEOBHSDbzbHzT2Hey_45KSnHknRVVgDw@mail.gmail.com>
 <8E11ED0E-B678-4D7D-9619-0C303C99BFEB@arm.com>
 <CAKjBKDPmeqy7mjiSRcFHP6wDmd=oHLUoDgkTCa+J0uv0yeQeqQ@mail.gmail.com>
In-Reply-To: 
 <CAKjBKDPmeqy7mjiSRcFHP6wDmd=oHLUoDgkTCa+J0uv0yeQeqQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9370:EE_|DU6PEPF0000B61E:EE_|AS2PR08MB9739:EE_
X-MS-Office365-Filtering-Correlation-Id: a26ff9bd-8f69-4138-f98b-08dc44f9859c
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 sgIAxFt6eUClTKZpyTHi/NQyMBEDUk/OzDWrys3ldBm98PpUi1KbGYCWjEf7s01adw4BEd7pLvVSMS5rM6queCNkp30TsKGv9NSYZJ8c9zZv4U0GatjucW9GA77TGFdHxoyruNcyDHpjV/Ojs28atgsvVnwXpTpM1nVB60ttAgitREbuIZZ0t2sjK5iAp4bm9h7rzGTDcIByBfPn51Ls6yunOJ82PZsIGrM1s9Z+4NPTEfxrtw/syVCWfJWxHQwx9hrh0+1lEK4zOZv3aYNLlY/YWL/gCnFXy2YUrPvBSiZ0n1UsQgwHZ29oxYBDASTYmCpjsyXO0l09JN4HvU8Q98N6nu7sEnofP3ocpWK645BI726ieZ+nV++gERmg5/rQMCY3Ls5GtI01b9SFkFFGlZPb9GGblijc78K4VZl3eZ9jb3vUg/9u+IxNnfUAgHstYf25NPrpcHOEg1U79VmxoMj4EewuQYHz6KR0fkgLzTmF6aDpfyRp4/L8ZNfYhCDYhpvNQyKvEB00XFuYQtfJ//msOvN6eM1eEjwnmtwCHGfc+U8NkCpP3715AIOl/kna3iFc7r+2NNxbHGqn2e2sCunDMJfpc4F1ozTNJoa/89JxG2NoXpcEyz4oKLmsuOIBoL4yMA9pv2Iy2xNuYlvJEE593zxajqdyGiL1IzUr/fTHlQcKXsxrAHYRQ/K52jw+mi7MMwaiyFxk5q5eJpW1Foz7IZOWk6vaS7ehYjdDEj0=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D415519A3B9314AAE0062A0A7B1E73A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9370
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5d2c08ae-8042-4c32-d619-08dc44f98024
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	k/oaSuDRsugaBG6wGbzDqTgQzcCVjnP/y3cL428brfVIC+19ZmZ/JIrQmnAYgMQC3kU0/HJjqwr0rMZCcMvsXvq5dbJY7yBsRERC95Trg8Vuq+GLysjNCXt5FDDXOVczHJGUS70tWgTercthuU1Xyskm+Tld9AgSmh60ZbHErVtHBMdZjB2DRhATyiQ+dFKadRCKhhdG1LDwq/abIymA8S+GZEQVKi+e/DR3GlufziDr/a0XnEu2LlBmqeWCwwmW2TW+MzAjbEjQjf6l+/1UA1Fs9c20IIh9Nmhyv0fjYCcMRbjxyIZuH0E89aoITgX2LfNsOeeXJxk6AZZ/parJzzpjGuT0F9ezqrxTCGog4zD9v4VFj6E+iSY8by+nyaLTbXdp06JTJSg9zKL3f5EUJ/8helnAJGyqabeUiolBovWDjZbLnXvhpPWGi6gZDxRZ6bJj4klSch67azLwngNutlL20+27LdH7d9cq/jKNozXgbJI0j/YPsq3DTXO5UkXV1yC9k3L/vskLc2KbFIQwy2FKKVqSnouRMgDDFxkLFAiWFT5GzJFH5BVXZdmHdOrZyJQnSLPPSKATarDN3He/HdQVrfyAGEnMoehpyxBcgpZCtwp2WH+e6Jx3WmADDJRJDxB8oiGasYyuBir4/E7HJCShMM9v5Xwwg/6olrXWOUvE7Hteqj53lNXIeWf/d+8bfAcABqAZh+524BMEI2D5G++14LfKAt93sJuZILzO19Gehiep7+xntzwtncdo3VcQ
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(36860700004)(376005)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 14:09:25.8970
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a26ff9bd-8f69-4138-f98b-08dc44f9859c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9739
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 14:09:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62768

T24gMTUgTWFyIDIwMjQsIGF0IDEzOjUxLCBBc2h1IEpvc2hpIDxhc2h1am9zaGkzNUBnbWFpbC5j
b20+IHdyb3RlOg0KPiANCj4gVGhhbmtzIFJvc3MuIEkgYW0gYWJsZSB0byByZXNvbHZlIHRoZSBl
cnJvciBhZnRlciB1c2luZyBwa2ctY29uZmlnLW5hdGl2ZS4gRm9yIG15IHVuZGVyc3RhbmRpbmcs
IGNhbiB5b3UgcGxlYXNlIGV4cGxhaW4gdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBwa2djb25maWcg
YW5kIHBrZ2NvbmZpZy1uYXRpdmUuIFdoZW4gYXJlIHdlIHN1cHBvc2VkIHRvIHVzZSBwa2djb25m
aWcuPyANCj4gSSBhbSByZWxhdGl2ZWx5IG5ldyB0byB0aGlzLCBzbyBJIHdhbnQgdG8gdW5kZXJz
dGFuZCB0aGlzIGJldHRlci4NCg0KQW55IHJlY2lwZSB0aGF0IGlzIC1uYXRpdmUgaXMgZm9yIHJ1
bm5pbmcgb24gdGhlIGJ1aWxkIG1hY2hpbmUuIFNvIHBrZ2NvbmZpZy1uYXRpdmUgYnVpbGRzIGFu
ZCBwcm92aWRlcyBhIHBrZ2NvbmZpZyBiaW5hcnkgdGhhdCB5b3UgY2FuIHJ1biBhdCBidWlsZCB0
aW1lLiAgT3RoZXJ3aXNlIHRoZSBiaW5hcmllcyBhcmUgZm9yIHRoZSB0YXJnZXQsIHdoaWNoIGlz
buKAmXQgYW55IGdvb2QgaWYgeW91IG5lZWQgdG8gcnVuIGl0IG9uIHRoZSBidWlsZCBtYWNoaW5l
Lg0KDQpSb3Nz

