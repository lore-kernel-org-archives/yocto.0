Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B989CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 11:35:18 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.87])
 by mx.groups.io with SMTP id smtpd.web11.210685.1697542517048485570
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 04:35:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=OCmkqdVE;
 spf=pass (domain: kymati.com, ip: 40.107.105.87, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mXiPw4G+ohGnwYN4wJZrdCpTakskYD1FydE2898O43WfzC2JVAhJKMitG8gkyBk1XJXx4P+D5SW4j1nKF91BP6uYJYYeOEgFsAQFwsuoHA8vyOGwGvUKeH2g61EAbe89htKTwPsP/x7rrp38GzJ7mmcY1XDaxTHdeitIbjZJSLX8vC+EJlY8bgUJ1uyCmLCYf+gGg4vcFx8MW09CDYUsLG/yMGbQ2bTJkeknCzbP+Vl2N7dXC4d+5W37bsseOXYRsw4dipopnUcQyRQHJHPjRBojiouYFBb8UImy5McsZ+s61FXkjmHezTeiPpm1d54kNeu1+i0rsGJuiGnWxBu1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ZESBi39HGt+lR9Sh+wek/LTIya4bijkXiqMKmD8+k0=;
 b=W9Okr4EUjX4rTgok7VexBT7CXoOJyuLQvzptiTPXkIBsIcJj4rGs1IW47hRulYbOMJvE0tyZoRxz6T32DUwEgVay8YyqNQyxTKZzC5Q8j3LlDqkMvWS4npQUyx3cd7lCAXSSg55ALbRseKs/hgPQA9bcSSU7JbZVLZzs1msvVvQz9o/Wn4rTCCvyuUtvIG4tYTuWWTyDV+wfB+VQ8Sfb89ys+YXPV01Q44a20DMgx9FVqd3BZh6ATICAEFDcdiM/Mx2fPH4jVZLlgXYUm93Qa53Lxry7Tf+Xxq8NS90KsbMqNSmPuAgKFaWoKudhe7VHgv+VY8fsMzEbH+hOIhiwcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ZESBi39HGt+lR9Sh+wek/LTIya4bijkXiqMKmD8+k0=;
 b=OCmkqdVEvk3kP1fJDnCQ7RPhayk3+kd48QB4fukr7lVPAKQNJ2CuQvfNnMuxEKbB6J6ddGdXVVuIRSV0URomGP6Ne7Xb80h81TKWF6DsOt4MJxXPog/qWrkm8gPMqJZluPieJc3iRxcm4bkm42b81oyaEKKPxSCeZTpicUEdhwc=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AM9PR03MB7428.eurprd03.prod.outlook.com (2603:10a6:20b:264::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 11:35:13 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3%3]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 11:35:13 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: 
 AQHaAEU1GVmCsck7rEeYingXKJhbi7BNevsAgAA5peaAAAoJAIAAA9orgAAEhICAAAch+Q==
Date: Tue, 17 Oct 2023 11:35:13 +0000
Message-ID: 
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
In-Reply-To: <ZS5gUVkTwgjNi0Ad@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AM9PR03MB7428:EE_
x-ms-office365-filtering-correlation-id: 66e9df78-9ea5-4f53-604b-08dbcf052090
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 blWp7LdSWHXpN9svSyyzTLRZq6mgn4wakZvS/d/MQwFz8vxyycjPqIayW7NWkpI+725YgThlrneTi+URwoHFYCcWu2h7WvbCYdJhiOMI/IlGNoZlHOTLzb10kKxJIArh0a9iSTCisXaUTRCsrgQRolVJb3N50AZFuTRCx7F5EIZGZFhP12dZS8sdSaAQfsT0nboCly09tVzHUB5GbYFX1LGuvNZ3zRVLX++zkBNoC/q35e9QRQb/zjAnBEu/AbSOCtDZHfd3Su8pZ8/X0sc8iQS51i3myk5RkdPZlrSJvKUd6NzY7uHfz3QvH0WDXWhXNRiOzxxNlZ1ebrpPNDj7v2sH6lupLpXyGSPjlBn+OhlnH9Z3UBkCCQ2Tcy4+7MC5r0M6LnQbDrnacQhh5/UIzNnFC/4mEAs6dTf8M4eWuzGXUGXqibDIf67rWlQWdR9hkejdDG5MynYZx5LIhAj+kB7JXEoZCm1IWWyURICnBL18UsSwewIsKIEPfTfKR4eW+TtZYgNbGrmKax89GMWkoy7HFGTosfQcCXLmLQYeKLaTFIA/P2PYEeO/PY0SRBHru1cPYtdc5vIAdqQPi+Ti65oqqyk/4zy4fDpIpOE5/d4Ke74HXB6+VlGAQNicI4OYpu7nUv3QQU4EjUjXPWcG6mX8UjOabaBkdt1fTGZDrdE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(396003)(136003)(366004)(346002)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(91956017)(478600001)(53546011)(9686003)(7696005)(19627235002)(86362001)(38070700005)(122000001)(6506007)(33656002)(19627405001)(71200400001)(55016003)(38100700002)(83380400001)(316002)(6916009)(76116006)(64756008)(66946007)(66476007)(41300700001)(5660300002)(66556008)(8936002)(8676002)(66446008)(4326008)(30864003)(2906002)(52536014)(44832011)(473944003)(414714003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?jg65wuL3U0XZY/JC2QqZkr4vjXB4xjfaMBO1ibZC1/AsAAVMbKw3Fpec?=
 =?Windows-1252?Q?bK7On667+beWQCms6dHHlE3VQzZZQpTOV22pXz53BGunrk9iJQn3/qNH?=
 =?Windows-1252?Q?mqMdLPVaoYhC9Ou1+QwonFQO3wGlzwLwPBtuL2xtIRGlJV3ERIsx48qT?=
 =?Windows-1252?Q?j/rfAIGxchR1wCab7sGU236KtOfmmwe8aKPxBlMufP78s1q6Oucr8PtU?=
 =?Windows-1252?Q?do+9vUt1oVsNrhZ/wJaBlEEIDUjyXv7xCDhyM9oZsoNajJG1lKeXNG+t?=
 =?Windows-1252?Q?y8yzg7iO6TxLfNau0pGQbjz4MSZiQCojs9MN3KxbtnaXylRdqOuLuM2u?=
 =?Windows-1252?Q?o3CX8KqU1bAZwHa44MNaUZoXx6cP+iGXGAqoy4qitDgb6SpwVmRqFK5i?=
 =?Windows-1252?Q?zfjByOT3p8H+hQksjDfBVYKkQvM0iMh7iZrSN+z0rtiCV6vws7SVpE4P?=
 =?Windows-1252?Q?hOA8RGWoWyAuySsIRw5oXt7g1SM7F8/ldi49Q3ePvDtyTgnINk7IWuef?=
 =?Windows-1252?Q?w7FJRrF/IPplCuBwaiXmk/Wr8+JUE+FMPk1r+s1maUIytyJR5sHsuHFT?=
 =?Windows-1252?Q?tqUv8GNO1gN1NFKAccv8uBYhBmnFov+57AipaeTCNr0hzYKobGMBtnAf?=
 =?Windows-1252?Q?5/486jLbLTXtlh+6TrFDp2iF/ft3Iud1wrGrN1/doBZcTK6yvnyQ2yjE?=
 =?Windows-1252?Q?CqpwJxWECUn9UVht2n7xKp8mg+2N8PSuhi4o7MxTfKy8erBEESYMFhRQ?=
 =?Windows-1252?Q?WLLRVoImmMtklfp2XV4hTX7doMfTYrHsTANzXqRHcPy8TsRi8v1d+5Qk?=
 =?Windows-1252?Q?qXFskeq1vAGB5OyM/AixrWwtRcaMV2yLx8aJRXFJkXsOFqSMY+gIFwDA?=
 =?Windows-1252?Q?VRaidjIBy3aNvyZ2W+KR1FfXeDciGG0Ba+LqW0lvQ4P7YNM//klzw/ye?=
 =?Windows-1252?Q?ptpI812bjgXPAOf7MZcIIFsz48/NhkyXo9v16w0hmKjBRr3dWtpg+zDT?=
 =?Windows-1252?Q?UHv6X0j9y1i3PbTu5/Luu2q/LmM0rnKwaUxwCWJEVxLl+3sUSpIwFXLT?=
 =?Windows-1252?Q?NbhN//zac2dd69xebLAL3c0YYHG5KMVbfaPh4Xp+SY1z4NmDRu75xTU3?=
 =?Windows-1252?Q?vENyKXlwAzFAuSgwLxKeBkCZWMtYAKrEtrvc8MMCOFdcSJQYk/UXm7jt?=
 =?Windows-1252?Q?IYVfvKZ/UlJqS+sDiaeY6huqWAwZsKq9QLUHqbrW7EVGunUvq9k3Ll0f?=
 =?Windows-1252?Q?KPCg7zVuTRxez1JgGHtkdxoHhV3MK+8uicYBEJ0h/TMUilFiHgX8RXjh?=
 =?Windows-1252?Q?qBgIWk4ffYBxbPjwDhhaq1jbNB3Peexd2gppg+B/RYubtyRoimWd808P?=
 =?Windows-1252?Q?lOaV7lvhUlSLEy7hBl7ghZz+2dUCg6NzkGCGwTdSijfv2mQIyyF0dOjl?=
 =?Windows-1252?Q?jcjRBv+GlLyrmywDVMJhScXdjdYEw2U5knRWiGgJQJCc9hU3wZ9zXOkT?=
 =?Windows-1252?Q?zjnD5o7CswU5Wfmc59OFfqlA3gyeqACeUGIedZ//dkSqHXkFAyiZKwKp?=
 =?Windows-1252?Q?Ktm7R7x1XrLU19Q48L4wg/dLuFFVRpbP+oIHE9g3PkL2qdfh9jxZJUOw?=
 =?Windows-1252?Q?/zVP9771CDjBlIpoy5n+OjVWyTj9XcWyAcErJPjKqrLFwm5uougtOPVp?=
 =?Windows-1252?Q?qZJioud32dnmtLj9RzWS0mxvMFkYb9WeBuVdqhVJ8z3Pyw6JmKtydHNK?=
 =?Windows-1252?Q?GNxTXFbkW9/o2tQ8tyt6Fe9Ec41jcZXQUvuFoEjV?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012F4837978629C7E866C8792D6AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66e9df78-9ea5-4f53-604b-08dbcf052090
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 11:35:13.0875
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wk3b/5bYlAqx+ULm5l6YmRBgAl5p/G2XLEGj65nJuMkqoZWA/BmK0C5OcB5jBNM1tc4N47me3BcQrXegapZ9ils4oCgTA1kfSzKiwVGGRls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7428
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 11:35:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61371

--_000_AM9PR03MB7012F4837978629C7E866C8792D6AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks, but without the CXX settings there is no difference either, it stil=
l uses the wrong toolchain (or rather tries to and fails in the same way) .=
 I have now removed the two export CXX type lines...


bitbake -c configure custom-image-mpet
Loading cache: 100% |######################################################=
###########################################################################=
######| Time: 0:00:00
Loaded 5337 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
######| Time: 0:00:00
Parsing of 3640 .bb files complete (3639 cached, 1 parsed). 5336 targets, 5=
76 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.50.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "aarch64-phytec-linux"
MACHINE              =3D "phyboard-pollux-imx8mp-2"
DISTRO               =3D "ampliphy-vendor"
DISTRO_VERSION       =3D "BSP-Yocto-NXP-i.MX8MP-PD22.1.1"
TUNE_FEATURES        =3D "aarch64 armv8a crc cortexa53 crypto"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "HEAD:269265c00091fa65f93de6cad32bf24f1e7f72a3"
meta-oe
meta-networking
meta-python
meta-multimedia
meta-filesystems
meta-perl
meta-gnome           =3D "HEAD:f44e1a2b575826e88b8cb2725e54a7c5d29cf94a"
meta-bsp
meta-sdk
meta-ml              =3D "HEAD:cc4c2d1c845b48fdec989f089aee3c13d2b1e15b"
meta-chromium        =3D "HEAD:8be1d3a0ba0cf32e61144900597207af5698c10d"
meta-clang           =3D "HEAD:b0d805060791006d651efd3d7ae3dd5add8f70fe"
meta-freescale       =3D "HEAD:f0be684f01b53482cb43e016a5c5c1faf3ae448e"
meta-freescale-3rdparty =3D "HEAD:f8150f3b37cb83cba1f9e2378e57bb63e02d4610"
meta-freescale-distro =3D "HEAD:e6daa26ba1f748326546063d63a085ae671827d9"
meta-nxp-demo-experience =3D "HEAD:9dcc11ea9f525cffedbb28895e0abb443e56c3e0=
"
meta-python2         =3D "HEAD:8db9e4f6ceae33d7a4f55453d31e69f9858af4eb"
meta-qt5             =3D "HEAD:43f8f539d40070a70fe89136db89bf5bb1dfe7ed"
meta-virtualization  =3D "HEAD:7f719ef40896b6c78893add8485fda995b00d51d"
meta-rauc            =3D "HEAD:b344adecae6cef9a26b3c5b6a7bb344d18c074a6"
meta-phytec          =3D "HEAD:f023740382f01e85151a67843a08d9d965503961"
meta-ampliphy        =3D "HEAD:d761395629c0f8f0d06f9fd6fe128fdb001fdfec"
meta-security
meta-tpm             =3D "HEAD:c40e1e84da9624b9096a463dbed3b301c01c268e"
meta-custom-mpet     =3D "master:19ff82126c1239c9fe258555b10ee2e44d7f651a"

Initialising tasks: 100% |#################################################=
###########################################################################=
######| Time: 0:00:03
Sstate summary: Wanted 8 Local 4 Network 0 Missed 4 Current 193 (50% match,=
 98% complete)
Removing 1 stale sstate objects for arch phyboard_pollux_imx8mp_2: 100% |##=
###########################################################################=
######| Time: 0:00:00
NOTE: Executing Tasks
WARNING: optee-os-3.15.0.imx-r0 do_optee_warning: OP-TEE support is experim=
ental and not ready for production use
NOTE: Tasks Summary: Attempted 891 tasks of which 885 didn't need to be rer=
un and all succeeded.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 3 seconds

Summary: There was 1 WARNING message shown.
dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$




bitbake -c compile custom-image-mpet
Loading cache: 100% |######################################################=
###########################################################################=
######| Time: 0:00:00
Loaded 5337 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.50.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "aarch64-phytec-linux"
MACHINE              =3D "phyboard-pollux-imx8mp-2"
DISTRO               =3D "ampliphy-vendor"
DISTRO_VERSION       =3D "BSP-Yocto-NXP-i.MX8MP-PD22.1.1"
TUNE_FEATURES        =3D "aarch64 armv8a crc cortexa53 crypto"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "HEAD:269265c00091fa65f93de6cad32bf24f1e7f72a3"
meta-oe
meta-networking
meta-python
meta-multimedia
meta-filesystems
meta-perl
meta-gnome           =3D "HEAD:f44e1a2b575826e88b8cb2725e54a7c5d29cf94a"
meta-bsp
meta-sdk
meta-ml              =3D "HEAD:cc4c2d1c845b48fdec989f089aee3c13d2b1e15b"
meta-chromium        =3D "HEAD:8be1d3a0ba0cf32e61144900597207af5698c10d"
meta-clang           =3D "HEAD:b0d805060791006d651efd3d7ae3dd5add8f70fe"
meta-freescale       =3D "HEAD:f0be684f01b53482cb43e016a5c5c1faf3ae448e"
meta-freescale-3rdparty =3D "HEAD:f8150f3b37cb83cba1f9e2378e57bb63e02d4610"
meta-freescale-distro =3D "HEAD:e6daa26ba1f748326546063d63a085ae671827d9"
meta-nxp-demo-experience =3D "HEAD:9dcc11ea9f525cffedbb28895e0abb443e56c3e0=
"
meta-python2         =3D "HEAD:8db9e4f6ceae33d7a4f55453d31e69f9858af4eb"
meta-qt5             =3D "HEAD:43f8f539d40070a70fe89136db89bf5bb1dfe7ed"
meta-virtualization  =3D "HEAD:7f719ef40896b6c78893add8485fda995b00d51d"
meta-rauc            =3D "HEAD:b344adecae6cef9a26b3c5b6a7bb344d18c074a6"
meta-phytec          =3D "HEAD:f023740382f01e85151a67843a08d9d965503961"
meta-ampliphy        =3D "HEAD:d761395629c0f8f0d06f9fd6fe128fdb001fdfec"
meta-security
meta-tpm             =3D "HEAD:c40e1e84da9624b9096a463dbed3b301c01c268e"
meta-custom-mpet     =3D "master:19ff82126c1239c9fe258555b10ee2e44d7f651a"

Initialising tasks: 100% |#################################################=
###########################################################################=
######| Time: 0:00:02
Sstate summary: Wanted 7 Local 4 Network 0 Missed 3 Current 194 (57% match,=
 98% complete)
Removing 3 stale sstate objects for arch phyboard_pollux_imx8mp_2: 100% |##=
###########################################################################=
######| Time: 0:00:00
NOTE: Executing Tasks
WARNING: optee-os-3.15.0.imx-r0 do_optee_warning: OP-TEE support is experim=
ental and not ready for production use
NOTE: Tasks Summary: Attempted 892 tasks of which 889 didn't need to be rer=
un and all succeeded.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds

Summary: There was 1 WARNING message shown.




But when I build ...



bitbake custom-image-mpet
Loading cache: 100% |######################################################=
###########################################################################=
######| Time: 0:00:00
Loaded 5337 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.50.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "aarch64-phytec-linux"
MACHINE              =3D "phyboard-pollux-imx8mp-2"
DISTRO               =3D "ampliphy-vendor"
DISTRO_VERSION       =3D "BSP-Yocto-NXP-i.MX8MP-PD22.1.1"
TUNE_FEATURES        =3D "aarch64 armv8a crc cortexa53 crypto"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "HEAD:269265c00091fa65f93de6cad32bf24f1e7f72a3"
meta-oe
meta-networking
meta-python
meta-multimedia
meta-filesystems
meta-perl
meta-gnome           =3D "HEAD:f44e1a2b575826e88b8cb2725e54a7c5d29cf94a"
meta-bsp
meta-sdk
meta-ml              =3D "HEAD:cc4c2d1c845b48fdec989f089aee3c13d2b1e15b"
meta-chromium        =3D "HEAD:8be1d3a0ba0cf32e61144900597207af5698c10d"
meta-clang           =3D "HEAD:b0d805060791006d651efd3d7ae3dd5add8f70fe"
meta-freescale       =3D "HEAD:f0be684f01b53482cb43e016a5c5c1faf3ae448e"
meta-freescale-3rdparty =3D "HEAD:f8150f3b37cb83cba1f9e2378e57bb63e02d4610"
meta-freescale-distro =3D "HEAD:e6daa26ba1f748326546063d63a085ae671827d9"
meta-nxp-demo-experience =3D "HEAD:9dcc11ea9f525cffedbb28895e0abb443e56c3e0=
"
meta-python2         =3D "HEAD:8db9e4f6ceae33d7a4f55453d31e69f9858af4eb"
meta-qt5             =3D "HEAD:43f8f539d40070a70fe89136db89bf5bb1dfe7ed"
meta-virtualization  =3D "HEAD:7f719ef40896b6c78893add8485fda995b00d51d"
meta-rauc            =3D "HEAD:b344adecae6cef9a26b3c5b6a7bb344d18c074a6"
meta-phytec          =3D "HEAD:f023740382f01e85151a67843a08d9d965503961"
meta-ampliphy        =3D "HEAD:d761395629c0f8f0d06f9fd6fe128fdb001fdfec"
meta-security
meta-tpm             =3D "HEAD:c40e1e84da9624b9096a463dbed3b301c01c268e"
meta-custom-mpet     =3D "master:19ff82126c1239c9fe258555b10ee2e44d7f651a"

Initialising tasks: 100% |#################################################=
###########################################################################=
######| Time: 0:00:04
Sstate summary: Wanted 139 Local 114 Network 0 Missed 25 Current 1038 (82% =
match, 97% complete)
Removing 9 stale sstate objects for arch phyboard_pollux_imx8mp_2: 100% |##=
###########################################################################=
######| Time: 0:00:00
Removing 3 stale sstate objects for arch cortexa53-crypto: 100% |##########=
###########################################################################=
######| Time: 0:00:00
NOTE: Executing Tasks
WARNING: optee-os-3.15.0.imx-r0 do_optee_warning: OP-TEE support is experim=
ental and not ready for production use
ERROR: libkymati-1.0-r0 do_configure: Execution of '/home/dave/Documents/Ky=
mati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/te=
mp/run.do_configure.1005716' failed with exit code 1
ERROR: Logfile of failure stored in: /home/dave/Documents/Kymati/yocto/buil=
d/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/temp/log.do_confi=
gure.1005716
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['/home/dave/Documents/Kymati/yocto/sources=
/poky/../poky/meta/recipes-devtools/gcc/gcc-cross_10.2.bb:do_populate_sysro=
ot', 'virtual:native:/home/dave/Documents/Kymati/yocto/sources/poky/../poky=
/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', '/home/da=
ve/Documents/Kymati/yocto/sources/poky/../poky/meta/recipes-devtools/quilt/=
quilt-native_0.66.bb:do_populate_sysroot', 'virtual:native:/home/dave/Docum=
ents/Kymati/yocto/sources/poky/../poky/meta/recipes-devtools/ninja/ninja_1.=
10.2.bb:do_populate_sysroot', '/home/dave/Documents/Kymati/yocto/sources/po=
ky/../poky/meta/recipes-core/glibc/glibc_2.33.bb:do_populate_sysroot', '/ho=
me/dave/Documents/Kymati/yocto/sources/poky/../poky/meta/recipes-devtools/g=
cc/gcc-runtime_10.2.bb:do_populate_sysroot', '/home/dave/Documents/Kymati/y=
octo/sources/poky/../poky/meta/recipes-devtools/cmake/cmake-native_3.19.5.b=
b:do_populate_sysroot', 'virtual:native:/home/dave/Documents/Kymati/yocto/s=
ources/poky/../poky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_=
sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['gcc-cross-aarch64', 'pseud=
o-native', 'quilt-native', 'ninja-native', 'glibc', 'gcc-runtime', 'cmake-n=
ative', 'patch-native', 'binutils-cross-aarch64', 'flex-native', 'libmpc-na=
tive', 'libtool-native', 'texinfo-dummy-native', 'xz-native', 'gnu-config-n=
ative', 'zlib-native', 'mpfr-native', 'autoconf-native', 'automake-native',=
 'gmp-native', 'linux-libc-headers', 're2c-native', 'libgcc', 'bzip2-native=
', 'ncurses-native', 'curl-native', 'attr-native', 'm4-native', 'gettext-mi=
nimal-native', 'pkgconfig-native', 'openssl-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_configure
| -- The CXX compiler identification is GNU 9.4.0
| -- The C compiler identification is GNU 9.4.0
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - failed
| -- Check for working CXX compiler: /usr/bin/g++
| -- Check for working CXX compiler: /usr/bin/g++ - broken
| CMake Error at /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53=
-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot-native/usr/share/cmake=
-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (message):
|   The C++ compiler
|
|     "/usr/bin/g++"
|
|   is not able to compile a simple test program.
|
|   It fails with the following output:
|
|     Change Dir: /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa5=
3-crypto-phytec-linux/libkymati/1.0-r0/git/CMakeFiles/CMakeTmp
|
|     Run Build Command(s):ninja cmTC_e06e9 && [1/2] Building CXX object CM=
akeFiles/cmTC_e06e9.dir/testCXXCompiler.cxx.o
|     FAILED: CMakeFiles/cmTC_e06e9.dir/testCXXCompiler.cxx.o
|     /usr/bin/g++   -O2 -pipe -g -feliminate-unused-debug-types -fmacro-pr=
efix-map=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypt=
o-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/libkymati/1.0-r0          =
            -fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/tm=
p/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/libk=
ymati/1.0-r0                      -fdebug-prefix-map=3D/home/dave/Documents=
/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0=
/recipe-sysroot=3D                      -fdebug-prefix-map=3D/home/dave/Doc=
uments/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/=
1.0-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden  -mcpu=3Dcorte=
x-a53 -march=3Darmv8-a+crc+crypto -fstack-protector-strong  -O2 -D_FORTIFY_=
SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security  --sysroot=
=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec=
-linux/libkymati/1.0-r0/recipe-sysroot -o CMakeFiles/cmTC_e06e9.dir/testCXX=
Compiler.cxx.o -c testCXXCompiler.cxx
|     g++: warning: =91-mcpu=3D=92 is deprecated; use =91-mtune=3D=92 or =
=91-march=3D=92 instead
|     cc1plus: error: bad value (=91armv8-a+crc+crypto=92) for =91-march=3D=
=92 switch
|     cc1plus: note: valid arguments to =91-march=3D=92 switch are: nocona =
core2 nehalem corei7 westmere sandybridge corei7-avx ivybridge core-avx-i h=
aswell core-avx2 broadwell skylake skylake-avx512 cannonlake icelake-client=
 icelake-server cascadelake tigerlake bonnell atom silvermont slm goldmont =
goldmont-plus tremont knl knm x86-64 eden-x2 nano nano-1000 nano-2000 nano-=
3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 athlo=
n64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bdver4 znver1 zn=
ver2 btver1 btver2 native
|     cc1plus: error: bad value (=91cortex-a53=92) for =91-mtune=3D=92 swit=
ch
|     cc1plus: note: valid arguments to =91-mtune=3D=92 switch are: nocona =
core2 nehalem corei7 westmere sandybridge corei7-avx ivybridge core-avx-i h=
aswell core-avx2 broadwell skylake skylake-avx512 cannonlake icelake-client=
 icelake-server cascadelake tigerlake bonnell atom silvermont slm goldmont =
goldmont-plus tremont knl knm intel x86-64 eden-x2 nano nano-1000 nano-2000=
 nano-3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64=
 athlon64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bdver4 znv=
er1 znver2 btver1 btver2 generic native
|     ninja: build stopped: subcommand failed.
|
|
|
|
|
|   CMake will not be able to correctly generate this project.
| Call Stack (most recent call first):
|   CMakeLists.txt:3 (project)
|
|
| -- Configuring incomplete, errors occurred!
| See also "/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-cryp=
to-phytec-linux/libkymati/1.0-r0/git/CMakeFiles/CMakeOutput.log".
| See also "/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-cryp=
to-phytec-linux/libkymati/1.0-r0/git/CMakeFiles/CMakeError.log".
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/dave/Documents/Kymati/yocto/build/tmp/work/cor=
texa53-crypto-phytec-linux/libkymati/1.0-r0/temp/run.do_configure.1005716' =
failed with exit code 1
ERROR: Task (/home/dave/Documents/Kymati/yocto/sources/poky/../meta-custom-=
mpet/recipes-apps/libkymati/libkymati.bb:do_configure) failed with exit cod=
e '1'
NOTE: Tasks Summary: Attempted 2684 tasks of which 2680 didn't need to be r=
erun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 3 seconds

Summary: 1 task failed:
  /home/dave/Documents/Kymati/yocto/sources/poky/../meta-custom-mpet/recipe=
s-apps/libkymati/libkymati.bb:do_configure
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.







________________________________
From: Mikko Rapeli <mikko.rapeli@linaro.org>
Sent: 17 October 2023 12:22
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?

Hi,

On Tue, Oct 17, 2023 at 10:09:42AM +0000, Dave Hitchman wrote:
> Thanks
>
> So, first, I thought - as I had seen examples that I had to put these fla=
gs etc. in the configuration function but it appears that was a wrong thing=
.
> Now my recipe looks like:
> SUMMARY =3D "mylib"
> DESCRIPTION =3D "Fetch and build mylibi"
> LICENSE =3D "CLOSED"
> LIC_FILES_CHKSUM =3D ""
>
> ##EXTRA_OECMAKE =3D "all"
> inherit cmake
>
> python do_display_banner() {
>     bb.plain("***********************************************");
>     bb.plain("*                                             *");
>     bb.plain("*  mylibrecipe created by mei         *");
>     bb.plain("*                                             *");
>     bb.plain("***********************************************");
> }
>
> addtask display_banner before do_build
>
> # where and how to get source
> ## this is via git
> SRC_URI =3D "git://git@correct git - this works;"
>
> # where to source is stored
> S =3D "${WORKDIR}/git"
>
> ## was using target flags but Mikko suggested EXTRA_OECMAKE which at leas=
t doesnt complain
> ##TARGET_CFLAGS +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -D=
BUILD_TOOLS=3DON"
> ##TARGET_CXXFLAGS +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON =
-DBUILD_TOOLS=3DON"
> EXTRA_OECMAKE +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBU=
ILD_TOOLS=3DON"
>
> ## this I think is needed to ensure the correct compilers are used... I t=
hink anyway.
> export CXX=3D"/usr/bin/arm-none-gnueabi-g++"
> export CMAKE_CXX_COMPILER=3D"/usr/bin/arm-none-gnueabi-g++"

This is wrong. cmake.bbclass generates a toolchain file which is given
to cmake binary and this has all the compiler, binary, module, header file =
etc
search paths set correctly. It's up to the CMake scripts of the SW componen=
t to obey
these settings and not overwrite them. The SW component can amend them by a=
ppending
to them but not overwriting. An overwrite of any variable from toolchain.cm=
ake
will break things in various ways. Run the "bitbake -c configure && bitbake=
 -c compile" steps
manually and check the environment in a "bitbake -c devshell", for example.

> However:
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_configure
> | -- The CXX compiler identification is GNU 9.4.0
> | -- The C compiler identification is GNU 9.4.0
> | -- Detecting CXX compiler ABI info
> | -- Detecting CXX compiler ABI info - failed
> | -- Check for working CXX compiler: /usr/bin/g++
> | -- Check for working CXX compiler: /usr/bin/g++ - broken
> | CMake Error at /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa=
53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot-native/usr/share/cma=
ke-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (message):
> |   The C++ compiler
> |
> |     "/usr/bin/g++"
> |
> |   is not able to compile a simple test program.
> |
>
> suggesting it is not using the c++ I thought it should be.

Yes, as said before, using the host compiled from the Linux machine instead=
 of
yocto cross compiler for real target.

Cheers,

-Mikko

--_000_AM9PR03MB7012F4837978629C7E866C8792D6AAM9PR03MB7012eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks, but without the CXX settings there is no difference either, it stil=
l uses the wrong toolchain (or rather tries to and fails in the same way) .=
 I have now removed the two export CXX type lines...</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
bitbake -c configure custom-image-mpet
<div class=3D"ContentPasted0">Loading cache: 100% |########################=
###########################################################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted0">Loaded 5337 entries from dependency cache.</d=
iv>
<div class=3D"ContentPasted0">Parsing recipes: 100% |######################=
###########################################################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted0">Parsing of 3640 .bb files complete (3639 cach=
ed, 1 parsed). 5336 targets, 576 skipped, 1 masked, 0 errors.</div>
<div class=3D"ContentPasted0">NOTE: Resolving any missing task queue depend=
encies</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Build Configuration:</div>
<div class=3D"ContentPasted0">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;1.50.0&quot;</div>
<div class=3D"ContentPasted0">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;x86_64-linux&quot;</div>
<div class=3D"ContentPasted0">NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D &quot=
;universal&quot;</div>
<div class=3D"ContentPasted0">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;aarch64-phytec-linux&quot;</div>
<div class=3D"ContentPasted0">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;=3D &quot;phyboard-pollux-imx8mp-2&quot;</div>
<div class=3D"ContentPasted0">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; =3D &quot;ampliphy-vendor&quot;</div>
<div class=3D"ContentPasted0">DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D &quot=
;BSP-Yocto-NXP-i.MX8MP-PD22.1.1&quot;</div>
<div class=3D"ContentPasted0">TUNE_FEATURES &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;aarch64 armv8a crc cortexa53 crypto&quot;</div>
<div class=3D"ContentPasted0">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;&quot;</div>
<div class=3D"ContentPasted0">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; </div>
<div class=3D"ContentPasted0">meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;HEAD:269265c00091fa65f93de6cad32bf24f1e7f72a3&quot;</div>
<div class=3D"ContentPasted0">meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;</div>
<div class=3D"ContentPasted0">meta-networking &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted0">meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;</div>
<div class=3D"ContentPasted0">meta-multimedia &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted0">meta-filesystems &nbsp; &nbsp; </div>
<div class=3D"ContentPasted0">meta-perl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</div>
<div class=3D"ContentPasted0">meta-gnome &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;HEAD:f44e1a2b575826e88b8cb2725e54a7c5d29cf94a&quot;</div>
<div class=3D"ContentPasted0">meta-bsp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; </div>
<div class=3D"ContentPasted0">meta-sdk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; </div>
<div class=3D"ContentPasted0">meta-ml &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;=3D &quot;HEAD:cc4c2d1c845b48fdec989f089aee3c13d2b1e15b&quot;</d=
iv>
<div class=3D"ContentPasted0">meta-chromium &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;HEAD:8be1d3a0ba0cf32e61144900597207af5698c10d&quot;</div>
<div class=3D"ContentPasted0">meta-clang &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;HEAD:b0d805060791006d651efd3d7ae3dd5add8f70fe&quot;</div>
<div class=3D"ContentPasted0">meta-freescale &nbsp; &nbsp; &nbsp; =3D &quot=
;HEAD:f0be684f01b53482cb43e016a5c5c1faf3ae448e&quot;</div>
<div class=3D"ContentPasted0">meta-freescale-3rdparty =3D &quot;HEAD:f8150f=
3b37cb83cba1f9e2378e57bb63e02d4610&quot;</div>
<div class=3D"ContentPasted0">meta-freescale-distro =3D &quot;HEAD:e6daa26b=
a1f748326546063d63a085ae671827d9&quot;</div>
<div class=3D"ContentPasted0">meta-nxp-demo-experience =3D &quot;HEAD:9dcc1=
1ea9f525cffedbb28895e0abb443e56c3e0&quot;</div>
<div class=3D"ContentPasted0">meta-python2 &nbsp; &nbsp; &nbsp; &nbsp; =3D =
&quot;HEAD:8db9e4f6ceae33d7a4f55453d31e69f9858af4eb&quot;</div>
<div class=3D"ContentPasted0">meta-qt5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D &quot;HEAD:43f8f539d40070a70fe89136db89bf5bb1dfe7ed&quot;</div>
<div class=3D"ContentPasted0">meta-virtualization &nbsp;=3D &quot;HEAD:7f71=
9ef40896b6c78893add8485fda995b00d51d&quot;</div>
<div class=3D"ContentPasted0">meta-rauc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;HEAD:b344adecae6cef9a26b3c5b6a7bb344d18c074a6&quot;</div>
<div class=3D"ContentPasted0">meta-phytec &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;=3D &quot;HEAD:f023740382f01e85151a67843a08d9d965503961&quot;</div>
<div class=3D"ContentPasted0">meta-ampliphy &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;HEAD:d761395629c0f8f0d06f9fd6fe128fdb001fdfec&quot;</div>
<div class=3D"ContentPasted0">meta-security &nbsp; &nbsp; &nbsp; &nbsp;</di=
v>
<div class=3D"ContentPasted0">meta-tpm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D &quot;HEAD:c40e1e84da9624b9096a463dbed3b301c01c268e&quot;</div>
<div class=3D"ContentPasted0">meta-custom-mpet &nbsp; &nbsp; =3D &quot;mast=
er:19ff82126c1239c9fe258555b10ee2e44d7f651a&quot;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Initialising tasks: 100% |###################=
###########################################################################=
####################################| Time: 0:00:03</div>
<div class=3D"ContentPasted0">Sstate summary: Wanted 8 Local 4 Network 0 Mi=
ssed 4 Current 193 (50% match, 98% complete)</div>
<div class=3D"ContentPasted0">Removing 1 stale sstate objects for arch phyb=
oard_pollux_imx8mp_2: 100% |###############################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted0">NOTE: Executing Tasks</div>
<div class=3D"ContentPasted0">WARNING: optee-os-3.15.0.imx-r0 do_optee_warn=
ing: OP-TEE support is experimental and not ready for production use</div>
<div class=3D"ContentPasted0">NOTE: Tasks Summary: Attempted 891 tasks of w=
hich 885 didn't need to be rerun and all succeeded.</div>
<div class=3D"ContentPasted0">NOTE: Writing buildhistory</div>
<div class=3D"ContentPasted0">NOTE: Writing buildhistory took: 3 seconds</d=
iv>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Summary: There was 1 WARNING message shown.</=
div>
<div class=3D"ContentPasted0">dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kym=
ati/yocto/build$
</div>
<div><br class=3D"ContentPasted0">
</div>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1">
bitbake -c compile custom-image-mpet
<div class=3D"ContentPasted1">Loading cache: 100% |########################=
###########################################################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted1">Loaded 5337 entries from dependency cache.</d=
iv>
<div class=3D"ContentPasted1">NOTE: Resolving any missing task queue depend=
encies</div>
<div><br class=3D"ContentPasted1">
</div>
<div class=3D"ContentPasted1">Build Configuration:</div>
<div class=3D"ContentPasted1">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;1.50.0&quot;</div>
<div class=3D"ContentPasted1">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;x86_64-linux&quot;</div>
<div class=3D"ContentPasted1">NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D &quot=
;universal&quot;</div>
<div class=3D"ContentPasted1">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;aarch64-phytec-linux&quot;</div>
<div class=3D"ContentPasted1">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;=3D &quot;phyboard-pollux-imx8mp-2&quot;</div>
<div class=3D"ContentPasted1">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; =3D &quot;ampliphy-vendor&quot;</div>
<div class=3D"ContentPasted1">DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D &quot=
;BSP-Yocto-NXP-i.MX8MP-PD22.1.1&quot;</div>
<div class=3D"ContentPasted1">TUNE_FEATURES &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;aarch64 armv8a crc cortexa53 crypto&quot;</div>
<div class=3D"ContentPasted1">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;&quot;</div>
<div class=3D"ContentPasted1">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; </div>
<div class=3D"ContentPasted1">meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;HEAD:269265c00091fa65f93de6cad32bf24f1e7f72a3&quot;</div>
<div class=3D"ContentPasted1">meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;</div>
<div class=3D"ContentPasted1">meta-networking &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted1">meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;</div>
<div class=3D"ContentPasted1">meta-multimedia &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted1">meta-filesystems &nbsp; &nbsp; </div>
<div class=3D"ContentPasted1">meta-perl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</div>
<div class=3D"ContentPasted1">meta-gnome &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;HEAD:f44e1a2b575826e88b8cb2725e54a7c5d29cf94a&quot;</div>
<div class=3D"ContentPasted1">meta-bsp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; </div>
<div class=3D"ContentPasted1">meta-sdk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; </div>
<div class=3D"ContentPasted1">meta-ml &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;=3D &quot;HEAD:cc4c2d1c845b48fdec989f089aee3c13d2b1e15b&quot;</d=
iv>
<div class=3D"ContentPasted1">meta-chromium &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;HEAD:8be1d3a0ba0cf32e61144900597207af5698c10d&quot;</div>
<div class=3D"ContentPasted1">meta-clang &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;HEAD:b0d805060791006d651efd3d7ae3dd5add8f70fe&quot;</div>
<div class=3D"ContentPasted1">meta-freescale &nbsp; &nbsp; &nbsp; =3D &quot=
;HEAD:f0be684f01b53482cb43e016a5c5c1faf3ae448e&quot;</div>
<div class=3D"ContentPasted1">meta-freescale-3rdparty =3D &quot;HEAD:f8150f=
3b37cb83cba1f9e2378e57bb63e02d4610&quot;</div>
<div class=3D"ContentPasted1">meta-freescale-distro =3D &quot;HEAD:e6daa26b=
a1f748326546063d63a085ae671827d9&quot;</div>
<div class=3D"ContentPasted1">meta-nxp-demo-experience =3D &quot;HEAD:9dcc1=
1ea9f525cffedbb28895e0abb443e56c3e0&quot;</div>
<div class=3D"ContentPasted1">meta-python2 &nbsp; &nbsp; &nbsp; &nbsp; =3D =
&quot;HEAD:8db9e4f6ceae33d7a4f55453d31e69f9858af4eb&quot;</div>
<div class=3D"ContentPasted1">meta-qt5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D &quot;HEAD:43f8f539d40070a70fe89136db89bf5bb1dfe7ed&quot;</div>
<div class=3D"ContentPasted1">meta-virtualization &nbsp;=3D &quot;HEAD:7f71=
9ef40896b6c78893add8485fda995b00d51d&quot;</div>
<div class=3D"ContentPasted1">meta-rauc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;HEAD:b344adecae6cef9a26b3c5b6a7bb344d18c074a6&quot;</div>
<div class=3D"ContentPasted1">meta-phytec &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;=3D &quot;HEAD:f023740382f01e85151a67843a08d9d965503961&quot;</div>
<div class=3D"ContentPasted1">meta-ampliphy &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;HEAD:d761395629c0f8f0d06f9fd6fe128fdb001fdfec&quot;</div>
<div class=3D"ContentPasted1">meta-security &nbsp; &nbsp; &nbsp; &nbsp;</di=
v>
<div class=3D"ContentPasted1">meta-tpm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D &quot;HEAD:c40e1e84da9624b9096a463dbed3b301c01c268e&quot;</div>
<div class=3D"ContentPasted1">meta-custom-mpet &nbsp; &nbsp; =3D &quot;mast=
er:19ff82126c1239c9fe258555b10ee2e44d7f651a&quot;</div>
<div><br class=3D"ContentPasted1">
</div>
<div class=3D"ContentPasted1">Initialising tasks: 100% |###################=
###########################################################################=
####################################| Time: 0:00:02</div>
<div class=3D"ContentPasted1">Sstate summary: Wanted 7 Local 4 Network 0 Mi=
ssed 3 Current 194 (57% match, 98% complete)</div>
<div class=3D"ContentPasted1">Removing 3 stale sstate objects for arch phyb=
oard_pollux_imx8mp_2: 100% |###############################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted1">NOTE: Executing Tasks</div>
<div class=3D"ContentPasted1">WARNING: optee-os-3.15.0.imx-r0 do_optee_warn=
ing: OP-TEE support is experimental and not ready for production use</div>
<div class=3D"ContentPasted1">NOTE: Tasks Summary: Attempted 892 tasks of w=
hich 889 didn't need to be rerun and all succeeded.</div>
<div class=3D"ContentPasted1">NOTE: Writing buildhistory</div>
<div class=3D"ContentPasted1">NOTE: Writing buildhistory took: 2 seconds</d=
iv>
<div><br class=3D"ContentPasted1">
</div>
<div class=3D"ContentPasted1">Summary: There was 1 WARNING message shown.</=
div>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
But when I build ...</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
bitbake custom-image-mpet
<div class=3D"ContentPasted2">Loading cache: 100% |########################=
###########################################################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted2">Loaded 5337 entries from dependency cache.</d=
iv>
<div class=3D"ContentPasted2">NOTE: Resolving any missing task queue depend=
encies</div>
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">Build Configuration:</div>
<div class=3D"ContentPasted2">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;1.50.0&quot;</div>
<div class=3D"ContentPasted2">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;x86_64-linux&quot;</div>
<div class=3D"ContentPasted2">NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D &quot=
;universal&quot;</div>
<div class=3D"ContentPasted2">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;aarch64-phytec-linux&quot;</div>
<div class=3D"ContentPasted2">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;=3D &quot;phyboard-pollux-imx8mp-2&quot;</div>
<div class=3D"ContentPasted2">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; =3D &quot;ampliphy-vendor&quot;</div>
<div class=3D"ContentPasted2">DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D &quot=
;BSP-Yocto-NXP-i.MX8MP-PD22.1.1&quot;</div>
<div class=3D"ContentPasted2">TUNE_FEATURES &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;aarch64 armv8a crc cortexa53 crypto&quot;</div>
<div class=3D"ContentPasted2">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;&quot;</div>
<div class=3D"ContentPasted2">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; </div>
<div class=3D"ContentPasted2">meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;HEAD:269265c00091fa65f93de6cad32bf24f1e7f72a3&quot;</div>
<div class=3D"ContentPasted2">meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;</div>
<div class=3D"ContentPasted2">meta-networking &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted2">meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;</div>
<div class=3D"ContentPasted2">meta-multimedia &nbsp; &nbsp; &nbsp;</div>
<div class=3D"ContentPasted2">meta-filesystems &nbsp; &nbsp; </div>
<div class=3D"ContentPasted2">meta-perl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</div>
<div class=3D"ContentPasted2">meta-gnome &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;HEAD:f44e1a2b575826e88b8cb2725e54a7c5d29cf94a&quot;</div>
<div class=3D"ContentPasted2">meta-bsp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; </div>
<div class=3D"ContentPasted2">meta-sdk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; </div>
<div class=3D"ContentPasted2">meta-ml &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;=3D &quot;HEAD:cc4c2d1c845b48fdec989f089aee3c13d2b1e15b&quot;</d=
iv>
<div class=3D"ContentPasted2">meta-chromium &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;HEAD:8be1d3a0ba0cf32e61144900597207af5698c10d&quot;</div>
<div class=3D"ContentPasted2">meta-clang &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 =3D &quot;HEAD:b0d805060791006d651efd3d7ae3dd5add8f70fe&quot;</div>
<div class=3D"ContentPasted2">meta-freescale &nbsp; &nbsp; &nbsp; =3D &quot=
;HEAD:f0be684f01b53482cb43e016a5c5c1faf3ae448e&quot;</div>
<div class=3D"ContentPasted2">meta-freescale-3rdparty =3D &quot;HEAD:f8150f=
3b37cb83cba1f9e2378e57bb63e02d4610&quot;</div>
<div class=3D"ContentPasted2">meta-freescale-distro =3D &quot;HEAD:e6daa26b=
a1f748326546063d63a085ae671827d9&quot;</div>
<div class=3D"ContentPasted2">meta-nxp-demo-experience =3D &quot;HEAD:9dcc1=
1ea9f525cffedbb28895e0abb443e56c3e0&quot;</div>
<div class=3D"ContentPasted2">meta-python2 &nbsp; &nbsp; &nbsp; &nbsp; =3D =
&quot;HEAD:8db9e4f6ceae33d7a4f55453d31e69f9858af4eb&quot;</div>
<div class=3D"ContentPasted2">meta-qt5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D &quot;HEAD:43f8f539d40070a70fe89136db89bf5bb1dfe7ed&quot;</div>
<div class=3D"ContentPasted2">meta-virtualization &nbsp;=3D &quot;HEAD:7f71=
9ef40896b6c78893add8485fda995b00d51d&quot;</div>
<div class=3D"ContentPasted2">meta-rauc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D &quot;HEAD:b344adecae6cef9a26b3c5b6a7bb344d18c074a6&quot;</div>
<div class=3D"ContentPasted2">meta-phytec &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;=3D &quot;HEAD:f023740382f01e85151a67843a08d9d965503961&quot;</div>
<div class=3D"ContentPasted2">meta-ampliphy &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;HEAD:d761395629c0f8f0d06f9fd6fe128fdb001fdfec&quot;</div>
<div class=3D"ContentPasted2">meta-security &nbsp; &nbsp; &nbsp; &nbsp;</di=
v>
<div class=3D"ContentPasted2">meta-tpm &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D &quot;HEAD:c40e1e84da9624b9096a463dbed3b301c01c268e&quot;</div>
<div class=3D"ContentPasted2">meta-custom-mpet &nbsp; &nbsp; =3D &quot;mast=
er:19ff82126c1239c9fe258555b10ee2e44d7f651a&quot;</div>
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">Initialising tasks: 100% |###################=
###########################################################################=
####################################| Time: 0:00:04</div>
<div class=3D"ContentPasted2">Sstate summary: Wanted 139 Local 114 Network =
0 Missed 25 Current 1038 (82% match, 97% complete)</div>
<div class=3D"ContentPasted2">Removing 9 stale sstate objects for arch phyb=
oard_pollux_imx8mp_2: 100% |###############################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted2">Removing 3 stale sstate objects for arch cort=
exa53-crypto: 100% |#######################################################=
####################################| Time: 0:00:00</div>
<div class=3D"ContentPasted2">NOTE: Executing Tasks</div>
<div class=3D"ContentPasted2">WARNING: optee-os-3.15.0.imx-r0 do_optee_warn=
ing: OP-TEE support is experimental and not ready for production use</div>
<div class=3D"ContentPasted2">ERROR: libkymati-1.0-r0 do_configure: Executi=
on of '/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-ph=
ytec-linux/libkymati/1.0-r0/temp/run.do_configure.1005716' failed with exit=
 code 1</div>
<div class=3D"ContentPasted2">ERROR: Logfile of failure stored in: /home/da=
ve/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libk=
ymati/1.0-r0/temp/log.do_configure.1005716</div>
<div class=3D"ContentPasted2">Log data follows:</div>
<div class=3D"ContentPasted2">| DEBUG: Executing python function extend_rec=
ipe_sysroot</div>
<div class=3D"ContentPasted2">| NOTE: Direct dependencies are ['/home/dave/=
Documents/Kymati/yocto/sources/poky/../poky/meta/recipes-devtools/gcc/gcc-c=
ross_10.2.bb:do_populate_sysroot', 'virtual:native:/home/dave/Documents/Kym=
ati/yocto/sources/poky/../poky/meta/recipes-devtools/pseudo/pseudo_git.bb:d=
o_populate_sysroot',
 '/home/dave/Documents/Kymati/yocto/sources/poky/../poky/meta/recipes-devto=
ols/quilt/quilt-native_0.66.bb:do_populate_sysroot', 'virtual:native:/home/=
dave/Documents/Kymati/yocto/sources/poky/../poky/meta/recipes-devtools/ninj=
a/ninja_1.10.2.bb:do_populate_sysroot',
 '/home/dave/Documents/Kymati/yocto/sources/poky/../poky/meta/recipes-core/=
glibc/glibc_2.33.bb:do_populate_sysroot', '/home/dave/Documents/Kymati/yoct=
o/sources/poky/../poky/meta/recipes-devtools/gcc/gcc-runtime_10.2.bb:do_pop=
ulate_sysroot', '/home/dave/Documents/Kymati/yocto/sources/poky/../poky/met=
a/recipes-devtools/cmake/cmake-native_3.19.5.bb:do_populate_sysroot',
 'virtual:native:/home/dave/Documents/Kymati/yocto/sources/poky/../poky/met=
a/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot']</div>
<div class=3D"ContentPasted2">| NOTE: Installed into sysroot: []</div>
<div class=3D"ContentPasted2">| NOTE: Skipping as already exists in sysroot=
: ['gcc-cross-aarch64', 'pseudo-native', 'quilt-native', 'ninja-native', 'g=
libc', 'gcc-runtime', 'cmake-native', 'patch-native', 'binutils-cross-aarch=
64', 'flex-native', 'libmpc-native',
 'libtool-native', 'texinfo-dummy-native', 'xz-native', 'gnu-config-native'=
, 'zlib-native', 'mpfr-native', 'autoconf-native', 'automake-native', 'gmp-=
native', 'linux-libc-headers', 're2c-native', 'libgcc', 'bzip2-native', 'nc=
urses-native', 'curl-native', 'attr-native',
 'm4-native', 'gettext-minimal-native', 'pkgconfig-native', 'openssl-native=
']</div>
<div class=3D"ContentPasted2">| DEBUG: Python function extend_recipe_sysroo=
t finished</div>
<div class=3D"ContentPasted2">| DEBUG: Executing shell function do_configur=
e</div>
<div class=3D"ContentPasted2">| -- The CXX compiler identification is GNU 9=
.4.0</div>
<div class=3D"ContentPasted2">| -- The C compiler identification is GNU 9.4=
.0</div>
<div class=3D"ContentPasted2">| -- Detecting CXX compiler ABI info</div>
<div class=3D"ContentPasted2">| -- Detecting CXX compiler ABI info - failed=
</div>
<div class=3D"ContentPasted2">| -- Check for working CXX compiler: /usr/bin=
/g++</div>
<div class=3D"ContentPasted2">| -- Check for working CXX compiler: /usr/bin=
/g++ - broken</div>
<div class=3D"ContentPasted2">| CMake Error at /home/dave/Documents/Kymati/=
yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-=
sysroot-native/usr/share/cmake-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (=
message):</div>
<div class=3D"ContentPasted2">| &nbsp; The C++ compiler</div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; &quot;/usr/bin/g++&quot;</div=
>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| &nbsp; is not able to compile a simple test=
 program.</div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| &nbsp; It fails with the following output:<=
/div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; Change Dir: /home/dave/Docume=
nts/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0=
-r0/git/CMakeFiles/CMakeTmp</div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; Run Build Command(s):ninja cm=
TC_e06e9 &amp;&amp; [1/2] Building CXX object CMakeFiles/cmTC_e06e9.dir/tes=
tCXXCompiler.cxx.o</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; FAILED: CMakeFiles/cmTC_e06e9=
.dir/testCXXCompiler.cxx.o</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; /usr/bin/g++ &nbsp; -O2 -pipe=
 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/dave/Document=
s/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r=
0=3D/usr/src/debug/libkymati/1.0-r0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp;-fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/=
tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/li=
bkymati/1.0-r0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;-fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/buil=
d/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot=3D
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;-fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cor=
texa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot-native=3D &nbsp;=
-fvisibility-inlines-hidden &nbsp;-mcpu=3Dcortex-a53 -march=3Darmv8-a+crc+c=
rypto -fstack-protector-strong
 &nbsp;-O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dforma=
t-security &nbsp;--sysroot=3D/home/dave/Documents/Kymati/yocto/build/tmp/wo=
rk/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot -o CMakeFi=
les/cmTC_e06e9.dir/testCXXCompiler.cxx.o -c testCXXCompiler.cxx</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; g++: warning: =91-mcpu=3D=92 =
is deprecated; use =91-mtune=3D=92 or =91-march=3D=92 instead</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; cc1plus: error: bad value (=
=91armv8-a+crc+crypto=92) for =91-march=3D=92 switch</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; cc1plus: note: valid argument=
s to =91-march=3D=92 switch are: nocona core2 nehalem corei7 westmere sandy=
bridge corei7-avx ivybridge core-avx-i haswell core-avx2 broadwell skylake =
skylake-avx512 cannonlake icelake-client icelake-server
 cascadelake tigerlake bonnell atom silvermont slm goldmont goldmont-plus t=
remont knl knm x86-64 eden-x2 nano nano-1000 nano-2000 nano-3000 nano-x2 ed=
en-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 athlon64-sse3 athlon=
-fx amdfam10 barcelona bdver1 bdver2
 bdver3 bdver4 znver1 znver2 btver1 btver2 native</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; cc1plus: error: bad value (=
=91cortex-a53=92) for =91-mtune=3D=92 switch</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; cc1plus: note: valid argument=
s to =91-mtune=3D=92 switch are: nocona core2 nehalem corei7 westmere sandy=
bridge corei7-avx ivybridge core-avx-i haswell core-avx2 broadwell skylake =
skylake-avx512 cannonlake icelake-client icelake-server
 cascadelake tigerlake bonnell atom silvermont slm goldmont goldmont-plus t=
remont knl knm intel x86-64 eden-x2 nano nano-1000 nano-2000 nano-3000 nano=
-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 athlon64-sse3 =
athlon-fx amdfam10 barcelona bdver1
 bdver2 bdver3 bdver4 znver1 znver2 btver1 btver2 generic native</div>
<div class=3D"ContentPasted2">| &nbsp; &nbsp; ninja: build stopped: subcomm=
and failed.</div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| &nbsp; CMake will not be able to correctly =
generate this project.</div>
<div class=3D"ContentPasted2">| Call Stack (most recent call first):</div>
<div class=3D"ContentPasted2">| &nbsp; CMakeLists.txt:3 (project)</div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| </div>
<div class=3D"ContentPasted2">| -- Configuring incomplete, errors occurred!=
</div>
<div class=3D"ContentPasted2">| See also &quot;/home/dave/Documents/Kymati/=
yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/git/CMa=
keFiles/CMakeOutput.log&quot;.</div>
<div class=3D"ContentPasted2">| See also &quot;/home/dave/Documents/Kymati/=
yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/git/CMa=
keFiles/CMakeError.log&quot;.</div>
<div class=3D"ContentPasted2">| WARNING: exit code 1 from a shell command.<=
/div>
<div class=3D"ContentPasted2">| ERROR: Execution of '/home/dave/Documents/K=
ymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/t=
emp/run.do_configure.1005716' failed with exit code 1</div>
<div class=3D"ContentPasted2">ERROR: Task (/home/dave/Documents/Kymati/yoct=
o/sources/poky/../meta-custom-mpet/recipes-apps/libkymati/libkymati.bb:do_c=
onfigure) failed with exit code '1'</div>
<div class=3D"ContentPasted2">NOTE: Tasks Summary: Attempted 2684 tasks of =
which 2680 didn't need to be rerun and 1 failed.</div>
<div class=3D"ContentPasted2">NOTE: Writing buildhistory</div>
<div class=3D"ContentPasted2">NOTE: Writing buildhistory took: 3 seconds</d=
iv>
<div><br class=3D"ContentPasted2">
</div>
<div class=3D"ContentPasted2">Summary: 1 task failed:</div>
<div class=3D"ContentPasted2">&nbsp; /home/dave/Documents/Kymati/yocto/sour=
ces/poky/../meta-custom-mpet/recipes-apps/libkymati/libkymati.bb:do_configu=
re</div>
<div class=3D"ContentPasted2">Summary: There was 1 WARNING message shown.</=
div>
<div class=3D"ContentPasted2">Summary: There was 1 ERROR message shown, ret=
urning a non-zero exit code.</div>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b> Mikko Rapeli &lt=
;mikko.rapeli@linaro.org&gt;<br>
<b>Sent:</b> 17 October 2023 12:22<br>
<b>To:</b> Dave Hitchman &lt;dave.hitchman@kymati.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Using cmake... how?</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText elementToProof">Hi,<br>
<br>
On Tue, Oct 17, 2023 at 10:09:42AM +0000, Dave Hitchman wrote:<br>
&gt; Thanks<br>
&gt; <br>
&gt; So, first, I thought - as I had seen examples that I had to put these =
flags etc. in the configuration function but it appears that was a wrong th=
ing.<br>
&gt; Now my recipe looks like:<br>
&gt; SUMMARY =3D &quot;mylib&quot;<br>
&gt; DESCRIPTION =3D &quot;Fetch and build mylibi&quot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;&quot;<br>
&gt; <br>
&gt; ##EXTRA_OECMAKE =3D &quot;all&quot;<br>
&gt; inherit cmake<br>
&gt; <br>
&gt; python do_display_banner() {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; bb.plain(&quot;*******************************=
****************&quot;);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; bb.plain(&quot;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; *&quot;);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; bb.plain(&quot;*&nbsp; mylibrecipe created by =
mei&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *&quot;);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; bb.plain(&quot;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; *&quot;);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; bb.plain(&quot;*******************************=
****************&quot;);<br>
&gt; }<br>
&gt; <br>
&gt; addtask display_banner before do_build<br>
&gt; <br>
&gt; # where and how to get source<br>
&gt; ## this is via git<br>
&gt; SRC_URI =3D &quot;git://git@correct git - this works;&quot;<br>
&gt; <br>
&gt; # where to source is stored<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt; <br>
&gt; ## was using target flags but Mikko suggested EXTRA_OECMAKE which at l=
east doesnt complain<br>
&gt; ##TARGET_CFLAGS +=3D &quot;-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=
=3DON -DBUILD_TOOLS=3DON&quot;<br>
&gt; ##TARGET_CXXFLAGS +=3D &quot;-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHAR=
ED=3DON -DBUILD_TOOLS=3DON&quot;<br>
&gt; EXTRA_OECMAKE +=3D &quot;-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=
=3DON -DBUILD_TOOLS=3DON&quot;<br>
&gt; <br>
&gt; ## this I think is needed to ensure the correct compilers are used... =
I think anyway.<br>
&gt; export CXX=3D&quot;/usr/bin/arm-none-gnueabi-g++&quot;<br>
&gt; export CMAKE_CXX_COMPILER=3D&quot;/usr/bin/arm-none-gnueabi-g++&quot;<=
br>
<br>
This is wrong. cmake.bbclass generates a toolchain file which is given<br>
to cmake binary and this has all the compiler, binary, module, header file =
etc<br>
search paths set correctly. It's up to the CMake scripts of the SW componen=
t to obey<br>
these settings and not overwrite them. The SW component can amend them by a=
ppending<br>
to them but not overwriting. An overwrite of any variable from toolchain.cm=
ake<br>
will break things in various ways. Run the &quot;bitbake -c configure &amp;=
&amp; bitbake -c compile&quot; steps<br>
manually and check the environment in a &quot;bitbake -c devshell&quot;, fo=
r example.<br>
<br>
&gt; However:<br>
&gt; | DEBUG: Python function extend_recipe_sysroot finished<br>
&gt; | DEBUG: Executing shell function do_configure<br>
&gt; | -- The CXX compiler identification is GNU 9.4.0<br>
&gt; | -- The C compiler identification is GNU 9.4.0<br>
&gt; | -- Detecting CXX compiler ABI info<br>
&gt; | -- Detecting CXX compiler ABI info - failed<br>
&gt; | -- Check for working CXX compiler: /usr/bin/g++<br>
&gt; | -- Check for working CXX compiler: /usr/bin/g++ - broken<br>
&gt; | CMake Error at /home/dave/Documents/Kymati/yocto/build/tmp/work/cort=
exa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot-native/usr/share/=
cmake-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (message):<br>
&gt; |&nbsp;&nbsp; The C++ compiler<br>
&gt; |<br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; &quot;/usr/bin/g++&quot;<br>
&gt; |<br>
&gt; |&nbsp;&nbsp; is not able to compile a simple test program.<br>
&gt; |<br>
&gt; <br>
&gt; suggesting it is not using the c++ I thought it should be.<br>
<br>
Yes, as said before, using the host compiled from the Linux machine instead=
 of<br>
yocto cross compiler for real target.<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM9PR03MB7012F4837978629C7E866C8792D6AAM9PR03MB7012eurp_--

