Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC039C4828D
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 12:15:45 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.86])
 by mx.groups.io with SMTP id smtpd.web11.61057.1707135335066887322
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 04:15:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=QOi3eKYS;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=QOi3eKYS;
 spf=pass (domain: arm.com, ip: 40.107.21.86, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=lvF+qBp0+5oP97/veUk6Ch9oPPC8KSgoWVeyLJsQ0pOAZ+lxWtVfkBiSqRkZmRRO/DAI6uxKBQUQoI17f5fXBpOGitRyHVGboKyjZ4ixnKRVv65aN5u91/+tWNcwhybm6SG7bDo0jZFP3muLRHutOQQmozQhQe9PRbIIcEkAHDId8Keo4AGfbsH5Wv/2MMWOF1f63zOcIqGrxMV7THIdk9W0y36h+i6uo80XEz27Y0JGwv6gCk5txBiGyrnYsuvXlmhpZeWJzAQtNV4W8SxxdZnCof5UIAlvfeUg3bhmSUn1p2abnGrRp/NavbJOM0Q63MaHeF+Oa1n/9pwdAed3yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYuDe1z8SwjKnceaK/i0aAfc3WBR8B7Phsrh9zfWQFY=;
 b=cvgKTifXFA6UYXNyoEdKrNCaAH6GKiJdVtAdXCeJMLi46v0iysaf4PFFnk2+so0oTtqzYUqapFlmFwD5zaRfRVSNQW60HHJkAex+/b0iA8Zv3ro0QCCqsKKOzVAgX9glz5TVF4lSQJezwpj9fomUkm3E772qsF9Z+w2mLRLodoAEuEGwEKb4Ld0isO3ykH5pg+eGgETOJoMtlk50xPUQUZCMOkcBs+0Y3MbAaI0iVURv5N8iudFhoa7gZ8ewT2Qbem6ck2rnhsqyK99OLhFwDX97UdvcBMsTZwwase22iusxp2iYFM5jakV6rDbsMGvhj5sNOERMuBMB1UD26ehS8g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYuDe1z8SwjKnceaK/i0aAfc3WBR8B7Phsrh9zfWQFY=;
 b=QOi3eKYSK5cM8IJzlNO3r2PAGhiSVcH8JFw18Y5NSQbKYTCuVLqE/v5cYkbbrlqXoAMZDF6Gy1x4AejY1dxVJunQ1jVbgGRBPTJDFQ8imZ5nbtwq+M1JSEx2l+yKLa4bCUhswivyK7F+xC++xd5uDVph2cfHPG/KLHuhcOpp5gk=
Received: from AM6PR0202CA0068.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::45) by GV2PR08MB9421.eurprd08.prod.outlook.com
 (2603:10a6:150:dd::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 12:15:25 +0000
Received: from AMS0EPF00000193.eurprd05.prod.outlook.com
 (2603:10a6:20b:3a:cafe::4f) by AM6PR0202CA0068.outlook.office365.com
 (2603:10a6:20b:3a::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.33 via Frontend
 Transport; Mon, 5 Feb 2024 12:15:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF00000193.mail.protection.outlook.com (10.167.16.212) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Mon, 5 Feb 2024 12:15:24 +0000
Received: ("Tessian outbound c87008563c51:v228"); Mon, 05 Feb 2024 12:15:24 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2ae64b650e8c3b59
X-CR-MTA-TID: 64aa7808
Received: from a7fd3244c2cc.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 42A5C0C2-C0F9-4840-90B7-ABC6CF16A89C.1;
	Mon, 05 Feb 2024 12:15:18 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a7fd3244c2cc.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 05 Feb 2024 12:15:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bWaZ3vmHWMrkkytSezMH5mQWuYQ6docpaaIBeg+EQZtMtNNSM/AGLfwO3bvXq2poezfel3R5xMkgG/b1jdixBV4nYNasRLERx/WUnVF885mu2hQt5J5EoIcX7KvhH28DBRL+WKfOj2kct59OpRCI4bvbPQs9zXaCyTvEUCgH7WLSc26mSuXmO8YFRvvYYh7XzDNGR6XKL9AdAXAtWD31RDvolV/RZadQT6ZRznmtWY31gmHy1noy4ERYm/LkSD5HIkQQRcA7QETvY2jwuKqGsVBr0C/9aYor5KjYJBzB44kjHymDf45KW/WN1Hcq3fLloL9ulWc9mN+noHb6JAURog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYuDe1z8SwjKnceaK/i0aAfc3WBR8B7Phsrh9zfWQFY=;
 b=K6AfrHXVey+VU1dBzQ4sFLOd/CsMMihAtX+oZY4/ApXml4d3dx38qn7aW8ZarwfPEJO6d0oXBhGxTt9r9FwSoa5OgMolA9ZTx9GuotUJGsDjz8j4k7QxCgaNVYD6AMH9UWvYr5MnsV2L+0kizMEpYhnvUJ9e/vkSibgBNZ+gfRh/S1uPVT/qEFsr2hlYgtUA8V340Jk8B8EEeFtZ03jqCFBe2ah28o2QU1fBfbToxGlvGisf5Ia/dusqcKV2wLjnGdf32WclhPPDQB4g+BOvneaZuWSdX1f7skcNY4mXIg0GbQ+Kg/EPC0YfgfC6ANa7iuj0X95DhdEJp9TOR8RU7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYuDe1z8SwjKnceaK/i0aAfc3WBR8B7Phsrh9zfWQFY=;
 b=QOi3eKYSK5cM8IJzlNO3r2PAGhiSVcH8JFw18Y5NSQbKYTCuVLqE/v5cYkbbrlqXoAMZDF6Gy1x4AejY1dxVJunQ1jVbgGRBPTJDFQ8imZ5nbtwq+M1JSEx2l+yKLa4bCUhswivyK7F+xC++xd5uDVph2cfHPG/KLHuhcOpp5gk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU5PR08MB10802.eurprd08.prod.outlook.com (2603:10a6:10:526::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 12:15:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 12:15:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"thomas.isaacson@motorolasolutions.com"
	<thomas.isaacson@motorolasolutions.com>
CC: Tom Isaacson <tom.isaacson@teknique.com>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't
 exist
Thread-Topic: [yocto] Intermittent build failure where dwarfsrcfiles doesn't
 exist
Thread-Index: AQHaV/Q1NqMMx80Gg0usVKneYxFjRLD7qf0A
Date: Mon, 5 Feb 2024 12:15:14 +0000
Message-ID: <DA622504-BE16-4534-836E-6978FE71174F@arm.com>
References: 
 <CA+EiEZLvxbbBSoweOXOXi6bEP_1=L+dZ=hcepvUa1NZ6QD8-Nw@mail.gmail.com>
 <6815.1707110917510832552@lists.yoctoproject.org>
In-Reply-To: <6815.1707110917510832552@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU5PR08MB10802:EE_|AMS0EPF00000193:EE_|GV2PR08MB9421:EE_
X-MS-Office365-Filtering-Correlation-Id: 915cb1cc-3158-41da-5ffd-08dc264421d8
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 2Ae8T38Lx4jE33KLiQox54txcxT+Bsu8B96PaVVUPECMxXQwUcjLC2jHNQdBzpMOBzBoyXbzcyxWppzbKVBN+yKKzdr9szpk1lMA2QMfL3ziC/SxaaDIsL1rMOOWGFHYzix6x+RlL7RCZf8JeGHppZtGFrKpCl2I8ByAyZfhoRsW/2ts30nLuDdpQBL+bMOcK08DfDjPaevIffoS+E++0SWWEfHeZmeaxGrjztYaXLvGiunzTp3jnHx8xlmytQYngFCBTDQ26Dgxg8Uz4FD1kyIJTpOlVJfaMLem7N+q4eb6bgSXmVDlSgE1IbLVaxmX50UcvlB3uLzOeLSj+QOqYt6QqB3LKcp4tI+qpBf5/QBPrEh7u4eoLZi5ghScndG7dw+ey5k1eOHsjR6QyG8YB3LljjA8x197CW1C4pac6KMY+75oK7tUkUK+olxhBRPZV5jte4ZaIS9M7Jcg6Wcki2BXTjZJajBbdyjRHpMdUemdz67nMEHqtQAY1pGJ3W5sMY3TnhpxxWT64+AAVSb0yCfONftrd/3YlBPv6Xp9TAmTKGSe2KjFak4JpZQE6QSGr2924L2MdzGut3g3VZka2AIM21BLXaKaw+5uJuRrQhPyJFze7L0nEfoQka/E09MXhX5m2EWmyVp+o4+//IRXVg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(346002)(396003)(366004)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38100700002)(33656002)(6506007)(53546011)(122000001)(26005)(86362001)(41300700001)(2616005)(4326008)(8676002)(8936002)(36756003)(6512007)(71200400001)(2906002)(478600001)(6486002)(4744005)(5660300002)(66556008)(76116006)(316002)(66446008)(64756008)(66946007)(66476007)(38070700009)(110136005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <354975BCA7B3C64EB06703C90DC746C2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10802
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000193.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b02a3d38-cc03-41e4-b6d0-08dc26441bb5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1HVArIRVGd4m3T6KPZJ6q7q0B3htdlQ5WjyWWO9FGobYK5DU14vadU/OvI8vjeBX8sek/24jce4jgHb28XmWf662CdHBScBGTAVE3ZPky+4vMbJikWRNuQHj23ouwOoLDLCb108kb1HZT3bb9U2SWsD2mHYspXzeTU1q/i4B2N+DHOog+fBH8LgvpNTVfHxwGXSy7GQPSyPb7z+IIqmk8LOSfk2BEpVItZgzgmEGk9iQp27kSYzLCFifFZTRDceeT4lFMOh/daFkqsq/n/YIot3ubHwkPJUAV9ZY+CSLE3eVuFy7U5KRhejh8kSvqpPWd2lQ8OJWhcKymUf/FjJA9iN4Eeh+PnolN/lSMwc4CZXRPsDCrFJlcJ12ikibekGte0o9ibCsFhPCyXJBvT2jjBpavVZme3YYBuSnJoMkadi/MYUw/WvN2wft9CvcZVJb4P9veTSWuR8drpfSl2TyXWkv2NM2SiUjeFJQ80vjTYy+uYou4j/7EhgbWxu+Z+CMkykIwgV5OeEC8SB5HudFhoKJhSUNW2f7qhgWIqMjmXJcTnPKHpqt7MRCTYJbsHqejWW6SnUdSOI0N+ifH9JDb9AyRA9PrxM8V7dhe+CI9FD1xkZ2jtwheM3rSxOGbDk69gcvo+wy0ZPaajbpy012qFVyHghv2B1I4bY3rUAAw0JjRFKMTJyZs+NnqUmQMuaHk9uYjOgyUkGpXNrNCvPiu3vCddK2NUlO6mdURkYyB+TUUehfzcCvSVeCT35u5XN6
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(396003)(376002)(136003)(39860400002)(230922051799003)(82310400011)(1800799012)(186009)(64100799003)(451199024)(40470700004)(36840700001)(46966006)(2616005)(6512007)(478600001)(36756003)(107886003)(6506007)(26005)(86362001)(36860700001)(41300700001)(82740400003)(356005)(81166007)(336012)(47076005)(6486002)(33656002)(8676002)(8936002)(4326008)(40480700001)(2906002)(5660300002)(40460700003)(4744005)(70206006)(70586007)(110136005)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 12:15:24.6759
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 915cb1cc-3158-41da-5ffd-08dc264421d8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000193.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB9421
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 12:15:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62394

On 5 Feb 2024, at 06:28, thomas.isaacson via lists.yoctoproject.org <thomas=
.isaacson=3Dmotorolasolutions.com@lists.yoctoproject.org> wrote:
> I've setup a CI build at my new company using a Github Action. I haven't =
setup a cache yet so it takes 3 hours but it's not showing this intermitten=
t fault - it works every time. On my PC (which does cache the build locally=
) I still see this problem. So somehow it's related to the cache?

Is this just in specific recipes?  Can you share the recipe, or at least wh=
at classes it inherits?

(I have a hunch this is the now-fixed bin_package bug, which was caused by =
inappropriate use of INHIBIT_DEFAULT_DEPS)

Ross=

