Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1739C77B7C
	for <webhook@archiver.kernel.org>; Tue, 25 Apr 2023 21:07:00 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.66])
 by mx.groups.io with SMTP id smtpd.web11.92055.1682456811434613701
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Apr 2023 14:06:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=SFDvNwZ8;
 spf=pass (domain: arm.com, ip: 40.107.6.66, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i11NWB2HyG2MZ+SUaVJjPoq71aQ4upzWe8vpBhGAIDw=;
 b=SFDvNwZ8lduk7Dtk9pLd8Lkeryu09S1JyuvJnjjaW45OCyVKt1WeFYK4yu/PEJ0wzIpAYpGZ9Jdlr8V8esI+k9lcX7HUlavyQNlrCPUTemgC7BBsJDXeDVxZJizvdwF7V33ZKnYgpfJBWMGx+AbnH+UTrD2+3npopSm7laqAbeg=
Received: from DB6P18901CA0001.EURP189.PROD.OUTLOOK.COM (2603:10a6:4:16::11)
 by AM8PR08MB5569.eurprd08.prod.outlook.com (2603:10a6:20b:1de::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Tue, 25 Apr
 2023 21:06:48 +0000
Received: from DBAEUR03FT049.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:16:cafe::7) by DB6P18901CA0001.outlook.office365.com
 (2603:10a6:4:16::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34 via Frontend
 Transport; Tue, 25 Apr 2023 21:06:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT049.mail.protection.outlook.com (100.127.142.192) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.20 via Frontend Transport; Tue, 25 Apr 2023 21:06:47 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Tue, 25 Apr 2023 21:06:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: db1193b390101116
X-CR-MTA-TID: 64aa7808
Received: from e0b8b7b1cded.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 815B6661-5D99-4184-B932-37EDD0EE04AF.1;
	Tue, 25 Apr 2023 21:06:41 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e0b8b7b1cded.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 25 Apr 2023 21:06:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPfgDK3fS9XE5Eew08J1G9lJDmb/QsKgr98XsFRqyvAYvKy9tkHrSSuFdC5vWcQC4/gXIzxkRj/1L7i0FfGKsZK3ymM2Ujmdh9OXDwtgzuEMvreUc3L2GyjAxQoOiTJW3HGGXVLcQ1H+X1h0jqAFfASnG3YXtMJ49pU7dTYXWM6BJg2w5Ew+vVNB3NVSuZ+64wfrCyY27wREUVKtbnI2ATCle53Sj4bRWiefvciQkEvp3dbrp1DAVfTGhwAQKMLZpFU72JAGIqk9vkXG4fMuVButyenidXKpB+1AbWeW0+xu36Z9PxNW8eKqEEBTtb17vDMk1BOB406xvuEcPDmgeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i11NWB2HyG2MZ+SUaVJjPoq71aQ4upzWe8vpBhGAIDw=;
 b=XbQmQFTN4dwIT7RlTh6pEJGAnYL2XN7R135+seegWgruGp5TdXQhpgQZTSZaBg0PYrCVPbwmjRAqXRrwSmhugG/PXOq0mlbNY6ddC+nIg4OybEX6fnfKriWhFCKwk/ibgBrlI3zwMMEphLzk7DMGK0Rwtf6fiupwGw15GpPQb+X3mc5Bm6HyoQ1/LCjzSYqKcNFo5qypWX5o0q8V7g2Na7ekLKYmfDETWqlqtcHhPD54SerS9+jvJBZt9scyRQJCsXWIcUooMeKhja7oZHGRhPp5vKVhDNDpFnYSnQuNdvklGIemol7FT7FlNsAkOXvdr464Mxtd9Y16uEVmD+82ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i11NWB2HyG2MZ+SUaVJjPoq71aQ4upzWe8vpBhGAIDw=;
 b=SFDvNwZ8lduk7Dtk9pLd8Lkeryu09S1JyuvJnjjaW45OCyVKt1WeFYK4yu/PEJ0wzIpAYpGZ9Jdlr8V8esI+k9lcX7HUlavyQNlrCPUTemgC7BBsJDXeDVxZJizvdwF7V33ZKnYgpfJBWMGx+AbnH+UTrD2+3npopSm7laqAbeg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB10293.eurprd08.prod.outlook.com (2603:10a6:20b:62f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Tue, 25 Apr
 2023 21:06:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%5]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 21:06:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "steve@weaverpad.com" <steve@weaverpad.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Error building m4-native while trying to build Beaglebone
 Black branch
Thread-Topic: [yocto] Error building m4-native while trying to build
 Beaglebone Black branch
Thread-Index: AQHZd4LospFVDOFj8UqPbr0fPpyrMa88hJGA
Date: Tue, 25 Apr 2023 21:06:35 +0000
Message-ID: <0E75AB98-AA7A-4CF5-B883-076A2CF0CDF0@arm.com>
References: <b2b1f3c5c42d5eded06ae5b3a6cfa754b1eeb99e.camel@weaverpad.com>
In-Reply-To: <b2b1f3c5c42d5eded06ae5b3a6cfa754b1eeb99e.camel@weaverpad.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB10293:EE_|DBAEUR03FT049:EE_|AM8PR08MB5569:EE_
X-MS-Office365-Filtering-Correlation-Id: 47247949-9b9f-4531-4b1c-08db45d0fb73
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 SUF5qO3Kk5TyAcmTBxYSRQPH5CsTq/YBFupaAS0epE90rboA1E9RIXj24AuAZhuwKZJ2pKGghcL6vM6lSONvN6clQvvoNffw5QJlmH3GUAk0kysxa3YlPw8rjKW/tLRk0GHDNpTHi3YH3LgM5NuCPeFdleMp0QE/JvMV1ku83wPNmkdpaRLVlb7JLTtQDcupsOvOy2SJP1PZooOgaxUT5Hkk9QACaK75p7elgSZKvSbUEmRpDQglw0Hi6QLVD0yKV4fN9YJsDnvBFKktx0LcAb9ELheRfp4c2Q+Zw/2u03d9w/r7ewugW9cIasHd65eFc6BbgY0XXiNvw2VrkcxhF89y/ZksywY7KK3+ZOJkrgA8rNyPLdJfYum/PNeG4xad5Iz9mlSPIvsi3P3VGm8x+Dl0HqSaBkwaigGUr/9qpN1mv8AHqNeC8neVgmJv6SJhQjqVNaR96Tdzyj42QX6zGMz2TWIJ0d7gFp/5unzB6MUBaDuebGTxqB6tJOaYX373ed9U+sMarnaBXgfdxG6uAzhTha3XO+N/n9N1+GZfjZfxbHlUXwLb3dBnAZ8+ces3o+gj9LAnNlQSFOMuOFfs0l50CMCVqHA1dX/rTHzinrERixNXNjY3vZRtHtqTy9DfmoZWHqKGt+hV+tQkkuN5UQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(451199021)(2616005)(53546011)(6512007)(186003)(6916009)(66476007)(64756008)(91956017)(66556008)(4326008)(66446008)(122000001)(66946007)(76116006)(5660300002)(2906002)(4744005)(8676002)(8936002)(6506007)(316002)(41300700001)(38070700005)(26005)(86362001)(478600001)(33656002)(71200400001)(38100700002)(6486002)(36756003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1732887E315D994FAE5033F58A7A53FA@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10293
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT049.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0522c600-ef29-4a0b-70b1-08db45d0f445
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bGZSYXMyXPgyiKCD+Vehyn4sL99IGb/GGJCl1DgRzJUThLRRmNg95JlKfSDEhwjQY+BnrdGQ2XvT+NStdo0zal6xWtHqpqzVpvAI5XT6Q5Nh1qQWg9G3Wj07Xzr9CR8KuSJpRiJN0J1kMbD/l+4HD5/qYrKLriSRR4m7eSHftx+hftWHX2U26rgrmhXLi75zpVsiiAJEN3G9RPHVfAy7pdwJvdXzkztNUP81TkQa0C5Dy4uw4M4+QeygzaNsPEjIwN5dk4sHwHLADUHni70SB155n6LKaiC3KhLGuI23ehJRnU9rn2NsjTMbrNYcWXLflQahoxib0fmHO55bPA0mSiWT/T0iEWc3JiwVcO1p1bGxj5xF9jAxW/jlnm4ot0PB4CtayUx67ImNZ+iwhBdAYMbBiOMgiEPmdTYhar48aKa/tCSBS2wYYYHL2dwV4E/x/BP6SFWHLb2Ly9cQ0UhBcQbJC7olX22dZT96EgCPGbqwgBZJyoA94AHKqFD2Ae3LmalePizppbsOMnFc3jIlQTNVGhawf/hYASBIWkauCLEi7tuRncSuD+BRspU8i0PvMfcFkZHK2/yjWNNxeI4496RqRjPKqp7hOanDHHwokR3lAh2/XVzaxMKYQxRF6Y6anWIq5dBFLcrhVheugmWFQP5qNvTrq3uXxR6OohYIS3vt7gXluo5bSt70HbIglh0Xp89LOW9vnizmDdgCE5J9NoPa/Mrcy50QU+fvsRBXHjM=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(346002)(39860400002)(376002)(451199021)(46966006)(36840700001)(40470700004)(2616005)(36860700001)(53546011)(6506007)(47076005)(336012)(40460700003)(186003)(40480700001)(70206006)(4326008)(41300700001)(81166007)(70586007)(5660300002)(2906002)(8676002)(8936002)(6862004)(82740400003)(6512007)(356005)(26005)(316002)(34070700002)(86362001)(478600001)(33656002)(82310400005)(36756003)(6486002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 21:06:47.6895
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 47247949-9b9f-4531-4b1c-08db45d0fb73
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT049.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5569
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 21:07:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59780

On 25 Apr 2023, at 15:33, Steven Weaver via lists.yoctoproject.org <steve=
=3Dweaverpad.com@lists.yoctoproject.org> wrote:
>=20
> Greetings,
> I am trying to follow the docs to build Yocto for the Beaglebone Black[1]=
. I've been able to clone
> everything just fine. I am triggering the following #errors when I try to=
 run 'bitbake-image-*':
>=20
> | /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.=
17-r0/m4-
> 1.4.17/lib/freadahead.c: In function 'freadahead':
> | /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.=
17-r0/m4-
> 1.4.17/lib/freadahead.c:91:3: error: #error "Please port gnulib freadahea=
d.c to your platform! Look
> at the definition of fflush, fread, ungetc on your system, then report th=
is to bug-gnulib."
> |    91 |  #error "Please port gnulib freadahead.c to your platform! Look=
 at the definition of
> fflush, fread, ungetc on your system, then report this to bug-gnulib."

What release of Yocto are you using? I ask because this was fixed in 2018..=
.

Ross


