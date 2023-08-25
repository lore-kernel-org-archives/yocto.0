Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B751AC71133
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 09:41:54 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.79])
 by mx.groups.io with SMTP id smtpd.web10.9897.1692956511351126151
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Aug 2023 02:41:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=SMLpm8di;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=SMLpm8di;
 spf=pass (domain: arm.com, ip: 40.107.6.79, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNO44HzE3ctzR/4IIUX9VUHgTEGG+IGNyTRih/ZcuL4=;
 b=SMLpm8difclz3XZM5BZQhI9cyg3z2OMp70sUziq+Y2CHZuXJzIWqa7i7koKYqI7f1E9qZ6J0dur+U4Z2QJp0iz9L79oMvdF6lGa8z9CyW7uoOLKIqXR7zb6+27zy5+FYrfD5I/kE8Osqai5OjGh+ekwWNIxzRoPjUaGf9slW+Mw=
Received: from DB9PR05CA0027.eurprd05.prod.outlook.com (2603:10a6:10:1da::32)
 by PR3PR08MB5611.eurprd08.prod.outlook.com (2603:10a6:102:85::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.25; Fri, 25 Aug
 2023 09:41:47 +0000
Received: from DBAEUR03FT040.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:1da:cafe::b3) by DB9PR05CA0027.outlook.office365.com
 (2603:10a6:10:1da::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30 via Frontend
 Transport; Fri, 25 Aug 2023 09:41:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT040.mail.protection.outlook.com (100.127.142.157) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6723.17 via Frontend Transport; Fri, 25 Aug 2023 09:41:47 +0000
Received: ("Tessian outbound d084e965c4eb:v175"); Fri, 25 Aug 2023 09:41:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: da7333ac638a91ce
X-CR-MTA-TID: 64aa7808
Received: from 9e64a4313595.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id BFBD00B8-E9E3-4CA2-AB2E-33003715FFE7.1;
	Fri, 25 Aug 2023 09:41:39 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9e64a4313595.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 25 Aug 2023 09:41:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LNbwgPeX9MjRDYnBpLK79Q/fT3qHZKHCQyzBLylKHa5nJNDvzk/K29pr8hT0gMlGxOG0ExKBVUWo9ZzKZ0tEqef5tMYFI7NaNd7vV8uQYcZi6swcDzMzA9aaIRyyEjxNDaGCvRhQwVwmLt2Uk7XfptEIkq49Ci0/GN/5Zc4GMfx3Wb9AW0MhnWb7IZvekpm/teQVMk2HD2O4akovk80qqlZysJZxVG9Qg81rV3fwDmRE0R1a8YsNwG23odJi3qvUIoi8FePN1p67J4PCa+fBDsX7Wn2UJ6dVgjGsK3gjsb4gWAHnlARNpScX07hHoLvaIw8yt7TlvfK9BGK7YtlDzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNO44HzE3ctzR/4IIUX9VUHgTEGG+IGNyTRih/ZcuL4=;
 b=ZJgByogzZri6VSPslak42bjiAUWvkRccV/cOXPhG4WdoncCBD2MgnLZFnDmAbEwBAWvHGyokCItOL8hJcU4cvBe59WO0U3Tr83w09umfFG5HtBZxcZ9xe7+VRSCxJDdE7jm1PUmkXnvzesJBGH1k1T2mJQD8j2PfiX2PJtb1cYy4f9sHaAIUFH5Sjp2e4JrnndHPW+msomxWSoS7r71vW0+5F/RkEi0QihZicicaNftqOGgG6mmBZxX4zNBOgAORry+8/CYDGWzINBFW7d+6vWtIYdEd7LbQGEwyqgxDjTdOMRKmYhCpb0hjZwvduOKhXKEh2VlSEdfmHs8RQGwwiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNO44HzE3ctzR/4IIUX9VUHgTEGG+IGNyTRih/ZcuL4=;
 b=SMLpm8difclz3XZM5BZQhI9cyg3z2OMp70sUziq+Y2CHZuXJzIWqa7i7koKYqI7f1E9qZ6J0dur+U4Z2QJp0iz9L79oMvdF6lGa8z9CyW7uoOLKIqXR7zb6+27zy5+FYrfD5I/kE8Osqai5OjGh+ekwWNIxzRoPjUaGf9slW+Mw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9815.eurprd08.prod.outlook.com (2603:10a6:20b:614::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 09:41:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 09:41:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "dave.hitchman@kymati.com" <dave.hitchman@kymati.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] What do people use when reading the retext documentation?
 beginner retext
Thread-Topic: [yocto] What do people use when reading the retext
 documentation? beginner retext
Thread-Index: AQHZ1zQXH+R4+7hLD0KpVG6ToMmaS6/6wjiA
Date: Fri, 25 Aug 2023 09:41:35 +0000
Message-ID: <77AA35D5-E41A-4542-8A31-AAAE2BB480DA@arm.com>
References: <KOcs.1692954658028208431.RWMj@lists.yoctoproject.org>
In-Reply-To: <KOcs.1692954658028208431.RWMj@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9815:EE_|DBAEUR03FT040:EE_|PR3PR08MB5611:EE_
X-MS-Office365-Filtering-Correlation-Id: e3f0e978-2851-4a97-d082-08dba54f8019
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 juFzYKQOukb58NQO0HW+qr68UQSyfm/TbEE7VFOF096Xvh2/VjhelpaNkH9yOwpiKpPpbnTO7YZlm/1YkxZrKVN7v8zNxcMu23HLUfJ8t5/SmSUhWxOFwtTZjM5DxELJx4uv86/02uDSgxwLs+FoXHBcG7uPCQ3wZjbwbT12+ChRc0b9KlxijM46KQJukD52D/0MOIYmCHMkpzrEcby+VhWqSXK5SKRkNn0vRtKJUkEKRfI9mSJzIYt0MuNr5jKKa/TJT0olYF2RhFJSDMN20Grz8l/m/Oz0oLrJLOe7n/kQZAz6rZLhXZ4ZRSoAi18o7+zh8O0Xt82HxsfeIAoFHS8PVQtCNgQCyJuhlGds0RGx3XyKZymSii+x0QlmceUAyF71fDGxo3eU9Ig8QnxOB6C2xJ6/XyQXVStYERMCNtF0E2uxzd883F9BZdGG2wInBWx2YiRtMYpSVjGfYW3d15bt8m+Gcjr2oDFiot0QVBnKwIATTz/28D451ht5IzgjFZJ39zNcaiK8tSwgBHEcDZDUNCyaVzVmbB9zrv1vyaca/2b2Q+K+hNzdD3D3lHFPXnSmcmgcEPDw5/hCb3fUSMai0b6vRag1l4Cy9OPMB3PAKMrJIVV4S5At0mGFRnA+uQ0D3R0vVFMy2x91zo/Dtg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199024)(1800799009)(186009)(122000001)(38100700002)(38070700005)(8676002)(4326008)(8936002)(64756008)(41300700001)(6486002)(6506007)(53546011)(33656002)(316002)(91956017)(36756003)(66446008)(66476007)(66556008)(66946007)(6916009)(76116006)(86362001)(71200400001)(6512007)(478600001)(966005)(2906002)(2616005)(5660300002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BE5F5B2127D62C419AE0E9314099E3F1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9815
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT040.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	62dc6ac1-6270-4bc7-ad75-08dba54f7943
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ClbgGi5CK/qq2SIv6reLIY4XsuApwMLFATd8Qfc+x5waoqV6vaQ8Xr8eDIAZCboP9I0r/4Dwbx8yB4ixbPP+bEf929bWdgT8VUYUt4xabMeME+tOL5Ub2FZdFd2wVEELmXJ3POeaImTg8/lLae5Vu3pEUZ+RDy2qBStatGa46cde4mrR96Csg1LxmhkzYCJrTLClydL2sL9P2OaF5fgZcfGTQJws7Nw9KTLSvvtlSPsgkX6wTD1awZf/mY1KgfmG9scd93n+vdmucPGr+JJxWaAQZxdSa5OB0OHSXtqRu1+jokBnqrHWNRX6fXm0GVlXnDAvZrJW5FN4yhnPRBPSrhJqt3LQ5/Ddp36LqE17KgWHIDAu2W9b/xpyeSgPMQ0IMv5BwVFe4ZGm7vDAH00x7hHzckHGQWkeEy9/9bc78QPCZabawvSZkczwebtjVHwIWDaqrXiCor/rXDshN1zAUyqG7NeZBOzZkuKQZesk313UsOxV2sUgYv2kOtO79EWTMUMknME51WctHf5gUr+CEezxfYKs4RcQTQn9e34urvEFiPL1pjHcCI98Vck6EehViD/G07d8T8DRQ7kfqF6s3gUoVgbjYyvlitYRCXiCeQs2++UqvcGx+bFT9OomN3gg6FmRflud3XbkH1sIrbkmgjicgj5xM81IVA75kec8bUI3Vq8NkFp0t7I+Hbj0RGufKr3/0vpjHxbVY5FMC3cCqXQRFvDuY0ezH948iAWXSTM=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(376002)(396003)(346002)(136003)(82310400011)(186009)(1800799009)(451199024)(36840700001)(46966006)(40470700004)(966005)(478600001)(6486002)(6506007)(6512007)(2616005)(4326008)(26005)(2906002)(8936002)(336012)(41300700001)(70586007)(70206006)(8676002)(316002)(5660300002)(6862004)(86362001)(53546011)(33656002)(36756003)(82740400003)(47076005)(36860700001)(81166007)(356005)(40480700001)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 09:41:47.3232
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e3f0e978-2851-4a97-d082-08dba54f8019
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT040.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5611
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 09:41:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60891

On 25 Aug 2023, at 10:10, dave.hitchman via lists.yoctoproject.org <dave.hi=
tchman=3Dkymati.com@lists.yoctoproject.org> wrote:
>=20
> I am running linux, installed retext reader but see things like:
> In addition, your host development system must meet the following
> version requirement for gcc:
> =20
> - gcc &MIN_GCC_VERSION; or greater
>=20
> which is great apart from I assume that MIN_GCC_VERSION should be replace=
d with an actual value
>=20
> and
> Here are the packages needed to build an image on a headless system
> with a supported Ubuntu or Debian Linux distribution::
> =20
> $ sudo apt install &UBUNTU_HOST_PACKAGES_ESSENTIAL;
>=20
> where I assume the UBUNTU... should be replaced by the actual package.
>=20
> I assume its just that I am using the 'wrong reader' or doing something s=
tupidly beginner like (I havent done anything with yocto before nor have I =
used this retext stuff either).

The docs have includes and preprocessing that needs to happen.  You can bui=
ld them yourself if you want (just run make) but the rendered documentation=
 is available at https://docs.yoctoproject.org/.

Ross=

