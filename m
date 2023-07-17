Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A022C001DE
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 08:21:35 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.66])
 by mx.groups.io with SMTP id smtpd.web11.3678.1689582093497274615
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 01:21:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=IZnNnSJR;
 spf=pass (domain: arm.com, ip: 40.107.21.66, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u1yU5zKyQHJrNaY5RfEFoRLYaEyQv1pdHLWy8W9rMfQ=;
 b=IZnNnSJRM5RvlIGILUvptstv2KFtCtjPQcIhwREXIU4SWi1/cMQuAka5feZ+kawBrsOsPqKu9xoRJwIMWq4v+lPPX6cgyzIu42WVOjAPB7m5sinJvrlzRL4seUgOWKjBx4oFPVnwCV7mD/Tknf+3gBXXfuJggxIKsaVM5tnZ8Z4=
Received: from DB9PR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::10) by PAVPR08MB9482.eurprd08.prod.outlook.com
 (2603:10a6:102:318::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 08:21:29 +0000
Received: from DBAEUR03FT054.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:1d8:cafe::24) by DB9PR01CA0005.outlook.office365.com
 (2603:10a6:10:1d8::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32 via Frontend
 Transport; Mon, 17 Jul 2023 08:21:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT054.mail.protection.outlook.com (100.127.142.218) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.32 via Frontend Transport; Mon, 17 Jul 2023 08:21:28 +0000
Received: ("Tessian outbound 95df046a2e2c:v145"); Mon, 17 Jul 2023 08:21:28 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fff59dee27baca71
X-CR-MTA-TID: 64aa7808
Received: from 30a89a8d863b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0FF47BD6-0D47-4F58-AC70-42A271F6A0FC.1;
	Mon, 17 Jul 2023 08:21:21 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 30a89a8d863b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 17 Jul 2023 08:21:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ha74IO6ZmObxLJoAa2QR8Imvm0qZkEvXdpk2s9uTYDxb9q2lpF+lgFArvFMKxZht90dTTPXKIE8FbtY1molNztVBCMv3PBAEmLG97/CGMkabRW22LhzbFEQAaY3j+eny/UvanooN8/jhiKGTEHGhg/ymSH2itNxMqKNZxrbxT/rOeM74Awotq1C5O/Jb0WXTjW0oQYcYMBmu6OlX96K4298nt5Fk4Qwnxn3nboQW5CdlYB+7PsS55Ro/zP62MQrEE0Zp4XzdwpYU5lIHdSdjs3Ry7acKMs81DvU2cjYl1rcrvIdcjy6RcoK6Fm6SWS5TrIKkQKIsJ6b3KF35CST8EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u1yU5zKyQHJrNaY5RfEFoRLYaEyQv1pdHLWy8W9rMfQ=;
 b=c567y2UXyRjWtk26OYI5Rygop/W5UJ8sU/BVgKCva0oPAOEUbCCLPDxrbBePJOD6T67di0PjKesOwfvjmf327w6IkRN1uw9KZGSmOHknxDAm5Yn+gtzG52qAlpMXN39XIpXB9fY7L8kU3FJXTZXFgwN7Wv75e1YKD8McARhjxTsr9ToXCpLEPZLm3EoKNmnjmsQo3+U7Y0oDoX1YPjJi6dY2GwS41+99BEZQLfyqdTXUCCFZ9Y/0kig0/QOoGWd8obMZX9KXZOx2Ix6nuMxwvm4UtAzsSEXCUJh51hUAzaa2IMv7niRDuUd9quCFDzxgdI/Ea1BS/22obrPXvg6kcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u1yU5zKyQHJrNaY5RfEFoRLYaEyQv1pdHLWy8W9rMfQ=;
 b=IZnNnSJRM5RvlIGILUvptstv2KFtCtjPQcIhwREXIU4SWi1/cMQuAka5feZ+kawBrsOsPqKu9xoRJwIMWq4v+lPPX6cgyzIu42WVOjAPB7m5sinJvrlzRL4seUgOWKjBx4oFPVnwCV7mD/Tknf+3gBXXfuJggxIKsaVM5tnZ8Z4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB5PR08MB10138.eurprd08.prod.outlook.com (2603:10a6:10:4a3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 08:21:20 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239%4]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 08:21:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "tom.isaacson@teknique.com" <tom.isaacson@teknique.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How does SOURCEFORGE_MIRROR work?
Thread-Topic: [yocto] How does SOURCEFORGE_MIRROR work?
Thread-Index: AQHZtokxk5F5OhdYhkehEC3Y4YNzyK+5pc2AgAALDICAA/FbgA==
Date: Mon, 17 Jul 2023 08:21:20 +0000
Message-ID: <D59BCC8B-0DA5-4334-A211-F7784B008B4C@arm.com>
References: 
 <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
 <CANNYZj-9eUXBpK3YV4ve=DFJS5Ej9g9PptAL94c83QR5BhhnPg@mail.gmail.com>
 <CA+EiEZ+e2SvgXjv8G+duoaVG_NF+uzqKDaTz3r2zGkC11xgK-Q@mail.gmail.com>
In-Reply-To: 
 <CA+EiEZ+e2SvgXjv8G+duoaVG_NF+uzqKDaTz3r2zGkC11xgK-Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB5PR08MB10138:EE_|DBAEUR03FT054:EE_|PAVPR08MB9482:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bf8482b-46f4-47e5-c7b1-08db869ed1de
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 oAlqfkxoW1Q8HLpMwbL9jRGRWgT/iNQTQsyu5Q8nBYvoj7ykHbXEfC2ouz4ljElC659F9tBAVHCSzSLFSX275xk1OnCnItAkAnAQnSqlFvANl/IhSARgxXhLZpN+yqMJe2rpHtWKTjs07QqZgK39GFY0sAb/lfS3p8lgKloyA4+Fn0cJlqONdGRtVOgtxcTZwsXTq3fHDrdVTJWYH25MvRxTNQ3u5QXgy9xT07znH+CDJkdPRJjvk6/7uowXP69xsxVprVOzZHaft75Ak/lqg6WKR/4MU8AiIK2Axz1vAUYdOmJaYqpWBJOLWx74KfLMyAIPruEGPJly1uswP9p2S39FC8UVUJS9tn8PYl79L1xmfUCd6qhXfleR0G7AJgsdyzAwErN/aGl83lbZHBeijrC4mdRWTt9nJAGLLrGSIZAV/ml21kpRK63iYcZ2f8/hIQBF5NPAdeXlFNPnUlscafZ+V18fjNIG4oUjPCLLtPYX4EqpqK8D/sadgqaNwBsX/326uxG0sV3YgMM6a55ugjerdghV1cUBIRanbrEb17P+nl4XNoDEBY4U0o5DjttL9AvJYAcQ9ttN1YvBkaa6NBCQbv+qQQVub3BA0VLxLk5VrlUYeusas/75tlaUNopXa8PkpqXz6UmYI0EZhW+EXQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(366004)(396003)(136003)(39850400004)(346002)(451199021)(478600001)(83380400001)(4744005)(186003)(2616005)(86362001)(6486002)(26005)(6506007)(6512007)(966005)(53546011)(55236004)(66446008)(64756008)(66556008)(66946007)(76116006)(91956017)(71200400001)(38100700002)(41300700001)(2906002)(36756003)(122000001)(38070700005)(4326008)(6916009)(8676002)(316002)(33656002)(5660300002)(8936002)(66476007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5D7A8F50D379464B8CBCEEF9638D7435@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB10138
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT054.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	74a7b5a8-99d5-4fd5-4522-08db869eccf3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CkSCCMhgvUGLqhyj4kDH8vJ3rWIpH6kNTfv54D0EXaHrLRmunbA0YXTPf+R8U2MZyCNhb+VXE5hu0zT8mUKW5JKlXpTms3PkE4a4kk16ze0d9KPWCxFjfgjYXXtY/bNqy9h3V5Qg9pw/GQW6ZYygvGFWbqs7PITgoz36rpHefw9IjEgBexLRgO8tCXOattDscJXh9URTUAKfHgMyHPAgGrgmPPMXCi/wI7zTIao/hHe5oVQkvWue8CBxriagHIIERlre8/Zol8geqhKChdBSJXn0lqPWCAfgJiNlktXAmLT/ykS/EgpHo+taJ8uEcL8xguTLIuluuDhxs7w9sBVg71fWxpQO4Kbq242IEpuOGi3Vwk8yUHsYsA6ujBLG3xKLaSwfH5L9VuFrDGsKgOXaUmERmap6G5rV7InEJZScIHZASplifMWpx/Ql7ORqpAA/0dckDMXTstdPsmxH+FA5KJCvE6/rfXj9eV5vHBmNBOq5mqOyTwrDYgRCPeIQzT+CWdA32QBb8ybVSkyJwGX1DLk4WOdr8U0J9/Z/YOIYHsA935GnxYeLzAwV9ymd0WSmj++TpIqIxXDHSaPD7kboUZoruEYZvCk5tH1+OtMFETRF9lhaA8GqfmrhQoztg2PBkU07ew3zoDoxmNHvpePnWzduXifXt/6gqE55+nGRdjBEV3t6lKg0XqcQP9FgE6azagJt6LHdPo0BQedWyqH/2UVk7JC2/O7/HOTJWK20SbE=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(39860400002)(346002)(396003)(82310400008)(451199021)(36840700001)(46966006)(40470700004)(41300700001)(8676002)(6862004)(966005)(70206006)(70586007)(4744005)(2906002)(8936002)(6486002)(81166007)(86362001)(356005)(4326008)(36860700001)(316002)(2616005)(47076005)(36756003)(5660300002)(6512007)(40460700003)(6506007)(83380400001)(336012)(186003)(26005)(82740400003)(40480700001)(33656002)(53546011)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 08:21:28.7050
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf8482b-46f4-47e5-c7b1-08db869ed1de
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT054.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9482
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 08:21:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60586

On 14 Jul 2023, at 21:08, Tom Isaacson via lists.yoctoproject.org <tom.isaa=
cson=3Dteknique.com@lists.yoctoproject.org> wrote:
>=20
> Ah, I didn't realise there was a logfile for that.
>=20
> For future reference, it uses
> https://github.com/yoctoproject/poky/blob/kirkstone/bitbake/lib/bb/fetch2=
/__init__.py#L1116
> to run through a list of atlernates, eventually settling on
> http://downloads.yoctoproject.org/mirror/sources/gsoap_2.8.106.zip


A patch to set a working URL would be much appreciated.

Thanks,
Ross=

