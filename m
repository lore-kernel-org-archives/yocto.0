Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7C4EC5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 14:01:57 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.71])
 by mx.groups.io with SMTP id smtpd.web10.91214.1700748115521185215
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 06:01:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ZpHDybLL;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ZpHDybLL;
 spf=pass (domain: arm.com, ip: 40.107.8.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=n5fXjSvNmDsknUYmstQ8ME51LBH42nfzn4LkcJMQ8ZNxZv/hKkcuwy1p4IK2RzBm9lpTkzegzMtTL1boPHaNQX91Epu+DjdDarb6ZL1Zw792diM+YKQoV4DYhXKWvFGmq8B73ise3qFf26QZ/Fj6rI2lygvhqeQkocxkghRY/KpUjqmPgLqhADLdRMoLH1YjBKINEGCwfr7RRBIZZGjB047qchAYS+O+15DdqVU+LvOYLaEHZ6QRewf8raur+M76EoDrYTLczj7UJ8bPCeTPEGCzJt6nus39/A8V1nPYtD7QxaTgC1XjbH6SKrj7BnxAFO6527sSxYJaC6p89UNAmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KX7S72AJr000iyxe4baqFNHg/YOUKI32v0lKjbZavbU=;
 b=FTd8FN/kBlGcH0KMXBIPIx8SlcLujUMYpxMl8aNg0iyHgs2+ZpRGP208bK7fenHgrELZXcEUrCFFwuDQuo6PxexxnNvz2JqCV3iHQCgIQhOU4U7UqxB7ULY7GVnMGI6meL+mDRdF7CKOx/d14/O+phqgw425Z5k7wPvOCfKrhuPVTFp+EtOFoKEeSbw5cM1ZXc7IjSyyH0/DrVpaq9IPMMeBtBLpfkzNthwyDMTGYUG8fILH/UFVkU4ZQZ3oIzjYzGmaohaEJ0Sqr6n5JeZdDQ/ysRhKjoPJPeZQGs2AEmacs/xUxdb05L/mpcWP3vO2wx4ZDbXw5CoxzsDHmf81LA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KX7S72AJr000iyxe4baqFNHg/YOUKI32v0lKjbZavbU=;
 b=ZpHDybLLTtDEUUGbhjEHKfS6KEiD7Z0GWA8e46g7KEKhGqphezIQlQyXUKWm3+gi+2P4Peloau2YCcQgXYaFe1ty3FTygW3lv8w5ge5hfuzBFpXE6ICNwvc9deplU1vyl/CqSITo6po2gBt3JzHmRw0n/CF/eu5yNb+oqY8Nn9I=
Received: from AS9PR05CA0200.eurprd05.prod.outlook.com (2603:10a6:20b:495::24)
 by PA4PR08MB7433.eurprd08.prod.outlook.com (2603:10a6:102:2a4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Thu, 23 Nov
 2023 14:01:50 +0000
Received: from AM3PEPF0000A78E.eurprd04.prod.outlook.com
 (2603:10a6:20b:495:cafe::1b) by AS9PR05CA0200.outlook.office365.com
 (2603:10a6:20b:495::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28 via Frontend
 Transport; Thu, 23 Nov 2023 14:01:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A78E.mail.protection.outlook.com (10.167.16.117) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.12 via Frontend Transport; Thu, 23 Nov 2023 14:01:49 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Thu, 23 Nov 2023 14:01:49 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 24ba6ac66c789e68
X-CR-MTA-TID: 64aa7808
Received: from 81b1eb3d4732.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 39A0A916-207A-4288-BB13-46FD3B0A1CA4.1;
	Thu, 23 Nov 2023 14:01:41 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 81b1eb3d4732.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 23 Nov 2023 14:01:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4dw2Fwr5lqwkP3qaxt0KECH42+kH2gb7tkLxeSRNyC44VN6mHqZcdefvqANcN0IFGpqXvnRA5Nu51gB0mMBxE7sJ/yuwnb7OghfNxs8Gku9MEC8ik4D37DdSJmWnxwAU+g4g0gzozMZ+jdU83E15Jr1rH1IUNcpsTOuS5A589OEsQqLfgAd7tQTW0KKLP04VkJjzgE0vtUearqPQwwIkBJKsUymbol2j4rCcdPhHP/vc/1IEJpMhR4DGZOTmnwb+SZ60uYe30r7KK6rwtTEGkxdkdE6Ydsoej02e5KfbbLcdAmmW0HtudL3AndIFVG6jPCO6BDhURgYYi0VIw3Cdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KX7S72AJr000iyxe4baqFNHg/YOUKI32v0lKjbZavbU=;
 b=YgubZEAol9dr4GpKjg9E7QwhqA8YS+9wpn+AymYExxYfxTsJZeubj//A+S+R/fFElZlAwvE9Ihbf0Y9g8kh4R190j6EpszGUSGUYA0xsamCQ+Ks+oGUb1hFrUKLpwlHPbOa50vF7WVInUCGBCjP3phR+fFLT+5FCffdBdJITHT2e8UOkUZf7bvG6W+rfSzVkJKEj1T5cLIbBTg8zprm1Hh+/U52FzPPeCLIqmYssnmI9xejJQqTlIMxrKdKGoTZVDy8R5WigYEFIBFD9WbDiBsR+OE+BIGAVEW7gBs8HZgcZ7kB9r/R6czgPzOLvJYnkeXzFEk3cwKIcBrpPdrc2lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KX7S72AJr000iyxe4baqFNHg/YOUKI32v0lKjbZavbU=;
 b=ZpHDybLLTtDEUUGbhjEHKfS6KEiD7Z0GWA8e46g7KEKhGqphezIQlQyXUKWm3+gi+2P4Peloau2YCcQgXYaFe1ty3FTygW3lv8w5ge5hfuzBFpXE6ICNwvc9deplU1vyl/CqSITo6po2gBt3JzHmRw0n/CF/eu5yNb+oqY8Nn9I=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VE1PR08MB5632.eurprd08.prod.outlook.com (2603:10a6:800:1b3::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18; Thu, 23 Nov
 2023 14:01:39 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 14:01:39 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Index: AQHaHOYJS+jGppb1UUOxtF3z9OWfWLCHzHaAgAADHoCAAAPVAIAAAU2AgAAcmQA=
Date: Thu, 23 Nov 2023 14:01:39 +0000
Message-ID: <D16D6B59-7E34-49BC-8385-D7216058B9A4@arm.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
 <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
 <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VE1PR08MB5632:EE_|AM3PEPF0000A78E:EE_|PA4PR08MB7433:EE_
X-MS-Office365-Filtering-Correlation-Id: e1da9080-5704-46be-d1a6-08dbec2cbce5
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 c76nR52c2fL4Y6Mu1lJPQkxJ212ZjE+aVRU6MSfq9dhlg9l2PuSAzuDuXM23SdamBLwx0wDVoeqtsiXJq5lv/YaX6hehSvLh3X36hqXv8A9/cror85tO01plsNPBnRzGR/DMSClWyYUl9LtzLrf1l2K0+buzI27JDboTlZwu6BdUmt6JT5SWU7ygE3PgKpVIl74b5R3zxRfZXffc+29yKCMMkePPEmdylt+10Y66ihkAo+dTjg7mG46efBpqaNyA3Eqs1Ed7le1EVuNCPau2lOWly7w2e40w159VkxyrRMpDD/Q235AudLKXnhgjeKJhX56lyzKmSTpucaXxvh84ffOdFxzKbMl1wXNPOgKQS5m/h43JlOAuIb07WYBfWqTg310PBnSycZ51LhJaL8jnQIIBazAHp3sLYry0Xc5G4RXTLLmTEDdQOemDwThLGEacD6ivuV0YOxVNdK5uMNaVxIoLs5+mgaYxCwez1jrOeHZ0k4EAO+jQTkJux51INl9UINMikrBxdsiDNFug74Qle8kIupwPRH7D4uGEwP2OY2Hi9GksfHchGJ91wasHbhX99396iEWgtI+EsMaHKyAeJyySxj+Pnic8fEX13My7mC2MiHFNa7H/cFTzUze93cFk09mwvygDTeFdMNr/W9VnVg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39850400004)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(53546011)(41300700001)(26005)(122000001)(36756003)(2616005)(83380400001)(33656002)(38100700002)(38070700009)(6512007)(6506007)(71200400001)(2906002)(4744005)(5660300002)(66556008)(66446008)(91956017)(316002)(54906003)(66946007)(66476007)(64756008)(76116006)(86362001)(6916009)(8936002)(6486002)(8676002)(478600001)(4326008)(966005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <658CBEFEBFB84C49AB48C5D09D737BCE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5632
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A78E.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bf41d79f-c030-41d7-a675-08dbec2cb6d7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EGz3blZ1iz62dTDzgmoClQH99S+VS7FWYAS8DNIL3PiAaBdDzEn3jwWTVcIjes2h1Ghr3tDXumz7X62ESF0MLFo99D4EtloLpcL04HusPUzdog5FBXpzKqjbg4d2/E5sKWkL1LUoKTlwlMFAHhKT3KgVHCYLZT9wv5s6qZf79LV6U6BAt6daqgMLTNW9uJF6G7l5sQhy2Fxd1W0Gn+/WY8L86nYwZwqkjW2T4mAJLpFPRRq0m7cKSO80EE07xQfi7aLFGQCJGqs00VnWKIXCLG9XgR6p5i9Z294qbBD0gMAx2XvP6P+a08AVdrmIRmWJNDwY/xeDwTag1Rd6y/fpmllCjFCKrAuC0NiwIpE9TP3nyL5ME27VsHjKpinNK84SGWlan1lZ3yXFJuUzjyVmRhUJ1riNN0+tIo13IuWgvUzMmDXhadYh/un66KcuLkURzobbhk0YLHa5k3/DkwbTXMlPJQy2LmRjZZWnm2SHEd4+9KY840geOy+6K7zD8D05sIh982f3DDpg8jQEbSWAbCPDXX7fMh6dUxFPkVqRryeveHwPeBlDFT4s8TVUcBIqpdIFRiFW4S5h8bQvfMJd4b7FJwVj5yJ6nbrNaCNyTnhW3rFtgGeNdEhvU2b1GyCV0kby6B00otY4166QGb23FDsBt6s6QX9RBOgxDBXGRbp1BtaL7GMDf5neLUowDO1H37TtoHzJO18BTZDKc9m7FQIyPMpNFBPHSfvbRvtpT8A=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(39860400002)(346002)(136003)(376002)(230922051799003)(1800799012)(451199024)(186009)(82310400011)(64100799003)(36840700001)(40470700004)(46966006)(40480700001)(40460700003)(70586007)(70206006)(54906003)(36756003)(82740400003)(81166007)(356005)(33656002)(86362001)(47076005)(36860700001)(316002)(6506007)(336012)(53546011)(83380400001)(6512007)(2616005)(478600001)(4744005)(2906002)(966005)(6486002)(5660300002)(4326008)(6862004)(8676002)(8936002)(26005)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2023 14:01:49.4170
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1da9080-5704-46be-d1a6-08dbec2cbce5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A78E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB7433
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 14:01:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61742

T24gMjMgTm92IDIwMjMsIGF0IDEyOjE5LCBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmlu
QGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiBPbiBUaHUsIDIzIE5vdiAyMDIzIGF0IDEzOjE0LCBS
b3NzIEJ1cnRvbiA8Um9zcy5CdXJ0b25AYXJtLmNvbT4gd3JvdGU6DQo+PiANCj4+IE9uIDIzIE5v
diAyMDIzLCBhdCAxMjowMCwgQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2FuYXZpbkBnbWFpbC5j
b20+IHdyb3RlOg0KPj4+IA0KPj4+IG1hdGNoYm94LXRlcm1pbmFsIGRlcGVuZHMgb24gdnRlLCBh
bmQgbGF0ZXN0IHZ0ZSBlbmFibGVzIGd0azQgc3VwcG9ydC4NCj4+IA0KPj4gQXJlIHlvdSBzdXJl
Pw0KPj4gDQo+PiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL3Bva3kvdHJlZS9tZXRhL3Jl
Y2lwZXMtc3VwcG9ydC92dGUvdnRlXzAuNzIuMi5iYiNuMTQNCj4gDQo+IExhdGVzdCwgYXMgaW4g
bGF0ZXN0IHN1Ym1pdHRlZCB2ZXJzaW9uIHVwZGF0ZSAodG8gMC43NCkuIFZhcmlvdXMNCj4gcGVv
cGxlIGFyZSB0cnlpbmcgdG8gbWFrZSBpdCBwYXNzIHRoZSBBQiwgZmlyc3QgTWFya3VzLCBub3cg
S2hlbS4gSXQNCj4gaGFzIGdhaW5lZCBndGs0IHN1cHBvcnQgYW5kIGl0IGlzIGVuYWJsZWQuDQoN
CkFoLg0KDQpTdXJlbHkgaXQgc2hvdWxkbuKAmXQgYmUgc2hpcHBpbmcgdGhlIGd0azMgYW5kIGd0
azQgbGlicmFyaWVzIGluIGEgc2luZ2xlIHBhY2thZ2U/DQoNClJvc3M=

