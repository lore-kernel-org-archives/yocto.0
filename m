Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 375A6C4725D
	for <webhook@archiver.kernel.org>; Fri, 19 Jan 2024 12:37:47 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.42])
 by mx.groups.io with SMTP id smtpd.web10.21012.1705667856532797128
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jan 2024 04:37:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=lX3S5Sj1;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=lX3S5Sj1;
 spf=pass (domain: arm.com, ip: 40.107.22.42, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=ezJM7KKX6jmNnvHvoYXyHv1u9HGfIYS9dxlvRb76Z6dKkB8pok9q0qbmqGyRBqcYZOp5Lwuqfhk3+J89QV8pCMX3JvcGl8y5idehvDAmoy9XReK99OjSt+PDoQrqrlXDWj8sB5ZDdZFAiJxxYdZljDXIn/3djfUdmko5ysBtXg73U5LBQzUqiRYdrIXQkvjNWpl89QwGOgq8+sywmDxf6SyU53KL80YGu1wIu624Hm/NGEN+re4aD100noqPA/s8Lj7ko8Nh3eU5pETsNWL9ze5xSaSqZQuZ9iiKAjLODz1ByaeLlYNWaF1BR7WsmRGxFkMecf9ajKIbYOVWdrHq7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U/L7dsV9Afe9E2bPKAq4W99lRwkZU9g6+mLRiZLw0qw=;
 b=JqceKyNJmNVYPmtSaJi5SAKjjbsRoPEX3cZcxawNE/oaJelENGJYbYt2gAjDWYxt6xXadLapz2VWZOC9cfdUMiVIMheUXdfkyGTJZMwBHH8znKEoIwF0j2qDKDKrv97UUAOuUqQ2/xg48yNXN4eU6BaSRigMaYqqXktV5rTAzrDlBy6DUOyEzjvW8y9eNGc/s7a7UrA70whEiQpJFHwSxiatzac+gZCTKYU3oFyQxrtEusjY0icLq+IxvBqV6t9TOa/Vy+hgY/3LQJMMhTxeoVrrWokBnfMYaTHARS3LGLwFBi3KiHqJFpmTxPL3mkOPlQxnGahy8S23E9EdJ/SVcA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/L7dsV9Afe9E2bPKAq4W99lRwkZU9g6+mLRiZLw0qw=;
 b=lX3S5Sj1fdovREteoeiBSSCBcdXnG161b6mjNQsipVG5iPPtY98eX7lZJpJHkR5eNVyBJ+z24CSYne6g+gc3HLE6CgBvhckJSJR1ROEFMnHsw1elt0ysxpbdKdpNdbwwJxAI2I/b9wMT40dzJklcLb8N0FnyjHprL1mmFGBiAJU=
Received: from AS9P250CA0002.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:532::6)
 by PAWPR08MB9053.eurprd08.prod.outlook.com (2603:10a6:102:341::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Fri, 19 Jan
 2024 12:37:29 +0000
Received: from AMS0EPF000001AF.eurprd05.prod.outlook.com
 (2603:10a6:20b:532:cafe::ab) by AS9P250CA0002.outlook.office365.com
 (2603:10a6:20b:532::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24 via Frontend
 Transport; Fri, 19 Jan 2024 12:37:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001AF.mail.protection.outlook.com (10.167.16.155) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.16 via Frontend Transport; Fri, 19 Jan 2024 12:37:28 +0000
Received: ("Tessian outbound a297577ee0df:v228"); Fri, 19 Jan 2024 12:37:28 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dbc2ee258b25bc6d
X-CR-MTA-TID: 64aa7808
Received: from 56f79e88070b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 440BA795-C61C-450B-B27D-71B95A8ABA04.1;
	Fri, 19 Jan 2024 12:37:22 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 56f79e88070b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 19 Jan 2024 12:37:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYLnVx/3RbdAOdCKe+yxdhE6vDeLLTLiC4AXX+cu6OjyAK15TOIXQfIwFFHKcfGPJ2l2NhfARTtaxt/6Gr/gi/+WUvfy032q6g1auV18LjX1FL2dW9zf0u2sTYMvTGrpOlC7XUS9g2F4XxbUEFVSmhng9nOmf9l+19U7L23NS/LhcBovhi67NqhggvHrUQyd1M7Rh60XkhXJy9D1CNuRDev2LN9CXHuRiBI/sR9p8x4ykhUnqWiecmUIebvjjkPkBhKWF/O5hDizohhZdqAoaE+Z+i2Vz8z1udAFTsd9/xXQDCfq0XuZrrqkmchAf9hAF4tc0eXyDZbSR6AYzPSHyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U/L7dsV9Afe9E2bPKAq4W99lRwkZU9g6+mLRiZLw0qw=;
 b=HFP6Xxb10Y82u0GOu/KCGQXxf5Be9p3UMaZm7GFGjdeNvcRzyeZaFHekAwhcodxVPYzVBqxFKX2re7cF6v2hK6DOXIKwPLREdz9UZgWwnJEMCjbmSxkOYvxDLDdqCwx3fxHP6aqSm2L8ttPscv5pOWM7S2wqIvib9EJ+DPKXz5I6L6dNGfpsqDye/NDpm0B5/iba87UIEwNzAqzljedIljNeBP3zeGvTbts2kyfPpb4utHTA2j4zjK3HzXT/qnuKgOKk3A28buY2v4E91pFkqZV0ub3ae+/J9RUfWtTb41bVg7wbLVQPMdUCB1/HwH94aDFZt6ND6j9uFmkQ0FS4qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/L7dsV9Afe9E2bPKAq4W99lRwkZU9g6+mLRiZLw0qw=;
 b=lX3S5Sj1fdovREteoeiBSSCBcdXnG161b6mjNQsipVG5iPPtY98eX7lZJpJHkR5eNVyBJ+z24CSYne6g+gc3HLE6CgBvhckJSJR1ROEFMnHsw1elt0ysxpbdKdpNdbwwJxAI2I/b9wMT40dzJklcLb8N0FnyjHprL1mmFGBiAJU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB10464.eurprd08.prod.outlook.com (2603:10a6:10:53a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Fri, 19 Jan
 2024 12:37:21 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7202.020; Fri, 19 Jan 2024
 12:37:21 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"marek.belisko@gmail.com" <marek.belisko@gmail.com>
CC: Daniele Lugli <daniele.lugli@gmail.com>
Subject: Re: [yocto] etherlab
Thread-Topic: [yocto] etherlab
Thread-Index: AQHaSZIq9dWGDz4VWEW/dwgaNylT+rDfHIaAgAD8nYCAAL6LAIAAPZ4A
Date: Fri, 19 Jan 2024 12:37:21 +0000
Message-ID: <8585005B-41BF-42D5-9703-D40F12655E0B@arm.com>
References: 
 <CAAfyv36_k6eEvWoJB4_kD4gKKmQ3ia3XWTVtYRf5hgyi5ctDzQ@mail.gmail.com>
 <24610.1705613679102985792@lists.yoctoproject.org>
 <CAAfyv34GF1V7nGiTm_vD=twOKRdzaE4MZqAvA7nM2Dy2BZYaUA@mail.gmail.com>
In-Reply-To: 
 <CAAfyv34GF1V7nGiTm_vD=twOKRdzaE4MZqAvA7nM2Dy2BZYaUA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB10464:EE_|AMS0EPF000001AF:EE_|PAWPR08MB9053:EE_
X-MS-Office365-Filtering-Correlation-Id: 83d8038a-70c3-45b6-a1d1-08dc18eb661d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 C4ktCtsg+taUyESl+w+fettJwJuK0PExrksa4lux+29GSPxhCdT2T2Ymkf00ktqxN/rxeNF2RSwkehOspxD2/bIHF3kf9aAAXc1RppyVp4xdtJRMbg48b03gHXz7VXeKlLEhbSLk2Ba4ZR2xUHGEPJLR9vH6N9iRwt+AxLaPhVYwj2YwtT/eu6ISowGHhejg0Hg9yaDJWZC+N+1k0Ss6WfwQlCMF0mXhDEypRpTHVZHAI2S4MGn3J/IcPeK8do0Fn4IrjobgGN5uztVxVGnxLaZFEiBhKMec3oEI8hifKdDpnlW6OrV0UW809F0X87LWD4MxCrzd1yig/u+suQXWD2oWqHKtEqiRvL7Itxqqk7gJ5NcCh2Lag94+J1Ngt/trodcj1qBCv86+v0uoM8GIf8x2QQpKuCmxFth2HElfLQQ+G/7E4yzScNgYtVEEo4JY2NPkj5n59dGDb8U+0YUWfTRSqZrnzlPH7iVhNC0vqs2i7keIO4ib0vcsPbuxh4ItYlFQcb6DR0fj4feDdBR6PlP/ZajVKlAOMNH6nC7rMzJh3nyT6+lIIzR2Uk4qJpWtywcEwQLhBiCGsoA3YVUfSbn53rtHqnEgce6+iFHpO9ZShTVGpK2A2P5I0kPNsgm2Xxs4WiNgvOMa30obL9+rag==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(376002)(366004)(136003)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(83380400001)(26005)(53546011)(6506007)(36756003)(33656002)(86362001)(38070700009)(4326008)(8676002)(71200400001)(66556008)(66476007)(6512007)(2616005)(122000001)(41300700001)(8936002)(38100700002)(316002)(2906002)(91956017)(5660300002)(110136005)(66946007)(66446008)(76116006)(64756008)(6486002)(478600001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7A8F44D65150194F90626BBE9F651B32@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10464
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	3da28557-cb6a-4ad8-2322-08dc18eb61a3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bToTC9fo2gSNkixPrHcv9Swwx/Vb2QBSzMvjZpQ/5kL2wVN3Hb9HPdXEg5fEjp3++cYfZio8gBeeA1bmuFBRTdvpOUWkJTD4ovo9OMkV1yJeV/DcqHrGpfKoQ6Sr4i1+i4MkE2XZdMXCdYp2SxpWsTuWjJxO4bQxp75XQpQyS5TpCT1zGaMO1ZIsyWRrB5zfUWEJMntzVPiD/QCCJ9DfLZzsSmSOfDQPXtP+Is0TpmWXcGjHau7KDFfnLl9tpHMyw3vUByhEqyXELQa+i60kGsGUmAjQ7HwktfN+aKyk3h+j77jiH4n8g2jttrRiNqGOvOcKEyhizG4RcUURJ1zEilKQGytoxseYNQbPkUbeCHjd6htIflrKjhJVFNtdSDr5FL1dJFS3Or01810Gw3LcH619krtLdwlkEtjxZykW+xdDrZYiqope8lVeU3qtRxADtj4M7RUWFujYoHDcMSUjA7DM3YS10FTI0W9Wf82UO9GhHHpgGepSrRi4lCMmAcG/GhKuvjWtQ8lzAk6Kha8hSvqYpxakfznyUVCLGKBk5Via3ijexbF4GqPWgbK1dSJ1/a82QIZJQ80RImwjvCVSlqLNipv02GfwD4dYtSiWH5Pr68Oq3X52FcCAsyXEMxfRf02iXrslgp799dcP/sN9bG9PcBJ1CMM0ySj57Hz+TuZ9psp8tCRDmU0kKm4OsaSv+FWohtRTBKIS/fiXhSFXI4apXrUiJ3YQUhEI+iMxwRXwrckMfe/EYkNVJn7mtuUf
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(346002)(396003)(136003)(376002)(230922051799003)(451199024)(82310400011)(186009)(1800799012)(64100799003)(36840700001)(40470700004)(46966006)(356005)(2616005)(47076005)(81166007)(82740400003)(36860700001)(83380400001)(8676002)(4326008)(8936002)(478600001)(6486002)(316002)(110136005)(70586007)(70206006)(2906002)(107886003)(26005)(336012)(53546011)(6512007)(5660300002)(6506007)(86362001)(33656002)(36756003)(41300700001)(40480700001)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2024 12:37:28.8742
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 83d8038a-70c3-45b6-a1d1-08dc18eb661d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AF.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9053
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 12:37:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62197

T24gMTkgSmFuIDIwMjQsIGF0IDA4OjU2LCBNYXJlayBCZWxpc2tvIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxtYXJlay5iZWxpc2tvPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gTElDRU5TRSA9ICJHUEwtMi4wLW9ubHkgJiBMR1BMLTIuMS1vbmx5ICYgVW5r
bm93biINCg0KT2J2aW91c2x5IHlvdSBuZWVkIHRvIGZpeCB0aGUgVW5rbm93biBhdCBzb21lIHBv
aW50Lg0KDQo+IERFUEVORFMgKz0gInBrZ2NvbmZpZy1uYXRpdmUiDQoNCklkaW9tYXRpY2FsbHks
IGluaGVyaXQgcGtnY29uZmlnIGlzIHByZWZlcnJlZC4NCg0KPiBFWFRSQV9PRUNPTkYgPSAiLS1l
bmFibGUtaWdiIC0tZGlzYWJsZS04MTM5dG9vIC0td2l0aC1saW51eC1kaXI9JHtTVEFHSU5HX0tF
Uk5FTF9CVUlMRERJUn0gLS1kaXNhYmxlLWlnYiINCg0KWW914oCZcmUgZW5hYmxpbmcgYW5kIGRp
c2FibGluZyBpZ2IsIHBpY2sgb25lLg0KDQo+IEZJTEVTOiR7UE59ICs9ICIke2RhdGFkaXJ9Lyoi
DQoNClRoaXMgY2F0Y2gtYWxsIGlzIG92ZXJseSBrZWVuIGFuZCBjYW4gY2F1c2UgaW5jb3JyZWN0
IHBhY2thZ2luZy4gIEl04oCZcyBiZXN0IHRvIG5hbWUgZXhwbGljaXQgZGlyZWN0b3JpZXMuDQoN
Cj4gVGhpcyB3b3JrcyBpZiBJIGJ1aWxkIGV0aGVybGFiIG91dCBvZiBwb2t5LCBidXQgaGFzIG5v
IGVmZmVjdCBpbnNpZGUgZG9fY29tcGlsZTogSSBzdGlsbCBnZXQgdGhlIHNhbWUgIm5vdCBhdmFp
bGFibGUiIGVycm9yLg0KPiANCj4gTXkgaW1wcmVzc2lvbiBpcyB0aGF0IG15IGRvX2NvbXBpbGUg
aXNuJ3QgZXhlY3V0ZWQgYXQgYWxsLCBhbmQgc29tZWhvdyAiY29uZmlndXJlIiBpcyBleGVjdXRl
ZCB3aXRob3V0IG15IHBhcmFtZXRlcnMuIElzIHRoaXMgcG9zc2libGU/DQoNCk5vdCByZWFsbHku
ICBBcmUgeW91IHN1cmUgdGhlIOKAnG5vdCBhdmFpbGFibGXigJ0gbWVzc2FnZSBpcyBmcm9tIHRo
ZSA4MTM5dG9vIGRyaXZlciwgYW5kIG5vdCBzb21ldGhpbmcgZWxzZT8gIFNoYXJpbmcgdGhlIGNv
bXBsZXRlIGxvZy5kb19jb25maWd1cmUgYW5kIGxvZy5kb19jb21waWxlIChkZXBlbmRpbmcgb24g
d2hlcmUgaXQgYWN0dWFsbHkgYnJlYWtzKSB3b3VsZCBoZWxwIGRlYnVnIHRoaXMuDQoNClJvc3M=

