Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EB02C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 11:40:55 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.77])
 by mx.groups.io with SMTP id smtpd.web11.42245.1702899649372378182
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 03:40:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=9Hni5aOK;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=9Hni5aOK;
 spf=pass (domain: arm.com, ip: 40.107.7.77, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=h30BaBwEFWR0RobbGMh2FoCdJ5kW6H4j0prQ85u+CJd+Tdp9aMrXn3wxDli09QSjYV9yWY7Dee8WGHn9NqmK5ySFigryPbHLyBR4ZUSh8GLtvE7wDVdgDOjDmN/+xbterOJNseS9lwqwkxLP7KUOCv5frzdhRhXRomkhoMZ5KFGad4MOpmdkuOE4+jBxQFS8FNAY0uWX0tS5NJJazoIMF3kdt7LxD8fNFGcnR9tFHZ0oMpZDXCwk/hz6A+10rFanPl84JY2TDjA4v38BJWYHRyvTZ2fHWfQDogPx3nIp1ZT73Q/ZgnZ2gWNb/yteJKOauSs74tOUmsC8M+4/1PKEAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGx1eR1PpTux3qqCZ2sA8BOVbZwdxnASrnm6/BFd6Ks=;
 b=QaPLh3de1sFkf5hJTT9nx1vf9yZJ41+EWan8Lu2cEpB5xDKkiiRmWBCt6N1e7jZUex6pYmPBkW2rhISWNWqYrXqGhAzQoVnJTR+SFzyI4ni+VmmJRP2feZOMmmGjdKQqOP/7KmijDxl1t6GML3KWY73xtJNUhHosXbyYDWm/qVua/10r9xML7gHq+DPT9zaNHJVMmXvZlR16yPHXYmt7YwdS5HZOgenOAjgakbmrys+cTTiHk2Ui9II16IdXe/5tGf7OvLIxscKEyf/CEjQTDPdNd+/XxwowAsDzyxwEd2hjOJeupoaSyPb8HuOcMEfu4teq3Jxht8egDJ5PovqFNg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGx1eR1PpTux3qqCZ2sA8BOVbZwdxnASrnm6/BFd6Ks=;
 b=9Hni5aOKaWgxwM1lIrZZF569um39Vmj3umMVFRnM1jIlHj/mv4iGxqCVuPD743mGRC93YYMyrL+tvNLhWsaAgb5yus4CSugMbw7D9xRlS54R+KumFZYdVA4yeAC6mybF2NW7FwooLrrDOy/eSlF4T7Rz66BDQN8Sve6upP8q35s=
Received: from AM0PR01CA0076.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::17) by AS2PR08MB9988.eurprd08.prod.outlook.com
 (2603:10a6:20b:642::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 11:40:45 +0000
Received: from AMS1EPF00000041.eurprd04.prod.outlook.com
 (2603:10a6:208:10e:cafe::73) by AM0PR01CA0076.outlook.office365.com
 (2603:10a6:208:10e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.36 via Frontend
 Transport; Mon, 18 Dec 2023 11:40:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000041.mail.protection.outlook.com (10.167.16.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.14 via Frontend Transport; Mon, 18 Dec 2023 11:40:44 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Mon, 18 Dec 2023 11:40:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6337f3449c4bd49a
X-CR-MTA-TID: 64aa7808
Received: from 66d472578322.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id DB30B966-F7FC-436B-8A92-A75354843FE6.1;
	Mon, 18 Dec 2023 11:40:37 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 66d472578322.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 18 Dec 2023 11:40:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCm7oSMnmV0DAp5D0Ithgv9PdHPuIN0rexIOCf3gyr+scrF/buoC0OAV0CR+0ya3doLaRGZNleegUOdL4w/egKrGmG6NBpvbiMSOJZIo7Tf2BQrC7Tj0p9vkJ+gib7Rw0xvS2A6UH1siGu6X65LCeXVM8BcBfl3isBWOV0DX7x3caZY9iuRgEQ2NdkR8T3aPT23w239NVwBcv5T1s7cLwwnRlDC2Erw0TzoxBeC10TQQMblyqaxWk6bzZSuYtY9dPGWSuRShAS30P/GV9A2MrMjQgMhKZOT9KBTVQqaai6t5laEfTizmCxuJt2IAfzkqlhWggQ5LkSVEu18oo9isWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGx1eR1PpTux3qqCZ2sA8BOVbZwdxnASrnm6/BFd6Ks=;
 b=l10R92NPGIK0zE4PEuQub9sultoroEglS1XN4Y/MiAUxSDAqY460AnI2yKZtTQ50GzEdwBlDXKGPouqPhcpefdar2Q0XVuOBcL1KoQMwudkjsFz2PL3o0BqRovF8/fXqH/qv1NNgiF0ThIn++wNQqbdoLxWDne0Pestx13Jg6kEYYwag8onl30iU4NSmVcPt6gvyKVqFCHjt3qOpJf3Fq+cZtxF8WlWCbO5vgzk4BQ6XxxK6ECh3XNpcHcRxejHSVmepzAAsAzE+TYf1v0eX87wDZl4T18mfJLY8l040fYfmwBWb6SroyDTEoFQ/4R67iBdj9uTcSdmvkZpkzC4Y2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGx1eR1PpTux3qqCZ2sA8BOVbZwdxnASrnm6/BFd6Ks=;
 b=9Hni5aOKaWgxwM1lIrZZF569um39Vmj3umMVFRnM1jIlHj/mv4iGxqCVuPD743mGRC93YYMyrL+tvNLhWsaAgb5yus4CSugMbw7D9xRlS54R+KumFZYdVA4yeAC6mybF2NW7FwooLrrDOy/eSlF4T7Rz66BDQN8Sve6upP8q35s=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB8225.eurprd08.prod.outlook.com (2603:10a6:10:39d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 11:40:34 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 11:40:34 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "me@lrossetti.com"
	<me@lrossetti.com>
Subject: Re: [yocto] Question about DISTRO_FEATURES, DISTRO_FEATURES_NATIVE
 and DISTRO_FEATURES_NATIVESDK
Thread-Topic: [yocto] Question about DISTRO_FEATURES, DISTRO_FEATURES_NATIVE
 and DISTRO_FEATURES_NATIVESDK
Thread-Index: AQHaL414FYcipZZVyEynVXIzq17qk7Cu7t8A
Date: Mon, 18 Dec 2023 11:40:34 +0000
Message-ID: <27904E88-8CD9-4855-8F92-C744D2B728E4@arm.com>
References: 
 <PJaCF_UbBDlb_8qYIdXMqJeMLNIFHdJE7E9cv-F5oV2R_tgxj-Jvf9lZ8Oq1GqB0LaXu8-vg0MRoHUblQi75MzM86s59K6Kx6gGGQweVUoY=@lrossetti.com>
In-Reply-To: 
 <PJaCF_UbBDlb_8qYIdXMqJeMLNIFHdJE7E9cv-F5oV2R_tgxj-Jvf9lZ8Oq1GqB0LaXu8-vg0MRoHUblQi75MzM86s59K6Kx6gGGQweVUoY=@lrossetti.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB8225:EE_|AMS1EPF00000041:EE_|AS2PR08MB9988:EE_
X-MS-Office365-Filtering-Correlation-Id: aefc23e9-e5e6-438c-2ee6-08dbffbe2be9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 txosHHdBLohR44NZGxLChnCiINiN5ppyBTdVI+qdE0sWFyD+lHvytsu9NNXoM2MXy0KWhyqA5EYo5rYa6a/of44DUMgy4FypNzYqkcsISkIcD05j3iGnM6nEG91DD5SAsEDVq9MhxZYBLkeSkrF2GA08ejMjVqV7tJloEeqciJRTdN9J/eE0HqP6Gxf3hYM3SCAWAVfgoPrQKsGR7l7KwmjZYgTibKCkePT5lxyyIw/mNzTmi35MrioCa90+6MpTuGjzo2hsVklq6XUVbHSa+JtlK//1MWF0YeeaBhNwqHlXRSL4hCZYO48jBFlenVPeFi5pcSwalXQNvkd9hFKFMIiW9iOW4CErWQnrpb7OP+gypbc7gurGy/Np4Tf5wYmGTYj9r0WDokb6uRJK6IyxHD46mokrV2b8HxJGZoh6Dwkn75eTjqzW1QhBHUlkSrUG/vtH7Cz6FmfJQKTl9JKeVI17RGiXk2CqKiv4Qdmo2yQ8CFFtYAguTokZqaUKRPbj41z1eiMbfTfdlkTzqF1XfF/Ke+0TDPeD0wodMuQHiBuJ4bMtt8o3F1GM5GVNYVQCZNIiLlkY9fcDYJnt8GOUkhCQS/JCv90AzHDOCqj7ZxxFLwlZITre3kR9+gTHQxxQVR2tTSn4q4ufmJDveJC+aQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(136003)(39860400002)(346002)(396003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(26005)(2616005)(38070700009)(83380400001)(6486002)(478600001)(71200400001)(6512007)(6506007)(53546011)(5660300002)(8676002)(8936002)(41300700001)(86362001)(36756003)(33656002)(2906002)(38100700002)(122000001)(91956017)(76116006)(66556008)(66476007)(66446008)(64756008)(66946007)(110136005)(316002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <54804AB07EE67340AB6E40E5C834AF33@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8225
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000041.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	16707464-72f4-4257-da39-08dbffbe25da
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eq4DgBgrTZ1P1+xLe9Aj6rOvZWHQkMfdyG7POLkTLNqSlKWZDapyPAK6VjRZ9cb7nmKhA0rhz/GvxrokirxObE65I54LT3nhV12ynBR2M42V0LDFaNtRLAKmrM3YLx9qbx3Pk0P6uISYXoCR+v2Joo7xNxioYzAN2iJsSr/1LzY5s4aXCxSNU5QmVOQM8oC3wYfErUO7PJuUzeKtG2JQPjYl/WwyTsiEmAn7odD+FwNL8zUEeeQiZRWWPdYTO9oDQ8Dy0I+V/HrB09w9864oYl6xbvzsp4FX2t3l41tRq1CqBYU5aqafx74FRzH0ojoiLK7vSMJZ1njbHGl9GjCxtwkycU9aKsAvkSa3stLyIIPfY03zV3OPNiobAus5WH6Reznd/6Geb9amHuSz2qMjWPZaWhkXoHHdAGpLtXgMwPKQY4y33jQHIJ9gcgWS+Kvd7YNt3XMBs6vOsqGXxuqyo3RsWG/fj4+aNbzFR1qDYT5oHptJkd2qfQ6lOOCi2GibFw8XeUGQWdT/j1WF11tqsRRyU9tEaVJs5ijITsclg1SlIMwIiroAaGGtAMtUtL9tGDC+u+PwhkDScpkY3qgwPAPdBnZBAyr//hlNQ435w20WyCGO9gSIhFsBrqyeHkzXU/RmlXfIerAP2WyL1NqtQQRbtfZ3au3ZdOOP6gdZoiqbC1gFaSLFG4isomVCG6DMyM0MQLpNjbbADF6V1q/cm1IKKb9uAMoO2eO+v37Od0Kpdks59//taDrsteEguhH7
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(376002)(346002)(39860400002)(230922051799003)(1800799012)(82310400011)(64100799003)(451199024)(186009)(46966006)(36840700001)(40470700004)(36756003)(316002)(83380400001)(336012)(70586007)(70206006)(110136005)(40480700001)(2906002)(47076005)(5660300002)(8936002)(8676002)(36860700001)(53546011)(6512007)(26005)(478600001)(6486002)(2616005)(86362001)(41300700001)(40460700003)(82740400003)(356005)(81166007)(6506007)(33656002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 11:40:44.8003
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aefc23e9-e5e6-438c-2ee6-08dbffbe2be9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000041.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9988
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 11:40:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61961

T24gMTUgRGVjIDIwMjMsIGF0IDE5OjMyLCBMZW9uYXJkbyBSb3NzZXR0aSB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8bWU9bHJvc3NldHRpLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSBhbSB0cnlpbmcgdG8gYnVpbGQgYW4gaW1hZ2Ug
KGNvcmUtaW1hZ2UtbWluaW1hbCkgd2l0aCBvdmVybGF5ZnMgZW5hYmxlZCwgYnV0IEkgZ2V0IHRo
ZSBmb2xsb3dpbmcgZXJyb3Igd2hlbiBJIHRyeSB0byBkbyBzbzoNCj4gDQo+IGBgYA0KPiBxdWls
dC1uYXRpdmUgd2FzIHNraXBwZWQ6IG1pc3NpbmcgcmVxdWlyZWQgZGlzdHJvIGZlYXR1cmVzICdv
dmVybGF5ZnMgc3lzdGVtZCcgKG5vdCBpbiBESVNUUk9fRkVBVFVSRVMpDQo+IEVSUk9SOiBSZXF1
aXJlZCBidWlsZCB0YXJnZXQgJ2NvcmUtaW1hZ2UtbWluaW1hbCcgaGFzIG5vIGJ1aWxkYWJsZSBw
cm92aWRlcnMuDQo+IE1pc3Npbmcgb3IgdW5idWlsZGFibGUgZGVwZW5kZW5jeSBjaGFpbiB3YXM6
IFsnY29yZS1pbWFnZS1taW5pbWFsJywgJ3F1aWx0LW5hdGl2ZSddDQo+IGBgYA0KPiANCj4gSSBk
byBoYXZlIHRob3NlIHNldCBpbiBteSBsb2NhbC5jb25mOg0KPiANCj4gYGBgDQo+IERJU1RST19G
RUFUVVJFUzphcHBlbmQgPSAiIG92ZXJsYXlmcyBzeXN0ZW1kIHZpcnR1YWxpemF0aW9uIHVzcm1l
cmdlIGFjbCB4YXR0ciBwYW0iDQo+IGBgYA0KPiBUYWtpbmcgYSBsb29rIGF0IHRoZSBxdWlsdCBy
ZWNpcGUsIEkgZm91bmQgb3V0IHRoYXQgaXQgaW5oZXJpdHMgdGhlIG5hdGl2ZS5iYmNsYXNzIGZy
b20gdGhlIG9wZW4tZW1iZWRkZWQtY29yZSBsYXllci4NCj4gDQo+IFNvIEkgbm90aWNlZCB0aGF0
IGluIGJvdGggZmlsZXMsICJuYXRpdmUuYmJjbGFzcyIgYW5kICJuYXRpdmVzZGsuYmJjbGFzcyIs
IHRoZXJlIGlzIHRoZSB1c2FnZSBvZiBhIGRpZmZlcmVudCBESVNUUk9fRkVBVFVSRVMgdmFyaWFi
bGU6DQoNCkl0IGxvb2tzIGxpa2UgeW914oCZcmUgaW5oZXJpdGluZyB0aGUgb3ZlcmxheWZzIGNs
YXNzIGdsb2JhbGx5LiAgVGhlIGNsYXNzIHNob3VsZCBiZSBpbmhlcml0ZWQgaW4gdGhlIHJlY2lw
ZSB0aGF0IGNvbnRhaW5zIHRoZSBzeXN0ZW1kIG1vdW50IHVuaXRzLg0KDQooY29weWluZyBNaWNo
YWVsIHRvIHNlZSBpZiB3ZSBjYW4gZ2V0IHRoZSBkb2N1bWVudGF0aW9uIGNsYXJpZmllZCkNCg0K
SWYgeW914oCZcmUgbm90IGRvaW5nIHRoYXQsIHRoZW4gaG93IGFyZSB5b3UgZW5hYmxpbmcgb3Zl
cmxheWZzPw0KDQpSb3Nz

