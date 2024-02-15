Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F47C48BEB
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 12:04:16 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.77])
 by mx.groups.io with SMTP id smtpd.web10.12210.1707998646410746177
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 04:04:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pYS8CEv1;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pYS8CEv1;
 spf=pass (domain: arm.com, ip: 40.107.247.77, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=cYwafyGMXtusTWFzAYg7p7mFVSJ3ZraSggr05N3CBXLQ3Ip0beHOdzaDJKpsu9aaNPx0AaohXld3XKJDmPdNgnrlQvukeaARfCXnnoFW+yeuv9X2Rw+kdhXqOzRiAs8WOs+rWPBKjw7ksDPy4Ene8/e263oRKs63e1UfnuLlmTZSLnuIk3fuVb8D6zwKUTJF+F0bFmCutVeYuNZwIC9FCzxONYjsxG+EVNk9Q9TD+ONw9FAboE/ayhT2L3j+htaK4EQK1u87+nRyVBsXPojczOtyZOejPRtFJFPjjUTet+RNwGH6RnsvOc6Q61LPKPso4dFgqMQAgGJNOg9meQKC+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJ0OuC/KZN3k327cq7Czf/cz6wECjFtkYp6+FToJ3+A=;
 b=DOoQxj4Md4ZN6yLmrww60f0yC1Q0sbMg3kbDaLUqwKcxlTi22V86VNzJKwSaDAMZ/yEQtaH8lCoLQWtne25m52OEB4Ev1wN1P/THlKp16OF1imyKc4sA69yTSYjDoxEJSjPSlcTpK5xT8RPBWV4RqbOhQZMtOiUQj5AOXSQmmr7/MjfoLyYu+EENr+XIUUcIcOnkMszrzxnhqF8gnBlvWchMN5wcOX+u6qJ/hYifbPRghYCAj4XxVNeRI1PEdihIOShcIfNa1aVSPFwrBbW7ohDCzv7YKaES+nUinY95QsWJJyrmyKCMAOn/++L7t1XTS7ZDSp8L86wWMJRW5Crh/g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJ0OuC/KZN3k327cq7Czf/cz6wECjFtkYp6+FToJ3+A=;
 b=pYS8CEv18/LXVyVF32+EXglkP7i2crH3/MpQJfh/gN8JnbfQWxStecAmCWknD+kgcmraunM3ZeLuwOz5WJUx/TgNnZNuzWfcdLX1gWp2sp9b9GDIVTb3UoTPfi2vR4ujp5P5edYwhzSmYhBiw2TeG/uxY2uzDbGtlgGN10+p6Gc=
Received: from DUZPR01CA0050.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::20) by PAWPR08MB9494.eurprd08.prod.outlook.com
 (2603:10a6:102:2e3::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Thu, 15 Feb
 2024 12:03:58 +0000
Received: from DB5PEPF00014B9F.eurprd02.prod.outlook.com
 (2603:10a6:10:469:cafe::46) by DUZPR01CA0050.outlook.office365.com
 (2603:10a6:10:469::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39 via Frontend
 Transport; Thu, 15 Feb 2024 12:03:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B9F.mail.protection.outlook.com (10.167.8.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Thu, 15 Feb 2024 12:03:56 +0000
Received: ("Tessian outbound 778f5fac34db:v228"); Thu, 15 Feb 2024 12:03:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ca2192691a681c1e
X-CR-MTA-TID: 64aa7808
Received: from 73f7358a3ec3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 542E4C43-8DDB-41E0-88AB-3B8282147857.1;
	Thu, 15 Feb 2024 12:03:50 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 73f7358a3ec3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 15 Feb 2024 12:03:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZAis/TLTzA3TOQGFyHStgemKmbj/z0DX5pZZFA6bMvOIrbqvwzwa/SAkjxZkesVjTo4s7DigDCru96KzNwbu6Bl7UjP2A1RNUC/AU24+wl2keinrxUu3DHzL+e1052xfLJWXh1+5ule2/UokjEmZ1zYAea3Ioa1xNb8exj/40gH6l4e4A5Pbb9tTFNut12RvdbqnHapOp9UfxIBCeNdXs1IqonN9k9jigagkJBr+v9BtCP/8/wy0PaET1izFYXjU4ZhIWb3Egvq5kMoUIiHr533jA9AmzaE5RyjX10olr2/IrlACNa+BwEhDJizohbd2zLYv+dAq6R2QEwXDC2/kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJ0OuC/KZN3k327cq7Czf/cz6wECjFtkYp6+FToJ3+A=;
 b=YZ64nTH25L1mw5L4ESvpH6XOkaqvSpfS8iD9l/lsCv+0DmHdzseJvEhKAQomh/BZjmXzoW41cMZnxp4KpOet6OqoRYlvL77b0h1ZuULZn4B/Y1wjFD+2qJOAIXZWlzLyLWIOoGpO2Olu4cBsqlgHEktRNJAe2WI2oaJupq96S+YQmBYV8Bllnff/owh/JEqhI5ySVoEJAkNhDFz4uePR1N42aST4Xri8k7g3dpZeluISP177uF92h0AHwJPsBFNFqcYuw4lseYVnFqfQIH8TwllNjxne/P3Au3sW2s29WNs3M2CXT9x1QQpJU4gFVEkh/ZyVc9f8mIJPC67QuCfO0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJ0OuC/KZN3k327cq7Czf/cz6wECjFtkYp6+FToJ3+A=;
 b=pYS8CEv18/LXVyVF32+EXglkP7i2crH3/MpQJfh/gN8JnbfQWxStecAmCWknD+kgcmraunM3ZeLuwOz5WJUx/TgNnZNuzWfcdLX1gWp2sp9b9GDIVTb3UoTPfi2vR4ujp5P5edYwhzSmYhBiw2TeG/uxY2uzDbGtlgGN10+p6Gc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA6PR08MB10546.eurprd08.prod.outlook.com (2603:10a6:102:3d7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Thu, 15 Feb
 2024 12:03:49 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7270.036; Thu, 15 Feb 2024
 12:03:49 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"Salahaldeen.Altous@leica-camera.com" <Salahaldeen.Altous@leica-camera.com>
Subject: Re: [yocto] Including Python3 modules in generated SDK do not work
 (python3-node-semver, kirkstone)
Thread-Topic: [yocto] Including Python3 modules in generated SDK do not work
 (python3-node-semver, kirkstone)
Thread-Index: AQHaX/JfofOZJFtVH02t65QpW0k1V7ELTiCA
Date: Thu, 15 Feb 2024 12:03:49 +0000
Message-ID: <AC6E2E85-B78B-4541-A5F3-BD27EA7A1302@arm.com>
References: <Nqcj.1707982055776102640.IF0n@lists.yoctoproject.org>
In-Reply-To: <Nqcj.1707982055776102640.IF0n@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA6PR08MB10546:EE_|DB5PEPF00014B9F:EE_|PAWPR08MB9494:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f2975c9-dcab-4072-cd80-08dc2e1e300c
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 K4d7gMwcwjz3Xh1/rLLLxyI7X2F5c7gqKV/dJDoLqYuHKqH6DKoCkbvNiue+AwUx11Gw64otHFOYffOG/WT0IujS7m2/4K+69bycUXAjlTUl2fYbpbIlpPN1LFiih++fOH9iHem4oI4Co1VliqXV7c/eqgpCgkbBYf03gGTn9M+I5JU3i5IOQetpkxd6B+O8IsU/CMeX2toWY+3s0mzfTxXPnILhcZF3vUrtr0jHoVY8quRJJ0DLFVfs0SBmsgYLkm8fOtQ7QuJ59+m4tzJ1z0TEaNJ3rAAWpMGdEX3+SQV0o5MFyiaVOZAIPijiUdbazKVYR+VeJUKX5YRj+VG68Bur0buFDulr9imGjHKzyWpCkjnIJNnnz4g6BSit8+BB/hxchRIlbfbVm/U3BdhkSJfN9Rzr6rW30Ni6WY2tOJGvAceIvN5tQMB+Ldl64uiE7Qrh0B6pA+yPQdNcjsfmokrs0qTwpMQWsRyyLXrGLE+BX1eOOzmDP3nCAu7DbXdADeB+dsrkXFrCZf8XnuKZlsQI0FUsBR3zPudxxItCYdIYX4YTNaUUa5z5wz4sIibDgTDQauzHvhz1Lecu5hbYPSa0S1bQ5ETidzTBJ19F1nU=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(4744005)(2906002)(5660300002)(316002)(86362001)(122000001)(26005)(110136005)(41300700001)(38100700002)(6486002)(66446008)(66476007)(53546011)(66556008)(8936002)(71200400001)(6512007)(8676002)(76116006)(2616005)(66946007)(64756008)(6506007)(966005)(38070700009)(36756003)(33656002)(478600001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15693B37E127B548AD041BCDA23B65BA@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB10546
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B9F.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d28f65d7-2569-457b-8641-08dc2e1e2b79
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rGW3ikxtD7G0Lkswi/j/eWzTmktkgAsC8LgOvhHVlP07lpM/JGehBr0HR+5ds5H5a/+h5casxTs1RG2p/n3eDEjkEMINVQKWtCrZE3K3QSwetzPEOibfDYPUdw0LkTvClpHl7STKipvsOpdM3Yir3Xn1+Zf0ByV7bPte/9umc2HRBKfj5Gve2PdvW0GiF/B8B7vaU+y/NCsd6d7hMhw+nuqVXb9Nv/sVRfFnKoXRUN9LmgUv2+vVgo3iffHqe0oBs5CzESv45GKuhs+nEx41NZFWzqFSMOazNf37rmhA74xieVe7Tqpiov77Oi6a06EOUTzk5C8mQeCwsuMkskKkaZqV/SEZ5frjZdqkwxazaeJ4ettqw5zAKubADz0gamy56N9Dfp8Mq7dfyFBC/W+pMpGP7QDq49RS7K7rvQ+qaxzTut10bYK2rOw2/POlbzls1HqNen1GFNkJsHe6hw+uSMmugbipKhQP4fcj3gz5wsD9ExEkv0iHi/UiuMk1EpQ3PjzdAbbv7GU7pnklZrYTwQL4NUj4uqdxw+l2vZcWbDVrz8o1+D49BqxN/iYTWahMvzzkc/2KEM9l4NJ4YXR9ZO/tfCaFRt8v7ux11csK5V0fc2yoReuDc+Ep5YL9B85tSiNVZ6eRVKPrawQURInlaQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(376002)(346002)(136003)(39860400002)(230922051799003)(82310400011)(186009)(64100799003)(451199024)(1800799012)(36860700004)(46966006)(40470700004)(2906002)(5660300002)(8676002)(8936002)(4744005)(966005)(6486002)(6512007)(478600001)(6506007)(336012)(26005)(2616005)(41300700001)(70586007)(70206006)(110136005)(316002)(81166007)(33656002)(82740400003)(356005)(86362001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 12:03:56.9653
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2975c9-dcab-4072-cd80-08dc2e1e300c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B9F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9494
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 12:04:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62494

On 15 Feb 2024, at 07:27, Altous, Salahaldeen via lists.yoctoproject.org <S=
alahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
> Hello,
>=20
> I am using one application which is using a python3 module (python3-node-=
semver), I was trying to provide the application developer with the yocto S=
DK but I cannot locate this module in the new generate SDK, I have tried to=
 add this manually by adding these lines to machine config like this
>=20
> IMAGE_INSTALL:append =3D " python3-node-semver"
> TOOLCHAIN_HOST_TASK +=3D " python3-node-semver "
>=20
> https://layers.openembedded.org/layerindex/recipe/333689/
>=20
> but still not working, python3-node-semver is available on the target but=
 not in the host SDK!! Any idea what this happening?

If you want a recipe to be available in the _host_ part of the SDK then you=
 need to add nativesdk-python3-node-semver to TOOLCHAIN_HOST_TASK.

You _should_ have got an error from trying to install a target package into=
 the host SDK.

Ross


