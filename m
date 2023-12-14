Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF02C4332F
	for <webhook@archiver.kernel.org>; Thu, 14 Dec 2023 10:41:47 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.77])
 by mx.groups.io with SMTP id smtpd.web11.19196.1702550499843840726
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 02:41:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=BwsKhNaD;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=BwsKhNaD;
 spf=pass (domain: arm.com, ip: 40.107.241.77, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=H3darc4e0HwAJ37q1v/p1TUrUsnGXl0InYEgIa7/QlGUl4MH93HJr0Z3mb5LrrXvSvlk/GNAf34ZYz5wgE8JG1/7UwT/XAxQgXNF0/wQOUnCMdJzcpC1Tt6V6LpEOovpsI3ObpNaEbjC2DFHiCzNsvM5NB6fe+nPbZB69x5iyEXsmlLn9W/qo1efjZzprw8Ri/ZQaQd+xSPRYZRKZo4ExT8psavLA4FMk/SEpQyvgPUz8q4hQGDQzhPUEFuM/fqPNXxHh0v0lX9KCzjWBORrsTJNWVM/GUbTMqaGVG0s1KzTQ+EkOdGv9M6SMwh2cGouKBEkBCrhfeLw+5/7LVl/xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+VJgKhDTRcHaVyd+VbXAKQ+dtYqgVXGYQCgJAwFSlLo=;
 b=E8ji2aMRuSlThengYc6sOsMJ3YfraqOrpEbPTN+a2muq7Jmn73241wYzvChpBLljek1wBI+H+04m7PLm1OtnvtaQQ9iZmi2lFOgPrYJxnUO6lOwm9mAGafoy03Fv+xuTkLzyrB+IT861hbjVoROZ7IbWau1yU+vxb7z4LHl1cNP/FOWX787HY/8yaIpa9aHrUEXIASAIBIKd/pHV5LZevfozw7PQKSIdri6gpDAdiUZbmwtlhlouHoZniHEC+9oy5DAB1nJGXhvPK03+0PkW0AZU2/nazX0H2TesItrXJQPZ2wkkpJJLbddVsRBXdQ93aYHsm2AegVIzvOGvJupsGQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+VJgKhDTRcHaVyd+VbXAKQ+dtYqgVXGYQCgJAwFSlLo=;
 b=BwsKhNaDkKl6VoQCw8NnpnWcNp2liwqbOTrQEALaJs7mRScoq9o5w3cqksnLxIg6BajHU9jzDMYlA1OMKRIdt19X8xnNgn6w/PjJS61VtV8v/JN9ONv4RBvaAHrP3WOMCOTHpTrvpXmTybO7NYe5tSrcxCAlQHC8MeaaMJ+SBQM=
Received: from DUZPR01CA0266.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::29) by DB3PR08MB8962.eurprd08.prod.outlook.com
 (2603:10a6:10:43f::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 10:41:35 +0000
Received: from DB5PEPF00014B8F.eurprd02.prod.outlook.com
 (2603:10a6:10:4b9:cafe::ac) by DUZPR01CA0266.outlook.office365.com
 (2603:10a6:10:4b9::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28 via Frontend
 Transport; Thu, 14 Dec 2023 10:41:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B8F.mail.protection.outlook.com (10.167.8.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.26 via Frontend Transport; Thu, 14 Dec 2023 10:41:35 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Thu, 14 Dec 2023 10:41:35 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 16c8a5809231d52c
X-CR-MTA-TID: 64aa7808
Received: from 5f69d0627aa9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 28DC277C-1B26-4008-9C45-3CFBCC270BC4.1;
	Thu, 14 Dec 2023 10:41:28 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5f69d0627aa9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 14 Dec 2023 10:41:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wwao1yCIEmvBaNL4slH4v3EYlgRTZdiNqHcep+6zaH8T3kmf6sUYa8qPwQ6zKswNlf2DXykGgwEW3OsetKUaE1SpTjuvs/qA3w3rsDteF8XDZ4YwcSoOn6J1bN+1vYB11G3oW5cMtgHjybdhf5n7phHiwxiPHVUPyxspc3uVnG3rGaR6kklBNR7r4wbx7PKDfmJnrQlrwni+b8psuqwrgG/c4pBC1o/gzWEhkpc9Pvbps3PdArIHKJC9kaElvb5/UUmhlbRCkreQVCN07RU1D73aexlN4eR94y2u8G145cgUyLZ9TA+dEiJiQ+rXTJxqoeatjgOpQJZt52MR3I94QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+VJgKhDTRcHaVyd+VbXAKQ+dtYqgVXGYQCgJAwFSlLo=;
 b=meRrqGE17nl/aIoEiG3N9Ek/SQFlfBPrJ8dhmEDmtvPMn+TBztnaEaJAmUw4kTfAC6hjvw9td3Smg2k6XpiQl6YC5MB1K5zZ4WnALsdsW0mkDLNOVJdknLYmzQic+IzDajc2w6lJlq/JWYH2MdygsOWWz/++SPYOizoMb9fcuwT3FAYkpNRTwELHd7z7I/Q7rB7U2gMyIFCP2Qir8LAO1WnDBxmIYEBaD7bdJvs2a308fP6YOUiK7KVPExnDWI7/JrpvQz53KmO2HWnlqP+bCcEL7kXa8bzxx3azjDgxUwNrg1VaOXIqgenGrNkCWghG3n9E4g5UlVaXJjRWqxbg0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+VJgKhDTRcHaVyd+VbXAKQ+dtYqgVXGYQCgJAwFSlLo=;
 b=BwsKhNaDkKl6VoQCw8NnpnWcNp2liwqbOTrQEALaJs7mRScoq9o5w3cqksnLxIg6BajHU9jzDMYlA1OMKRIdt19X8xnNgn6w/PjJS61VtV8v/JN9ONv4RBvaAHrP3WOMCOTHpTrvpXmTybO7NYe5tSrcxCAlQHC8MeaaMJ+SBQM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB9465.eurprd08.prod.outlook.com (2603:10a6:10:457::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 10:41:25 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 10:41:25 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "sjhan@ambarella.com"
	<sjhan@ambarella.com>
Subject: Re: [yocto] do_populate_sdk_ext failed
Thread-Topic: [yocto] do_populate_sdk_ext failed
Thread-Index: AQHaLnmJAax5T/WxLE+YEJyb8sSI4rColyyA
Date: Thu, 14 Dec 2023 10:41:25 +0000
Message-ID: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com>
References: <ZAxV.1702550217800962003.77Gz@lists.yoctoproject.org>
In-Reply-To: <ZAxV.1702550217800962003.77Gz@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB9465:EE_|DB5PEPF00014B8F:EE_|DB3PR08MB8962:EE_
X-MS-Office365-Filtering-Correlation-Id: 4193593d-ce47-491c-1f71-08dbfc913e85
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 r6QViTu6BENDImc41NF4ISnYmyoGu/g6nZHhmM3SCBDEAxaanjClLH1X9aeUt6GH/FkWqW5FgikCMeGbFSJojDCUSVW9pUjeyOhwWzw50RLJ0GmZUjrwSGEv341rraq1dkQn20V+qRCifmLrI7U6zk+Fgrp1NciBdCwvIsr3uvLCRUpjhs1Ak5jfD5cJ0aVBX7RIWnrKmK0+XN0ajMT4av8mh9xUk/gx07HZq+XrPsfBKi0fu6zO+aM9jUDduUESU2xfIo+yLiTjKYEBNALuNliybDGBlDFArT/yIJR57MXu0dHV5WWITci/mu2AKAK4MMLEsN5WZcU/WjbWNOnVozP07bi8sM1vHrrZk4Z9UnQ6mPhTWRve+iPlXqScx1bde9yHlOiRzDO/Sn+7YqkluibztMQxUPFJPPnXlDAWUC0Pdk/y/JXzGuwqv2n+t8ppTwhEhU3KoNLq5ao5Ok46F3rgtlF8cijCtB7PQa/DsX8scUfnnaGlVPKJ4Y3fYNpORirw4Qy4uNeQ/+3y/91usuhbS6PXqVZcKllH88lUDv9YjzyV/0S4/sv1GW0SJ5WW6hFG7mcfz/3l3r6mOuhXOtmYOMoRLDfINFxlYAnNxFbzimYK2wyrum9V8CxqIh/7fXWV2RXJmD9Jf3+HCkh/ChzGUbR0B/82Sb6occlSXuHm7DJeN7z0A8rDynk701Um
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(136003)(346002)(366004)(396003)(230922051799003)(230273577357003)(230173577357003)(451199024)(186009)(1800799012)(64100799003)(83380400001)(38100700002)(41300700001)(33656002)(66476007)(66899024)(122000001)(2906002)(966005)(6486002)(478600001)(5660300002)(53546011)(6512007)(6506007)(64756008)(66556008)(66446008)(316002)(66946007)(76116006)(110136005)(91956017)(36756003)(8676002)(8936002)(2616005)(38070700009)(26005)(71200400001)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA7CDDBA4BCE7A41948A65698110C874@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB9465
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B8F.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5d75a1bd-98ff-41d9-de90-08dbfc9138a3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	E9zQrGwLnpAlPf6/fGL+gDB3Vl7jtzAo9ANCVDwawuJleiEIdpK9L19WxKodKsTXKm/xPG/Po+VDSsVKVDCt2mPN+FX0VMZAY5sHXqqsNhYwzOpfIhFx+qI9BN6Hujeh66sbxbz0pcrWjjlMS9Lcl11wIZL/pxCbji0ZyZ4DjFb6Ee/+9D3UhYWloekFdBlJSKX0G13l7oEzlqF4Q03kkbR2GGPAUryQfHF6Z59DyrpW/iy7siMMSR8Y6aOw9ub3MTvRI/926eQth/ACqoJBtzOJdbm2VxbFTsLmo3JsBM59POiEZlwne63DmZXMQ6MRlgg/H6ZdOSp//quEMkLu0eDagHBgXdW7DpZ05BcOnsdwIAG0BpWQ3lCGKoqgwI1A7dEkTHmAC7Xyuu9vWMSQx+oAviQ2wBCoUsBRGeUag1qctWaCpYfBh/ITzmWQy+qEcLi7XLxdiUAg4QP56v7mPX3lGAjDC7nDNd5pxtL0TDLRWxgINLMTQyZ8IUTJzN2VNVoJmFfAfePCmgqG2MS4s1ZCojH0F3PZWTZ3wBCwcIKXZGGxpy9dZYuAV+Oj5b2AuiDInjAmxme4hAzsp2fNuN+SOuzVmgjJsqo18Tp6ZxAVIzM/f1WY4uKnVAq2CgE8sFbm3jaebe4cEhzRxDPYbHqZ2zTZaA572ZqW8ApkXbQ/Z2S62ByOwHckFpS5x1N+HM+0NVzY6I3JdfoKEdHWrcZt47pnm48ZayPUny5FgpB3zaxakn70pD3d+y+AMj7RPHfEeRRf6mVJVdT2GxBQQA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(396003)(39850400004)(376002)(346002)(230273577357003)(230922051799003)(230173577357003)(1800799012)(451199024)(64100799003)(82310400011)(186009)(40470700004)(46966006)(36840700001)(6486002)(966005)(478600001)(6506007)(5660300002)(36860700001)(40480700001)(2616005)(26005)(110136005)(336012)(70586007)(70206006)(53546011)(6512007)(316002)(40460700003)(83380400001)(8936002)(47076005)(8676002)(2906002)(86362001)(41300700001)(82740400003)(33656002)(66899024)(356005)(36756003)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 10:41:35.2270
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4193593d-ce47-491c-1f71-08dbfc913e85
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B8F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB8962
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 10:41:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61887

WW91IHNob3VsZCBwcm9iYWJseSBmaWxlIGEgYnVnIHRoYXQgZVNESyBjcmVhdGlvbiBkb2VzbuKA
mXQgd29yayB3aXRoIGV4dGVybmFsc3JjIGVuYWJsZWQuDQoNCkEgd29ya2Fyb3VuZCB3b3VsZCBi
ZSB0byBzaW1wbHkgbm90IHVzZSBleHRlcm5hbHNyYywgdGhhdOKAmXMgbWVhbnQgZm9yIGxvY2Fs
IGRldmVsb3BtZW50IHB1cnBvc2VzIGFuZCBub3Qgc29tZXRoaW5nIHlvdeKAmWQgdXNlIGdsb2Jh
bGx5Lg0KDQpSb3NzDQoNCj4gT24gMTQgRGVjIDIwMjMsIGF0IDEwOjM2LCBzamhhbiB2aWEgbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZyA8c2poYW49YW1iYXJlbGxhLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpIGFsbCwgcmVjZW50bHkgSSBlbmNvdW50ZXJlZCBhIHBy
b2JsZW0gYWJvdXQgc29tZSBlbnZpcm9ubWVudCBwYXJhbXMgdGhhdCB3ZSBleHBvcnRlZCBub3Qg
YmVpbmcgcmVjb2duaXNlZCBhbmQgcGFyc2VkIHByb3Blcmx5IHdoZW4gcnVubm5pbmcgdGhlIGNv
bW1hbmQgImJpdGJha2UgLWMgcG9wdWxhdGVfc2RrX2V4dCBpcGNhbS1pbWFnZSIuICBGb3IgY29t
cGFyaXNvbiwgImJpdGJha2UgLWMgcG9wdWxhdGVfc2RrIGlwY2FtLWltYWdlIiBjYW4gd29yayBw
ZXJmZWN0bHkuDQo+IEN1cnJlbnRseSwgSSBkb24ndCBrbm93IGhvdyB0byBkaWcgb3V0IHRoZSBy
b290IGNhdXNlIGFuZCByZXNvbHZlIGl0IGFjY29yZGluZ2x5LiBBbnkgaGVscCBmcm9tIGhlcmUg
aXMgYXBwcmVjaWF0ZWQuDQo+IA0KPiAxLiBUaGUgZXJyb3IgbWVzc2FnZXMgYXJlIGFzIGZvbGxv
d2luZzoNCj4gRVJST1I6IGlwY2FtLWltYWdlLTEuMC1yMCBkb19wb3B1bGF0ZV9zZGtfZXh0OiBG
YWlsZWQgdG8gZ2VuZXJhdGUgZmlsdGVyZWQgdGFzayBsaXN0IGZvciBleHRlbnNpYmxlIFNESzoN
Cj4gIyMjIFNoZWxsIGVudmlyb25tZW50IHNldCB1cCBmb3IgYnVpbGRzLiAjIyMNCj4gWW91IGNh
biBub3cgcnVuICdiaXRiYWtlIDx0YXJnZXQ+Jw0KPiBDb21tb24gdGFyZ2V0cyBhcmU6DQo+ICAg
ICBjb3JlLWltYWdlLW1pbmltYWwNCj4gICAgIGNvcmUtaW1hZ2UtZnVsbC1jbWRsaW5lDQo+ICAg
ICBjb3JlLWltYWdlLXNhdG8NCj4gICAgIGNvcmUtaW1hZ2Utd2VzdG9uDQo+ICAgICBtZXRhLXRv
b2xjaGFpbg0KPiAgICAgbWV0YS1pZGUtc3VwcG9ydA0KPiBZb3UgY2FuIGFsc28gcnVuIGdlbmVy
YXRlZCBxZW11IGltYWdlcyB3aXRoIGEgY29tbWFuZCBsaWtlICdydW5xZW11IHFlbXV4ODYtNjQn
Lg0KPiBPdGhlciBjb21tb25seSB1c2VmdWwgY29tbWFuZHMgYXJlOg0KPiAgLSAnZGV2dG9vbCcg
YW5kICdyZWNpcGV0b29sJyBoYW5kbGUgY29tbW9uIHJlY2lwZSB0YXNrcw0KPiAgLSAnYml0YmFr
ZS1sYXllcnMnIGhhbmRsZXMgY29tbW9uIGxheWVyIHRhc2tzDQo+ICAtICdvZS1wa2dkYXRhLXV0
aWwnIGhhbmRsZXMgY29tbW9uIHRhcmdldCBwYWNrYWdlIHRhc2tzDQo+IEVSUk9SOiBiaXRiYWtl
IGZhaWxlZDoNCj4gTG9hZGluZyBjYWNoZS4uLmRvbmUuDQo+IExvYWRlZCAwIGVudHJpZXMgZnJv
bSBkZXBlbmRlbmN5IGNhY2hlLg0KPiBQYXJzaW5nIHJlY2lwZXMuLi5FUlJPUjogL3lvY3RvL3N5
c3RlbS9zamhhbi9yZV9zZGsvc2RrXzEuNS90b3BkaXIvb3V0L3lvY3RvX291dC9jdjJfY2hlc3Ru
dXQvdG1wL3dvcmsvY3YyeC1wb2t5LWxpbnV4L2lwY2FtLWltYWdlLzEuMC1yMC9zZGstZXh0L2lt
YWdlL3RtcC1yZW5hbWVkLXNkay9sYXllcnMvbWV0YS1hbWJhbGliL3JlY2lwZXMtc2Vuc29yL09N
Qy9vbWMtb3YyNzc4LWRhdGFzL29tYy1vdjI3NzgtZGF0YXNfMS4wLjAuYmI6IEVYVEVSTkFMU1JD
IG11c3QgYmUgYW4gYWJzb2x1dGUgcGF0aA0KPiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4N
Cj4gDQo+IDIuIFRha2Ugb25lIHJlY2lwZSBhcyBleGFtcGxlLg0KPiBCZWNhdXNlIG9mIHRoZSAi
RVhURVJOQUxTUkMiIGluIG91ciByZWNpcGVzIGNvbnRhaW4gdGhlIGVudmlyb25tZW50IHBhcmFt
cywgc28gSSBhZGRlZCBzb21lIHByaW50aW5nIGluZm9ybWF0aW9ucyBpbiAibWV0YS9jbGFzc2Vz
L2V4dGVybmFsc3JjLmJiY2xhc3MiIHRvIHByaW50IHRoZSB2YWx1ZSBvZiBleHRlcm5hbHNyYyBh
ZnRlciBlcnJvciBtZXNzYWdlcy4gDQo+IFRoZW4gSSBmb3VuZCB0aGF0IHNvbWUgZW52aXJvbm1l
bnQgdmFyaWFibGVzIGNhbiBiZSBwYXJzZWQgYnV0IG90aGVycyBjYW5ub3QuDQo+IFBhcnNpbmcg
cmVjaXBlcy4uLkVSUk9SOiAveW9jdG8vc3lzdGVtL3NqaGFuL3JlX3Nkay9zZGtfMS41L3RvcGRp
ci9vdXQveW9jdG9fb3V0L2N2Ml9jaGVzdG51dC90bXAvd29yay9jdjJ4LXBva3ktbGludXgvaXBj
YW0taW1hZ2UvMS4wLXIwL3Nkay1leHQvaW1hZ2UvdG1wLXJlbmFtZWQtc2RrL2xheWVycy9tZXRh
LWFtYmFsaWIvcmVjaXBlcy1zZW5zb3IvT01DL29tYy1vdjI3NzgtZGF0YXMvb21jLW92Mjc3OC1k
YXRhc18xLjAuMC5iYjogRVhURVJOQUxTUkMgbXVzdCBiZSBhbiBhYnNvbHV0ZSBwYXRoOiAke0VO
Vl9UT1BfRElSfS9wYWNrYWdlcy9pZHNwL2RhdGEvaW1nX2N2MngvT01DL292Mjc3OA0KPiANCj4g
VGhlc2UgYXJlIHRoZSBjb250ZW50IG9mIHRoaXMgcmVjaXBlOiBvbWMtb3YyNzc4LWRhdGFzXzEu
MC4wLmJiYXBwZW5kLg0KPiBpbmhlcml0IGV4dGVybmFsc3JjDQo+IEVYVEVSTkFMU1JDID0gIiR7
RU5WX1RPUF9ESVJ9L3BhY2thZ2VzL2lkc3AvZGF0YS9pbWdfJHtBTUJBX0lNR19BUkNIfS9PTUMv
b3YyNzc4Ig0KPiBFWFRFUk5BTFNSQ19CVUlMRCA9ICIke0VOVl9UT1BfRElSfS9wYWNrYWdlcy9p
ZHNwL2RhdGEvaW1nXyR7QU1CQV9JTUdfQVJDSH0vT01DL292Mjc3OCINCj4gVGhlIGVudmlyb25t
ZW50IHBhcmFtcyBoZXJlIGFyZSBleHBvcnRlZCBpbiBhbWJhZW52LmJiY2xhc3MuIEFuZCB3ZSBp
bmhlcml0IHRoaXMgYmJjbGFzcyBpbiBvbWMtb3YyNzc4LWRhdGFzXzEuMC4wLmJiLg0KPiAzLiBD
b250aW51ZSB0cmFja2luZy4NCj4gSSB0cmllZCB0byB0cmFjZSB0aGUgcG9reSBzb3VyY2UgY29k
ZS4gVGhlIGNvZGUgZXhlY3V0aW9uIGZsb3cgaXMgYXMgYmVsb3cuIEkgYWxzbyBwdXQgdGhlIGNv
ZGUgcGllY2UgaGVyZSBhYm91dCB3aGVyZSB0aGUgZXJyb3Igb2NjdXJyZWQuDQo+ICAgICDigKIg
cG9reS9tZXRhL2xpYi9vZS9jb3B5X2J1aWxkc3lzdGVtLnB5OiAgICBjaGVja19zc3RhdGVfdGFz
a19saXN0KCkuSW4gdGhpcyBmdW5jdGlvbiwgaXQgcnVucyBiYi5wcm9jZXNzLnJ1bihjbWQsIHN0
ZGVycj1zdWJwcm9jZXNzLlNURE9VVCwgZW52PWVudiwgY3dkPWN3ZCwgZXhlY3V0YWJsZT0nL2Jp
bi9iYXNoJyksIHRoZSBjbWQgaGVyZSBpcyAiLiBsYXllcnMvcG9reS9vZS1pbml0LWJ1aWxkLWVu
diAuO1BZVEhPTkRPTlRXUklURUJZVEVDT0RFPTEgQkJfU0VUU0NFTkVfRU5GT1JDRT0xIFBTRVVE
T19ESVNBQkxFRD0xIG9lLWNoZWNrLXNzdGF0ZSBpcGNhbS1pbWFnZSBtZXRhLWV4dHNkay10b29s
Y2hhaW46ZG9fcG9wdWxhdGVfc3lzcm9vdCAtcyAtbyAveW9jdG8vc3lzdGVtL3NqaGFuL3JlX3Nk
ay9zZGtfMS41L2FtYmFyZWxsYS9vdXQveW9jdG9fb3V0L2N2Ml9jaGVzdG51dC90bXAvd29yay9j
djJ4LXBva3ktbGludXgvaXBjYW0taW1hZ2UvMS4wLXIwL3Rhc2tsaXN0LnR4dCAtbCAveW9jdG8v
c3lzdGVtL3NqaGFuL3JlX3Nkay9zZGtfMS41L2FtYmFyZWxsYS9vdXQveW9jdG9fb3V0L2N2Ml9j
aGVzdG51dC90bXAvd29yay9jdjJ4LXBva3ktbGludXgvaXBjYW0taW1hZ2UvMS4wLXIwL3Rhc2ts
aXN0X2JiX2xvZy50eHQiLg0KPiAgICAg4oCiIHBva3kvc2NyaXB0cy9vZS1jaGVjay1zc3RhdGU6
ICAgIGNoZWNrKCkuIEluIHRoaXMgZnVuY3Rpb24sIGl0IHJ1bnMgb3V0cHV0ID0gc3VicHJvY2Vz
cy5jaGVja19vdXRwdXQoY21kLCBzdGRlcnI9c3VicHJvY2Vzcy5TVERPVVQsIGVudj1lbnYpLCB0
aGUgY21kIGhlcmUgaXMgIlsnYml0YmFrZScsICctLWRyeS1ydW4nLCAnLS1ydW5hbGw9YnVpbGQn
LCAnaXBjYW0taW1hZ2UnLCAnbWV0YS1leHRzZGstdG9vbGNoYWluOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnXSINCj4gVGhlbiwgdGhlIGVycm9yIG9jY3VyZWQuDQo+IA0KPiA0LiBPdGhlciBpbmZvcm1h
dGlvbnMgbWF5YmUgaGVscC4NCj4gSSBlbnRlciB0aGUgZGlyZWN0b3J5IHRtcC93b3JrL2N2Mngt
cG9reS1saW51eC9pcGNhbS1pbWFnZS8xLjAtcjAvc2RrLWV4dC9pbWFnZS90bXAtcmVuYW1lZC1z
ZGsgYW5kIHJlcnVuIHRoZSBjb21tYW5kICIuIGxheWVycy9wb2t5L29lLWluaXQtYnVpbGQtZW52
IC4iIGFuZCAiYml0YmFrZSAtLWR0eS1ydW4gLS1ydW5hbGw9YnVpbGQgaXBjYW0taW1hZ2UiLCBJ
IGNhbiByZXByb2R1Y2UgdGhpcyBpc3N1ZS4NCj4gSWYgSSBkb24ndCByZXJ1biAiLiBsYXllcnMv
cG9reS9vZS1pbml0LWJ1aWxkLWVudiAuIiBidXQganVzdCBydW4gImJpdGJha2UgLS1kdHktcnVu
IC0tcnVuYWxsPWJ1aWxkIGlwY2FtLWltYWdlIiwgaXQgY2FuIHBhc3MuDQo+IA0KPiANCj4gLT0t
PS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBz
ZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFZpZXcvUmVwbHkgT25saW5lICgjNjE4ODYpOiBodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzYxODg2DQo+IE11dGUgVGhp
cyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzEwMzE2NzUyMC82ODc1
ODg4DQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+
IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1
YiBbcm9zcy5idXJ0b25AYXJtLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gDQoN
Cg==

