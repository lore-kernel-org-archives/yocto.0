Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F935EB64D9
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 09:20:58 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.74])
 by mx.groups.io with SMTP id smtpd.web10.54791.1688462453285606059
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jul 2023 02:20:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=D+LwSRx4;
 spf=pass (domain: arm.com, ip: 40.107.249.74, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3IYdsbJ4ZdTnD63t996zssruTLMFASmnBs8WoYRFpGY=;
 b=D+LwSRx4atBa9kq9uuuy8iSweTjbZF9DmFM66hGSbmTI4N/dhasyStCJGlXzGsxCr1NGLopUHxiZBE0BCckqJzzEW2lUnFEUXiSHmGUH4SFn1+zU8F/ZF0iwx2CLBvIZiRVGITvcLebz9hFsbyX6awt0Iv9RHMpAHEhmZkaYh/4=
Received: from AS9PR04CA0052.eurprd04.prod.outlook.com (2603:10a6:20b:46a::21)
 by DB4PR08MB9310.eurprd08.prod.outlook.com (2603:10a6:10:3f6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 09:20:49 +0000
Received: from AM7EUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:46a:cafe::f8) by AS9PR04CA0052.outlook.office365.com
 (2603:10a6:20b:46a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.22 via Frontend
 Transport; Tue, 4 Jul 2023 09:20:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT022.mail.protection.outlook.com (100.127.140.217) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.18 via Frontend Transport; Tue, 4 Jul 2023 09:20:49 +0000
Received: ("Tessian outbound d6c4ee3ba1eb:v142"); Tue, 04 Jul 2023 09:20:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3f78958838fe6dac
X-CR-MTA-TID: 64aa7808
Received: from f8ca65e253e9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id DF9D0485-9944-4F87-9ED8-C6E8AF62319E.1;
	Tue, 04 Jul 2023 09:20:41 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f8ca65e253e9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 04 Jul 2023 09:20:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsk6xIy400ltMMgkMPyeyu8DaAMaZ4ilvA58rKPS+c+UYOPIi4yB9NtQhU7w0k3b5IW+zMzYvxs1zzCABx+TmM16AOdmScTShFz5wc19ezWJ9zytNxFHIER83M6upU57ahclIQAv4ZTg2HsVwdsGDKR9WdYdARYquOhg7OxhjPc84qe00FUXwLTGDJ5CLJwL7y47K9i574U30ws6ThPGBh29VdT84kBwRygDQpOaU9oTtlxP7+RqAjgxJw+f9ScpC4iyKMpRCeD6D/Q5c/wQwWlYN5QAgsVJcafGKVnlybjv5QN8PO3ns7Act0mzZaXAR1q87PzDvCauQ3Bpzx6Wbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3IYdsbJ4ZdTnD63t996zssruTLMFASmnBs8WoYRFpGY=;
 b=af1DqHS+NBNS3qrvlmpnDvjvdAz9Hw5uO0P/WCy2GF7Fp1fzZvnsn8aZ9YF5nDaM2Qyc53Opk4AMhi75rvMYfCjFGb0B6cL93Cm3wsTIrpMxvm5GEacwKMUA+9j1Zpkkd/HI3t+6WzmJlWjZLYd1H8cqykSkdQ046aYQAUBKGlemgKh/kDHMzMFTAqmwcxYw5YKfsw1HKQWZ3o2FllmQ/Gsh71vxkZmmJOFxvbMJi/gf6zUaWHULQR3+gxz0bjObQh4B4MIcdghASIvtKRLxRBVrIGhewiPEYnQmdQuqtDtlzJwzjz7y2zc+debTKaLhgkQy38QJ+tN8hZn7QREbBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3IYdsbJ4ZdTnD63t996zssruTLMFASmnBs8WoYRFpGY=;
 b=D+LwSRx4atBa9kq9uuuy8iSweTjbZF9DmFM66hGSbmTI4N/dhasyStCJGlXzGsxCr1NGLopUHxiZBE0BCckqJzzEW2lUnFEUXiSHmGUH4SFn1+zU8F/ZF0iwx2CLBvIZiRVGITvcLebz9hFsbyX6awt0Iv9RHMpAHEhmZkaYh/4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBAPR08MB5622.eurprd08.prod.outlook.com (2603:10a6:10:1af::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 09:20:39 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%7]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 09:20:39 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "wes.tarro@azuresummit.com" <wes.tarro@azuresummit.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Typo in python3/get_module_deps3.py?
Thread-Topic: [yocto] Typo in python3/get_module_deps3.py?
Thread-Index: Admt8fRz3B7DICmJQTeqQIAnekSwsAAZtEoA
Date: Tue, 4 Jul 2023 09:20:39 +0000
Message-ID: <85F5AD3F-41A4-4239-AE6E-513E57921C26@arm.com>
References: 
 <IA1PR11MB7870949D00A8EF0C2EB58BE0E229A@IA1PR11MB7870.namprd11.prod.outlook.com>
In-Reply-To: 
 <IA1PR11MB7870949D00A8EF0C2EB58BE0E229A@IA1PR11MB7870.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBAPR08MB5622:EE_|AM7EUR03FT022:EE_|DB4PR08MB9310:EE_
X-MS-Office365-Filtering-Correlation-Id: e7495c1d-97bc-4d93-c8b5-08db7c6ff4a5
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 mjlekmb/+7YIwUxRisftYMlraRbNiRgXuwF4QZV2lcBO2PdIIjrUVAwZHbkv0hqtSukYvZ+eMDxyabqGrWDq6kPQDIcuyPJ/7by8wAW7txorHAvHPn2t2cON1oKQULMYuwCZxYsf3pCr+Km+uQaHLljgX6IgndXi9bxUnPG+PbTapWtlPs2lGb5WI+WTOhRFhAYgGazjGKSao/ucVBDR8Y80+/8pR5ho32KAx3RGxwGLneGFzPA9j7E6pzycmmoeJYqDPQ0EuYrkbXvmWOUT6upRk/ESlpGG71oR/P9WrQp3hC+OyhEN6gS8MXNDUHbmWnqMvmSnl1Y7KlNNAhsLue7GoS0v7xUXdB4FRRZYv6M867KZAW5qV6wBwJ7j6zmJbI/wZfxY6Ap9KfRLDPFynEGs3iu0zEhoO8HJC27svROtag3+/O6XtgTTYPRfbWj1FaHU55yFg/d86wP0IFHNi6fYKaGpI8Db+06zSqUmwFNc93T6gB5w5wiPYCJDsPaLopkPmSnGqUpOtfhkxf2gKBwVo9VC1VQBUKM0a7QqAoTHASOQRcnHMiuIvzXvYDLQR5SYXO6jiLpNqS37i+p6iS19EKZWV/TEAAdCB/DmZN9/ap/r+1Ojia2LbVgRcqZseRjgXcDEC4dP9510p5IIOA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(451199021)(41300700001)(6486002)(4744005)(38100700002)(26005)(71200400001)(122000001)(2616005)(53546011)(186003)(6506007)(966005)(6512007)(38070700005)(86362001)(478600001)(36756003)(2906002)(316002)(66476007)(4326008)(66946007)(6916009)(64756008)(66556008)(76116006)(8936002)(8676002)(66446008)(91956017)(33656002)(5660300002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <DABE2BBA6AEB294496B1A3CECD77355F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5622
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT022.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ca81fd5c-2a16-4e9f-f60c-08db7c6feeb8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	H6eUxGJrymKGOIr1/VYFKVAAnTE0F4vbbvNjMWSISoRamGAMPsQXxNm2jol6R50buUISdaKHmxyHDEzbgtl7GWs6/+XT6G6G7mFHMCtR5k4KlOA/uA2V5GbyjSbL73anZUdo0D4kH6Dnvs8ueEoGY5rewjr6us8ucAT529rE2Yo3tVBBMXlq+oUFI+3fct+IVLBPjfiehp5w7r9FofanlafMQaLUKoGndYJLIT6yMbE43O5A1MFi5Ouj9a1/M6ZX3r2OVE+uZ2+jWlDkQMHRu9epHSLeZCfAMVEOvIC3I+IzSp3o5Y62ggAfalO4NCSWV4GzRQi4N/GPxLz1v1cwCalsK5kB4LRbXEFB4eswVe5vJdF6h1PFAM47Ilo53SkwKTuEsjRdoMRltH7GFK5ZecfqOGEd6zErF98E/jTqYUjndJQzMyTgX17lRCjZOrPrqD16UM9SO0bhdjaNX+7Mv8i7PwRigaKFbiYevg/pPNbyHxD4EZhK7MukJotGHDxjD36YhpbCZZC/JqbbxKe+2KzcjJrHUBbRz5Ke/PnEAuensa9DnQFTD/HaVauUu7s2HqsmwBVhvaklvErIBsUoS84AZq64Gc8WI6YpQdic0TbRjUlNsLsa+adpHwpiJgtJEftMG9rgls/gxUYgVzq68vLIUzNisjFB7e/i+qNq4uA0qKC4QS2esO0ILbPbGbYyGqVAcMvKeWvinyUAE6hfb+xl+G1/33kIWNqnQJaK1XY=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(39860400002)(376002)(136003)(451199021)(46966006)(40470700004)(36840700001)(6862004)(6512007)(26005)(966005)(186003)(53546011)(33656002)(86362001)(8676002)(2906002)(8936002)(36756003)(6486002)(4744005)(5660300002)(40460700003)(41300700001)(478600001)(6506007)(81166007)(40480700001)(4326008)(70586007)(356005)(70206006)(82740400003)(47076005)(2616005)(82310400005)(336012)(36860700001)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 09:20:49.0308
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e7495c1d-97bc-4d93-c8b5-08db7c6ff4a5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT022.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB9310
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 09:20:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60510

T24gMyBKdWwgMjAyMywgYXQgMjI6MzgsIFdlcyBUYXJybyB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8d2VzLnRhcnJvPWF6dXJlc3VtbWl0LmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gDQo+IEkgZm91bmQgYSBsaW5lIGluIGdldF9tb2R1bGVfZGVwczMucHkgdGhhdCBs
b29rZWQgd2VpcmQgYW5kIGNvdWxkIGVhc2lseSBiZSBhIHR5cG86DQo+IGh0dHBzOi8vZ2l0Lnlv
Y3RvcHJvamVjdC5vcmcvcG9reS90cmVlL21ldGEvcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0
aG9uMy9nZXRfbW9kdWxlX2RlcHMzLnB5I24zNQ0KPiANCj4gU3BlY2lmaWNhbGx5IG9uIGxpbmUg
MzUgKGZvciBwcmVzZW50IGdpdCB2ZXJzaW9uKToNCj4gZGVwX3BhdGggPSBkZXBfcGF0aC5yZXBs
YWNlKCcvdXNyL2JpbicnJHtiaW5kaXJ94oCZKQ0KDQpZZXMsIHRoYXTigJlzIGEgdHlwby4gIENh
biB5b3UgcG9zdCBhIHBhdGNoPw0KDQpSb3NzDQoNCg0K

