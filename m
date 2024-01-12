Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F115C4707C
	for <webhook@archiver.kernel.org>; Fri, 12 Jan 2024 10:46:53 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.46])
 by mx.groups.io with SMTP id smtpd.web11.4457.1705056406190946224
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jan 2024 02:46:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cl2+Xur2;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cl2+Xur2;
 spf=pass (domain: arm.com, ip: 40.107.6.46, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=K+IsEUCowg637QKHkLJZo2RO8uINXaDfcU5PY9BK+9pTHXcvGxuzooadeKRp10o+Sf9uRkuZgMraXB8vSP4hwgNi+T3yL9Y7PfqBx/gET/2v+DzjUgKr32gNInGqRroeaqQlvwnmK+DSHt2ZetjWza9jlDYaUL6BsQtmmYixdcs46V6v27Q4yoVXEEF+VeTzk1au81hNW09zVtA4p6LtDh2/s0hN9Yf7t50/pQMPw9n/3dhc6ZGwUqVkxjbZcbW/THubmtbhTTJmrw2rGBFVEpo9hpTTY6knRAovsJkNQdMlo2d+EtDpSx93Nfmypc4S0+/LfCUwFVJyCs2+8U+OiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wEw3D//5jyL0oPfkCRsqh6zO50F8fSp483DuBo1VsFo=;
 b=GUgdQGzaptJRy28ABpYbIkc04Qy3guBZm/VJwZmh9qOAFXKKY3Dt3kbMjjqLRb0TZ3+7jwjxdAkLjya833GXav8lRnl9fet9EtjI5mVKsdIjkrl8qoeEETvnx4RIP7jHR2+jEmKwtfS3QVhu/1d72zL0R3j4IOMfkQGPn0XC2yLqNenXo0OzgbCKFbWkM+XYfN4GcLTkSW6HSNL5TisE21cRPKo+eEDYlt+2fGUX3Y6t+iD8RxdR2Cwoc4ErO6JFSPuWpt/WNvzfGXye9E4u0h/8vN7wIZ98zfETl09Y7GX56KVI+jwQ7tAAOumTTZCGf+EuW9IN/qCO6R6yNtvJjA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wEw3D//5jyL0oPfkCRsqh6zO50F8fSp483DuBo1VsFo=;
 b=cl2+Xur2j5bKzxEjiul1maLxgyCtSmRgO/O1Gt3V+k8Cg8pZLouO4zws9ka8qHkazJxsOp6RBC1O+NBdtbXpa3yox3pA6FSjITjLH5kik+E5WmTf7Ww3IxN3RPUNTvF/E2jSfFlMQKNG5CGieUx0L7XBnca6NBy243nMTP+13/8=
Received: from DUZPR01CA0324.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::29) by AS2PR08MB9788.eurprd08.prod.outlook.com
 (2603:10a6:20b:603::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.17; Fri, 12 Jan
 2024 10:46:41 +0000
Received: from DU6PEPF0000A7E2.eurprd02.prod.outlook.com
 (2603:10a6:10:4ba:cafe::ba) by DUZPR01CA0324.outlook.office365.com
 (2603:10a6:10:4ba::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19 via Frontend
 Transport; Fri, 12 Jan 2024 10:46:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000A7E2.mail.protection.outlook.com (10.167.8.46) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.14 via Frontend Transport; Fri, 12 Jan 2024 10:46:41 +0000
Received: ("Tessian outbound a297577ee0df:v228"); Fri, 12 Jan 2024 10:46:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c66d93d4097a3e96
X-CR-MTA-TID: 64aa7808
Received: from 7d7b5eef008a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1633E1E4-0256-4B3B-87EA-4B9DCD2A54D4.1;
	Fri, 12 Jan 2024 10:46:33 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7d7b5eef008a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 12 Jan 2024 10:46:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYDSyItmYCSkCWSXvXLzAnU7FU8bs5m8wh1/0qKtp9UZyk64BvUgGMiE2xXmGDQIQ++OAu573MPeJOAwjXap1FO6ttO378vmA6RMWEM8xrKMJCZT/EfOfY79Af3wzhGR9fdFr5kkkQ7ATB/C4AM32mzNfhHlBxHbg2TzFD06AJ3ddlFBbrN6wFEN+iAdQDWWkE7ImqzdXZYDcZN//yRnF8f8zV6lCicoCIQx617zOXJdbBbYl7oDvq2r/UgsmAgJ+WHwvKV+Kjoq4IW4HT6JnUMJoYTb3bNp99iz0f4C7FUjEDGQLHPiGC4usCHhXICOqdp2Vag/ycMEr3qjIA6q1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wEw3D//5jyL0oPfkCRsqh6zO50F8fSp483DuBo1VsFo=;
 b=iD7QtxtyedLaakUBU9v6bRQUkZeDrv9z3+1jV4rWNWohIWkpmhhTAfw8b+pntzZz418TjMq9eRbCKeYVZY3EXORa6WcK96RLKQZ1kgEVxYbvg5HGDgPst8eyysIDDW0TQLKFRV/QFTApIyVB+GgW2kTUvSD8h15OHJieTjODBA41ovbfoM0sXcaMVr0Ajv0A6o/ApStFTEVtMEoad80Is6sbgqSvRSySnA4vb0LuODEEPegLwlqcndQNWlzuGJgfokjwuF8zxLXeLOoysmDho9bHdIcykuFgOXzK/25ABf9avj8NlkBKQ4jS1nQoIEEd97J4oV1+rhtc8etooXGSMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wEw3D//5jyL0oPfkCRsqh6zO50F8fSp483DuBo1VsFo=;
 b=cl2+Xur2j5bKzxEjiul1maLxgyCtSmRgO/O1Gt3V+k8Cg8pZLouO4zws9ka8qHkazJxsOp6RBC1O+NBdtbXpa3yox3pA6FSjITjLH5kik+E5WmTf7Ww3IxN3RPUNTvF/E2jSfFlMQKNG5CGieUx0L7XBnca6NBy243nMTP+13/8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8374.eurprd08.prod.outlook.com (2603:10a6:10:409::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.17; Fri, 12 Jan
 2024 10:46:30 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7181.019; Fri, 12 Jan 2024
 10:46:29 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "ashujoshi35@gmail.com" <ashujoshi35@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
Thread-Topic: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
Thread-Index: 
 AQHaMlKf6KJDe1K7BUahs+H4BLYwKbCw1vuAgCCNMICAAFl2gIABrdIAgAApboCAANtDgIAAO44AgAFdfQCAABtSgA==
Date: Fri, 12 Jan 2024 10:46:29 +0000
Message-ID: <E2AD3B78-3C5F-4B79-878A-21931AF97FBF@arm.com>
References: <CAEA4A72-2B38-4014-B258-20CA75958495@arm.com>
 <25272.1705050512279267764@lists.yoctoproject.org>
In-Reply-To: <25272.1705050512279267764@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8374:EE_|DU6PEPF0000A7E2:EE_|AS2PR08MB9788:EE_
X-MS-Office365-Filtering-Correlation-Id: 2506b558-8de0-4204-ff24-08dc135bc31b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 FWQHkCaeY86ppkxqNFNg9KQ/5DrgCapLkquv83LupUjIsMon2HEr3rHVQWPR48XhIybiQATXDCePC+hL0wKLJ4F8a8HZnHSHxd8U4H7RxSUejujj9leAva6nmQasFsGgD9ABw/qqQHoJnJJtC0czEvU0UJWMPQAQ/VZKIQ5is2B60E/4cSSByhKrqxQd9En882TC6GdVRjIqIZPGfLjDId6gLt5x6LdWBqEV2nz1WYMCM1VuUeShFg4pxdC2mWIDE9oqjyxfMZq392N4YnKUpsEyfY0RFF/JiwnRBUoAsR19G5T87eYGit/XQR+CLZTP38Z0Br0KMdw5Llwcy8zQU3k/eD1YFGRYWFOmqJfQiWqfqGjIg8+b5UpjkiuZR3TC5tdnzBCtN74zrFLt5HoL+nM2wF1oTNDPVouZc2lvBu54bsMmAPyVTYrVEey9C6qhKlQSgAzcl5DWg3BJP4i062iCqNaOI9T34k7FSAr0QG9ouXYOCPQd0DhByifNLM36rxowV/j/KGRW8iB6Z/riMnmWnAEwlF/VDEGwDxWDTjOb5x7Yo+fQ3IZ1dNEE5Ni9lv8YIWQfwF/anN+j4vMwB4w802rUgv4rwMm8qDvFW1dzB/lSH2QtAQmzpn0IpN8o
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(136003)(346002)(39860400002)(366004)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2616005)(6486002)(38070700009)(316002)(8676002)(966005)(26005)(36756003)(4326008)(6512007)(478600001)(6506007)(71200400001)(66476007)(6916009)(8936002)(91956017)(66446008)(64756008)(66556008)(66946007)(53546011)(76116006)(4744005)(5660300002)(86362001)(2906002)(66899024)(122000001)(33656002)(41300700001)(38100700002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <E99E21C2C3ABB141AB39F2427E66FFB4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8374
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7E2.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d159b31d-3c07-4c91-fba5-08dc135bbc1e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tsYQKXE9ApdWIpvuBQvFvESG9dhkQAfVpAEj2mZG4Ah7nof0C8FRHECfScG3SuUYxBlFjYVS9k4LlSJIoK4w7Fl1a6YXon1wHdHiFjHGtGDzRuT8m+/hACkNqURlYXt6oFKUR1P5+fytbQX0FKf1lpJxtNK4T7bM1MzOcFz2/gEuXZJYfyEm9UBzkn5lmqiu+j/8rJjtGBy7Y6LIWyJw4ecaXh+L0Z3UbozRmFObVnW0j79GOvZmfwl5PKNJ8Elv4Ub5OGfC0wxfcXSywxjsSzHpMEX/WDhSiHAE8pqEjxU3Mv7vJWUfwBh00ZFQGG3gLwn8Hdjpc9HF59nI+OPph/ow7jahTxjLaNJcZJYipyQUQZhRyoRX5MFhKTeDqYEKRmDWdMfmOO5LpouRjQh1ghkh1CrHSPYSj3VBHdNwGsusxPf4ZStapwYm4uno/geRj7XUS+3cwtz7Dr7wwXXOtDO6L6voSqAN4IspnrRKXjacnzRvTCtTM/fMriqCfwVgPD1wPO1xkwuysoWk3/RoqOWo1fli7vwqv9ChQ9mYFxeWOMgVO/n0FQuQXeAlOnDYXcPuNSnzeJAUwWzl5Dy+cVzeMEKeoQX/+E/rMXfjil8kxuaYjN9kMLfQvK+9QBKbUxtIfMoE4/gRMEhZ78OqmI/SmawkngLtYg6bzx8QNalN3N8OSAv+lTcv/8ZcH9p59iHBl47G3RfCEpf1KPeL/BPUOwvER3j7it1uvybJ7L8=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(39860400002)(376002)(396003)(346002)(230922051799003)(64100799003)(451199024)(82310400011)(186009)(1800799012)(36840700001)(46966006)(40470700004)(6512007)(82740400003)(966005)(6862004)(26005)(47076005)(36860700001)(53546011)(4326008)(2616005)(8676002)(4744005)(6506007)(2906002)(6486002)(478600001)(8936002)(5660300002)(316002)(70206006)(70586007)(33656002)(336012)(356005)(41300700001)(81166007)(86362001)(36756003)(40480700001)(40460700003)(66899024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 10:46:41.6111
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2506b558-8de0-4204-ff24-08dc135bc31b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7E2.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9788
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 10:46:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62135

DQoNCj4gT24gMTIgSmFuIDIwMjQsIGF0IDA5OjA4LCBhc2h1am9zaGkzNSB2aWEgTGlzdHMuWW9j
dG9wcm9qZWN0Lk9yZyA8YXNodWpvc2hpMzU9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+IHdyb3RlOg0KPiANCj4gU29ycnksIHdpbGwgbm90IGJlIGFibGUgdG8gc2hhcmUgZW50aXJl
IHJlY2lwZSBmaWxlIGJ1dCBtYWtlIGZpbGUgaXMgb3BlbiBzb3VyY2UsIEkgYW0ganVzdCB0cnlp
bmcgdG8gY2FsbCBpdCBmcm9tIHJlY2lwZS4gDQo+IG1ha2UgZmlsZSBwYXRoIDogaHR0cHM6Ly9n
aXRodWIuY29tL3dpcmVwYXMvZ2F0ZXdheS90cmVlL21hc3Rlci9zaW5rX3NlcnZpY2UNCj4gDQo+
IElkZWFsbHkgaXQgc2hvdWxkIG5vdCBiZSBicm9rZW4uIElzc3VlIHNlZW1zIHRvIGJlIG1vcmUg
ZnJvbSBwb2ludCB0aGF0IHNvbWVob3cgbWFrZSBmaWxlIGlzIG5vdCBnZW5lcmF0aW5nIGltYWdl
IGZvciB0YXJnZXQsIHJhdGhlciBpdCBpcyBkb2luZyBmb3IgaG9zdCBvbmx5LiBTZWVtcyBpdCBp
cyBmYWlsaW5nIHRvIGNyb3NzIGNvbXBpbGUuDQoNClRoZSBtYWtlZmlsZXMgYXJlIGhhbmQgd3Jp
dHRlbiBhbmQgdGhlcmVmb3JlIGl04oCZcyB3aXNlIHRvIGFzc3VtZSB0aGF0IHRoZXnigJlyZSBi
cm9rZW4gYnkgZGVzaWduOiB3cml0aW5nIGEgcHJvcGVyIG1ha2VmaWxlIGlzIGhhcmRlciB0aGFu
IHBlb3BsZSB0aGluay4NCg0KQ2hlY2sgdGhlIGNvbXBpbGUgbG9nLCBpdCBzaG91bGQgYmUgY2Fs
bGluZyB0aGUgY3Jvc3MgY29tcGlsZXIgYW5kIHBhc3Npbmcg4oCUc3lzcm9vdCwgaWYgaXTigJlz
IGp1c3QgcnVubmluZyDigJxnY2PigJ0gdGhlbiB5b3VyIHJlY2lwZSBuZWVkcyB0byBmb3JjZSB0
aGUgbWFrZWZpbGVzIHRvIGRvIHRoZSByaWdodCB0aGluZy4NCg0KUm9zcw==

