Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AD78C4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 12:08:33 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.50])
 by mx.groups.io with SMTP id smtpd.web10.17183.1671624509497657810
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Dec 2022 04:08:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=h7biMqjj;
 spf=pass (domain: arm.com, ip: 40.107.8.50, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqTKYPSJlcPUBjRKnZq6XGdowlgc/9ca64J3vui5oYg=;
 b=h7biMqjjg78/stsLv2gCQtQg/mXLyC9MZ7E+P4fahBrR1SP8itwqVhJKPU1bQymGscgG+CP0hI4ickRqoUXWBSOenQkvPdNDrA4MQ1Sd9Fa2gX9R+ZngGVebI83hoJZtb9hflY9PyTaj1sIn8+TR8YG+JolURhUWX/OZZD5wlho=
Received: from FR0P281CA0064.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:49::8) by
 VI1PR08MB9960.eurprd08.prod.outlook.com (2603:10a6:800:1c3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.6; Wed, 21 Dec
 2022 12:08:24 +0000
Received: from VI1EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:d10:49:cafe::28) by FR0P281CA0064.outlook.office365.com
 (2603:10a6:d10:49::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.10 via Frontend
 Transport; Wed, 21 Dec 2022 12:08:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT019.mail.protection.outlook.com (100.127.144.122) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.6 via Frontend Transport; Wed, 21 Dec 2022 12:08:23 +0000
Received: ("Tessian outbound 6e565e48ed4a:v132"); Wed, 21 Dec 2022 12:08:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7fc1437651e0806f
X-CR-MTA-TID: 64aa7808
Received: from ab1037b9b9e2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 107040AA-0EFC-4815-97F2-6B5015DC7253.1;
	Wed, 21 Dec 2022 12:08:16 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ab1037b9b9e2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 21 Dec 2022 12:08:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GfXU/eJiDxTk1BNIRcJFYLtEKVdpr2bXe1qgPZpC/tlXL0KyOZbLHg7R079vbqlarTB/EslJbmxKjocMAf499pK8mQJ0es5tymz5CYG/Mbvf1BWutgn5EPtSvHmB1+6BOE3A1wmesIa7RPAXEFYF7LiF4vIJqkdH4MnqquUOTwkwHaJZQW3s4Gj+eOGflL7fpXc3NQ0gPz/jwbubw0kWIGmnHfXRSoRhn9Bo6Hr5HmoCg7GbJ6nqv9nzutfDEjLhTtR10sWV7fnQCk2dKUoze44nTnVCIUi0egHkdXNOxtn8jZYo5tpFOorWrv8CPjgqT3blHAxhV0huVQcOECp2+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GqTKYPSJlcPUBjRKnZq6XGdowlgc/9ca64J3vui5oYg=;
 b=HIPkGgBpHIWOg9C437dBplTv0qwQTeVM4/IDuE3GPe61Pc4EjI9ig5Y5yji0e8TVnTWcz1Kdj0q/y0Dk4kUXyPnwtw3VdwvyjSoZiCU4tjE6gwtCaNz2htign7AsrUBJi0wToMSf6N/fXnlbVPDQqnBInaRNmGqiTR0vvQFK46jUgy3MDUK1KDNvlIV28UjcttJr5ar0UN58BtVRtpEI9IRe1ut9ZGu3jNKags96OYR8IiidLzZAwsMo+RXAZ/yifkKiG0/SFajVat6eQE1Fk+5mn2ovW3u/PXEB0HxwDcddwpCPereNf5G10nZ30ajm4EeEK9irtDfGVVEXoV2jKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqTKYPSJlcPUBjRKnZq6XGdowlgc/9ca64J3vui5oYg=;
 b=h7biMqjjg78/stsLv2gCQtQg/mXLyC9MZ7E+P4fahBrR1SP8itwqVhJKPU1bQymGscgG+CP0hI4ickRqoUXWBSOenQkvPdNDrA4MQ1Sd9Fa2gX9R+ZngGVebI83hoJZtb9hflY9PyTaj1sIn8+TR8YG+JolURhUWX/OZZD5wlho=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9081.eurprd08.prod.outlook.com (2603:10a6:102:32a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.6; Wed, 21 Dec
 2022 12:08:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119%9]) with mapi id 15.20.5944.006; Wed, 21 Dec 2022
 12:08:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "jovanbosic95@gmail.com" <jovanbosic95@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] FireFox
Thread-Topic: [yocto] FireFox
Thread-Index: AQHZFRfR3DSqdiakPkOhS7bm2IyuLK54P5IA
Date: Wed, 21 Dec 2022 12:08:14 +0000
Message-ID: <540CFA75-EFC7-4143-B294-E50BECFB252A@arm.com>
References: <Gz1h.1671611965048742156.TfOD@lists.yoctoproject.org>
In-Reply-To: <Gz1h.1671611965048742156.TfOD@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.300.101.1.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9081:EE_|VI1EUR03FT019:EE_|VI1PR08MB9960:EE_
X-MS-Office365-Filtering-Correlation-Id: 1770cefd-5281-4604-e2aa-08dae34c0f5c
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 efzHvkCYwpWfVTYL570wsJrtESvzSU1X0cQB0SX1hvK3jlZ9OEltU1s85R71HGhVIjoUN69faei65CnzPtvzsiMiejr5V+eX7VymmM2cna9+/ciqG7zS/ClDYcEuJpf2fO13s2nuOEn62Q92tBi4OcxKKSfGWAKIavTUbWoreLG0+e+muPYYrIlwPhvOigeWfIXZEHCpGoB7Cl902FMWh0OUEq/KQ0YRS2qTTQZChTLVYDDPtSYUbxxreTkA2CYvlyPl7qMa1Z7YV4/l4OLWY5mz+/+09/oz4ULaHCwCzanhWjuFobBAVWeUP64hFh3RCdE0P4RKm82TpEn/0yM+r4YwofpAirEQPTEUZ2l4vGThaVsRwQSPhILsNKijy1meTFIsMIda2MkBbAYKGb2oW/T6u0IOAXhx57PtQ+IB2jare2XaZQMkHtgaYD4ZD5wofnGooiu3KKa0io1FJMotbB2xYOOzYiJle/OcVdQONgvsPa+vyotVTcTkZ93z7NDR4evryFErcWx1Upaj1LaLfVqcqLkv3EtkDn7S1sfFmE0GoTeD/ZZRDgcQcRyraLq+38bbnPK4Qfomenh4I09QpuOyAlxxxv4zIUxygNfUnuSPgcPGVHJ0Mf9UYr6c+GKasA+yP0y3EddC6NRBRyY7PyV0SgJrO/rAuRXhGuBnLQKh95yXm0ivMAGDoNeFmNGW77ujo+rWMomThE8oxRFATVMhD90+73reTeGs0TN4yk0=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(451199015)(6512007)(6506007)(4744005)(33656002)(38070700005)(26005)(186003)(8936002)(36756003)(122000001)(2906002)(38100700002)(2616005)(6486002)(66476007)(66946007)(66556008)(76116006)(91956017)(316002)(6916009)(86362001)(41300700001)(5660300002)(71200400001)(8676002)(478600001)(4326008)(66446008)(64756008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7F33B53161FEB94E88B3782E2413F040@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9081
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VI1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b3899457-19ee-4d8e-82c1-08dae34c09cc
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jewjbW7hcAIhBgdhn0Qp0u0gyAuPTSpXEJcwSXBdeOWfq20LY+0KCEHCQj4bo9cBdkvQ6yZ+3LnpMXjyAokjjz07HPt4Cf9II5yzwS3XqAyTyf2MtpFyC6pispf1dq+s6/9Lj9xxBhkjYcV0Kmc/9YPKhpEYtRK004P12adneDUDKiFdYmnCNOQALpxvNJu/aeHK0mEtYnIMzeRmqxOL25yi2NYU2MRNL/P73M3nqu26/ur9n/i99P8XES7Tb9tNyShXFsSZPCfYVQ44lewmKRfSnYtYmrVuflyqi4HC8Up1HcPoPVcuVJJcqnmfLaKisfVaRrZy0jdsoK5GO+PaeK1J08i7A/yGoQJ0zQ1FUFeopSRN19PBTBtumKHOAaChSfxBwE3mNYAekBCUzwKQMAAahBCxdt68jYzRu0geSr0bpdWKqXteSgDj0KyxlvcankmIJII+YGePel4yWC2NeUN0E0qC0IGPnEUkaZWfBG0Gj7IFQKW/IYJvFJBLQxJLQ59rPg2IAx4rqr8lNFmFYDgm/EMdNRCSxzJ18y4f/NR/z9pWBp/RFDBggCgLPiMWiPun4Zji13KnPE5HXrGRqNnLcrDoRXGNTS5x1LLZMttx/Uee0sxWjrrpai7wSqDkU498Zf/OkUTP28xjERsxOr82BXouk3de4I855U22wVza0Gk47bKfoK9/vzj0ROt4gVI4doTMzvUgi8sirvrALA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(346002)(39860400002)(376002)(451199015)(46966006)(36840700001)(40470700004)(4326008)(316002)(8676002)(4744005)(6862004)(70206006)(8936002)(70586007)(5660300002)(41300700001)(478600001)(86362001)(2906002)(336012)(36756003)(6486002)(82740400003)(356005)(186003)(6512007)(26005)(6506007)(36860700001)(40460700003)(47076005)(2616005)(33656002)(40480700001)(82310400005)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 12:08:23.9861
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1770cefd-5281-4604-e2aa-08dae34c0f5c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB9960
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 12:08:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58853

PiAyLiBJbWFnZSBJIGFtIGJ1aWxkaW5nIGlzIGNvcmUtaW1hZ2UtbWluaW1hbC1kZXYNCj4gNi4g
QWZ0ZXIgSSBzdGFydCBteSBtYWNoaW5lIGFuZCBlbnRlciBmaXJlZm94IGluIGNvbW1hbmQgbGlu
ZSB0aGlzIGVycm9yIG9jY3Vyczogbm8gRElTUExBWSBlbnZpcm9ubWVudCB2YXJpYWJsZSBzcGVj
aWZpZWQNCg0KY29yZS1pbWFnZS1taW5pbWFsIGRvZXNu4oCZdCBjb21lIHdpdGggYSBncmFwaGlj
YWwgaW50ZXJmYWNlIChzcGVjaWZpY2FsbHksIG5vIFggc2VydmVyKSwgc28gYW4gYXBwbGljYXRp
b24gd2hpY2ggZXhwZWN0cyBhbiBYIHNlcnZlciB3b27igJl0IHdvcmsgKHNwZWNpZmljYWxseSwg
ZmlyZWZveCkuDQoNCmNvcmUtaW1hZ2Utc2F0byBpcyBhIGJldHRlciBzdGFydGluZyBwb2ludCwg
YXMgdGhhdCBpbmNsdWRlcyBhbiBYIHNlcnZlciwgZGVza3RvcCwgcGFuZWwsIGV0Yy4NCg0KUm9z
cw==

