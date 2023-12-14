Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F18C4332F
	for <webhook@archiver.kernel.org>; Thu, 14 Dec 2023 11:18:57 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.79])
 by mx.groups.io with SMTP id smtpd.web10.19703.1702552727837575914
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 03:18:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=DCLaqO+N;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=DCLaqO+N;
 spf=pass (domain: arm.com, ip: 40.107.8.79, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=RjoDNVGAbJ9UYS7Wcxs0aRkeitRtuCUvrqJ89GUXpmi6zX2xcU1/UJ4Tl4tEAmXMW4sxwjrQXbZxoY+LraGrO6SyWqtAvCvL9f3zC0OGE2gxehc8ZoOPzGS2x0RBCuXwXH4qorG2MzBY3zZiqHz1jOfnZR9X4x1ivqZ0vhCYFCSmLl0+RD3r/R9SW/bJQLy+V/DuYhdMKhYdukpD67AxBLuUXnUfxWwfBHLoh/xofD5S43uK8FF8622m98zEz7+01O12tbQdDWAiHVngS0kSe80wCQROW+HJRX0SbhMxdtGs71Pt/eQ3oUGIe+VHR2DiYDZbUpUgqzTqXC5LH1bYOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGRZOI4zv2lm9a0VXe2U4soISPh4tSpG74dZ2GKpQRY=;
 b=jA9wIxA41AXOdsAFvW3cgVQh1q24nFl5VJfsjavQ+/ZMs1FuwU3GssIcFprzvRWCEpojDjNoEmWFGhDbQzL1r/A70iF6DuIzQbtUH1NglRctm4pbn/Xp10qSnh5MRFeeF7NT+6C1px2WkWutKNWJdnr/bywQciTDEggF9L1aH/lH6RXp3zZFW3exQBxh+sFX7oZDXGyl7yjv5URmaSWTH9RzlCY8egma3/TLMZmYucK+NZ4MlpNTM3Xd24Rv+M4xFDoVt+kBxi049tq5L5lSGvSvNmugI+wWZC6UmX8svxzID4+bVa7a/Ph4mqXYqlrvmMZ1W3MQBAO3ZlVNOkhQDA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGRZOI4zv2lm9a0VXe2U4soISPh4tSpG74dZ2GKpQRY=;
 b=DCLaqO+NWRjhyUekOdqBgB+uIQTHTY27LdVjGjENen46WdB5ygr5yW1+2JlUi42pUNx9v/QsFaMKxwoQGl0MNrwpQ9yPMMtMSoXf2tabR0HjeDNVjLks2hrjmrHBBJYl6D6wHb77l7TsRuaBAToCdORW51BEucqTLn+yngW5wQc=
Received: from AM5PR0101CA0002.eurprd01.prod.exchangelabs.com
 (2603:10a6:206:16::15) by AS8PR08MB6104.eurprd08.prod.outlook.com
 (2603:10a6:20b:299::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 11:18:40 +0000
Received: from AMS0EPF000001AE.eurprd05.prod.outlook.com
 (2603:10a6:206:16:cafe::13) by AM5PR0101CA0002.outlook.office365.com
 (2603:10a6:206:16::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26 via Frontend
 Transport; Thu, 14 Dec 2023 11:18:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001AE.mail.protection.outlook.com (10.167.16.154) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.26 via Frontend Transport; Thu, 14 Dec 2023 11:18:40 +0000
Received: ("Tessian outbound 385ad2f98d71:v228"); Thu, 14 Dec 2023 11:18:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f80766cc7de7622e
X-CR-MTA-TID: 64aa7808
Received: from 178b68b34af1.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F1068DFF-FEEE-4A17-BE65-9F2551937A9A.1;
	Thu, 14 Dec 2023 11:18:33 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 178b68b34af1.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 14 Dec 2023 11:18:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F0eHArjN/UESeVUWSOwd0DmMRxiJqKC3cJpU/lE6D0CyQt7VK0xtnh3jud/xKsN0bm+XhAgK8QGm8+3t4Uvee4RtMUYEDR04vK5GcV+fRUtq+o3+Ku2WuUvvCAWLCD5WCQgt+KVpasHUKRhpo846c3iOBINHR0DkYlQ+scXc2HZ1b7S36rM4oJJCbynfjWwrBSbwSbdO3V4K6QIXJ1U5eiYVGsRc8PORu2h716SfWUV2wUvP5FyWMUFRWlY/RvtNKSh5zvhEkWyF4eGjRl2MeQzGjYLo7/cwIKDNYccWaMGhK71XGla+ucAH2XYpXsjvBvdBlfuO6lv0hSesKfcmZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGRZOI4zv2lm9a0VXe2U4soISPh4tSpG74dZ2GKpQRY=;
 b=Qbp7R7she5Wg7UK73CuBAFnthH82YWWsP+6aT5Es+GttA9leOQ1wKJmrT2MMnUwotSycgQtlgi0ajrAJEk9hOX5jJOzTLnARXKi2D9KgoIqM60jFQV/1/NWlWSNPDW76AGwniEMCLRMLbo5t7FOEM15C7OYCVreQnufvUlOGl0Tn0UfziBPiQ0XqVHd58QwW1jqfJIA//DKfG+2Hh9DmQ9noRm5xAtRwsxiAMaXRNN93FRzNvgKtPh435kNQVuqucFI5RWZmf4Umm3DRbsXNfNtgBOJ0QGFSZsPV+v8UC1WfR1LYk0ufegMlX69iscuvvYU0PwNnAhB1q2R4Q2JonQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGRZOI4zv2lm9a0VXe2U4soISPh4tSpG74dZ2GKpQRY=;
 b=DCLaqO+NWRjhyUekOdqBgB+uIQTHTY27LdVjGjENen46WdB5ygr5yW1+2JlUi42pUNx9v/QsFaMKxwoQGl0MNrwpQ9yPMMtMSoXf2tabR0HjeDNVjLks2hrjmrHBBJYl6D6wHb77l7TsRuaBAToCdORW51BEucqTLn+yngW5wQc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8879.eurprd08.prod.outlook.com (2603:10a6:20b:5f6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 11:18:27 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 11:18:27 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "sjhan@ambarella.com" <sjhan@ambarella.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] do_populate_sdk_ext failed
Thread-Topic: [yocto] do_populate_sdk_ext failed
Thread-Index: AQHaLnmJAax5T/WxLE+YEJyb8sSI4rColyyAgAAIeICAAAHgAA==
Date: Thu, 14 Dec 2023 11:18:27 +0000
Message-ID: <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com>
References: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com>
 <24207.1702552293492620689@lists.yoctoproject.org>
In-Reply-To: <24207.1702552293492620689@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8879:EE_|AMS0EPF000001AE:EE_|AS8PR08MB6104:EE_
X-MS-Office365-Filtering-Correlation-Id: eb70a96f-47b1-4bf5-7618-08dbfc966cb1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 4qegYhQx0dqpIczu6pZSaLkoigTfMcBb2SahpZXeDLKnMM0UhiPnbwv0u7iz6/wYDlvJJf+UH3xa0n1XbrK0vX92EZBwOarsE7+V0+sn1ZM31zueiNM39geSgryBeK99YclKt2NjeenvS2j0cu8tS5VNbYmkFhQD8ZEydVC8cubbwwllmkI3zXdQe1JOVkGa2K9YRYyJCc/oM590msSKsPAcckbKSb3Rdpnj+fLr+TSa15TBkoqLrRZ5R3DCxT12kNavcWEnGNMUyHymJpkGkETFPvZhCsJOZZKW9KbiTtUKtyobUwh4tQIgj2gE+TDLM/lfYiBBTRkZUwxYsXAZIqj4WsfzeFA/V23EmygZkXZYL2Ldld6YX13nAbwKFiFWKJ7lfAdmUr1ttORmhOx/EYMOJe/GyJPdNOgX8m3z/ZjYdoe6bI4m8CMb9+FqoNzHIJsA/xfHopRZHFvs5DAabmq52aXTDcgq5Xb2gdtMb3Y7rOFpkqDCNC3jJnCfr9gVZNG2ecXbenhGBEqHejTugaTddqzAIcsIvkk0WXydZcmvXSpLEfBpe8As2g0Z9jCmu91bdkMuudXX4dGcnoYWNoPKCXjgDYevHJsVlJuglQq4kFZ+nFZbroxOPQXHfJTpCrCLTm8eKnecees9ZEe/5XgiKZ7XHHV31vAr8KBW9j1jIBPyeFxx03wei58wa9kq
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(366004)(346002)(396003)(136003)(230273577357003)(230173577357003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(478600001)(6512007)(36756003)(6486002)(76116006)(122000001)(66446008)(64756008)(6916009)(66476007)(66556008)(66946007)(38100700002)(91956017)(71200400001)(26005)(2616005)(53546011)(6506007)(316002)(8676002)(4326008)(86362001)(8936002)(2906002)(66899024)(4744005)(33656002)(41300700001)(5660300002)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6474A192181AFF48955A99342838C734@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8879
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AE.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0cd05560-2b15-427a-2e55-08dbfc966504
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WWcVPu5Ok8NNpoe5g/zZF3H+F9vW+yc3OFuHSfnBvTegyy0xxyfwo2m9EXIjjRJ6e8wzkuC/z8xnyy1xnTBMmK9SNdLDLs99KF0b13tah4D9v0OtS/e4efeX/3eW79EfjvuFZYisjkoNJ0KkUkEGzGpcR4aNdOICwFa5alhmnUtPddbt2FRJokSnp9h2296lzQkZmi6+8rn9rr952YOu9FkVyjlWZY/vg//UueKiSr5YhV0IoUcY8G1B17isGVd6exTvmqI/W1VCKLQPAIJ7y3KiroJjmdKgNGOsB02jLksqF9WknAlPIp3O/WHF9u+bie+dXKkWMyHMv9aWOWTjb7YkNvmiusraWJR13TcBaU8qcnvZV+y3T7BCQASXjjF+K3ZZJQNZlOdg16ZdDWOlDtV+wQon7YMZHCJoF8MCjMtep5M/9Sut7BcdOKBgemPai3zIyWML4wvLksImSSbSf6CI8wgFUuSZrEdiVZc0F1daJTVyKUsminCVFaSIGg5SeNjmg1FM4SAqW/MrLzdZG6TGgVQbLttDtrAgwOvXUWRLTtb+BtGFIXIVBflY3VZaJmF4DGOJjXo98Ti5jVReDUsVgqbJGJTOLAnB1jlzo8T4t0P+O5eONFmNhCkSbzRQbrouNfDFa6i5MszioDqfA/ArI2cOYJ6jCzkvwNZ+vzb/EtUlmi1cDEEPluxYWb5mCPi6V0gC6xFk6oudf4VaPnxaSSn9gAedYOvJolBuK/YQwyGx6j7pq1ylugv6uRG7Lzgzjac2DF/UOZ3tPK3wc/xwqrFKT3qsYr6t8LhDg80=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(376002)(346002)(396003)(136003)(230273577357003)(230173577357003)(230922051799003)(1800799012)(186009)(64100799003)(82310400011)(451199024)(40470700004)(36840700001)(46966006)(478600001)(6512007)(36860700001)(36756003)(6486002)(70586007)(70206006)(82740400003)(47076005)(356005)(336012)(40480700001)(26005)(2616005)(81166007)(53546011)(6506007)(316002)(40460700003)(6862004)(8676002)(4326008)(86362001)(8936002)(2906002)(66899024)(4744005)(33656002)(41300700001)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 11:18:40.1451
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb70a96f-47b1-4bf5-7618-08dbfc966cb1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AE.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6104
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 11:18:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61889

T24gMTQgRGVjIDIwMjMsIGF0IDExOjExLCBzamhhbkBhbWJhcmVsbGEuY29tIHdyb3RlOg0KPiBU
aGFua3MgZm9yIHlvdXIgdGlwcy4gSG93ZXZlciwgdGhpcyB3YXkgaXMgbm90IHN1aXRhYmxlIGZv
ciBvdXIgc2l0dWF0aW9uLiBJcyB0aGVyZSBhbnkgb3RoZXIgcG9zc2libGUgc29sdXRpb25zPw0K
DQpJZiB5b3VyIHJlY2lwZXMgX3JlcXVpcmVfIGV4dGVybmFsc3JjIHRoZW4geW91IHNob3VsZCBm
aXggeW91ciByZWNpcGVzLg0KDQpUaGUgaW1tZWRpYXRlIHNvbHV0aW9ucyB3b3VsZCBiZToNCjEp
IHJlcG9ydCBhIGJ1ZyBhbmQgaG9wZSBzb21lb25lIGNhbiBmaXggaXQNCjIpIGRlYnVnIGFuZCBm
aXggdGhlIHByb2JsZW0geW91cnNlbGYNCjMpIHBheSBzb21lb25lIHRvIGRvICgyKQ0KDQpQZXJz
b25hbGx5IEkgZG9u4oCZdCBrbm93IGVub3VnaCBhYm91dCBlU0RLIGNvbnN0cnVjdGlvbiB0byBv
ZmZlciBhbnkgZnVydGhlciBhZHZpY2UuDQoNClJvc3M=

