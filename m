Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E75C77B7D
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 08:07:51 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.86])
 by mx.groups.io with SMTP id smtpd.web10.83550.1684138070095111756
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 01:07:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=rLm9s0pG;
 spf=pass (domain: arm.com, ip: 40.107.104.86, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0iq3PlXbGjDd/fuwcqAJ4UrV404qktbozKg7ysxvwQ=;
 b=rLm9s0pGoSGclbc4k/uf6bdQx88Yf/O9MG/RN9CeHzDJiRRHGmJlxvioK7P9x83C9Wk00pUwFmG5PuCvJUu/OnTP3xlzrRWk2Ij+XmP9CLuyxp3yCWIMWsYkA6mz35xbP7KF/CN2V+iItMUtp4fkyKh56MCJUWrT7KnIY9bShp4=
Received: from AM6PR0502CA0068.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::45) by DU0PR08MB7487.eurprd08.prod.outlook.com
 (2603:10a6:10:357::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 08:07:45 +0000
Received: from AM7EUR03FT063.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:56:cafe::92) by AM6PR0502CA0068.outlook.office365.com
 (2603:10a6:20b:56::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30 via Frontend
 Transport; Mon, 15 May 2023 08:07:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT063.mail.protection.outlook.com (100.127.140.221) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.13 via Frontend Transport; Mon, 15 May 2023 08:07:44 +0000
Received: ("Tessian outbound e13c2446394c:v136"); Mon, 15 May 2023 08:07:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7a1a4f15d29248fa
X-CR-MTA-TID: 64aa7808
Received: from d007fb8d83f0.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A920C409-9C3A-4B39-9540-E36EEC7E4BD7.1;
	Mon, 15 May 2023 08:07:37 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d007fb8d83f0.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 15 May 2023 08:07:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iUBDnyp97yu+doPHoixtxeOBIG33ba3b/Q8T8RrPj7BJziA39zEZ1mMRZwnsvF0cpT7PWak5J0aIVFpRwYlcH+s+b83ZKh5jRS4u+JA5uT3F8sC9F/y8uh8PwfKEjIhreIlE2BeVlAOGyvSSQHek2e/5DXK+iTTEy3nmkAC/ca6WLAgb9ywdG6mJqYz8yp7oijZCOwX5Nsfpf3ihhO5j1p0mtcROA5U38TgVRfxg6A78XEiofwbuLJ7YzPjPvNldaho5TNVLcaIXdrVeBzuzp4dHWub1NG1gz7aqpJOXJzp21UN8PHEenMxi+8/EerhIoFdnZoEqJWj3vbREDoWQVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T0iq3PlXbGjDd/fuwcqAJ4UrV404qktbozKg7ysxvwQ=;
 b=h0z25BqiDM4WuT1fnDWiAVt+SID/ky+y5cAFXxrh4E6mzdgBk/QQfsvbD0vwAYqou7ylo4gRMtH4HYZvCMZJPwLoZWFksKeJK42GBy1EB3Va8OPwuDXAPm5xpARvVJp/Ir6dWGnJzO+Nlf0Mt0+n9SwXgpmtOHunAPgrbimf2Bu6hTE7+CGAqq5nH7Pp7cT8927NqGbTgvfXXNwRbyYvGrLxFFAjQIWhsHx/5aOKPJ+Jq0zxB6SRouY0tP11HS5NjpEZKsmN7SN2ZZo4f0pSVoMJsNAoNeez2v32YkxTQRRcGHgil8faH1vrO0t7ombLoMj2+ZdCYjX87joKjERDUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0iq3PlXbGjDd/fuwcqAJ4UrV404qktbozKg7ysxvwQ=;
 b=rLm9s0pGoSGclbc4k/uf6bdQx88Yf/O9MG/RN9CeHzDJiRRHGmJlxvioK7P9x83C9Wk00pUwFmG5PuCvJUu/OnTP3xlzrRWk2Ij+XmP9CLuyxp3yCWIMWsYkA6mz35xbP7KF/CN2V+iItMUtp4fkyKh56MCJUWrT7KnIY9bShp4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM0PR08MB5476.eurprd08.prod.outlook.com (2603:10a6:208:18d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.24; Mon, 15 May
 2023 08:07:35 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6387.029; Mon, 15 May 2023
 08:07:35 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "tom.isaacson@teknique.com" <tom.isaacson@teknique.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] LTS EOLs
Thread-Topic: [yocto] LTS EOLs
Thread-Index: AQHZhr+aW+SG4TbwzEeGqBp4T6WmIK9a+xAA
Date: Mon, 15 May 2023 08:07:35 +0000
Message-ID: <0AEAD6FD-4839-4790-AAC7-339951A914B3@arm.com>
References: 
 <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
In-Reply-To: 
 <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM0PR08MB5476:EE_|AM7EUR03FT063:EE_|DU0PR08MB7487:EE_
X-MS-Office365-Filtering-Correlation-Id: f866fae2-98a5-4802-9561-08db551b76c3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 1F5ciz9syD8LHrTtpr5q+1Hvy5jf+1xrFkmqALwEEqCtRzt3dv50n24sdKbqELvdmVrr6dcrFoDBaL/BxCkfp8HNvyleG//6isas6C+uRmnI1CQPk+UQLY2oU3YR2HIyaXF2GEljdKCUpz74WaeVdcyAb/JzvpgPxTaoMmJZdi3uSoR56j6hNiD3nmqNXEnrXHUMF2iIYtIN/vK7WnjQwJy23jSWROBMumnnT+ExmjS4HJZxWRW+0NBRixws+7IGFth8XSyNyw1y24Nhbs51n2JbgEJTbxTw8AcrIHHDT47u+m4eFUv6+q2330eZtB65Bj8ZqQtnTqbKFOJ+AMcOCGS9Xn65i8LLLn6eEz9j8n2IGEjw4H/vIch8O2eoWE5HIp3rrsbiQuSxScDBBWt0LeuLoaIDCXvYt+VhXzmRabNW4TCkiLftCWFVz2+oHgrtqA15DMthMrRa8bM/am4JIYrYkSuN8OHmniW3pmbRDHt8k03sOs2KBkuBD2zPFoYEhZV9+CiO5zZ6NcVPQ9tPgm/2IgbX0Ep12tLMvP+RzJoZMdoBiCVRMAe/5RAEFwGUpJ9lZp+AlR/bu/1drPH+jKTjRJi4m1vzxKhe799pPWn434iKS/jbUAjrDmx8qAh+3hBe9GW9ps3qhhwYc9jkxoVi1kRU/oUsot8TadQwHZ8=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199021)(53546011)(6512007)(478600001)(6506007)(186003)(38100700002)(966005)(6486002)(122000001)(71200400001)(2906002)(4744005)(91956017)(8676002)(36756003)(84970400001)(38070700005)(5660300002)(8936002)(41300700001)(76116006)(66946007)(66476007)(66446008)(66556008)(64756008)(33656002)(83380400001)(316002)(86362001)(6916009)(4326008)(2616005)(36250200006)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <87D4F26D69B3974A96ED7213A497F073@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5476
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5271a46f-5acb-47cc-d39f-08db551b714d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Wj94bqe1XbrYpEkHapEUhxOCw5SDpZe2lnnzk0OWTZmHcOSlnQTaiBWYtPLgEva7YKhKd4OwG0tY7lZHpyCwFUF8MdKcb/hRVQ042AtPa8nvkKPhNsBPU/J+A6r3LPM4OYCvNSHj6uMGchMUfgdLCaeWCFWCCZ6p4j0uVi65NgF976xtazmMeC9A7jq5AJn2MN8MutX1bYbzUK5L2JtOgd0y/VrG0cQWqkL4A5HBQ7AzPCi4WtRcWgSOy116YEOwX7wQPDXnzYjybv2u0lKgTblpH1Dkn41YqJ+OzmVc91V3+vpY2hHzq5MLH8722txWYEjZIDNu/DsbKudMZxxycqSnWjU4ZvXRP5QyQ+cLAgHbkX0iJLuQ2C6nBszbP1CBsRBAsiUFFvVaflCBjzt1f8SlWd+vF3DiPaTqjrSl2sPDtmwUoQqZAK8LNNtwQdbfr5RgfIX2AUyFcX2ONZcXJXLfllCWVuPZfqfsV/rYSDDyrKCbUZDdLwDjekc2BJbRFW165Te8RaxDLkp1/ALzZH9mtCs/Eg4P4ZgviHUTs9pH1i5HLpzZD6etchUFeN3e/QeoCzP15YhZn08IfdCxnjG5BHfaX7r3FHWMJ/KaPdr4jYHOxAwsPcwyevTqQolvI+Ama2Jc+vKrd+ksgY1/zKu1ybcadw1okBCtUgEKeQx8krUxYYAIsgrOc6FlVr8KB/tZdyHHZMUXi7EdRSM1sdWQpgf3CKoA0W48GF4YelP9Rbo8PDwln2my1mxJwp+OGutS24FEKnBJ1zbRxVy1oA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(39860400002)(136003)(396003)(376002)(451199021)(46966006)(36840700001)(40470700004)(336012)(53546011)(478600001)(36860700001)(26005)(186003)(6512007)(6506007)(40480700001)(86362001)(82740400003)(4326008)(47076005)(83380400001)(2616005)(966005)(6486002)(84970400001)(70206006)(70586007)(41300700001)(81166007)(5660300002)(356005)(316002)(8676002)(8936002)(6862004)(4744005)(40460700003)(2906002)(82310400005)(33656002)(36756003)(36250200006);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 08:07:44.7595
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f866fae2-98a5-4802-9561-08db551b76c3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7487
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 08:07:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60017



> On 15 May 2023, at 00:55, Tom Isaacson via lists.yoctoproject.org <tom.is=
aacson=3Dteknique.com@lists.yoctoproject.org> wrote:
>=20
> I was just looking up the Yocto LTS and I found
> https://endoflife.date/yocto. It says:
> 3.1 'Dunfell' (LTS) Ends in 10 months (01 Apr 2024)
> 4.0 'Kirkstone' (LTS) Ends in 11 months (27 Apr 2024)

FWIW, eol.date is - ironically - out of date.

wiki.yoctoproject.org/wiki/Releases is the canonical release timetable.

Ross=

