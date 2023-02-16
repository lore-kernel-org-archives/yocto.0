Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF3FBC636CC
	for <webhook@archiver.kernel.org>; Thu, 16 Feb 2023 20:42:42 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.57])
 by mx.groups.io with SMTP id smtpd.web11.21829.1676580161244261002
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Feb 2023 12:42:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Vlhr4H8z;
 spf=pass (domain: arm.com, ip: 40.107.15.57, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cdPj40woSErw4RugVejGFXeMb3ej5SNSRIxHSuYixow=;
 b=Vlhr4H8zh511Zyd7A75gSbDhl5J8ANxxhhE/zjGR1ipLbI91W1bwNX7tmzp55DrcZXgOLhI8Q4MRyi27NNSrJ7Q8D6CHFok4TOzgxUhHdE/JBuM65wwyHmGqHPgJxylhTPYtsi2icDp0PDbs4ydTJ5rul2MgI8KTjg5LDRgaCn0=
Received: from DB6PR07CA0062.eurprd07.prod.outlook.com (2603:10a6:6:2a::24) by
 DB9PR08MB8201.eurprd08.prod.outlook.com (2603:10a6:10:39c::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.13; Thu, 16 Feb 2023 20:42:29 +0000
Received: from DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:6:2a:cafe::a) by DB6PR07CA0062.outlook.office365.com
 (2603:10a6:6:2a::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.10 via Frontend
 Transport; Thu, 16 Feb 2023 20:42:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT033.mail.protection.outlook.com (100.127.142.251) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.13 via Frontend Transport; Thu, 16 Feb 2023 20:42:29 +0000
Received: ("Tessian outbound 333ca28169fa:v132"); Thu, 16 Feb 2023 20:42:29 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a67bbd4391076d00
X-CR-MTA-TID: 64aa7808
Received: from 946ee60b5288.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A49C28C6-A444-456E-A461-29FDA3AB1505.1;
	Thu, 16 Feb 2023 20:42:22 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 946ee60b5288.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 16 Feb 2023 20:42:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FmsWxgsNQWGwFoDBrvrpB2kLAg/oy3Bpt7MT8VYuoM2I0NVrR9BMLsAIct++zq/WygCn8qvOHbS+FXIB+vAp30yBPYm+8+wIcXqHo9m/bwPltwvvfuHAIKRwubfFwYbRgAO9s364PvKFPVW/CcAwpldHwlJQWVAVQLzlTA2YyrH4GDSw0BL8XEcFY2VOnXWNspbCylpVYdR08+/lXaJP1eWaKyZBdBu3iIBsd4HK46gzo9NEqbyki+UXLdTts2N9yl3UDRAXYx+ptT01upifGR6ZvQU2AtKnHQ/r0/WEe6MqPz+zm3TsItld2vDWJEms4ss/NODv3cpPryMBLnVVNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdPj40woSErw4RugVejGFXeMb3ej5SNSRIxHSuYixow=;
 b=VBYCDpcRiDBON/g2yqZ3ZBw4ub9JAxBIPpBRCp9+cgz9TfjjUKv5hmgyr9kq7qBQqKJ7mioV4XZhdhvSkeWDCp9r1H4lLz1wo7UJsBQZpm3Qw4eUzznNfLkhpL6gwnV6ywNve/BH4LNC7DgpJJY2yHpZcXa9MwfxqN2hWBw2tldFtwb8SKv5tTHyoB0yUM3bztBwjk/mr3BZX57Z4QAhmg9M8yylAEkg9KkLn6yIqKTK6gaPW3BOa4lYEUPOnnd9S9bn6wdwtTtbQ2A0/UlClnpwXKSD42HMVhf6/UV1/t0Syv8T9QuJBhnNCGOSRdLw/4qy5qRhBCqahxVmZx/Zsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cdPj40woSErw4RugVejGFXeMb3ej5SNSRIxHSuYixow=;
 b=Vlhr4H8zh511Zyd7A75gSbDhl5J8ANxxhhE/zjGR1ipLbI91W1bwNX7tmzp55DrcZXgOLhI8Q4MRyi27NNSrJ7Q8D6CHFok4TOzgxUhHdE/JBuM65wwyHmGqHPgJxylhTPYtsi2icDp0PDbs4ydTJ5rul2MgI8KTjg5LDRgaCn0=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by DU2PR08MB10304.eurprd08.prod.outlook.com (2603:10a6:10:49b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 20:42:20 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::c39b:f9e7:d2c2:6e43]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::c39b:f9e7:d2c2:6e43%5]) with mapi id 15.20.6111.012; Thu, 16 Feb 2023
 20:42:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "joel.winarske@gmail.com" <joel.winarske@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Mold linker
Thread-Topic: [yocto] Mold linker
Thread-Index: AQHZQP9vuXfzgDByh0Oc+3Q44o8iOq7SDEiA
Date: Thu, 16 Feb 2023 20:42:19 +0000
Message-ID: <C4B728CE-7BA8-44F4-8B2C-F3F5299EE35C@arm.com>
References: 
 <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
In-Reply-To: 
 <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|DU2PR08MB10304:EE_|DBAEUR03FT033:EE_|DB9PR08MB8201:EE_
X-MS-Office365-Filtering-Correlation-Id: b457f06b-39d8-4642-eb9a-08db105e51ff
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 nCk7XSZ/APllEbnDLW26RH0FdFGMvMXWmG2+vl58awllX8k0KAUm4sN8EVPVCUbNPmym/NUeFv9M4HUpw7nC9KDwZh0pdQR4WkE0wqBvcqD2+aPhKb1b63pLYXVMfFjfqYTq7wZMxo05q1DC2b2fqM7GHtfgPCRJTWZhS1+kvohCTuCf6JJy1a6KYEiy2gL22og2WctRuIBj0Xtm6JfVVZeMQp69ebDpUZ0lFbZBFdBcr+h8sGzKSuVIZa9r9U4IGoV8qrLtat9C2bKfVNLJiGJJY2QjZNqHcueba/L4YN/wZ2+bgOFtLlh05lSJNX6jJHq94Kljeqx2wGkZdPTbWhbv9j0Lq5jhKNnmXruwtklH/YSJp1FQrnG/7RcfW8OAv/ArzJBHyd6D9uql59m4pcIAEwrP79DweAwnmh7q48g9f6HcgsU7eR/MR8Lajm4a8A8iSiPOfvV/snQcCp+2kZp3sUu9/n3gZ2vdiMTmFoOlPuu1eG5M2QuowO0esWE3hd9C7TLcYYNj3tuVEyKLhzd/Mc6DNV05saTjk3MRkIfX28+zB+/rGeheXtJ1V+8oRZvn/+h6MnRmbzBf7H7tpmMJqbWV1eg05snOkTNdCfsEaCuQLGdJQX19Pohmi55bks3aaygoE4tbFDEEDsCtNkiI1W30lRraUHWvQbbWVpKWcuZqEyPh1HaxYhScqmDkGKb5CU8LciYDWlp/Amt8vMktEJ01FfH6QmNslHiCV/g=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(451199018)(76116006)(91956017)(316002)(86362001)(36756003)(33656002)(5660300002)(4744005)(2906002)(8936002)(41300700001)(83380400001)(66446008)(4326008)(6512007)(6916009)(26005)(6506007)(53546011)(38070700005)(66556008)(66476007)(66946007)(2616005)(71200400001)(186003)(8676002)(64756008)(38100700002)(122000001)(6486002)(966005)(478600001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <49BDDFE97789DD46BF8CAACD7928788E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB10304
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e1eab15a-3ce2-4323-5cc6-08db105e4ca5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3Pmtzn5XhxG0gFyM/WRpchXU1CVrJu/ft+xTGT82PQBKqiNkRjmOV5nXHX5lslRM72MpwEb98kw6IN2h6Mp7giJF1RWujYPDTmKwHWvnSjNsfvxNzx5ewaAqYVw8x4RA/UNTOuGbQTpR/wJ/JF6C2eQ7dpn7+NVazEIndyZdo2H5wEzT4m1K5nnQi0ztrpESiP0iFG3Io/lajjFMej82mz6LkkvGrB+uKqOPOgQvwaMmY+PzhrSV5Syhl/gegPgK4GI7HOBa/SVsnZTqjCP8JFWGi+kEz73S+4X92ki+g+0tyb47l/1nVLb41PejZITcqcSnJJ4jSqA3hqZ/ri25pbcDwj+1bdj3Rh1mFwCX0nYCfV+7Au1dlFLG+8d4A2yJDItRTic8PPe86sUZABUVmCtghroBf+Sj8lRQQx2RMy2tAT0EwrJc+LyvMkeXUh9W0vKnhRilxw8oM8Xaa7TLhgZnwdn6bzdT/ZSdz/JaYDX6gfi1v892Tn0FF7Ju6S0h/3lFoh7rrnXFUrV1Dpn+ISI9aTPaHYgL2wBdoVr6yix+zRBo9jQC0AirH7OPhhsvJPhuML4Mc6EkOlqNPagdCI8ElaBtL4qc5RrjrcH8Izb7y42SdJXSbd4ZEvd02VxzFvj+DSErQRXbVMluORGMyr4hE+E5BhhNGVHaiQ+JXxOq1U1nu5tq9DUIBTjWr/vA
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(136003)(376002)(39860400002)(451199018)(40470700004)(46966006)(36840700001)(356005)(36860700001)(81166007)(82740400003)(36756003)(33656002)(4326008)(86362001)(6862004)(5660300002)(8936002)(2906002)(4744005)(70586007)(70206006)(8676002)(41300700001)(40480700001)(82310400005)(2616005)(336012)(47076005)(6512007)(40460700003)(83380400001)(316002)(478600001)(966005)(6506007)(6486002)(186003)(26005)(53546011);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 20:42:29.1597
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b457f06b-39d8-4642-eb9a-08db105e51ff
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8201
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Feb 2023 20:42:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59233

T24gMTUgRmViIDIwMjMsIGF0IDA1OjM1LCBKb2VsIFdpbmFyc2tlIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxqb2VsLndpbmFyc2tlPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gDQo+IEhhcyBhbnlvbmUgcGxheWVkIGFyb3VuZCB3aXRoIHRoZSBtb2xkIGxp
bmtlcj8NCj4gDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9ydWkzMTQvbW9sZA0KPiANCj4gDQo+IEN1
cmlvdXMgd2hhdCB0aGUgYnVpbGQgdGltZSBkaWZmZXJlbmNlIG1pZ2h0IGJlIG9uIGEgbGFyZ2Ug
bXVsdGktY29yZSBtYWNoaW5lLg0KDQpJIGhhdmUgYSBicmFuY2ggaW4gcG9reS1jb250cmliOnJv
c3MvbW9sZC4gIEl04oCZcyBiZWVuIGJsaW5kbHkgdXBkYXRlZCB0byB0aGUgbGF0ZXN0IHJlbGVh
c2UgYnV0IG5vdCB0ZXN0ZWQsIGJ1dCB0aGUgd2lucyB3ZXJlIG5vdCBhcyBpbXByZXNzaXZlIGFz
IG9uZSB3b3VsZCBob3BlIGZvciBtb3N0IGJ1aWxkcy4NCg0KV29ydGgga2VlcGluZyBhbiBleWUg
b24gdGhvdWdoLCBhbmQgaWYgeW914oCZcmUgaW50ZXJlc3RlZCB0aGVuIG15IGJyYW5jaCB3b3Vs
ZCBiZSBhIGdvb2Qgc3RhcnRpbmcgcG9pbnQsIGF0IGxlYXN0IGZvciBzaG93aW5nIHdoZXJlIHdv
cmsgdG8gb2UtY29yZSBuZWVkcyB0byBiZSBkb25lIHRvIGdlbmVyYWxpc2UgdGhlIGxpbmtlciBj
aG9pY2UgZnVydGhlci4NCg0KUm9zcw==

