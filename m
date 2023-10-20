Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED44CDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 09:52:17 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.85])
 by mx.groups.io with SMTP id smtpd.web11.50874.1697795533758957003
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 02:52:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=qxNbwHaP;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=qxNbwHaP;
 spf=pass (domain: arm.com, ip: 40.107.6.85, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7jbVLqbRyN2f5PXNZJS/PzeeG73ht5GpDvS/oHtIW/0=;
 b=qxNbwHaPF/TQ4gRXg+IhH0lAFdIuXL8Gst0s6Gpr4hhqCQ8AD2vWs1kMm4KNgmt+JIKlKLhT/K5JcB/aAh6vaf/j9hJwiQhJmPbyIzUSUf8qD4R5JgXp45lRy/ih4rvCveHAX8JFIdhwOO9RtboNa4Q4yT+HpmoHE5MUyg8xfWY=
Received: from AS4P250CA0030.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:5e3::20)
 by PAWPR08MB8888.eurprd08.prod.outlook.com (2603:10a6:102:33c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Fri, 20 Oct
 2023 09:52:08 +0000
Received: from AMS1EPF00000049.eurprd04.prod.outlook.com
 (2603:10a6:20b:5e3:cafe::a) by AS4P250CA0030.outlook.office365.com
 (2603:10a6:20b:5e3::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26 via Frontend
 Transport; Fri, 20 Oct 2023 09:52:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000049.mail.protection.outlook.com (10.167.16.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.20 via Frontend Transport; Fri, 20 Oct 2023 09:52:07 +0000
Received: ("Tessian outbound d9a8e74be042:v215"); Fri, 20 Oct 2023 09:52:07 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d4fc9572a067f86c
X-CR-MTA-TID: 64aa7808
Received: from c25bbad922b5.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 54DF87A5-C19B-4CA4-B08F-CBC8E995BFF6.1;
	Fri, 20 Oct 2023 09:52:00 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c25bbad922b5.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 20 Oct 2023 09:52:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SkojAxSKMywW0IwFrn0OTkcqevNNWkQDYM8B0RVn1mvPDTn/7YjvzRH/ajFJ67EQYO+TS7DEB3/mRPhBYqKqQhBQdediYD5doNhtAldyJEO+ULU4ORtILNr9F8zUcuOvfudH8/V12Mwsojlc0/kXqWEemzPguZVca8sLkklyREKJRMAQVR4Fx0/KAvEb8OI6E5ieGz9UCWDVFtbVObte+h2n+f6aKdqIOIgvhArDG5mXr2AgxHJRPPgd2WBLGmPIynBMtAUDKumgGHwhzdYxugg8mlnx0G9YOF32Fe0jApxwaB0tmeGUHOEMItlMKNTNYO566jChB7wXMQxI1hWS4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7jbVLqbRyN2f5PXNZJS/PzeeG73ht5GpDvS/oHtIW/0=;
 b=X2/9bb22m0v68trCVlPR72UOHl47C5d5GZqzzExtDxEc7pXxsYA0aDJ6GnaVbs902F+gGl5qfmcLm0z5x5OPeUDPhmPXGFwg0acyMHUUeha6jvpzgmKTaAMY7bhsB60beBa9F7u/vaWNgD9AgIsk0L4f9JR4ry5+tZqYgZCavShv+eq5T0hP3ocBKtNZ7jbm1gASYfprw8lf2tNx5l9QcQH6BlFqbfPKxbzedDUncLEAUQHl3pFrIC91q8w9ltZqRGn7RggDTx3tW0Nbx+6quLXhIRvlgZMb/igmzDBP/AfyjbyaD9sj1P1mkQwS2iqcWLY2h+mZ8CzibO0p2lvQCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7jbVLqbRyN2f5PXNZJS/PzeeG73ht5GpDvS/oHtIW/0=;
 b=qxNbwHaPF/TQ4gRXg+IhH0lAFdIuXL8Gst0s6Gpr4hhqCQ8AD2vWs1kMm4KNgmt+JIKlKLhT/K5JcB/aAh6vaf/j9hJwiQhJmPbyIzUSUf8qD4R5JgXp45lRy/ih4rvCveHAX8JFIdhwOO9RtboNa4Q4yT+HpmoHE5MUyg8xfWY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB8989.eurprd08.prod.outlook.com (2603:10a6:102:320::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Fri, 20 Oct
 2023 09:51:57 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 09:51:57 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
CC: Yocto discussion list <yocto@lists.yoctoproject.org>,
	"skandigraun@gmail.com" <skandigraun@gmail.com>
Subject: Re: [yocto] find: unrecognized: -printf
Thread-Topic: [yocto] find: unrecognized: -printf
Thread-Index: AQHaAxexkIo8zXmPyUGJWftQhdbjnbBSMU+AgAA+loA=
Date: Fri, 20 Oct 2023 09:51:57 +0000
Message-ID: <76E2052A-0E36-4C5D-BAF3-775544FB829A@arm.com>
References: <L7wx.1697780290550525004.loGj@lists.yoctoproject.org>
 <6baca76d-7d79-439a-a444-79a9d59e3b3c@gmail.com>
In-Reply-To: <6baca76d-7d79-439a-a444-79a9d59e3b3c@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB8989:EE_|AMS1EPF00000049:EE_|PAWPR08MB8888:EE_
X-MS-Office365-Filtering-Correlation-Id: f3cafd99-c828-4802-8271-08dbd152391e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 9amAcIs18hOBtYJRqjQaLgP+qg+F2RixudhWlg8J7KV2YWM7hK+ItINr9JCvFNFOzGpgrsRDqqNZKBI7fx8ah3nQPa2yBUGWY56PozYvoazNiHcqt1egI8C6TOjTrf9T26PWK6Lc3Rnp5gN8Qp2scC0Vshu/AaoqHEiNXg+4QvNyU3hodWx59V+r1PHn97J+FtbX3TqUQFbJgYFKbca/bGjbYKe3tRrd+O5+Asxc+RyjSBUjMVOR+AYZfgqSaXFKUmSpyl8FyixqG+aoMoJi4X7M9iiTdmrDUfsJewfFqBc0sr2ftQ9ZagGrfIfMrDHgd3FW5evQM3hoCIJkSCtBX5yQGGSCXhHrUSAZS6lQRX3bb1lxbdpEJNqfel+b83f6nJWDvXo4U5XHJkIuO0KAzYhxC+UPJ9497X2moVbiU1+7umFBPwqdIdApHGKMEdmCOfBJrs4X9YXSkFMajK4GY0qlHjZDNJ5SFl6hAWQC9Hh15ewMtqGGKYLDYs7E9fwly+kOMrGI3S5Nj86h+nlgBEtFccZEf94tYBl02qOkmqHdMtoMe0KkUz1MsqQMwNMsHSlLJayt43lvQR0+AlUOPl9jNkEAAbXpDQ3DYE22xqto+kkw5i1gVMalwr8WII56cSnEpq8M0dwTIOILHYZPeQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(396003)(376002)(136003)(346002)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(86362001)(64756008)(36756003)(6486002)(478600001)(5660300002)(122000001)(41300700001)(6916009)(8676002)(4326008)(8936002)(91956017)(76116006)(54906003)(66556008)(66946007)(66446008)(66476007)(38100700002)(4744005)(2906002)(316002)(38070700009)(33656002)(53546011)(2616005)(71200400001)(6512007)(6506007)(26005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7303434E8253154286B3D47C6F690820@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB8989
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	3d069306-5708-4aca-1a6b-08dbd1523310
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yUpI2Du84BS1V3oXzB+SBrOmKA5Ighmtul8u2ED17C1IESK1Ny03J1rrFn7VWFpZiMGooe1IXIm+OayAXwgPzSXkMUbPiC9akycJt6zEmGf5yuWzSyniu+FvpM++G7wv4GzTJSF7VeQr0LYkLhfb1tSAUbICKecU32fr2qpNQYgOEZwkUEWIjtILbNalF842sS0Ov8gZMyUYvm5st7h4FrA1DSaHdvgrOtKpXKwh19Upp/N0Vx5hSe+xNPD3m1r0qMJS3f3vrdhnCCbFb0ZmJxn/uezmQ+7A3T1M4A8X766lOiz5Yee/79gSaMxJZE62WVZUboVpEbhB26FVHT0Q+VYNAYaU2CLHnO6lkxjMtbEPHu7dBGoYp9tYsr0U+ND5ikMahscz7EldUVEyZyKp1Bf2K2+aDu1Dht768em8PJXLYgyZ9fKgUzW4Q3LOLUxJUiT1ZUjgEdaboNGDtVgyvG6w+tdMl3+wDd53FBbtEocQSMywxECZfkThejJIYTlljlcxKeyNBiamEbac4paBRn9rODC420CZ2L+MmK0zEoSIMz0uf7/yoWQR2mtxLzhNz+J+UjUzwtpdkrs2Swa95twzU9PJTwU5VKD6SdaR2b+NxewD2uMdMw+fRdAGH4h4r3rLXAbt26eNvUPC+gkczdPOyJGVEOccLS6xnHcl0qsU0X5kc/zk0v03qbjB2K/ITqJzTSKiMVS0WC8HjyFLZG/NEFpLRc/iVtpIy7pvPOY=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(39860400002)(346002)(376002)(136003)(230922051799003)(82310400011)(64100799003)(1800799009)(451199024)(186009)(40470700004)(46966006)(36840700001)(40480700001)(70586007)(70206006)(54906003)(316002)(8676002)(33656002)(86362001)(36756003)(8936002)(2906002)(4744005)(4326008)(478600001)(5660300002)(6862004)(40460700003)(336012)(41300700001)(356005)(2616005)(107886003)(26005)(47076005)(82740400003)(81166007)(6486002)(6506007)(36860700001)(53546011)(6512007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 09:52:07.8412
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3cafd99-c828-4802-8271-08dbd152391e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8888
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 09:52:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61429

On 20 Oct 2023, at 07:07, Gyorgy Sarvari via lists.yoctoproject.org <skandi=
graun=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> In case busybox's "find" utility is not sufficient for you, you could dis=
able "find" in busybox's config, and add the full version of find to your i=
mage (recipe is called findutils).

There is no need to disable find in busybox, simply make the etckeeper reci=
pe RDEPEND on findutils.

Ross=

