Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EAC9C678D4
	for <webhook@archiver.kernel.org>; Tue,  7 Mar 2023 11:07:14 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.76])
 by mx.groups.io with SMTP id smtpd.web11.11763.1678187225556374907
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Mar 2023 03:07:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=WIppibxP;
 spf=pass (domain: arm.com, ip: 40.107.22.76, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdErv6xjtXgr1zkiwM18WEVBmM6aVRaP9i9j7ZpgR9Q=;
 b=WIppibxPWPAfkHltN24EQtibarLKurwv41Q2e7yIaVPDRiT9L3IpXk9rbP3YxcLgQ1wZptKVAgaUQ68PFEj2jjPM9aXxZZCvJxxoqGchPKONRAx8GsGwJWPDMc8v/LLWsJ93j/SUMYf4QrP0jC2au5wG62WfO5d56H8b9AOhcWA=
Received: from FR3P281CA0062.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4b::11)
 by AS2PR08MB9668.eurprd08.prod.outlook.com (2603:10a6:20b:604::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 11:07:02 +0000
Received: from VI1EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:d10:4b:cafe::96) by FR3P281CA0062.outlook.office365.com
 (2603:10a6:d10:4b::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.15 via Frontend
 Transport; Tue, 7 Mar 2023 11:07:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT008.mail.protection.outlook.com (100.127.144.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.29 via Frontend Transport; Tue, 7 Mar 2023 11:07:01 +0000
Received: ("Tessian outbound c2bcb4c18c29:v135"); Tue, 07 Mar 2023 11:07:01 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c319a20548416071
X-CR-MTA-TID: 64aa7808
Received: from 481b282c3b00.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id BA02D3D5-C534-4137-89CA-08AB8606484E.1;
	Tue, 07 Mar 2023 11:06:55 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 481b282c3b00.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 07 Mar 2023 11:06:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NL62fQhwisM3Qd/2fhLiA9RvtZWQSFwgDWdV6nvl2XgWUqS6WVvmwqk6IMxEMyVOuTb7g2gZB0F9sVHfzGjv5F0Zo0kQC1sLXkRu/2sCQ51BNwI+n7+cukNIG25IY0y2eIzA6LAPu2gbMKz+pXs5w+7HjnP3IW0QjDCXfd/kohVokoC6iEtE0+nFz0v81RrsAfX0bMT3eaCgH4MCPg4O9vXCfKpisudS7Jqm37qpu0MrLSmJFtR+funmcQeXj2Lb8gGlhApn5aPcUpH7lNj6jM+tcNI2duVCJDjEw8r7wrT3pIwD/WDQHOp7zoT0Ms9bk7ongbX6aDkV5bmCcorSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BdErv6xjtXgr1zkiwM18WEVBmM6aVRaP9i9j7ZpgR9Q=;
 b=dDw+c+ZprDrRh38uBkcDqd9c72sDUi08+3dlFns7kc+zDQwvP2zTzOAubIcGb82OI6QBaZQflym1ewVSSrNrvQK/NcKGe8kz6Cw5gfo0FHluIOwXwELpyNH8UbknN/IGll/xBpJTxVP2rzEl5Ba03TasjuWIiij9C0zxb2gVlgfUdcFsj+543khUSDx9xTb1EX6N6Fbb1GE9vE5IYKNlL/Mga2343y+qnw/CPZUDnq1SH8F2DCZRMpcOu6tb57yV+oCHqomgg/hKbr/uqcDPvuKsHsWctKmRjmEufDyG9c5S1FQNaj4RrjI2easXgGnpD0BhbMN1FV5aepkKT9aWfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdErv6xjtXgr1zkiwM18WEVBmM6aVRaP9i9j7ZpgR9Q=;
 b=WIppibxPWPAfkHltN24EQtibarLKurwv41Q2e7yIaVPDRiT9L3IpXk9rbP3YxcLgQ1wZptKVAgaUQ68PFEj2jjPM9aXxZZCvJxxoqGchPKONRAx8GsGwJWPDMc8v/LLWsJ93j/SUMYf4QrP0jC2au5wG62WfO5d56H8b9AOhcWA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS4PR08MB7854.eurprd08.prod.outlook.com (2603:10a6:20b:51d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 11:06:53 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6156.022; Tue, 7 Mar 2023
 11:06:52 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "silver1row@cox.net" <silver1row@cox.net>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] ERROR: Task
 (/home/$USER/poky/meta/recipes-devtools/gcc/gcc-crosssdk_12.2.bb:do_compile)
 failed with exit code '1' #debian #devtool
Thread-Topic: [yocto] ERROR: Task
 (/home/$USER/poky/meta/recipes-devtools/gcc/gcc-crosssdk_12.2.bb:do_compile)
 failed with exit code '1' #debian #devtool
Thread-Index: AQHZULM0uBHXAyftRE2/5egFJSPXga7vKGOA
Date: Tue, 7 Mar 2023 11:06:52 +0000
Message-ID: <9160DBFF-F649-430A-A80F-90AEF0DBBE00@arm.com>
References: <oGSG.1678165849771838756.hy7C@lists.yoctoproject.org>
In-Reply-To: <oGSG.1678165849771838756.hy7C@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS4PR08MB7854:EE_|VI1EUR03FT008:EE_|AS2PR08MB9668:EE_
X-MS-Office365-Filtering-Correlation-Id: e7f5b676-c2bb-42c6-1038-08db1efc1409
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /G4W4xloiBy9X0Z5A2Q2MTuEUeK5wsic3+nmIDv38PsKKQivqIKpMQ2Z/6Th1typVYnpY5FKq2vVuKp9x8CYTME6TJ9GuggugB6puzqrwhGoAR4WOC1OPECCkkde8lF+BNq6Sb66WGI8sUZL47OUYiBE3EXsH7dCQir+k6zXkXxzC6FlX5+4EsOKGsa018rSbvz6UivW2X0YD5OLv7QJHj1+JFgBqXiia6kqrb1YXDiisM83WxC4GTxVlWQg8sN2/RopDiIVZaeTyGDwqKGMn7E2MPot5sO68KOJS4txykj3tIEfLymyaAaD1zgMYqjIHp12GKAb1dTKqfNWiyz+jsb1P0D11aH0DR19fkk0xEeAlLUMxKGt/V5SXNNpvPyATtzJ9Riyc36WRsRdEYqVKcD3hBbw6YqLGmHV+n1T/0mJNEJzKiQz+afaup2GYXiryb8/2w3CoiSxIAhBc8O2/6S774fFy98QYEvSg53QS5fxansyXG/o8K5nb1KHtSXuhkkablJrj68rnP2SEtYXvb8yeAXESD8qEc5Fb53426U9QtGg7JiJCFy2WJWmLIusKHQUjR/j+Zl5nC8ISM4NyeJBfSbd71Y1fI3JmtMTlKWcP5H/kFGZlecDs+MwRepq7L77+7Md6wqeIySvXJ6/q22nCdFVV5OIRK2MSV2Os9CRMdlSiZykqFRABPCUJ2Z36akAA/Wds/tnYFJhEh9Vr46/Qkf0Eh77YlxDprDv/iU=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199018)(38100700002)(86362001)(38070700005)(122000001)(33656002)(36756003)(6916009)(4744005)(5660300002)(2906002)(4326008)(76116006)(66946007)(66556008)(66446008)(64756008)(66476007)(8676002)(41300700001)(8936002)(53546011)(186003)(2616005)(6512007)(478600001)(6506007)(316002)(91956017)(26005)(71200400001)(6486002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <670CBA1A80CC2541994B2F878BD942F5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7854
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VI1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6c9863fa-0b45-486d-31a1-08db1efc0e79
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AHVoocgftjSZKTMhLFmtxkU0h9HuwR05pyGNSoqOovjDrL/8YXjAvlzRru9D5w0cmmF2uaFDsPf42foLF3WBxyNtSCSdfIgrm8FxfY7VnUgQRUEZpRTr4B6S+4eEFW51EfKL8WdJtRd6H3/u5PEYh+I00InaJWaRsaUbr3E6gIm8FizcNx/tDunGez2+eSqHWdaoHEMAU2JZbnIoyu3CfVqTFYZUW3Yj2JOGnjS6WGNgY4pknDie8yvmfJjzhNzvEZibSuJvRD472NqaWhVNwkd1lgH50o38jDauoySKPozOasr53QKnJ4rI8NPoXX0dobQfE45y2OGSSvz8Ikho+S+yczHa1lqvZyDdcBwbOLe8xlZGZy/A6Riew1LJAZasV7m1ryr+pnaCicVFFcvlJ+phjs4bv9u709R09w8d1id7wRGckc3eF7sx5fo9bOvi4TL3gMZemgIn/LBZ78ztwDeOdRcdO2+dAYWHHIjZt/PFqppEoNILt+L2Irsfeo4Ze1OzuGQMmNGWrR0kzgKf5ng7nZpQ5ljRt7IXR5OZNqN+UFcwacZdrI6OulEXD++vH6HKbgaDu6OOkILspUJppFvrawic7W27eavOqrpIm7haqVsZ6UwIG4svqcySzXYt+C4X/c0yE9nNeI8/MumAnkzP6HCf5TLkETQvjlL1rwneWrHW79MBt3jxnAa1NAqDfWO6f7WApzRCFWCyUhHKSw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(376002)(39860400002)(346002)(396003)(136003)(451199018)(46966006)(40470700004)(36840700001)(33656002)(316002)(36756003)(40480700001)(82310400005)(86362001)(6506007)(6486002)(336012)(40460700003)(186003)(2906002)(4326008)(4744005)(70206006)(82740400003)(36860700001)(41300700001)(70586007)(8676002)(6512007)(478600001)(26005)(47076005)(2616005)(6862004)(53546011)(8936002)(5660300002)(356005)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 11:07:01.8849
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e7f5b676-c2bb-42c6-1038-08db1efc1409
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9668
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Mar 2023 11:07:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59359

DQoNCj4gT24gNyBNYXIgMjAyMywgYXQgMDU6MTAsIFNldCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8c2lsdmVyMXJvdz1jb3gubmV0QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0K
PiANCj4gSSBhbSBidWlsZGluZyBZb2N0byBvbiBhIFdTTDIgaW5zdGFuY2Ugb24gYSBXaW4gMTEg
ZGV2ZWxvcG1lbnQgZW52aXJvbm1lbnQuIA0KPiANCj4gU28sIHRoaW5ncyB1c2VkIHRvIGJ1aWxk
LiBOb3csIEkgYW0gcmVjZWl2aW5nIHRoaXMgZXJyb3I6IEVSUk9SOiBUYXNrICgvaG9tZS8kVVNF
Ui9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3Nzc2RrXzEyLjIuYmI6ZG9f
Y29tcGlsZSkgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJw0KPiANCj4gQ291bGQgdGhpcyBiZSBk
dWUgdG8gdGhlIGxhY2sgb2YgcHJlcmVxdWlzaXRlIGRlcGVuZGVuY2llcyBmb3IgYnVpbGRpbmc/
DQoNCkl04oCZcyBpbXBvc3NpYmxlIHRvIHNheSB3aXRob3V0IHNlZWluZyB3aGF0IHRoZSBhY3R1
YWwgZXJyb3IgaXMuICBTaGFyZSBtb3JlIG9mIHlvdXIgbG9ncyBhbmQgd2UgbWlnaHQgYmUgYWJs
ZSB0byBoZWxwLg0KDQpSb3Nz

