Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AC9CEB64DC
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 14:11:40 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.82])
 by mx.groups.io with SMTP id smtpd.web11.8582.1689689496315485770
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 07:11:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=llek2yUq;
 spf=pass (domain: arm.com, ip: 40.107.6.82, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TaLJkxvLs1L3C96qIsd27x6davjZMWpw5T9HfabP5dE=;
 b=llek2yUqgzuX64you5icaFho9aZV1bff0ofEHhU9en5v7SDV/NpA54ZcJ+wnnOPW4VZWK8s8kZLr/HD1N7a7inXJSVgtLCkvd2SF+Ehc/yhNR36mI8b6f4k5FH4/dfZTcdg4uZstfEwf1tyzlVr3coYlvXB+2djWbNhgKn+yj3M=
Received: from DU2PR04CA0062.eurprd04.prod.outlook.com (2603:10a6:10:232::7)
 by PA4PR08MB6143.eurprd08.prod.outlook.com (2603:10a6:102:ed::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Tue, 18 Jul
 2023 14:11:32 +0000
Received: from DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:232:cafe::ab) by DU2PR04CA0062.outlook.office365.com
 (2603:10a6:10:232::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33 via Frontend
 Transport; Tue, 18 Jul 2023 14:11:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT057.mail.protection.outlook.com (100.127.142.182) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.33 via Frontend Transport; Tue, 18 Jul 2023 14:11:32 +0000
Received: ("Tessian outbound ba2f3d95109c:v145"); Tue, 18 Jul 2023 14:11:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1b274578e338c48a
X-CR-MTA-TID: 64aa7808
Received: from 1fd88d3db588.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9688604F-6FF0-49F0-A7A5-5F655EFF76A6.1;
	Tue, 18 Jul 2023 14:11:25 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1fd88d3db588.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 18 Jul 2023 14:11:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyYCGz+Oyb7U7ZC5kCmDv1ycN0EAdLK3L6+63O2QxJng2/HFkdV/f3b2bLfZ8MWgcso2d2Vh1X4S0cU7tm8YSNTBBiRAgukBvts+BDQ8E+pnUvSF1Ut6z6k3cGidoyPw7N37+/cuLQibkZW1qkHFYCBHeIAeaUBRvaNEkraLaG2/FGjcZV1Zr6rsyNH1c+t/NnGlcHWFTzyLkrgoSQAOUpzs4Rn+3xi3hQIDpsxUw/fXwJxqazuyUtT07Pfa4/3pO4IbCAIwPnEHDGqj/p/FrO7BCrDuc/LiIdMb/xMzXiBzs5tDyWS0BL3FKA4NcSYhiO613d6HqfLzLYYrKDH8wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TaLJkxvLs1L3C96qIsd27x6davjZMWpw5T9HfabP5dE=;
 b=DElxEIGNwnYEKgtxB5ZHXVcpwyT54KQTlVyRNfXBoiO5Xi5AT6qdh9jlZ+F94O90/N27umBT0QSlMGBsgq83uL6DM2cVwmzSG8qiwUvXqw8SiPgLp3GSgj+vt0h+jFBjMPjlFd9qq2h/JqxrJ75IHAL6VtkLDIPE16cWp5khmUcFXMNnsNeIV8ZC4NGj5FTs2r/es1w8YATVbxrVOc7aGeKCsqNwt8tl+bQdlA//+LMR1WOT3NOCPKsUYEXuZYTnXyogJmVJsOyEMaUS08MLzw1vdo18QD/fgpA3IwKxwtYsbWVI+EZUB/HD1wqHpUFSqfTF1CTh5LRP/swInY85rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TaLJkxvLs1L3C96qIsd27x6davjZMWpw5T9HfabP5dE=;
 b=llek2yUqgzuX64you5icaFho9aZV1bff0ofEHhU9en5v7SDV/NpA54ZcJ+wnnOPW4VZWK8s8kZLr/HD1N7a7inXJSVgtLCkvd2SF+Ehc/yhNR36mI8b6f4k5FH4/dfZTcdg4uZstfEwf1tyzlVr3coYlvXB+2djWbNhgKn+yj3M=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9330.eurprd08.prod.outlook.com (2603:10a6:102:304::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Tue, 18 Jul
 2023 14:11:22 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239%4]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 14:11:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "tom.isaacson@teknique.com" <tom.isaacson@teknique.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How does SOURCEFORGE_MIRROR work?
Thread-Topic: [yocto] How does SOURCEFORGE_MIRROR work?
Thread-Index: AQHZtokxk5F5OhdYhkehEC3Y4YNzyK+5pc2AgAALDICAA/FbgIAA4GyAgAETtwA=
Date: Tue, 18 Jul 2023 14:11:22 +0000
Message-ID: <DB36B8D9-4C9C-467E-A092-3C3CE91393B8@arm.com>
References: 
 <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
 <CANNYZj-9eUXBpK3YV4ve=DFJS5Ej9g9PptAL94c83QR5BhhnPg@mail.gmail.com>
 <CA+EiEZ+e2SvgXjv8G+duoaVG_NF+uzqKDaTz3r2zGkC11xgK-Q@mail.gmail.com>
 <D59BCC8B-0DA5-4334-A211-F7784B008B4C@arm.com>
 <CA+EiEZKHMtJNoJjw64iT31bxESqtWyDG5Fou_n5P5MzR-aDMBQ@mail.gmail.com>
In-Reply-To: 
 <CA+EiEZKHMtJNoJjw64iT31bxESqtWyDG5Fou_n5P5MzR-aDMBQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9330:EE_|DBAEUR03FT057:EE_|PA4PR08MB6143:EE_
X-MS-Office365-Filtering-Correlation-Id: c70273dd-1b4b-4f7f-806f-08db8798e33d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 mppwjA/XxJMkisWoqUS5T4tUyKVVy4Sntb/kTnpPlQNAD9nvWYHwDvu53xh/v19MccSSaTTT+4lD+T5ZyrpLepGUvCjHSK61XL0uquF5AylAxHuu+CrIhC3s5dUiQOg7v3pQnS46YuwaseDajop413a4wsGIsr/34lGJRE02zXiMxfJFhWtKEMGpYyS1uKCoKWTr+nQESj/9zXKDcke+piiM5BDQIs8X7CH6C5v9zvAnnc5oXHeIYKQjLzXD9lS1qUqK9V7XFXVm4FLvHopdPxs+4Lzz4EKcYxs5Mjrp2xS2g5MmyygKKVGUXeRkde//PU+6bax6Pl3jIStWNIpA4p5nu4dy4rQUZxaa8+62dQOHFfx5JN6jSN52QSdUslA7FCDcxt1vnXECfT2afv7emWbpGXdwwY/pSBTHZYHqsnCv9eTGidiefnyZt3ksnentwnwftaqd7B0SKxMB7L7YqZMeMIG3nEsvFIkjWBApUxCuU/hKYB26ZDv8dD9VpmUPliAw+MOwxn02K2VdWAIL8t3VQjJtVE5dkgpuv1Navt8cSdfess64kG117pUfDqZd8BKvx3usu64vyr3CcafuobiufXphkX0I9tynhMRsq0Q/tV2SkhDwM4wEsXEenf7OanWhxlesU6CnGYeC5hB/TA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(366004)(39860400002)(346002)(136003)(396003)(451199021)(2906002)(6512007)(38100700002)(122000001)(2616005)(186003)(6506007)(26005)(5660300002)(33656002)(558084003)(86362001)(38070700005)(53546011)(36756003)(8676002)(4326008)(478600001)(6486002)(71200400001)(91956017)(316002)(6916009)(66446008)(66946007)(76116006)(8936002)(66476007)(64756008)(41300700001)(66556008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0F945FFB1F160445BCE007EE01D98117@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9330
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a2db674e-ae17-4274-b3c4-08db8798ddb6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3duqyXNXrnsehKU0uRxrKz812uI65haJFW1IcPJ4/IyKwjOhRzgp/0UjL6ztn52q3Qtbe3NSQq4agYNNQJCdigPpqB/++8fSYYVqbWZjHTglSg3CN2B6RQB+UuQcFdXgKBFvaS/0+COWoINDwwDIWRTGSqbcGn09T5ooTY2Nm++u3qh2o5z8Q4BqT270yJi1oQeNFtd8TJX/ciG9n58uvwqGlqge8XdAw0VsPfucvO3sLv9t6JuL7OuTYSiqLYKmh/PiDAd84DZWxwOZ9f8ZTMlvkdgR1UBEk1MqCGujW/C3XcpJC4C0uzT2jxSckh7wIQbslnMrQ6CTaH32nSeJOcEfCPwS7TiWEQKwYYRH3a3tUspm6ptnbrz9EEblCEBsVn0TlFzlbqa/Ej2YqL69xWhJhNkkjUJ1nXq0OjJIBAZGnpPmM6O9/vMItP7mrDn2NXgf+NHuyClQ9am4uZ0qWpHoygJHuF9jUh2xquoMCylWSkbqO/AacBHvIaWBWprE1qvArR3tljqgeig//efJfjm7/SqdZs7AYTHwqjM5IhBt2Mo1CnEDbD0nn7xRtRGC6vCfc88u9SgyAZKngCDQlzbOGRSbJHQK1Dp/YUeHxqsq10peG68zSTjj8CzZ3i9UF/7zyocmyzW3pPiKRiO6iSZhnX3uFBtyVg02/03yZfYGhS8EH5zMcLM4YMTpsvKqKx6Y+u/fLiM6P/rGDSnKfn86jP9SN9iqNu7ViwW/4usbktbm87Xyg0LIMVmI0gaC
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(39860400002)(346002)(376002)(451199021)(82310400008)(40470700004)(36840700001)(46966006)(478600001)(6486002)(53546011)(186003)(6506007)(6512007)(26005)(70586007)(2906002)(558084003)(4326008)(316002)(41300700001)(8676002)(36756003)(8936002)(5660300002)(6862004)(356005)(70206006)(81166007)(336012)(33656002)(86362001)(40460700003)(36860700001)(2616005)(82740400003)(47076005)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 14:11:32.0138
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c70273dd-1b4b-4f7f-806f-08db8798e33d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6143
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 14:11:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60603

On 17 Jul 2023, at 22:44, Tom Isaacson via lists.yoctoproject.org <tom.isaa=
cson=3Dteknique.com@lists.yoctoproject.org> wrote:
>=20
> For gSOAP?


Yes.

Cheers,
Ross=

