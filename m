Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.92.67.46])
 by mx.groups.io with SMTP id smtpd.web09.42150.1606164153809811890
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 12:42:34 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=ADs9i4RK;
 spf=pass (domain: outlook.com, ip: 40.92.67.46, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PbeSRwiMWIuUv5KFoa+NqyWa2dHbuBnsJiEzcRCAY22wuzf+bFfHot88StPqh2MyuSVmI5jfaGQJs9XQyC7y3Hpe/PVniqs2U8BHxSD8v/DnotkJGLdi4aNocYDMaXPR29VJMdTikVRQgD4vAYq0mNSKe0Wi4u2xBi9iCX3kQejicgdLlc+k0qkOgFBAUuReY4+aN/+WZnPuFZoa/L7v5vv+HKaMQGHmcvIDWX8cQ9S299grRzk+Thy//qgtaSTjt2HoyNmvf7P8Y5kkLoWWlym8MCsC/HlyJHQInQXFQlAF2UWGKlK0HlL6S+tRnTe8Bbh88C2CuhXjzz1PqH58pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLnwruy5qUkDD1ih9abofKEt9HStr7zyv9CtcMRz6GI=;
 b=gbqggytEPRrMTEhaa8y0g+Y9Ib4M5xzhobusV7AasR27OStgxM1LHuf44N2vd0Az0GuT7UDqsKXxu47mA7upyhve878v8TK2XLsG6kBxonOLMyNkIF5eYOVDr27ko4ckK9nO/ePUw6S14JS2wxzlsuEsJ5bsx1q6WdVLGgabyaZKP+uetW4aDoBg9tOTVvylNxwBABxLift0F9mQiWIo8QS2YrgrPcl4Yg6KX62MFNKfaEShVxl0WgLpH76/eCnlIda1FaYuljKbm52scTsizyL/qHO+/hpPmY3GFpRjFOg/4gW6dHIDVTSEr1XgMnAljQ6Cgpu+NCYUa96lM74x2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLnwruy5qUkDD1ih9abofKEt9HStr7zyv9CtcMRz6GI=;
 b=ADs9i4RKzzUwCOc9WM2BQc5eiw+sP8PHQTiTV59LUPFEumkw8hlDbbepB4aJkAaZ2Z4OVU+5FVLv3BwUg0alxTF/a0D017NR2c/pc3eMCfHRtKH3Je81Mg/raEOaPRPTTKlxr8mEKJNCNvwmcmXTpowBbAZH43hoA0DntCMjE+nq1RCqtI8Dm2WqCKviSHIZ0uEzYp3UWJNXOpN+65n3rfFE7aYsQd6VLDQdyZ1WglyuOSBuicZrpV9cSDSj3UkyfJnYahpXmekHIDQJtp+mTmQ2+diwC7R6rd1PBaWHDySRVkvmuF/vrcwfkab3Uaw8ux791w/lkLUkel68EaQYLw==
Received: from VE1EUR02FT008.eop-EUR02.prod.protection.outlook.com
 (2a01:111:e400:7e1e::4d) by
 VE1EUR02HT091.eop-EUR02.prod.protection.outlook.com (2a01:111:e400:7e1e::357)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Mon, 23 Nov
 2020 20:42:31 +0000
Received: from VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 (2a01:111:e400:7e1e::4f) by VE1EUR02FT008.mail.protection.outlook.com
 (2a01:111:e400:7e1e::72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend
 Transport; Mon, 23 Nov 2020 20:42:31 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E274FF85E8557312E59D83B588938DC6DF47831102DD3EBD8B576867AF019F6E;UpperCasedChecksum:78DDF3ED3AC6A35A7B634CC18ADE7CD30154AB1EFD72F5524AD30DBBC0CFD1C2;SizeAsReceived:8779;Count:47
Received: from VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 ([fe80::10f9:f756:6d75:96c3]) by VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 ([fe80::10f9:f756:6d75:96c3%6]) with mapi id 15.20.3589.029; Mon, 23 Nov 2020
 20:42:31 +0000
Subject: Re: [yocto] Disable systemd-timesyncd.service in image
To: yocto@lists.yoctoproject.org, lefevre.da@gmail.com
References: <CA+FhBv_OObLJ9BhtJSw0_nzSUimc0AcSybQ7_FEm+SEzASJSRg@mail.gmail.com>
 <CAFSZm+j2kN9x4G+oR08fUWwfX7a6UWidPZpbnstp9V0_=acRKw@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <VI1PR01MB64624A8D9CCCF01C7AC8F7B6A8FC0@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
Date: Mon, 23 Nov 2020 21:42:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAFSZm+j2kN9x4G+oR08fUWwfX7a6UWidPZpbnstp9V0_=acRKw@mail.gmail.com>
X-TMN: [WeIn1AiZICsj819NtRJbdevoAp94+sPI]
X-ClientProxiedBy: AM6P194CA0014.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:90::27) To VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:154::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <1a8ff6a9-92d0-12e5-ff43-b543b948a0cc@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.92.247) by AM6P194CA0014.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:90::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Mon, 23 Nov 2020 20:42:30 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 6d1d281f-b223-4db3-8bec-08d88ff04c7c
X-MS-TrafficTypeDiagnostic: VE1EUR02HT091:
X-MS-Exchange-MinimumUrlDomainAge: yoctoproject.org#3728
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NAYcEWlm69OpbulEus4e9cm2QmBMPVW5NWHG2s/OIr09/VDvA7H55iqUlYUu/0JHP8e8QRKq/5+h3WRwTTCRYlz/nKcAmtCBk37zMILCqBihjWofLerJAOff0AaQvgUFVPUa22JVO6uNNCws4NZ73mkGmJQA5Yu7efwnwWPYRyYsw18fTiv3WN+N++ArTPyuD/D1OmbNJ2jg67vb2CEuMwk2ilJ6M5pQgKLIiG/Y4OUnxg2nF6VLe6DEpj7bOiMU
X-MS-Exchange-AntiSpam-MessageData: 
	4UNXYVJU8wUitvONMe9bT6IFXDmt9V74qdUqz1lVepOvqEIdJ/fYvz+XmNNCCER0vV8pqABEE3/5PoBCu5tCtJkMH5W/wGWXT+ZDnjI7VAYwFd3Bv9t+w0pNInwsbap8/PUoeQ4StP1qmnK0m+PhJA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1d281f-b223-4db3-8bec-08d88ff04c7c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2020 20:42:31.4314
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR02FT008.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT091
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

The service is deployed with standard systemd package, which doesn't=20
have that set as far as I see it (no SYSTEMD_AUTO_ENABLE_${PN} in the=20
latest recipe revision)

I think, after browsing through the code of systemd - this "autostart"=20
behavior comes from [1].
So I would say you can disable it with a drop-in file at
/etc/systemd/system/systemd-timesyncd.service.d/disable.conf
[Install]
WantedBy=3D

which also would be charming in a way that it isn't that invasive in the=
=20
build system

[1]=20
https://github.com/systemd/systemd/blob/5b639090d0b4a49d77ba58bebe180b2a6f=
8da322/units/systemd-timesyncd.service.in#L55

haven't tested it though, but you might wanna give that a shot, if=20
Aaron's approach doesn't work.

On 23.11.20 21:21, Joel A Cohen wrote:
> I think you need to set SYSTEMD_AUTO_ENABLE =3D =E2=80=9Cdisable=E2=80=
=9D (actually any=20
> value other than =E2=80=9Cenable=E2=80=9D) in your bbappend.
>=20
> (It looks like SYSTEMD_AUTO_ENABLE_${PN} is intended to work too, but I=
=20
> can=E2=80=99t verify it at the moment and reading over systemd.bbclass I=
=
=E2=80=99m not=20
> sure if it works or not)
>=20
> =E2=80=94Aaron
>=20
> On Mon, Nov 23, 2020 at 11:51 AM Damien LEFEVRE <lefevre.da@gmail.com=20
> <mailto:lefevre.da@gmail.com>> wrote:
>=20
>     Hi,
>=20
>     I would like to have=C2=A0systemd-timesyncd.service as part of an im=
age
>     but have it disabled by default.
>=20
>     Right now it is enabled by default which causes=C2=A0some issues.
>=20
>     I've tried systemd_%.bbappend
>=20
>     do_install_append() {
>      =C2=A0 =C2=A0 rm "$D/etc/systemd/system/dbus-org.freedesktop.timesy=
nc1.service"
>      =C2=A0 =C2=A0 rm
>     "$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.servic=
e"
>     }
>=20
>     but those symlinks are not part of the package.
>=20
>     I've tried this to remove the link during the package deployment
>     during do_rootfs
>     pkg_postinst_${PN}_append() {
>      =C2=A0 =C2=A0 #!/bin/sh -e
>      =C2=A0=C2=A0 =C2=A0rm "$D/etc/systemd/system/dbus-org.freedesktop.t=
imesync1.service"
>      =C2=A0 =C2=A0 rm
>     "$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.servic=
e"
>     }
>=20
>     But at this stage the links still don't exist.
>=20
>     Which package is actually responsible for enabling the default
>     services / creating the symlinks? How can we turn some of them off
>     while keeping them in the image?
>=20
>     Thanks,
>     -Damien
>=20
>=20
>=20
>=20
>=20
>=20
>=20
