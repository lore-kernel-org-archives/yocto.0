Return-Path: <adrian.dudau@keyfactor.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5DCBC76188
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 15:42:35 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.104])
 by mx.groups.io with SMTP id smtpd.web10.74552.1680536549561879021
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Apr 2023 08:42:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keyfactorinc.onmicrosoft.com header.s=selector1-keyfactorinc-onmicrosoft-com header.b=Roda6Piz;
 spf=pass (domain: keyfactor.com, ip: 40.107.249.104, mailfrom: adrian.dudau@keyfactor.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIfh/Ld4ilzIkPfd99w6Ge6c/MjoAQjxGg2oLVbgKvrjgi21/rgf5iuymjgmg7OeQ9iqm6y6uJ67S8Xn3a1YWA1+f7+6SEj7FxOcY2Ea8H1HS2CY+tzXklOPFjcQL1XUrRwdSFGmk/f306NJnq0bEYxuZszek57Q5O1zttv14UMFy/qEafMdAxP+mZ4jlgwfgETWOkPV3YZf3AzUHJozu28c9qkuRuhSPlfpMKQNfjgeC5Awwfcrn/EmdUFSSq8nDqbwK5G5xY6w8yeajnYuYzaa9kA1splBxk6QzVXTOxB47cQYa8DdHQhpR1ijmvmHH63GsRCz2qeAHhb0r1NR0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gagvtE80o3fgSsTMNz1kqnvH97hG0ivWrzB8MZntRWI=;
 b=Vqq2y0bP7/j294MCQnMTjYLMaB9kZRN7+pA244wHUp88/RxhzCIPRw8BS9HTYFxkrAXCp3Ceg2WFrgrg2SHNeEq2Ua/Y2WFkCBenEcsjl7viHN8SrnTIfN1QAJUGtRSRJBaqxBp9ce+HlVGGjh90gg7erV0nOPYgN9wJgYxuNQiw2l17aOAhTxwOQfv9l4aBiUHTOJRbpbUqDXqO00bJs/x2ZCIjLvW7AlWX0ctR0p1fPMGublwHTDVwKB0y10Ak1QSLKHxqHf1zUpTvLLdd+/iE3pvp3RZGtytmt1HvUP5Hj9xnKhauf5fbmxBsLQs0eyKJuwNVK/R0T9liG++9iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=keyfactor.com; dmarc=pass action=none
 header.from=keyfactor.com; dkim=pass header.d=keyfactor.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KeyfactorInc.onmicrosoft.com; s=selector1-KeyfactorInc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gagvtE80o3fgSsTMNz1kqnvH97hG0ivWrzB8MZntRWI=;
 b=Roda6PizycvjDXQGEfiMTo53772W/2P17ir68axK7hMdW83UsPxnisZ1syBt8Ax5bXRZ+usmNwcGLD7WPSnZHtaBr/pGuTKqHFcV79Y4eK8eml6daK9ZaRfh4f6GX1gzlRjXgErRflORZc58VdKjLuyCwA3beIk6Ti1LFXYiXpjKAB9OQtWYCC9rPfsFdjpsJMM3wLkGBquf+REZ5c3e8F1zOiz1wl1yM4TP3RjVGrWvNnxAn3mjOgwytkY3IKisuWWAkb+5buhUgwmbedF30iTUvt6R3NEPASqpu/PC6Cnee9Bz+4akA3rYLQv2FISLJ5CsyapIsvSlVDVpVqgKRg==
Received: from DB6PR03MB2901.eurprd03.prod.outlook.com (2603:10a6:6:33::29) by
 AS2PR03MB9877.eurprd03.prod.outlook.com (2603:10a6:20b:546::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.29; Mon, 3 Apr
 2023 15:42:26 +0000
Received: from DB6PR03MB2901.eurprd03.prod.outlook.com
 ([fe80::3da9:b3df:a6fa:5d2b]) by DB6PR03MB2901.eurprd03.prod.outlook.com
 ([fe80::3da9:b3df:a6fa:5d2b%5]) with mapi id 15.20.6254.029; Mon, 3 Apr 2023
 15:42:26 +0000
From: Adrian Dudau <Adrian.Dudau@keyfactor.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] error when try to use sudo command in recipe
Thread-Topic: [yocto] error when try to use sudo command in recipe
Thread-Index: AQHZZf1vdXNlsd89+kC6v+8nJSvsvq8ZrUeAgAADtHs=
Date: Mon, 3 Apr 2023 15:42:26 +0000
Message-ID: 
 <DB6PR03MB2901095F3F450ADC7E19061891929@DB6PR03MB2901.eurprd03.prod.outlook.com>
References: 
 <2304c6f228db24096ac44b1e14132bb70981986b.camel@linuxfoundation.org>
 <6415.1680506699920545280@lists.yoctoproject.org>
 <CAMKF1sp1e0A88eGB3xVcamY16GB2H6dBwHet4tvYtUf2_GpS7A@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp1e0A88eGB3xVcamY16GB2H6dBwHet4tvYtUf2_GpS7A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=keyfactor.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR03MB2901:EE_|AS2PR03MB9877:EE_
x-ms-office365-filtering-correlation-id: b55501e3-23d4-4dbf-f20d-08db345a065f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZIDLJ4KjWZy8oJzeIwwoGWo/KppkZUywRrKh3Q2WiVbIXV6YlOfoqTWj9rFMKLDnIV3BZSSbD3QNng2h/65ws1ALMyBRPyKhgrmeCFZlQDPQFFbwdrEW0VD6xBWATTFTDNvXVzU8ZBn9WooD5D9/S013ce/hxzwePmhXmFrUY1O0yMFh7bWi6Egn6P6QgW7L/rGuUY9QqA1JPkDuXYtdc02YUzsap9+lcglmnZX/kAO3ztf/lBGWe7SDjfX50DFWCTDja3S4d7uzqs10SG7D9zhif4vpIKPMkmBzya8KywhIVJtuPfCbIorycERtH2snSd22CrDMWsWA7n6eSHG1FeHkAwVVjA9c6EYepFXF0iS4jiij5te/ew4Z7Rzm5Ewt0P8EI0uR2v0tryojW7xUXUebt9wWl+CufbjIhBEyAP+ePkBfYAgKjx1l5cWvcqqatiebRvf35uZGvaM/nf3jwbUQ08P+eco4PRNUjib2K6mzUSYSJIU6zZuSZlPaURlFNiKuypfqBoyQki9f+hPHWTTB3N489DfawSlm36laPPiwMN+SzwKxkqv65Ose/5JnqjSvM3+2rE1olz4PSjrubPmKHOKZIwQa7vNsXSnbuNo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR03MB2901.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(376002)(136003)(39850400004)(396003)(451199021)(86362001)(38070700005)(2906002)(166002)(33656002)(66899021)(19627405001)(55016003)(7696005)(71200400001)(966005)(186003)(83380400001)(53546011)(6506007)(9686003)(91956017)(8676002)(478600001)(4326008)(66556008)(66946007)(66446008)(6916009)(66476007)(76116006)(64756008)(41300700001)(122000001)(52536014)(5660300002)(38100700002)(316002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?krUsJSNGC17gVsrBnBOpfmDaYUqW1BvZ3NXj+dtyKA1jdF8JOHQKDEoXKZn5?=
 =?us-ascii?Q?l5nab6TVvnIyn3+c0BhRNc847rkPgayPgZDb2+9wX2qSlZ/stRWz90+kFVsc?=
 =?us-ascii?Q?bSh0KZuFwrePbHdY5cN9/hwJgTtQRQk2R6KTAM23+uoO93420s/xarY09Oxq?=
 =?us-ascii?Q?9j4M2b1TZPlsbTyBpUg6nGzqNhM43NYq0K9fp6u8axZtKwwyqD0qI+/DwZwO?=
 =?us-ascii?Q?CDrBQstqUXAfa8nL5DUgjY7raqD5Wetk5qmFD+LNXuZt1Efbob8j8JNP2uDK?=
 =?us-ascii?Q?a8FA1CxBJmdy1zAsge6tzw9zeBajTLqGBAEeGXkhlMQkSV3l2mWmB0EPQRY5?=
 =?us-ascii?Q?gqVOslW2fU2UyTqxPLv9ceSzgw43rQBL89V25bXytPmUeBT/MDoL8lOZqPdY?=
 =?us-ascii?Q?xAPR0O6uZfxrZWt5K/BgXxxRHoNYXYzF3yZiimAhkwaVxukLGdQTOfdKRT37?=
 =?us-ascii?Q?TrloDFOOzaRhvAbcNZ7WwgqIVGDpHd3NjajE6LxIG36pPnvCZdX3oQvQaeWH?=
 =?us-ascii?Q?Hq0pENkJ7kajCpdHbDw7T6qN/fvsrnic71TPYL/9cvu5Zddb9Y0KgRJGCIP5?=
 =?us-ascii?Q?BRaf343I8wIZrs46Zy3PqRpm4oxDYYRzJ12UkkbjBkuSZGTczN07LM9S8fj3?=
 =?us-ascii?Q?A2FUNAy4Q8kvmo9NSUlyCIzQ7g7cr4abu0vn/3dL8QLeIanozQAUsbSSbYpH?=
 =?us-ascii?Q?/KcNOoz3VD5GHmj8Y1PrEQbhFuaNkalhDrjm3b9odR41tYhrO2lyaD/ZBViM?=
 =?us-ascii?Q?LRY2BUFESfB8S/jcsTi+MMNuyeOa1ZDbEQ3Q3lVaZnkXVmpN4c9m61qgo84M?=
 =?us-ascii?Q?diSM+XU2NoKEn/QEYq9hUZSQ1bClt9yPFvfdSK6HsRgkxYkKSF4K/nq5LaFi?=
 =?us-ascii?Q?ASU5LNtj2jRF0bsvl3ztBFmUspN27vknrPGFc8xbXCoksuDtYskbAygM0ziP?=
 =?us-ascii?Q?CBpzUSMLS96Q+GOn1tJigwzOpP1SjTqF1e2laI8kAo5O0Fs9sBq4L82P4DJE?=
 =?us-ascii?Q?7Y1htopcJvGvg5xfgDmrv66TDgMycLrd2RlW5DtXpzK4w56ycBvme8gAxNdz?=
 =?us-ascii?Q?SjD6NO0hb/6eDp4AI7slWdWorYdeeA44N8Rl5OeEqOUgcXBAT9WrZk9e14KS?=
 =?us-ascii?Q?mRUzI/+aDFUOgGeBVMTEfCLyGzSc30xXS3d6xoQaS6Wgkr3GdedEpcfBDRjO?=
 =?us-ascii?Q?i9sHE30PPB7heEd8fB9LRDR0xyZuyvmRc+jMx6uQpMY7xGBjW5CgiydZbYWp?=
 =?us-ascii?Q?gW9a67NHI9he2b6G5KMvqmRbAUXqpIHm2dfxBQjlfIJ29yXHiq9I+Esyx9LS?=
 =?us-ascii?Q?nmmp/DKEv5lttC9RuVJcL/siuB0tCMV1f1MDtEEX0KJn8uoQgO9Ul1C9KjxE?=
 =?us-ascii?Q?+msru6/UGnWfyWY3ZTEj5slp4fDlPvvvOnBikc4Q/O9co8pmw8/d+3zEJJol?=
 =?us-ascii?Q?ThiQCZHDclA7F1BVtScE8csZtRNXA8t+8kS2xLlPC+CheziIHZKFar27GLWH?=
 =?us-ascii?Q?4J0oD3sCzINj/7S3+NJz4acmnYGkMUrxcHwfe58cghLEpiZfoav16ibMf8vk?=
 =?us-ascii?Q?CtVLA/tF2LIkBQor+SkzMNnQk2qB2qNGxewNWFW/rVr6F/aMnV3Y6SqjV//A?=
 =?us-ascii?Q?4kbxTIeCLoZWKlzZLEDUBFa3Fb1isJ+yb47GSVMwaJNF?=
Content-Type: multipart/alternative;
	boundary="_000_DB6PR03MB2901095F3F450ADC7E19061891929DB6PR03MB2901eurp_"
MIME-Version: 1.0
X-OriginatorOrg: keyfactor.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR03MB2901.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b55501e3-23d4-4dbf-f20d-08db345a065f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 15:42:26.1094
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9ed4b45-9f70-418a-aa58-f04c80848ca9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WHL7aJib8/c0mDJjkEfSSxQxYaby2mCovFMbX4sdlO3VU4a7V6BChxDqLuLncT7Zj5iTKaHoMDHA96aQMVHcpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR03MB9877
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 15:42:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59601

--_000_DB6PR03MB2901095F3F450ADC7E19061891929DB6PR03MB2901eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Thanks for the reply, though I am not sure I fully understand the first par=
t of your answer. I'm trying to do something similar to the thread creator,=
 i.e running "podman pull" at build time to populate an image store that I =
can later install into the target rootfs.

Still, I am failing to understand why /usr/bin/sudo doesn't show up as owne=
d by the root user, even when running under pseudo. Also, why has this chan=
ged between Dunfell and master and where exactly has the changed happened..

Best regards,
--Adrian
________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, April 3, 2023 4:57 PM
To: Adrian Dudau <adrian.dudau@keyfactor.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] error when try to use sudo command in recipe

You don't often get email from raj.khem@gmail.com. Learn why this is import=
ant<https://aka.ms/LearnAboutSenderIdentification>
CAUTION: External Sender - Be cautious when clicking links or opening attac=
hments. Please email InfoSec@keyfactor.com with any questions.



On Mon, Apr 3, 2023 at 12:25 AM <adrian.dudau@keyfactor.com<mailto:adrian.d=
udau@keyfactor.com>> wrote:
On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:
Hi Richard,

Jumping on this thread to provide some clarifications as I hit the same bug=
.
I can confirm that this is not an environment issue. I could reproduce it b=
y adding a sudo call in an empty recipe like this:

SUMMARY =3D ""
HOMEPAGE =3D ""
LICENSE =3D ""
SECTION =3D ""
DEPENDS =3D ""

SRC_URI =3D ""

do_install() {
    ls -l /usr/bin/sudo
    sudo ls -l /usr/bin/sudo
}

Build already use a fake root environment using pseudo to intercept the cal=
ls so this might not be out of line here. What is the original issue you ar=
e running into ?



Running bitbake barebone on my x86 machine produces this error:

| -rwxr-xr-x 1 nobody 65534 232416 Mar  1 13:59 /usr/bin/sudo
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0
| sudo: error in /etc/sudo.conf, line 0 while loading plugin "sudoers_polic=
y"
| sudo: /usr/libexec/sudo/sudoers.so must be owned by uid 0
| sudo: fatal error, unable to load plugins

Indeed it seems that ownership is broken somehow in the bb environment. The=
 issue was introduced somewhere between dunfell and kirkstone. I know it's =
a large timespan but it's a bit time consuming to narrow it down.

Hoping to get some help on this. I would try to investigate further myself =
but I have no idea where to start to be honest.

Best regards,
--Adrian

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
You automatically follow any topics you start or reply to.
View/Reply Online (#59594): https://lists.yoctoproject.org/g/yocto/message/=
59594<https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F59594&data=3D05%7C01%7Cadrian=
.dudau%40keyfactor.com%7C285da1e1af0a403ddc9d08db3453cb12%7Cc9ed4b459f70418=
aaa58f04c80848ca9%7C0%7C0%7C638161306759776144%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C=
%7C&sdata=3DwCdVmKhuBSTGtomYax5nGJ%2FU%2BgDP77qJhiUeo%2FPvmfI%3D&reserved=
=3D0>
Mute This Topic: https://lists.yoctoproject.org/mt/96733939/1997914<https:/=
/nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctopro=
ject.org%2Fmt%2F96733939%2F1997914&data=3D05%7C01%7Cadrian.dudau%40keyfacto=
r.com%7C285da1e1af0a403ddc9d08db3453cb12%7Cc9ed4b459f70418aaa58f04c80848ca9=
%7C0%7C0%7C638161306759776144%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiL=
CJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DEoBSO=
u9VHGL1%2BhwdtR6rildYMUnrcihKq3Oi1ifktng%3D&reserved=3D0>
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub<https://nam11.saf=
elinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2=
Fg%2Fyocto%2Funsub&data=3D05%7C01%7Cadrian.dudau%40keyfactor.com%7C285da1e1=
af0a403ddc9d08db3453cb12%7Cc9ed4b459f70418aaa58f04c80848ca9%7C0%7C0%7C63816=
1306759932359%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DoPMLP5%2BH1TpoImAATcc=
CbMI%2B5vfKZQi2l4ls3CqQ8Yo%3D&reserved=3D0> [raj.khem@gmail.com<mailto:raj.=
khem@gmail.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--_000_DB6PR03MB2901095F3F450ADC7E19061891929DB6PR03MB2901eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi Khem,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thanks for the reply, though I am not sure I fully understand the first par=
t of your answer. I'm trying&nbsp;to do something similar to the thread cre=
ator, i.e running &quot;podman pull&quot; at build time to populate an imag=
e store that I can later install into the target
 rootfs. <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Still, I am failing to understand why /usr/bin/sudo doesn't show up as owne=
d by the root user, even when running under pseudo. Also, why has this chan=
ged between Dunfell and master and where exactly has the changed happened..=
</div>
<div class=3D"elementToProof"><br>
</div>
<div class=3D"elementToProof">Best regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
--Adrian<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Monday, April 3, 2023 4:57 PM<br>
<b>To:</b> Adrian Dudau &lt;adrian.dudau@keyfactor.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] error when try to use sudo command in recipe</f=
ont>
<div>&nbsp;</div>
</div>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"border:0; display:table; width:100%; table-layout:fixed=
; border-collapse:seperate; float:none">
<tbody style=3D"display:block">
<tr>
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"padding:7px 2px 7px 2px; background-color:#A6A6A6">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"width:100%; background-color:#EAE=
AEA; padding:7px 5px 7px 15px; font-family:wf_segoe-ui_normal,Segoe UI,Sego=
e WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:normal; color:#21=
2121; text-align:left; word-wrap:break-word">
<div>You don't often get email from raj.khem@gmail.com. <a href=3D"https://=
aka.ms/LearnAboutSenderIdentification">
Learn why this is important</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"width:75px; backgro=
und-color:#EAEAEA; padding:7px 5px 7px 5px; font-family:wf_segoe-ui_normal,=
Segoe UI,Segoe WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:norm=
al; color:#212121; text-align:left; word-wrap:break-word">
</td>
</tr>
</tbody>
</table>
<div>
<div style=3D"background-color:#FFEB9C; width:100%; border-style:solid; bor=
der-color:#9C6500; border-width:1pt; padding:2pt; font-size:10pt; line-heig=
ht:12pt; font-family:'Calibri'; color:Black; text-align:left">
<span style=3D"color:#9C6500; font-weight:bold">CAUTION:</span> External Se=
nder - Be cautious when clicking links or opening attachments. Please email=
 InfoSec@keyfactor.com with any questions.</div>
<br>
<div>
<div><br>
</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Apr 3, 2023 at 12:25 AM &lt=
;<a href=3D"mailto:adrian.dudau@keyfactor.com">adrian.dudau@keyfactor.com</=
a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:<br>
Hi Richard,<br>
<br>
Jumping on this thread to provide some clarifications as I hit the same bug=
.<br>
I can confirm that this is not an environment issue. I could reproduce it b=
y adding a sudo call in an empty recipe like this:<br>
<br>
SUMMARY =3D &quot;&quot;<br>
HOMEPAGE =3D &quot;&quot;<br>
LICENSE =3D &quot;&quot;<br>
SECTION =3D &quot;&quot;<br>
DEPENDS =3D &quot;&quot;<br>
<br>
SRC_URI =3D &quot;&quot;<br>
<br>
do_install() {<br>
&nbsp;&nbsp;&nbsp; ls -l /usr/bin/sudo<br>
&nbsp;&nbsp;&nbsp; sudo ls -l /usr/bin/sudo<br>
}<br>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Build already use a fake root environment using pseudo to=
 intercept the calls so this might not be out of line here. What is the ori=
ginal issue you are running into ?</div>
<div dir=3D"auto"><br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<br>
<br>
Running bitbake barebone on my x86 machine produces this error:<br>
<br>
| -rwxr-xr-x 1 nobody 65534 232416 Mar&nbsp; 1 13:59 /usr/bin/sudo<br>
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0<br>
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0<br>
| sudo: error in /etc/sudo.conf, line 0 while loading plugin &quot;sudoers_=
policy&quot;<br>
| sudo: /usr/libexec/sudo/sudoers.so must be owned by uid 0<br>
| sudo: fatal error, unable to load plugins<br>
<br>
Indeed it seems that ownership is broken somehow in the bb environment. The=
 issue was introduced somewhere between dunfell and kirkstone. I know it's =
a large timespan but it's a bit time consuming to narrow it down.<br>
<br>
Hoping to get some help on this. I would try to investigate further myself =
but I have no idea where to start to be honest.<br>
<br>
Best regards,<br>
--Adrian<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#59594): <a href=3D"https://nam11.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F59594&amp;data=3D05%7C01%7Cadrian.dudau%40keyfactor.com%7C285da1e1af0a4=
03ddc9d08db3453cb12%7Cc9ed4b459f70418aaa58f04c80848ca9%7C0%7C0%7C6381613067=
59776144%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTi=
I6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DwCdVmKhuBSTGtomYax5nGJ=
%2FU%2BgDP77qJhiUeo%2FPvmfI%3D&amp;reserved=3D0" originalsrc=3D"https://lis=
ts.yoctoproject.org/g/yocto/message/59594" shash=3D"vLhf34sxgpfOOmvz26BXUrj=
gq+/x7j8+tICrJlGaGqZeyeaj2sgsyclsawZIPrY8t7y2Dlbl8uGQzrIaL2UubeRxBsYvDYq455=
ZMdKiDHvdddvjrqOfjcVkrLAr6UjFsvtENjrcQlUAB4e9vPMbefGjyOfNRNt+SJlFK+LotZ1g=
=3D" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/59594</a><br>
Mute This Topic: <a href=3D"https://nam11.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F96733939%2F1997914&amp;d=
ata=3D05%7C01%7Cadrian.dudau%40keyfactor.com%7C285da1e1af0a403ddc9d08db3453=
cb12%7Cc9ed4b459f70418aaa58f04c80848ca9%7C0%7C0%7C638161306759776144%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DEoBSOu9VHGL1%2BhwdtR6rildYMUnrcihKq3O=
i1ifktng%3D&amp;reserved=3D0" originalsrc=3D"https://lists.yoctoproject.org=
/mt/96733939/1997914" shash=3D"iLkthK5gg7kBf5tHKlfhgVAMmyA+mqQKNIccDzmp6vJG=
IzJ6wbHV0o09+8NQy6Yy+mO3NcC3CUvPTBh/5f/lGjgMpiNx/n21QQy1R2JUD1vwox6uab1ayOw=
do3b3zI7n8paj+ze2HwGzUU2SLa3d9g24mHeZkV/xujw7Fc4NQ9Q=3D" rel=3D"noreferrer"=
 target=3D"_blank">
https://lists.yoctoproject.org/mt/96733939/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D05%7=
C01%7Cadrian.dudau%40keyfactor.com%7C285da1e1af0a403ddc9d08db3453cb12%7Cc9e=
d4b459f70418aaa58f04c80848ca9%7C0%7C0%7C638161306759932359%7CUnknown%7CTWFp=
bGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%=
7C3000%7C%7C%7C&amp;sdata=3DoPMLP5%2BH1TpoImAATccCbMI%2B5vfKZQi2l4ls3CqQ8Yo=
%3D&amp;reserved=3D0" originalsrc=3D"https://lists.yoctoproject.org/g/yocto=
/unsub" shash=3D"Av9qgAxiJkZVaMIn6PbiOkYZ4aUwuuRmvPFxACj7uanNou+aJbpQ53uXT/=
ZxeBliW2ntCdUmOidgu02X0dWQhWwTrjbSTJw22TPD8afF9BJ0hHnf77x+qVIuVKsRuczz1GmWI=
CtvS6szUVrdbVQoIDEgOW92xaSpZv3zWNohJxo=3D" rel=3D"noreferrer" target=3D"_bl=
ank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB6PR03MB2901095F3F450ADC7E19061891929DB6PR03MB2901eurp_--

