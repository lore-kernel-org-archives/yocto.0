Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40BE8C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 18:17:40 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.65])
 by mx.groups.io with SMTP id smtpd.web11.30484.1706120252269300101
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 10:17:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ONHoTQZh;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ONHoTQZh;
 spf=pass (domain: arm.com, ip: 40.107.20.65, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=oRvfQXmgQqPiRnCk7FFXP4srPZ4qBHq4vsSxGqxVHtujarrmkkhZs6UCh2LSQIDIIyNNuJsaCLgHZ/0onT13dD2SSuvuxcHFstUEIsTXqUi8BZBn897Z8jJlP7DpD0NjDqtHmGhqe6uE3K9kvpBGN6hX24iyGfpVJ/MFo4/OiC/QjLxWpPKvhhM5yiNZolGl3HT2jGD9YRkNfsJjNYYWUZC8nhUD2N9F6Vk6kwLXFeQmX0vbAROscB7M+ae1QV+PoccM2k5EkSAwHzroa2j/YMG93xvWo3Z/1NjuThEZm2fEmNGAUN1J4TA8ls9R6YGzjJ+uuUQ+usgI0TlRJ4ZcFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jc/HT2IokgvHcDRsM5N3RFrxsU+qlp7PnBmi04/sVjs=;
 b=WSTS1sYcUnel+QbzMp08nzwBw3Y/iN3y5N+HQ5Lq5y9adMcVCjHHhK3lEduU9D7TnYFkZeHdCKZApES99TRyR9OmouGF5EcR5Kba14gHE4vt/P9/VZKfcPc+fNFreped1+hWwEIvJg8sLxEBHvZm/LpOGAqJN1zHwbyRb5svUecIbNGrJUWucQPwR+b/5BOMSwlHLHCIUcAWXlEBJuZ87IoW69gFAsuqBs1ooLrGUSbwI6KHxHYRGku4f8/ed3TqrXjbLzxye9y80URfZs6+fp/eFNV6L9nIqxj3ajE8Tr2YswEt5SSLRe3apS7OqHMRpFzO6Sg1Tp35CJ2rQGYYrQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jc/HT2IokgvHcDRsM5N3RFrxsU+qlp7PnBmi04/sVjs=;
 b=ONHoTQZhjiNvCwA/l/MhrqSg/GTapS7QORs2aWPa3v5PM+Fvz6nVvccowBYa6J3Lwf+zMrC/z0ucbYMCZA/M8APFRGPTjPI0zGwp0EBlhYUrIa++kJgYfMgeL8tGiYp0ezxsWJJkKflmlXtLEL7Oyysz1BvjRPSawcF5JN0U0DY=
Received: from DB9PR06CA0006.eurprd06.prod.outlook.com (2603:10a6:10:1db::11)
 by GVXPR08MB10542.eurprd08.prod.outlook.com (2603:10a6:150:150::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Wed, 24 Jan
 2024 18:17:28 +0000
Received: from DB5PEPF00014B9C.eurprd02.prod.outlook.com
 (2603:10a6:10:1db:cafe::38) by DB9PR06CA0006.outlook.office365.com
 (2603:10a6:10:1db::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.38 via Frontend
 Transport; Wed, 24 Jan 2024 18:17:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B9C.mail.protection.outlook.com (10.167.8.170) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.16 via Frontend Transport; Wed, 24 Jan 2024 18:17:27 +0000
Received: ("Tessian outbound 1076c872ecc6:v228"); Wed, 24 Jan 2024 18:17:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 931857afc2a9a616
X-CR-MTA-TID: 64aa7808
Received: from 9f9960843a84.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 88C96933-5D6A-4350-93F1-A311C36330B1.1;
	Wed, 24 Jan 2024 18:17:21 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9f9960843a84.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 24 Jan 2024 18:17:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbUSAE2fRm6Fe8lygRvTi3yp2CXY6KGOK88wGq/zLOZHFPSJXY3kIZ9RK0tJ+tTcvsYy0b/ApEdi11frfLXnodbNpVM9qQ+EGAuUb+FHiLJON6b+5c1wnbe4saeH/ZzXZ+Z6EDYokKwEE+kWS2y+4SDgy+7QKd+waqweaFbXIlb4qmhK7bYyEYeLf8r7tr0EQK1WvXXPPu1DTIy3vsx4gxyyCVcwm9u2j3xsszP8a6p77OAKvU5eqEYUIDLsVcGUkW0C4uNRe+pnblabnvkBLQ0JQ2oruvVlOvsHM/tTIwVbNI1GwHdJWh4B3Yz3ABH9xh2EaErh2gQNkWb7zeeERg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jc/HT2IokgvHcDRsM5N3RFrxsU+qlp7PnBmi04/sVjs=;
 b=C/nQhoxW+3+ecadGCiF3QPBqv8Q4XOnDU7+vrk43wMURPgoSr8PAvLoJtK6jgZV7ykD1d8h0pm2hB0IFuPelmzmWLMzplaUmENTuaQoFjLAi1C4yrGlSk/0uI2ztr/lpzrBbV/OHy0gGYu6vY51h5xpIco69eZ/0Cn7mMAeLpje4OqpmhlK+dY0XTsoPWSi6x0NH/HOkLSH4+zIMiD23bv+d2CLrQsrgLotuQEc+c7eWp9tiFHWs4x7bijEyWR/c7hxWm3ZDu9ZzclmLZP2wRhWE2sJ5yrHw7ZYqvgmgcVsGo6nO66gqr1eAyvgPru3I4mCivLyLJmJ3+pMMThvy6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jc/HT2IokgvHcDRsM5N3RFrxsU+qlp7PnBmi04/sVjs=;
 b=ONHoTQZhjiNvCwA/l/MhrqSg/GTapS7QORs2aWPa3v5PM+Fvz6nVvccowBYa6J3Lwf+zMrC/z0ucbYMCZA/M8APFRGPTjPI0zGwp0EBlhYUrIa++kJgYfMgeL8tGiYp0ezxsWJJkKflmlXtLEL7Oyysz1BvjRPSawcF5JN0U0DY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5841.eurprd08.prod.outlook.com (2603:10a6:20b:1db::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 18:17:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7202.035; Wed, 24 Jan 2024
 18:17:19 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "daniele.lugli@gmail.com" <daniele.lugli@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] etherlab
Thread-Topic: [yocto] etherlab
Thread-Index: 
 AQHaSZIq9dWGDz4VWEW/dwgaNylT+rDfHIaAgAD8nYCAAL6LAIAAPZ4AgAIY5YCAAoU+AIAAwg6AgALadYA=
Date: Wed, 24 Jan 2024 18:17:19 +0000
Message-ID: <4102D24C-53A4-4F4F-A192-EC9295E09D54@arm.com>
References: <54A04DD8-217F-4CD2-BAB1-0F8F1F6BEB44@arm.com>
 <29317.1705963365501549911@lists.yoctoproject.org>
In-Reply-To: <29317.1705963365501549911@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5841:EE_|DB5PEPF00014B9C:EE_|GVXPR08MB10542:EE_
X-MS-Office365-Filtering-Correlation-Id: cdf852d2-005a-48b0-91a5-08dc1d08b8ea
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 8q67L0uuUit4lMClX/75lhNehAOYsas6v2K3wmAG73ODLVAM706nva0nZbEFrqsaen6FQ04opqwlPYAhlX8aZ/BM/2AiPiGlAkmRjY1tmaEefLPE6WuNay4hPS4vVZymUMH2xq9mGmsa2yIIjd+OjUhUcurHBlxjHuyYQmKyx6O0QZZMCAWyZIKghmUAORZE2eqZGxEyWIC+RIp1OMR7z1allQokp/82XGmBbq+l865JJ/MeYNRazSSSGkOsTa5NyP5OOiG0fZUub1otStXVJvFdad8qsyW1ailMQ8H/T6Qx1g0eWhNjxxECKwizNdMPAv6aNa0vipYk6x3MbadEme5szITS3sj96y4hIEZQaEcaglr/xkDZrNCArkHtERuMnDIsmIMHloZ9KFWg9weQcfQBb+f1/Jb2qJjWbr+dGXgEhWl6mKPorQSDges/FxZupyn4kZzHh8tw8/gGG71ECKjjmE3MM0wgAqwluX4ff3dAS8J90zVtHH40jqOZn1XA8ntzMOOznp9JanA9N2TuO/mJHIhXzPBADIrX/P65TmDA4yjtPbdQFvYJX7U3+XD2XVlVB+FHUvaZtwHlunAuabQgyrEFnZ1sSTOyE+nvakra0txOzl53Hzf7nLsb0ostRjTxBbzxh3WhsbP5Dh6o24AeqNIkpzpxQBF7jelpr23E+qqzfd/35X4cAtBOh+Ii
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(366004)(376002)(39860400002)(230922051799003)(230173577357003)(230273577357003)(64100799003)(1800799012)(451199024)(186009)(41300700001)(26005)(38070700009)(478600001)(36756003)(2616005)(6506007)(6512007)(71200400001)(83380400001)(38100700002)(122000001)(53546011)(6486002)(86362001)(2906002)(5660300002)(91956017)(6916009)(64756008)(66476007)(66446008)(66556008)(316002)(66946007)(76116006)(4326008)(33656002)(8676002)(8936002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <055956C179EB22458ED2303D7D8F6484@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5841
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B9C.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c8e41909-109e-4b70-3fd7-08dc1d08b413
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	65fr+qk0ftNp30FXQ/XWj5dH6pn3bT/6LNEOAM5SDk5iZeZo3xjoDL7nMmW3omqFvuEWKv8hjOxuVDdjOn+L4e3bD1dFnKCGk7nRk/dNg53a7+rg7u/b5gGhiFIban6gOZo655Vz9VnIGNNaGpQvD1kwoMOs8PZruTxsSM28kVGZYTNZw3QjDsJkfrorzklUh/3M2PdTWxmArZP3AaGeyRG0uBQm19U4wBE+TK1p6WMzBiBn3kthu8LCZYg5GDhC5ZCJVFwmBNpHho9JySqBDg+Gg+eF7Nhd6wSbjlrWv7FgpwN8sMakpe0fMfMqArldK4hA1krR1dSvd1SFXEIQkjRcGlpgnEBX6qXfn8qAeDIf+Yj4vzsrrYMgbr17C0zIjUO7FGm9mLZRnl04EJT7m5AAYPQ4U1oc7/i00o/vaQM9kh5L3LmODqhMsYBGiLd13iXyhMhf+hYoWN2mF7DpE/JvIjA/70AjfPx5SrFA3PYz4cMQKIiluphqnEOod/X5bs9MoHuWB7hjT6V/f05J4PJmQ0lomy6q5ikLXVkPjhkaL2/dnIrEttyzyydQUr8k40A75V0mFY7iZ36lwCm88ezbZF8bKZ+MB/xA/2eW+2dgHhn4sy9pR/nK1Q5EntzdN5ZPNMAbVF5JG/AHQ4UCtn0vtBGvvmg6YKwmLyfxoHUpHJ+KIjXMU1VrTYkiSGSYJmkQor55HFgzLvokRsxqilIbjhTL6pBHsPvFfil60oRAWqZPuHFfEHfY5nwjY/jomEePTGMaYTdtCTHktVR/QTcBa4z4hB4sOHoAg1GhkIw=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(230173577357003)(230273577357003)(64100799003)(451199024)(186009)(82310400011)(1800799012)(46966006)(40470700004)(36840700001)(41300700001)(356005)(82740400003)(81166007)(47076005)(36860700001)(33656002)(36756003)(86362001)(316002)(70586007)(70206006)(6486002)(5660300002)(6862004)(2906002)(26005)(4326008)(2616005)(8936002)(336012)(83380400001)(40480700001)(478600001)(6512007)(6506007)(53546011)(8676002)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 18:17:27.8935
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf852d2-005a-48b0-91a5-08dc1d08b8ea
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B9C.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10542
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:17:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62263

T24gMjIgSmFuIDIwMjQsIGF0IDIyOjQyLCBEYW5pZWxlIEx1Z2xpIHZpYSBMaXN0cy5Zb2N0b3By
b2plY3QuT3JnIDxkYW5pZWxlLmx1Z2xpPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gICB3aGljaCBmYWlscywgYW5kIGluIGxvZy5kb19jb21waWxlIEkgZmluZDoN
Cj4gICBFUlJPUjogb2VfcnVubWFrZSBmYWlsZWQNCj4gV0FSTklORzogZXhpdCBjb2RlIDEgZnJv
bSBhIHNoZWxsIGNvbW1hbmQuDQo+IG1ha2U6IE1ha2VmaWxlLmtidWlsZDogTm8gc3VjaCBmaWxl
IG9yIGRpcmVjdG9yeQ0KPiBtYWtlOiAqKiogTm8gcnVsZSB0byBtYWtlIHRhcmdldCAnTWFrZWZp
bGUua2J1aWxkJy4gIFN0b3AuDQo+ICAgYnV0IGEgcG9reS9idWlsZC90bXAvd29yay9pbnRlbF9j
b3JlaTdfNjQtcG9reS1saW51eC9ldGhlcmNhdC1rZXJuZWwvMS42LjAtcmMxK2dpdC9naXQvTWFr
ZWZpbGUua2J1aWxkIGRvZXMgZXhpc3QsIGFuZA0KPiAgIGJpdGJha2UtZ2V0dmFyIC1yIGV0aGVy
Y2F0LWtlcm5lbCBTDQo+ICAgc2F5cyANCj4gICBTPSIvaG9tZS92Ym94dXNlci95b2N0by9wb2t5
L2J1aWxkL3RtcC93b3JrL2ludGVsX2NvcmVpN182NC1wb2t5LWxpbnV4L2V0aGVyY2F0LWtlcm5l
bC8xLjYuMC1yYzErZ2l0L2dpdCINCj4gICBzbyBpdCBzZWVtcyB0byBiZSBpbiB0aGUgcmlnaHQg
cGxhY2UuDQoNCkFoLCB5ZXMuIFRoYXQgd291bGQgYmUgYmVjYXVzZSBhdXRvdG9vbHMgcmVjaXBl
cyBydW4gaW4gJChCKSBieSBkZWZhdWx0LCBub3QgJChTKS4gIFNvIHlvdeKAmWxsIHdhbnQgdG8g
ZG8gLWYgJHtTfS9NYWtlZmlsZS5rYnVpbGQuDQoNCih0aGF04oCZcyBob3cgYXV0b3Rvb2xzIGV4
cGVjdHMgdG8gd29yaywgeW91IHJ1biBldmVyeXRoaW5nIGZyb20gdGhlIGJ1aWxkIGRpcmVjdG9y
eSBpZiB5b3XigJlyZSBkb2luZyBvdXQtb2YtdHJlZSBidWlsZHMpDQoNCj4gKEJ5IHRoZSB3YXks
IEkgYWxzbyBmaW5kIGEgeW9jdG8vcG9reS9idWlsZC90bXAvd29yay9jb3JlaTctNjQtcG9reS1s
aW51eC9ldGhlcmNhdC11c2Vyc3BhY2UvMS42LjAtcmMxK2dpdC9naXQvTWFrZWZpbGUua2J1aWxk
DQo+IGRvbid0IGtub3cgd2h5LCBhbmQgd2h5IGlzIGl0IGluIGNvcmVpNy02NC1wb2t5LWxpbnV4
IGluc3RlYWQgb2YgaW50ZWxfY29yZWk3XzY0LXBva3ktbGludXgpDQoNCkJlY2F1c2UgdGhlIGRl
ZmF1bHQgcGFja2FnZSBhcmNoaXRlY3R1cmUgKGFuZCB0aHVzIHRoZSB3b3JrIGRpcmVjdG9yeSBu
YW1lKSBpcyB0aGUgdHVuZSBub3QgdGhlIG1hY2hpbmUuICBPbmx5IHRydWx5IG1hY2hpbmUtc3Bl
Y2lmaWMgcmVjaXBlcyBuZWVkIHRvIGJlIG1hY2hpbmUtc3BlY2lmaWMuDQoNClJvc3MNCg0K

