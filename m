Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 230ABC47E49
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 18:18:30 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.89])
 by mx.groups.io with SMTP id smtpd.web10.30488.1706120299298690507
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 10:18:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=DzHM90vX;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=DzHM90vX;
 spf=pass (domain: arm.com, ip: 40.107.22.89, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=mMJc1Vvn1QBh6khAe+gshGpRcXaJZW1d4qEQjwjU9CDDOnTv713Y61xEl/AOZfIi15iOhRozSWkUCTc0YvjkdDTG/uzLrpNBnJTAd1G5g6WkGNf9DwjmQoPL/7Nybwma9/w9KLQLjiq1CNyKo9XT7yR3RmVtV1CXUYc/eVsiZvrWtKOH8Ab41mh7WSvJJAaLzgeSPjWfzfI5ctbHsHbywK6KOTo0ZqsIk5FkNj5eRnsi7GVC5zR2tTM/2m9bRLbjgrZz3UFyi3oYhZsJdEJXVC/i0FkUO3ImdvC4lDwyyJLzzYook17I0myhQJdOQt3VEIwC2FR4qU6w5mw4wI+uIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ilAWRpFOH397eXK0dtJAPHz6tDjMbKtq2uEv35o2wcc=;
 b=LcKoNcFg+WcHAsVBMdsDw/ZeksIHOZpVhmALvVbCbmWtq78xlCqvRvpGzIRk9b5ab91PDVyrxlwy0KRHefUrO/YPKv3IdHIMhQ4xAtmeE4IoH+hKryHeOx/a6/eyjNxlReZi9gFVY12Y1WB8jUY7fEuZgyzi6tHDE+HKIyRy5RS6v5oFJLP2RfRASAJ/mr6ui9Kkp1zgtdg+BD+lhO/2NiY2eSm6TtSmNz03Phzr361e402UwzY2aT7lP5ZiHsaPg/4Hz8fGq7upJ1lYg2EGv9XzdHp9UpczPhE5hmC4DXUekZZBMtZqvYsY/jorLBmfDzwlqNrJvHjnAlucchAXNA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ilAWRpFOH397eXK0dtJAPHz6tDjMbKtq2uEv35o2wcc=;
 b=DzHM90vXKV4FxMXQBPNtjRYSkXlGWiSAKI5rwPA4kQW47BBF2C+XBglrvvC9vQJhSTvQAZm5TgDCtnWBalsda1iEsNnRAAFYkn1m/O0UxUkNKM+48MpEoSwobq9TR8YeFu5oRA5AM3zjRf3cNjtmxRzUkZ+5T0dqgtA8+phar10=
Received: from AM5PR0301CA0012.eurprd03.prod.outlook.com
 (2603:10a6:206:14::25) by PAWPR08MB8885.eurprd08.prod.outlook.com
 (2603:10a6:102:339::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 18:18:14 +0000
Received: from AMS1EPF00000044.eurprd04.prod.outlook.com
 (2603:10a6:206:14:cafe::c6) by AM5PR0301CA0012.outlook.office365.com
 (2603:10a6:206:14::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22 via Frontend
 Transport; Wed, 24 Jan 2024 18:18:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000044.mail.protection.outlook.com (10.167.16.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.16 via Frontend Transport; Wed, 24 Jan 2024 18:18:14 +0000
Received: ("Tessian outbound a064b9944658:v228"); Wed, 24 Jan 2024 18:18:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 43f00dbd5c62747a
X-CR-MTA-TID: 64aa7808
Received: from 014662eb64e6.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 10C9E8BB-9480-40DA-BB81-465C5974B14D.1;
	Wed, 24 Jan 2024 18:18:08 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 014662eb64e6.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 24 Jan 2024 18:18:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0OKBa6kM5OfLfblxiCuYNZf/snlYDByozk1dqZaJBxQzCP5bWfMgWwLHxb1VYFYxyvEBfqasvB7hP1vG7ICh7Sm/Pubtt2jSGEJFOEiKRpLA7eVGG2Y/74W6th3XZ73r2gmsHnQjlchZjFapakLM7TX4gvpTI3ThkpXqRbEI8TGlL/DOU01ZoLaK0NRok0mz1c4AVWTWJo4f0DUYLFRcxDwOk4FraM6L4BYKfz0roSlzwhZMlOg92X1e0TeXyzkwbRKddrP9BHVktj9xP1K44tExeSdOYhtPulyPxMF6zZ9cVPicOpdr9LcJEvccjmgTM4ByExyfX0kH5vfcUxmtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ilAWRpFOH397eXK0dtJAPHz6tDjMbKtq2uEv35o2wcc=;
 b=lfHMm2Vx0A8thJJaB4IsiFIpEjJcLsyP6D9oD4plxF3Da7oEjZqBHHkMCdvhXKyT7l2OagWCyAawXcVn/jF2DGmKzhuox3XwV15tFfhlBDdWhaG6ibgbKJb1RTNJZy1ytONSA2EUl8WBdplui7VpRQrYzxFFuF0mgjcudfca2wfjHp0djubPD3HoeYOSRfNXU4vdGsa5iI5/q3wWc+Knr+1FmL1oYuPsieLM0F1JhCVSGYcRoAFYbixDdg/R0Sxk3zr1BAPCSJ7CKjnWml06hmejH1MAi5lKAUX9OlmpaIs+AroLL2g3DXtCgww0xHMlKLo3H6cbawmYRaITYhMyAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ilAWRpFOH397eXK0dtJAPHz6tDjMbKtq2uEv35o2wcc=;
 b=DzHM90vXKV4FxMXQBPNtjRYSkXlGWiSAKI5rwPA4kQW47BBF2C+XBglrvvC9vQJhSTvQAZm5TgDCtnWBalsda1iEsNnRAAFYkn1m/O0UxUkNKM+48MpEoSwobq9TR8YeFu5oRA5AM3zjRf3cNjtmxRzUkZ+5T0dqgtA8+phar10=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5841.eurprd08.prod.outlook.com (2603:10a6:20b:1db::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 18:18:07 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7202.035; Wed, 24 Jan 2024
 18:18:07 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Daniele Lugli
	<daniele.lugli@gmail.com>
Subject: Re: [yocto] etherlab
Thread-Topic: [yocto] etherlab
Thread-Index: 
 AQHaSZIq9dWGDz4VWEW/dwgaNylT+rDfHIaAgAD8nYCAAL6LAIAAPZ4AgAIY5YCAAoU+AIAAwg6AgALBOQCAABl1gA==
Date: Wed, 24 Jan 2024 18:18:07 +0000
Message-ID: <7D668706-FF0F-437C-9F02-C77F0FA93B6B@arm.com>
References: <29317.1705963365501549911@lists.yoctoproject.org>
 <29417.1706114810079708510@lists.yoctoproject.org>
In-Reply-To: <29417.1706114810079708510@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5841:EE_|AMS1EPF00000044:EE_|PAWPR08MB8885:EE_
X-MS-Office365-Filtering-Correlation-Id: 55b8b18d-41b4-43c9-8100-08dc1d08d4d5
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /ZVtkfhyo/a1gaE1nj470vZSViGDOrvVlwcbAXRCO9KZ2vxWkbbuDIKKfPhmgVXwfbjTge9Om/57gxOZKfOdsruMe5O5fw/b80/PuaTPG9H0SgLgU3u98K59flWEAlxuFz/8/NTJN3P7vJlIK9jKGgOzvIdh2qdMpDDCUWVGgsjeL8OSj7REuBg0k32nhXtHE8YpL8BIQsCOjNVBNX+ecfnOVkUa+a4mu+AyiqlJhllO1sDO0QHWL62BB0FERdQA85j7X5gPwpXH0a5HnDXrjsgJauTDe8MlqNncDtAkL2IzejcmeqDcmvDPaOCWu8nPu5kuzTDUi2isMPrQn3u/FSQ2ZgZ+ncZTDfjZYE6gimmOpRpAZI1AGBGlSIT5x5QGhCHrroYUtpkikid5PGQ2MWdlxAhXbPPd+sI74mjz9Uov6CT1nzNs6xn477uTN1bAaSk1pRgTLaETM9k+YtKlwR1cxGUmLnxtdwwImYWCKRRfmNBedXWCNASqSK+3VCI653gqE85XGbyq81mMydw+XvPvIw3wv8a8/qGu81UIA57y+134RNZsBQGXoq9Dw9ku7AtTROl6M9pzBXKrROVk6tvt/hByDe9aAz8RX/dJwTkB6ItW3DBaZTfCcCbitDP1EFvhlwcsiC+T4dypex8Raw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(366004)(376002)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(41300700001)(26005)(38070700009)(478600001)(36756003)(2616005)(6506007)(6512007)(71200400001)(38100700002)(122000001)(53546011)(110136005)(6486002)(86362001)(2906002)(4744005)(5660300002)(64756008)(66476007)(66446008)(66556008)(316002)(66946007)(76116006)(33656002)(8676002)(8936002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <ADC36255DD8EA845803D28D933F4F741@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5841
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000044.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9dbb8144-f5b1-481e-dca7-08dc1d08d07f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fK75FT9loIqtjSMh3nvOdCsGcsoDcaOfiAGN6COXM7MOU7/6TxmuSHN/3J823cXAgDPTG9iswO651ZoxzyB/kjf9fIJR+l+cfCng2ga8GIH36Oi8FLtsBq9m+HExxfRe6c0HTr7UEYOSQjQbH53942wN4qYxNoyHvc/n0Z7VP6mnS/Tc9Yv1BPTukTQKEtgdc3603YetaTcm/HbRr8Zxq6xyA71QIzSllVZtUPmlhu9lrB/gruY/vUgpOlsLwR01Itkd6WP6O4WYeqqg5ohU1dgacDtFdo6ySEQIhAADt+A3cvYD+LmLmP1wHy5gonJGUpvdiVto/ETPQ71jP/qi4+ine0nRIf8u1FFAF0NulSYmxvxEb4WF1D/oAxmqQc5aOc8g/h06KC2k6MihbzNICAf8/60oDm9t5uaI6ShJEXRqZMtfFnQjgPFqOzeeBU8bfgTiFEtkB22vseuIdORJvCeTuSogudzLYf6yTdmpy0TUvF92I4SfM/6wGsO2RiZYpiDzL9E4Sdwjn0Ui2W6vOkUGJm+Qh5gqmfYqaekNrlp6Kb5SrAAtrQPWYDq6XOm6FJBVfdt7S9/sizpsAUhZmeCPcbeLiFVA44BMxS0fuUHG7dqFmPoZkdfZtm5W3yb1uqcysBADMDshfauVSiFnWfPIDUf8Z6yeViWlBj4wmnAJSqwVzU534Vv6kXurMiZf2AcIBjLbzPA072ImiEbffG1r0wb6oJerynGqlxAbgtS+hrMRF4recSkXIhyIn9nh
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(39860400002)(136003)(376002)(346002)(230922051799003)(186009)(1800799012)(451199024)(82310400011)(64100799003)(40470700004)(46966006)(36840700001)(4744005)(5660300002)(2906002)(40480700001)(8676002)(40460700003)(8936002)(316002)(70206006)(70586007)(110136005)(47076005)(6486002)(33656002)(6506007)(36756003)(6512007)(478600001)(336012)(26005)(53546011)(86362001)(82740400003)(356005)(2616005)(81166007)(41300700001)(36860700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 18:18:14.7004
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b8b18d-41b4-43c9-8100-08dc1d08d4d5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8885
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:18:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62264

On 24 Jan 2024, at 16:46, Daniele Lugli via lists.yoctoproject.org <daniele=
.lugli=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Hi all,
>=20
> Is there a way to have autotools available in the recipe, but without aut=
omatically executing configure and make?
>=20
> So I could have my own invocations of make, make modules, make modules_in=
stall etc

Yes:

inherit autotools

do_compile() {
  # this replaces the do_compile from autotools. You can run it by calling =
autotools_do_compile.
}

Ross=

