Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9133C43334
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 14:17:05 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.58])
 by mx.groups.io with SMTP id smtpd.web12.6868.1658413020284037863
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 07:17:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=rXphE42H;
 spf=pass (domain: arm.com, ip: 40.107.5.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=mD6mi8wctYZ9NhjDZtrUCwi0d0UkdARXs+LQpsZ/lJczJnfCUHXnYmz98R6YXFmqhC3uh8HFxecemsqFNwSRvAPURVzZfHBfoCPzGIBovLPw8ej68kN3VcgRkVM2yiFHi2eEuiEKu7oL70rLC7wnE+qpWzIKPaGbkyStQHN5qimrnuuA/VbPENpzu103BbcgXGvu5WrqiNHQQDf0Q08QFS0h2P8aeYSMNwMC6facnklgUY2s8Ii6dV1TeyP7su1holNttLwiu/uskPujBjaO/bhG/I6himxbUUMWntAug7VOLpWcK0rL3H30C7tIojFJeW0CcSvH9kt9jHCgZiWeQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eH59TrCS7OKG9P2ewoFrnGbcl/m2ciKlmJTkP1a8QB8=;
 b=dqibY3QVJ+xAr4Pkwck3eITvg13Nbwepdx1NUwya8by7AF2wAmTLiL3pUzFQr8FMvlI3ud3ZSk47XZW5YK4e5fV8IO4lRmThY8PeF4SUo3OtAL1PdtLrGAzjTi7kkYz8DNYRkRwmO/EnSxceAoAdUd0wy5sbaI23vV6TClvJtaik0qArV05YVrg2fW/9gkqvUcG/KRFD+XUx2j9d5SSYRob6AfvcwFX5VCbepidANSGGNo+9/8uUCMsgbaNs3LKH5szi4sOCZWzUx9IpWnxYhVDlGaMUZgUUnh3CrXHDusowcwDZqhR8OcuQo12dkMeOzsbqR9uCU4MAu7FZq7IqLQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eH59TrCS7OKG9P2ewoFrnGbcl/m2ciKlmJTkP1a8QB8=;
 b=rXphE42Hukn07lF1XCWh7wMBzARrKdYike6JTw7mPiVbGYPpWL9wNTKZnf+Dx43T+Rbg2fViJ1L4kz8cl8dJd7asZQXZutpn252G7jhehTux6y3WLI42N/YE1E768gCLTlWCB308d/9i85KRZk3AWe6eSnGrLfB31mekD4Sv1e0=
Received: from DU2PR04CA0266.eurprd04.prod.outlook.com (2603:10a6:10:28e::31)
 by AM0PR08MB3396.eurprd08.prod.outlook.com (2603:10a6:208:dd::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.20; Thu, 21 Jul
 2022 14:16:56 +0000
Received: from DBAEUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:28e:cafe::67) by DU2PR04CA0266.outlook.office365.com
 (2603:10a6:10:28e::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19 via Frontend
 Transport; Thu, 21 Jul 2022 14:16:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT027.mail.protection.outlook.com (100.127.142.237) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.17 via Frontend Transport; Thu, 21 Jul 2022 14:16:55 +0000
Received: ("Tessian outbound fccf984e7173:v123");
 Thu, 21 Jul 2022 14:16:55 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 38328b468b514106
X-CR-MTA-TID: 64aa7808
Received: from d63c7cb3ec21.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 F64912A0-DC10-4492-8E03-3FF4E493C4A6.1;
	Thu, 21 Jul 2022 14:16:48 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 d63c7cb3ec21.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 21 Jul 2022 14:16:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQGu/seiSKgdnFKuJXLePT+E0FhXa/iR82ZxgvjVQ7ygQ0fb/CnkSwfr/l8ri6FzWyUJ+RMmgylTUZgTsKX+meIscHBAtOOhOgpiSTiB3ovwTm4GYR1LkCd5NTo34MuuY1gvgBWjRXUdbRtHpgZcz3vEQ2Io2XWK4SG6Bn1YnW33KrrOE1wLFHPWn+T2d1/jaDgPnAM0VUoigkE4FuV6Zy7UucNbCK4ytE8rqBtGD3Ftx0ojwuWYB6kANkHaoSc7cA4nZTUcHmz7JfINpmeGKS+7hKobVtDAYslLHorTRCi1aoImaF+U0uK4Vg6LkgQ78R4GcYGaH2cxb4fuSlKcWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eH59TrCS7OKG9P2ewoFrnGbcl/m2ciKlmJTkP1a8QB8=;
 b=apfZe2efkYW+DTSEmziIddo9D7HwA0wqqyAPUE7TiXxMaDCS+dS7A9kKFodsPtZ5UyYLeeJIjCO5wYUNuNcFPjAKs5FxwzCii4MJa9MvgnRS1pcwOU2EF8n6YALQrIR/+74SDcFnnHo4DJxVVJoIDMIxro16XU0OYQO8d9CM7XeKt7jcXPErpZnpKqQ5r1geFmdYhqMSLZzE2l1YhII3sqvwV+HGkUo5RfQ5kW4zrqpR/ExHzQp7F1KSOkr0Gaeg6k4JNFr6eVmjPC8AoRau29bWfe5nD9FU/0wX2puD8i+QlUOHb8uQbcxH8TqP7Sv5xEU2gVZTAt+n2EhT8NY9Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eH59TrCS7OKG9P2ewoFrnGbcl/m2ciKlmJTkP1a8QB8=;
 b=rXphE42Hukn07lF1XCWh7wMBzARrKdYike6JTw7mPiVbGYPpWL9wNTKZnf+Dx43T+Rbg2fViJ1L4kz8cl8dJd7asZQXZutpn252G7jhehTux6y3WLI42N/YE1E768gCLTlWCB308d/9i85KRZk3AWe6eSnGrLfB31mekD4Sv1e0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB6PR08MB2632.eurprd08.prod.outlook.com (2603:10a6:6:17::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.22; Thu, 21 Jul
 2022 14:16:46 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::fc06:20ca:a7cd:4d72]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::fc06:20ca:a7cd:4d72%9]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 14:16:46 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "poornesh.g@mindteck.com" <poornesh.g@mindteck.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Integrating Opentelemetry in Yocto Zeus
Thread-Topic: [yocto] Integrating Opentelemetry in Yocto Zeus
Thread-Index: AQHYnQiZosmA3Nqsv0au/vRQsELS762I3vEA
Date: Thu, 21 Jul 2022 14:16:46 +0000
Message-ID: <62C8B6C2-D5C8-4051-AF7E-F76569437AD9@arm.com>
References: <TOIj.1658411315857535741.Od79@lists.yoctoproject.org>
In-Reply-To: <TOIj.1658411315857535741.Od79@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 9b2257fe-3c12-498d-c36d-08da6b23aaaa
x-ms-traffictypediagnostic: 
	DB6PR08MB2632:EE_|DBAEUR03FT027:EE_|AM0PR08MB3396:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 dEoD+FYE1ZkASBVWC7sptLw+aohvru/jasfdDPXzqg/9GDHTg4wssBty/A6WWVQgyfk+8WDciyLTbrSfIxJ3WEu9EaKPhH8uacflRnTSTFUUzPMYDsO0GaIB8zB5p0JYdTdP/F0D6RduUX7pvaAWBnS1xnZ8j32uhUfnyjq+abP86yee9yBYuL3U8HCCP4JH3vdwixVmiLwZFJNCQj/CrFxtWuqRp9uM51WrHGBU77JY5cWi96HXmPLyXxLhbKtvB+/TPeP9q0IlvXmMVX70LktbwELx4IZUrAsJzPk/iLGrvfJlsFIcQvxLT1vLNioJcfKRFoo91Vl+EhXMcAhB0Jx0kyWDmasZX47ZcFyD8ivTotXCPBMm1xyf+sq+AxPA/aVMMSX0HvaGo4/3fKuEn3QSRrMFI0LlCBdw+pJmGDXO3H+0LpaKJUUc2BL8A437ZBWWhrje7D+C1cyVIQew+SeeYw2RqEFPs1XpOJTy7qPSbhlcwiDJ8Y4bl69wePtvZis+Oubff2tYNScq0CGD4YeWKrjfnfIEPnEm6yBDdWNS2X3pvpaqkTjCTmDGxmrXpMwDwdwkf/HK/ZOxPJpxNxl+zDrDC7ay10A0GED3hcUJrf7lRRgVvZHrt4lYdmCzXaweE5QPa0FTCYSfz9zQqQkbIa/L9Nm2ZdVOzxgV2bSa0CzGSCjRY6qU3fBAgALiddTzHFKnmRio2wtGNbSSktuC7zdCkukum542gl5kODc7gZgvZtwkoVOWkL+WZ2QLMe6jzovoNT9vZON9S2ylhLsDYNuR1X1+Axa/d3ODWh5x4yPMi12Uf5dljlH8YKJYJQ1hhlXkPXSKTau78r55IbMYJ1QEb9dw9dR84Ewyabw=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(33656002)(6916009)(2616005)(53546011)(122000001)(41300700001)(36756003)(6506007)(38100700002)(83380400001)(2906002)(966005)(5660300002)(76116006)(66446008)(64756008)(86362001)(91956017)(38070700005)(8676002)(66946007)(316002)(66476007)(4326008)(8936002)(71200400001)(4744005)(26005)(6486002)(66556008)(186003)(6512007)(478600001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E32EBCFE1D0D184687F328AFAA5C3779@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2632
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c2d42a78-33b1-4c48-56a2-08da6b23a4f1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rp2tUbbnuU5ucaydw16+BVjbnYzeXy234B3CxDXsz+Vinpyb6OKYsmiawyCL6fANVo58KUQN8ewkO4Y6v5i13IydJmEYTrXu9RfL3vli6hbLFHkiNKTHeV3HDKYQYuvHa4To1KB0oEYN6AQFlseSF8yUJ0Dqe6oeHcMNMG1iUmwnfKbcZBzNovmu+33dhoNZl6W/2QK4xOgTb3KceCCwyPc+uNu4NacO+lSa2IUGdtxgjr5hlEv2SmGVnoPMW7Avu1SWM7ykKEOsXnvjH7Ai6Ir6wQ5vpLbZpPiAJeJ8EURwfIcLk/uJc9F56TDDCOCv09LNUJguXwbC1asgwxcWIhDJG2sVvfTb0/g88CzMrthu4fT7IrhZZwvs3IGpWTojvTE8jPNGae/m2B+V0eXxGqkq/KSpLaTrCq3xGU1GKPIcTMqSZhx0gXNRktK10dGtwV/6JjsH3MELGyfUOIYH5wIE0dFfhzhhbNQziZLP/K9BQ+YpABn/HXJlXccKGqZdupbXiE6kfiDO7r8fgK85J9sJTU7+shrh1WRZAy3BtRAAl40wRI9ycLstTovj6+NAmqyRc1lYWPs17u3uGyOrmlLmGLk/B543oiEqXe3WGjsE5uFE3hY8hnIm3oegcsPEDsOA0hcWZj5U0e1x2D8FYcLxP5BCDJsPFBbGA6TGmN/OgT3qjobq+CPxrhInS7XfENMldX72WLsFJ/k4E8bRX4g9L9xordDQie1EN8Q5I3msXeDT/JQno5ry4sl+IYgpSoeMErz3cJOpGNIhVKl/aLcLSDNRudoho8lNXQBbdxE0++P7u1BRc24XkQo0jMPFRGOYLR7YEv+utpQ8/fdF8g==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(376002)(136003)(396003)(46966006)(40470700004)(36840700001)(336012)(2616005)(82310400005)(83380400001)(186003)(47076005)(82740400003)(81166007)(356005)(86362001)(33656002)(36860700001)(8676002)(70206006)(40460700003)(70586007)(4326008)(36756003)(6862004)(4744005)(2906002)(316002)(8936002)(6506007)(40480700001)(53546011)(41300700001)(6512007)(478600001)(966005)(6486002)(26005)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 14:16:55.7535
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9b2257fe-3c12-498d-c36d-08da6b23aaaa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3396
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 14:17:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57607

On 21 Jul 2022, at 14:48, poornesh.g via lists.yoctoproject.org <poornesh.g=
=3Dmindteck.com@lists.yoctoproject.org> wrote:
>=20
> Greetings !
>=20
> I am having requirement of integrating Opentelemetry in Yocto Zeus . Requ=
esting your suggestions/procedure for integrating Opentelemetry in Yocto Ze=
us .

First, Zeus is *very* old: https://wiki.yoctoproject.org/wiki/Releases says=
 that it was end-of-life in August 2020.  Please upgrade to something newer=
.

Anyway, it looks like the opentelemetry collector is written in Go, so I su=
ggest that your procedure for integrating opentelemetary is to write a reci=
pe that uses the Go classes to build it.

Ross=

