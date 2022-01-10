Return-Path: <bevenson@melinkcorp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F806C433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 21:18:18 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (NAM04-MW2-obe.outbound.protection.outlook.com [40.107.101.92])
 by mx.groups.io with SMTP id smtpd.web12.38152.1641849497174391024
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 13:18:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melink.onmicrosoft.com
 header.s=selector1-melink-onmicrosoft-com header.b=YPGqycx0;
 spf=pass (domain: melinkcorp.com, ip: 40.107.101.92,
 mailfrom: bevenson@melinkcorp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6eZb7Tc61Mqm1PV7yx1qtwwneI9rd1oyu6hKkaTO82VNW8iGGuxWR+4u9xQrVq1B5T17f/pB5z6/WCz2wo8oOUxwNYYDzmLWwJu6JUecqGbcojsB6O2XTz7WDlD2OxI7/ZmKwsgN9kGu2boXrLK17qDUXSweC8jDzsczttW8PwGNSbE5wyicUSuByxa4kaVwgT2snstxjvJyWSe6M3GpsCqyTA42vVT/YYiTLQUEiora05+shmVKnG2pSfKgD3wLzE81W2b7UsTme8+RqEMyJT2jl7jz2269aNO26Qvbcu8HZd6Bx6I1GSCEupZds/d0zL1Faiub9aEho110pgaRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KwTWM78Kygmz1RMUAdXbrgYPP9YaGOOfR4s6bXEMf2A=;
 b=GEpHc/0K1GNgDF1mqmXM4paEfW7T8Ut0FvuEEHq8dcJSHXxuVQdEv/RCVZ8hQxuRCvYG/8eDGwIZSpVe9dF89r4LLt02nGAHRgyphs6uBiyOPUXRRobW7DOjRNEUJeQ5y0pt4uWJGAk4/7vsiijQXgj6UtVDm3gSutN5TS5+UKcx3J5UbSbyXrKruTTCbXplnZdjGqAdzMxQrGbnt3SdAwTRExW8I6mbglSHE1xGsMfQCiTtyo7X4GiobUJ77j+YrqIb4cgoRckx9XNZejyqQQTgYfEUC6MHjVTdPQJvFdvtV1+F/4auStRhQOn7cpJoC/BEPY/koI/et3x78fn4kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=melinkcorp.com; dmarc=pass action=none
 header.from=melinkcorp.com; dkim=pass header.d=melinkcorp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Melink.onmicrosoft.com; s=selector1-Melink-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwTWM78Kygmz1RMUAdXbrgYPP9YaGOOfR4s6bXEMf2A=;
 b=YPGqycx0ZC5hdStJkVzNEIlRsEYmRyKX9Ff1ASiuvAMD4G3vWjb7gYx+1sVX1jEe32g7KhaKq8YRbEFehyNa7rflrBdflLFwr8D1DgtBhU4wh1Xkljy6leuYZlZKT4apgbpuCXZp4Wx1Bh49E3CpZcuM/BGKsx88yejbt6Q1n5B6Py7oKXs+lf8+w8YjwJK7yxHhvFqu9UwCmECYEfYrIRIAT63+hKZjwS+d84ty3iyC43RSvKSk0KJEoL0lJ/pJv0UDAh+0Sxi1Lj8Mg62a5c/mruh2T6NBh0JgA0nE5fIh58twDTPxPCYGFJVq64gyQPIhMIx22SONW14V30oz4A==
Received: from CH0PR20MB3948.namprd20.prod.outlook.com (2603:10b6:610:c6::22)
 by CH0PR20MB4252.namprd20.prod.outlook.com (2603:10b6:610:dd::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Mon, 10 Jan
 2022 21:18:14 +0000
Received: from CH0PR20MB3948.namprd20.prod.outlook.com
 ([fe80::5d6b:e641:470e:e3be]) by CH0PR20MB3948.namprd20.prod.outlook.com
 ([fe80::5d6b:e641:470e:e3be%4]) with mapi id 15.20.4867.012; Mon, 10 Jan 2022
 21:18:14 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: Problems switching from busybox-udhcpc to dhcpcd
Thread-Topic: Problems switching from busybox-udhcpc to dhcpcd
Thread-Index: AdgDBVPB5tU7v1CyRxmBtJ+HRjRyaQDYKsqQ
Date: Mon, 10 Jan 2022 21:18:13 +0000
Message-ID: 
 <CH0PR20MB394861801589FC9A0C43BC79BB509@CH0PR20MB3948.namprd20.prod.outlook.com>
References: <16C7B4F102B4CC94.4141@lists.yoctoproject.org>
In-Reply-To: <16C7B4F102B4CC94.4141@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-bromium-msgid: 9f5ec3d0-9432-4a06-b3f9-c5da8d027426
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=melinkcorp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d449d7f-6993-4afa-0590-08d9d47eb671
x-ms-traffictypediagnostic: CH0PR20MB4252:EE_
x-microsoft-antispam-prvs: 
 <CH0PR20MB4252ACD4BC203C285ADAB1DBBB509@CH0PR20MB4252.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uV/PC9+cdok8zXDk9MLixrsAT21XrH1pf4G8vEdVtfeDG2ai5U4csuyVMSi1ehHqX9J+Uh3wze4/xWz02kOGWOCOnLqzgttJeZ1YuqzRNkZuAHWmGBNzG6Ha1qwBUEiXUzPQKHE5mR28MNnQlovBNe8SQ0qyZqf9xnsoehoUMcBBJ7ypBDeRBRkfa+pMNfot5zSIqqcbmYzzU9ubcdPX3LE7+Iqj6n+3hGUcjDfiW84p+EhYEMDVz+bHTvvgRuNtwL5IYm8mzWqOtVWQcRlg0T9McUYpJXEjKqsxG57AclXFC1efyibVTdzyV80H8B6V2R3I3/Z/fZ84/RU8aoPkv8Uf2sugl5zwOh5hwFX/yzZZDfdP+k7rgzFBwaZP5e8joR5YTM/00OFAGKb2A8uTKKfzNLDOfIALPMe4Y3vGDdy5nLq5UOzr6XGk/K5hgHprVOpPSyEMQqQ9yCnOlljzGGyYGBFs3C5X9eYqutV6IAqygaDTscabfDu+sOI4y27t/MMWgdrZGIoEk9Wk+CHcnYl4O99lsI0XGEI6dXaMd134M9yw/t+3DxwUnuyFs8b6deX7WcZAOULm42ydoBelaXor1KyYBPt/F8c6IgKpM7puxRoLRWZg7FxQq1b9rFuUhq+4GJV9PVSoQqz7PMBCnEj7vt4jYAwE5zCRq6Srmx8mUR35pbwsfNdzh1UEJZr1CXqJ8lSD+59Y8nYBn7NpVg/Gxet7sT9NqFuc+I6RbyvYhL7Y+cQnyjuv90pGGVANZgsnkppQxlhOcrplmkamrQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR20MB3948.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(26005)(122000001)(38100700002)(66446008)(6506007)(186003)(7696005)(316002)(53546011)(55016003)(66556008)(64756008)(66946007)(66476007)(9686003)(76116006)(5660300002)(110136005)(33656002)(508600001)(8676002)(8936002)(2906002)(86362001)(83380400001)(52536014)(38070700005)(71200400001)(17423001)(156123004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?MXaowEGPYVgpnf/vEeJqOvR863wx/ybdhKzM2Wv5k/wlIS1J9uRsszeFXkGN?=
 =?us-ascii?Q?zUidST6/CY7RkBGnBgYLJfCD1VZ+E5fale7FZixfrSYVOU/9LyMktN8S16ml?=
 =?us-ascii?Q?y8eENxmxHopz7zSAYqXm7lM/AMIEpKc1LhWlWAKq48tNGwXm0EOv7YYY0a+y?=
 =?us-ascii?Q?5yLrSK/b1KPr0n3C5invU22dE8zRLfnbDcUjKBW5/bGK64k7ao9/77T8euBE?=
 =?us-ascii?Q?hd32svw1ofRqtPszHSTVPFKZwDwa1aKZ/BoI6OdurfT9RtKPKDTkIm/pGYAg?=
 =?us-ascii?Q?IadG/Ql97V5U+wQTo8bOG2LcpQUlmydMCgv/Y9yuvnTO3d8VrxTiCcrvTix5?=
 =?us-ascii?Q?rPMsmbB1WLYQFZfUxonV6/ak6dMT1Y89J628A44bswoe1YcWXGeONIw8TcI7?=
 =?us-ascii?Q?BoOrFIG4+6sZsr4nKFZdU/V3QqC0tdwGz70QDfrSNHcGlxicO2TljZnGx/L1?=
 =?us-ascii?Q?z0SCbv3QK/xApU3RFBo55hB782gn5BvwHsr+PCNtW0IfUNPEk6Exuk/YWe4m?=
 =?us-ascii?Q?3U5RKJPz6RSIsZP4wpQnc17CeJ6yXqjLmxFeclpSWpd3ebLnyif/RLxcSvRL?=
 =?us-ascii?Q?5atdW8X0MWaoIsuhtDnZZO9LiC61c5Pl6HKd8VDydeI7/mKWClLce3aLsU2s?=
 =?us-ascii?Q?B2vDVx3PxH/EGSaDw/NGvVviVIKz1ErfThKYjP6oxbH2GwVrkTQEZ1g605dL?=
 =?us-ascii?Q?e1i9Muf1JjUggzn+5L/zdBxKaPB7yPFVt5OwPUfBgnqpBKjVyn2v/mlVqbPU?=
 =?us-ascii?Q?18k/LBChKkmSXAMIaINkL8+UEb9obgPTyKzglNcNp2YBxfj0dkeZqJvUgnhz?=
 =?us-ascii?Q?Ot5KugvtOqYZr7w2pBYtZfFe8fccQ5pP+tDHZxtRze05KL4/3cGzB7AYCODQ?=
 =?us-ascii?Q?GEabGw/vE+SUEzW3nQZEtlYcs0rCU7DbE/L2QEwqv71ADTf0FzJBwXQxCRuL?=
 =?us-ascii?Q?hD0ffqTW6H0epXvmPalnxH8Y5stCPn6dgc0kGwqfGsDBuzJM2AS/sglNgLjj?=
 =?us-ascii?Q?mSj2eXqunasfLliT3RNnOQ42EGol4b1e4pAkvZV2DKYM/CPV0TtO3u1Sw5lH?=
 =?us-ascii?Q?32mufjEwzMFo8vRAWhWffTyilXbapB9xWDCb1otNb11iAArWdJ+iaqBT3zuQ?=
 =?us-ascii?Q?qIuRDRuAGiRutaMYXZ6Vqc6NSNqaEuP5MqoWgkuQVt+KEDYB68DXU3elZvaK?=
 =?us-ascii?Q?8Jq7fo/5AW6S7GEhtzonnm5fY7eFwqCUrWuMxgFEdfqfXf6huSOYdtuPqL2P?=
 =?us-ascii?Q?jRgpnxwWpihOI3ZMn5lHhUJXP05X/4EmODuXX4GdEIp97+21qxS43y/KifIv?=
 =?us-ascii?Q?Uxj/Yasodg3UbeiXZwAz4oqE+h+2kJdESfphBnW8l8PtyhIKXzSZuzi1FruN?=
 =?us-ascii?Q?tFxB39Am35/MJnzoJzkT6Oul7y1OCE3Ey3qzxza+SmaflXAJ46ksqwRYPUH7?=
 =?us-ascii?Q?mx72fintrDfYEL0ZzM3beqKIimCSIlPU7O9t3FoGiQAL0WkHHbhrzumoZtEt?=
 =?us-ascii?Q?tkeGTAPsB9XLd6VhmrwbTHkEx1LUliHsnNcwG83Rcu2lcdmEjREmBL9mQd36?=
 =?us-ascii?Q?o0iL0w1AFaNt+mMl2DtESeQav+ufrohJE19AjdkBSMdosL9t6czB6cdM/H0X?=
 =?us-ascii?Q?8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR20MB3948.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3d449d7f-6993-4afa-0590-08d9d47eb671
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2022 21:18:13.9433
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 U9JrR92Xe622V+UArAfwr3gOiZML7Hg8JZCQRobAiKHll/JzxKBi1bnPB3gE3XVYK31YpISWj2MuN6Jqkdhi+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR20MB4252
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 21:18:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55786

All,

I solved my problems.

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Bryan Evenson via lists.yoctoproject.org
> Sent: Thursday, January 6, 2022 9:32 AM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] Problems switching from busybox-udhcpc to dhcpcd
>=20
> I have a system that is based off core-image-minimal which uses sysvinit =
and
> busybox-udhcpc.  I'm trying to switch to dhcpcd because I want to get the
> NTP server list from the local DHCP server; dhcpcd supports this feature =
and
> busybox-udhcpc does not.  I'm on the dunfell branch.  I think I finally g=
ot
> firmware upgrade to work cleanly (with opkg) but I'm having trouble
> triggering dhcpcd.  It doesn't work straight out of the box and I'm looki=
ng for
> assistance in how to get dhcpcd started.
>=20
> First, here are the recipe changes I made in my custom layer to install d=
hcpcd
> onto my image and for it to get pulled in on firmware upgrade.
> 1. I added the following to my busybox_%.bbappend:
>=20
> Do not install busybox-udcpcd, since we are using dhcpcd
> RRECOMMENDS_${PN} =3D ""
>=20
> 2. I modified my busybox defconfig to unset all the udhcpc related
> configuration features
>=20
> 3. I created a dhcpcd_%.bbappend with these contents:
> # Set the package to conflict with busybox-udhcpc
> RCONFLICTS_${PN} =3D "busybox-udhcpc"
> RREPLACES_${PN} =3D "busybox-udhcpc"
>=20
> # Add configuration settings to enable NTP configuration
> PACKAGECONFIG +=3D " \
>                    ntp \
>                  "
> PACKAGECONFIG[ntp] =3D "--with-hook=3Dntp, , , ntp"
>=20
> # Include the hook scripts on the system
> EXTRA_OECONF +=3D " \
>                  --with-hooks \
>                 "
> 4. In my init-ifupdown_%.bbappend:
> 	a. I added dhcpcd to the RDEPENDS list
> 	b. I added a script to start dhcpcd and installed it in the
> ${D}${sysconfdir}/network/if-up directory
>=20
> 5. Here is the if-up script (note: I only have one Ethernet port on this =
device
> which will always be eth0):
> #!/bin/sh
>=20
> # Only do this for eth0 and not the loopback interface
> if [ "$IFACE" =3D=3D "eth0" ]; then
>   # Start the DHCP client
>   dhcpcd -4 -6 -f /etc/dhcpcd.conf "$IFACE"
> fi
>=20
>=20
> I think I'm close, but the dhcpcd never gets called when the Ethernet
> interface starts up.  As best I can tell from my debugging, I think $IFAC=
E is
> never set whenever my if-up script is called.  I'm not sure why that is,
> because I have a pre-up script that depends on $IFACE that has been worki=
ng
> for years for me.

First, I was having issue even directly calling dhcpcd from the command lin=
e with the line I had in my pre-up script.  There have been some updates to=
 the dhcpcd recipe in master that affects the file installation locations. =
 I copied the dhcpcd recipe in master and put it in my custom layer.  I cou=
ld then call dhcpcd directly without issue.

Second, I needed to enable the CONFIG_FEATURE_IFUPDOWN_EXTERNAL_DHCP config=
uration parameter in busybox.  The ifup and ifdown applets from Busybox wer=
e not attempted to call dhcpcd without this set.  Once I got both of these =
fixes in place, I found out that I don't need the if-up script I had create=
d.  Everything is running fine now.

>=20
> Has anyone else made this transition that can offer some more support?  A=
re
> there some examples floating around on how to start dhcpcd on ifup that I
> am missing?
>=20
> Thanks,
> Bryan Evenson

Bryan Evenson

