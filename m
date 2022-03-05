Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19116C433EF
	for <webhook@archiver.kernel.org>; Sat,  5 Mar 2022 02:23:43 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.63])
 by mx.groups.io with SMTP id smtpd.web09.2098.1646447022194587807
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 18:23:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@missionsecure.com header.s=selector2 header.b=CdVb3J0z;
 spf=pass (domain: missionsecure.com, ip: 40.107.92.63,
 mailfrom: gary@missionsecure.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzUantijuG3geWIPm2gtzvXzBi1O/NB3tpKwp3bq6sz3lV53YE/vVsUu4IKLOxoh70SCDqgpm87iu2VYuzwlsaesI+M45vw0Lrzyt1jIhaPVIp5wL4lZNWPHeaEhL+IaN8Z+KrBHTImBxWKZ/rcN5vUkBUKHhoDHqSG+v9XDHr2DvWwjPlxZHCFN8OfIBN1tTylLBrF0KUFvpufx64C6IbCsR1f66uHp0EVWvyJLTeopJY6x0A++aHxB8zcsPymCnJPdl0KiKq/+MkPE1FMevl/cH206huWEbZ4Ma53BsK7aXUcAGVbGOV5Y1Ha9t4N2jW6fNEIG9t0FyXLTuOswcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qfeQ8d0ywgk1IEBa7RXXSJ7usscbc3cGqJNE75fxVuA=;
 b=IL+L0JHbCW0LjBf7Jj1dyqgmu86hU/EUJZtJG42j5T0sZyKRVOjFXRk84Fi2f8j8eZ9k2yxDpiSbNaUimL9fJOL7I7ux/x+j5Q+g9+5EEncZWfG8cKMqof8/LSqYsKdiHlqswExOAetaGyhtLyOyhU8Hf2KVOrNnN64HIMD762lN4Sf0lViL929Ff5g5gxCld/DSBLOgCNUdXw1OzT1h9PgSqB8h114VwuPmzBcrAhfwHOmShRESPHPSUNTUwC4XpcLLzXFdWk7bkOTIGivGpaYObJHVRvWULCsOQQuYbd95ULppWj+1Vks4VgJYVNFFgFdYaHd9ro+trVNWyapnUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=missionsecure.com; dmarc=pass action=none
 header.from=missionsecure.com; dkim=pass header.d=missionsecure.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=MissionSecure.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qfeQ8d0ywgk1IEBa7RXXSJ7usscbc3cGqJNE75fxVuA=;
 b=CdVb3J0z4cmLWlPk9E6oE654sc2vzzqBc91Gz4zaA68jLB4Gjqa7fPcZ35C6HeIbGcBMwWXBNyXtVEEyR47j1mhX3Qj/Fe2zzLfPLNC585i7ikXPm56Jgd0T/C7REEiPaJIqIRjUPZ9Sh932qzeOorpbEdNTU27NFAu3TwFm6qA=
Received: from MN2PR17MB3903.namprd17.prod.outlook.com (2603:10b6:208:20f::14)
 by MW4PR17MB5642.namprd17.prod.outlook.com (2603:10b6:303:12d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Sat, 5 Mar
 2022 02:23:37 +0000
Received: from MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::91e0:e242:9425:f0ab]) by MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::91e0:e242:9425:f0ab%5]) with mapi id 15.20.5038.017; Sat, 5 Mar 2022
 02:23:37 +0000
From: Gary Huband <Gary@MissionSecure.com>
To: akuster808 <akuster808@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] suricata: enable lua support
Thread-Topic: [yocto] suricata: enable lua support
Thread-Index: AQHYL/yW408Hdrs0QUShaIM8sTH4AayvqVWAgAAujwCAAB6gAIAAGMAq
Date: Sat, 5 Mar 2022 02:23:37 +0000
Message-ID: 
 <MN2PR17MB39031594692FB5064E0F4225C3069@MN2PR17MB3903.namprd17.prod.outlook.com>
References: 
 <CAMKF1sqMQVeTO_FyyrUWRmV+JjLFH5mxNTvL+JxDgoBrck6V4w@mail.gmail.com>
 <13396.1646434954779482206@lists.yoctoproject.org>
 <d32cf394-4580-4549-0b8c-dd05a61fb1a4@gmail.com>
In-Reply-To: <d32cf394-4580-4549-0b8c-dd05a61fb1a4@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 6c760bf6-1049-62b6-8f44-8425b65da040
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=MissionSecure.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b94aad4a-074b-4bf4-0e52-08d9fe4f27ea
x-ms-traffictypediagnostic: MW4PR17MB5642:EE_
x-microsoft-antispam-prvs: 
 <MW4PR17MB564293E3770F281C2A56999AC3069@MW4PR17MB5642.namprd17.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 PLcDUf1oCW8RilYrJZnRieesFwKwq6vb0j3rHY0srFRddHS5TGp2ynHfmVPSmS2mKX/MnPRoHMr8cytRZIQUWJiZnqZ2pg9+HnCpcGatwLfnVC6e7IR6ciDhHLqY4nRKo6BNCgrYA1SBKTK5pfidu40ClhClVVq9DxbeJQi2O1mbXKfcDeheT3wJj3aqlT5qnA6GGi6A+fYtbDcYj74hbt3XvaV2+G+Xh9v4XWqnbFvKOS8aORppEUps3SmMAEyzrb/a2J7Kh0sL7ZYXBo6HhTvNhYHMWszGmyzpafptFqlTK+yVy1ooGd8jWrAeRXQiMgWOih1IFpQKI+fC/32pvJMPgmy1oUSSZ9NBH/Cn5N9mlaBFemIvjEVpjrOh4lf9Yo5iiNXaBGyo/RRU2+9CtZ3lPdElW7rmpVLxDH0ghYDQWdH7z8tiwrFY1C2yt3CNPsEfb9yAyOzodJJZ6ieEpsMkktMcUwi8pU+Do3tL7QBe0StQuLofxKMNuuKUhyOE4LPKWopdwx8vOjCfxZvUPm/sIV4KL8O67TPN3O/QAYHdzi8R+tCCYMWnwyVuwt+r2gIVcYo8/v6t9hPtnBB9Ap4UWeNTCVg6QuI93rQ4Tr0ixteXQnSPEARHgiCQaXEOcFqQoHtmmK1QBuiBmOJ+22H2GVqzaqFm16PmtRw51zM54BGmAma2Pkt6V4Yk8UaY3ybbkB/rnyMP7Fswx8cv9LJEf/nB07yOtyV41qdhWbpMfFiv2Gz+/VnjvzPieuk6umwswMoQcRI6rFdDohzBe6kWfgWyR+qQ82nHGBb4oWU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3903.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(376002)(366004)(346002)(39830400003)(396003)(83380400001)(38100700002)(40140700001)(122000001)(9686003)(52536014)(966005)(66556008)(64756008)(8936002)(66476007)(8676002)(66446008)(66946007)(316002)(508600001)(71200400001)(45080400002)(19627405001)(5660300002)(2906002)(33656002)(76116006)(186003)(110136005)(53546011)(7696005)(6506007)(26005)(38070700005)(55016003)(86362001)(166002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Js8zm/PPL2EpKX/KeKJDZCaTPd1N7kXWW9ifetDj0cY3L0ENpPZR1OpfmWI3?=
 =?us-ascii?Q?rg94aXfpO2w2c13OKZNIYOtJR2gIXJPpMqgDvJaj8oFFMrfEoDe3ivvhcUHf?=
 =?us-ascii?Q?u7el62BXngMy8Q8KmrTbKOMw/O37OEJnTnAOYlWem0mXt9IS+ISmqwTBRPUp?=
 =?us-ascii?Q?+5UavXCVX84JAZV3etVsDnk3mbgN2fuTXZf43yJGIEiqa4VHq6PaqEJ5lV0C?=
 =?us-ascii?Q?+dc8BT4kN6oBVebHaiWAR7Q+rppnz0mGMovCtN8lB5BkCL6a+rXPqpAOZ/PM?=
 =?us-ascii?Q?1yRxNYgOj/jhnRoN8XGLjRCBEemzllHrai0vexTw6Ya46kjwA8VMCOEWh97t?=
 =?us-ascii?Q?ZYNyUbi+drojdJ2/imXZKswglf/zEiyKktntyw69mFWKMUFiQCUFiegiQojV?=
 =?us-ascii?Q?ugChkXPeqv166YATTL+aztScnXU7eEC/OwNZhlc+Wlh6ai6RCGNxxZcYj+P4?=
 =?us-ascii?Q?wJxNn3MQIQs25GQgUgU0xm+WVvbU31/PI5f6BSbVHnK6eiguR6X6JNUjG0pG?=
 =?us-ascii?Q?ISCXtYhbfoYrBbIsJalN2nT6Lsc+X9h1SHaLs0IR9I+mtc0cmPIVcWfNi7PA?=
 =?us-ascii?Q?9awKF++H2ndJRIrQ6OPp75Z2yU9XOa4zO0omW8B94Jf8pCTtD6ZxkiHwJY0y?=
 =?us-ascii?Q?27mx+mEWYZLBgLohEsgFDUkDstKJWHSgcXzVVed1y+vnweSvUAaye7B8eDWY?=
 =?us-ascii?Q?hae5GRzb8M/P0uguXMi3juWFoFlcpAYaYMxQ09mzQTjIIEzVuJAe+GxiZI02?=
 =?us-ascii?Q?OPEO8wKjJ6gMqBmCaTvbRwASlLxiD/UJRJ8rPfWd3oi9O9Spvod7s2YDVAbY?=
 =?us-ascii?Q?osPZLyrS6U8eLSYSfz0e718pxqaC01nXIFU8wuI+5hIQIMsT6pbB1E5REkSS?=
 =?us-ascii?Q?4cllJCJDMm+8oXLbLDiIb9WdC8kS7yWtMWG1B7ZSTHrgqNHQ3XSlTfw9L4wR?=
 =?us-ascii?Q?WgS4i7KYAo5Zb6Hs2n6Ai7kp3CTLqtCcpqvSDXin6nOGY7C7ptWGn2w5br6D?=
 =?us-ascii?Q?0mAonCtryyPm6B5zFW/zSvHs49pT/z91+t//U6B3MeGd+iV2+ytQhrFu5JRQ?=
 =?us-ascii?Q?PtEuqfs80wdtHMLhRl+T4k/0GJfm9+Lh8T+D/oCw2Vg4ksclFnPLvnhsoHsL?=
 =?us-ascii?Q?uPD8zcE1rQjDg3wRn1R59T6xu4WkdagkpBK/1DcfAe+OLOyfmnsjnvmLx+7Z?=
 =?us-ascii?Q?1yZDXBUrWu1QK8uL6cwqH3I3ldt2CBIR6Rnb/E9j8aLUyZIoLNhg+kohUwOs?=
 =?us-ascii?Q?QqKWYYpFo5+D8CtdWE3qEF1F9N6YMGHjeXu+BV0uju9Uo+bKPR6tGmN/sYsB?=
 =?us-ascii?Q?mprCYGSUOoZXatJ5mecqWj6SBYZbyxDqczzrYWdHH9+LmIRwcrvdmkxPILt6?=
 =?us-ascii?Q?FY9IjY4RNS6DpEB/yicYxQHT+2oL2u2YIJCf4DVVAyCXuwilfjmCWs0ASN+t?=
 =?us-ascii?Q?4TuK5rc5R6dNQNgB5X83/te3YXk0vecKhDKINP5gKbEGIP1bVPawJw5QMNUb?=
 =?us-ascii?Q?clrVIxZQ75d09AxPLc3RrqwnuFakd+VQlIYBanjkomTToZMfWW5ppBPKJeUM?=
 =?us-ascii?Q?037KlEMEQicD5Yze0B1XtJlrousZX7kiuYaUWwFlB/QSBkMVz7/FBbAFlN4S?=
 =?us-ascii?Q?hw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR17MB39031594692FB5064E0F4225C3069MN2PR17MB3903namp_"
MIME-Version: 1.0
X-OriginatorOrg: MissionSecure.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3903.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b94aad4a-074b-4bf4-0e52-08d9fe4f27ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2022 02:23:37.3126
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f0ca9611-f13f-4dc9-8e1b-119172b8ec5d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 D1fSmI94yDEnXDKMiaeOypc6hI0zdoUJKR3AmysqBvDQRaQh0r9Hjn2GMuJEQ7Kf5nR6t1s3NHC2oJdy9ScJeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR17MB5642
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Mar 2022 02:23:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56375

--_000_MN2PR17MB39031594692FB5064E0F4225C3069MN2PR17MB3903namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The Suricata install site also says to install

liblua5.1-dev

Does this mean that Suricata needs lua 5.1 (which is very old)?? For Zeus t=
he lua recipe is 5.3.5.

Do I need to create a recipe for lua 5.1?

Gary
________________________________
From: akuster808 <akuster808@gmail.com>
Sent: Friday, March 4, 2022 7:52 PM
To: Gary Huband <Gary@MissionSecure.com>; yocto@lists.yoctoproject.org <yoc=
to@lists.yoctoproject.org>
Subject: Re: [yocto] suricata: enable lua support



On 3/4/22 15:02, Gary Huband via lists.yoctoproject.org wrote:
>
> Adding DEPENDS +=3D "lua"  fixed that error.  I'm assuming that allows
> the configure to find lua.
>
> Now I'm getting a compile error
>

I added this to the recipe and it appears the liblua it  is looking for
does not exist.

PACKAGECONFIG[lua] =3D "--enable-lua
--with-liblua-includes=3D${STAGING_INCDIR}
--with-liblua-libraries=3D=3D${STAGING_LIBDIR}, --disable-lua,lua, lua"

Error:

checking for luaL_openlibs in -llua5.1... no
|
|    ERROR!  liblua library not found, go get it
|    from https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%=
2Flua.org%2Findex.html&amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f98=
15dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C6=
37820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luM=
zIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhK=
NSt41GUOgdg%2FG3ajSKIElo0%3D&amp;reserved=3D0 or your distribution:
|
|    Ubuntu: apt-get install liblua5.1-dev


It may be  the lua recipe.  I only see the static lib 'liblua.a'

-armin

> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetTxid':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80:
> undefined reference to `rs_dns_lua_get_tx_id'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetAnswerTable':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125:
> undefined reference to `rs_dns_lua_get_answer_table'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetAuthorityTable':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133:
> undefined reference to `rs_dns_lua_get_authority_table'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetQueryTable':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117:
> undefined reference to `rs_dns_lua_get_query_table'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetDnsRrname':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69:
> undefined reference to `rs_dns_lua_get_rrname'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetRcode':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92:
> undefined reference to `rs_dns_lua_get_rcode'
> | collect2: error: ld returned 1 exit status
> | Makefile:2118: recipe for target 'suricata' failed
> | make[2]: *** [suricata] Error 1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56371): https://nam04.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F56371=
&amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe=
4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C3000&amp;sdata=3Dvwc4qa0p9%2Bbxsfq9RFUYToQuWBvsmNvn0%2FX3%2BO=
gjQPo%3D&amp;reserved=3D0
> Mute This Topic: https://nam04.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F89556445%2F3616698&amp;data=3D04%=
7C01%7Cgary%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca96=
11f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3=
000&amp;sdata=3DrJV2GkSwgJ8OcGoS6W%2FjZ9wt3OBHAyFpasJ%2F0Elpt6k%3D&amp;rese=
rved=3D0
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D04%7C01%7Cgar=
y%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc9=
8e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sd=
ata=3D44krUye0EK6%2FjOMm3P%2BEgS%2BlbWEBa4AF%2BSMjXkSzYmk%3D&amp;reserved=
=3D0 [akuster808@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://www.linkedin.com/company/mission-secure-inc->  |  Blog<htt=
ps://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medium=3De=
mail&utm_campaign=3Dblog-email-sig>  |  Website<https://www.missionsecure.c=
om/?utm_source=3Demail-signature&utm_medium=3Demail&utm_campaign=3Dweb-emai=
l-sig>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


--_000_MN2PR17MB39031594692FB5064E0F4225C3069MN2PR17MB3903namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
The Suricata install site also says to install </div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<pre><span class=3D"n">liblua5</span><span class=3D"o">.</span><span class=
=3D"mi">1</span><span class=3D"o">-</span><span class=3D"n">dev</span></pre=
>
Does this mean that Suricata needs lua 5.1 (which is very old)?? For Zeus t=
he lua recipe is 5.3.5.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Do I need to create a recipe for lua 5.1?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Gary<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> akuster808 &lt;akuste=
r808@gmail.com&gt;<br>
<b>Sent:</b> Friday, March 4, 2022 7:52 PM<br>
<b>To:</b> Gary Huband &lt;Gary@MissionSecure.com&gt;; yocto@lists.yoctopro=
ject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] suricata: enable lua support</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText"><br>
<br>
On 3/4/22 15:02, Gary Huband via lists.yoctoproject.org wrote:<br>
&gt;<br>
&gt; Adding DEPENDS +=3D &quot;lua&quot;&nbsp; fixed that error.&nbsp; I'm =
assuming that allows <br>
&gt; the configure to find lua.<br>
&gt;<br>
&gt; Now I'm getting a compile error<br>
&gt;<br>
<br>
I added this to the recipe and it appears the liblua it&nbsp; is looking fo=
r <br>
does not exist.<br>
<br>
PACKAGECONFIG[lua] =3D &quot;--enable-lua <br>
--with-liblua-includes=3D${STAGING_INCDIR} <br>
--with-liblua-libraries=3D=3D${STAGING_LIBDIR}, --disable-lua,lua, lua&quot=
;<br>
<br>
Error:<br>
<br>
checking for luaL_openlibs in -llua5.1... no<br>
|<br>
|&nbsp;&nbsp;&nbsp; ERROR!&nbsp; liblua library not found, go get it<br>
|&nbsp;&nbsp;&nbsp; from <a href=3D"https://nam04.safelinks.protection.outl=
ook.com/?url=3Dhttp%3A%2F%2Flua.org%2Findex.html&amp;amp;data=3D04%7C01%7Cg=
ary%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4d=
c98e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;=
amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhKNSt41GUOgdg%2FG3ajSKIElo0%3D&amp;amp;rese=
rved=3D0">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flua.org%=
2Findex.html&amp;amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0=
c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C6378203=
83359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhKNS=
t41GUOgdg%2FG3ajSKIElo0%3D&amp;amp;reserved=3D0</a>
 or your distribution:<br>
|<br>
|&nbsp;&nbsp;&nbsp; Ubuntu: apt-get install liblua5.1-dev<br>
<br>
<br>
It may be&nbsp; the lua recipe.&nbsp; I only see the static lib 'liblua.a'<=
br>
<br>
-armin<br>
<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetTxid':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_tx_id'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetAnswerTable':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125=
: <br>
&gt; undefined reference to `rs_dns_lua_get_answer_table'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetAuthorityTable':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133=
: <br>
&gt; undefined reference to `rs_dns_lua_get_authority_table'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetQueryTable':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117=
: <br>
&gt; undefined reference to `rs_dns_lua_get_query_table'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetDnsRrname':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_rrname'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetRcode':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_rcode'<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt; | Makefile:2118: recipe for target 'suricata' failed<br>
&gt; | make[2]: *** [suricata] Error 1<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#56371): <a href=3D"https://nam04.safelinks.protect=
ion.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fm=
essage%2F56371&amp;amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dc=
c0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C63782=
0383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp;sdata=3Dvwc4qa0p9%2Bbxsfq9RFUY=
ToQuWBvsmNvn0%2FX3%2BOgjQPo%3D&amp;amp;reserved=3D0">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fg%2Fyocto%2Fmessage%2F56371&amp;amp;data=3D04%7C01%7Cgary=
%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98=
e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIj=
oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp=
;sdata=3Dvwc4qa0p9%2Bbxsfq9RFUYToQuWBvsmNvn0%2FX3%2BOgjQPo%3D&amp;amp;reser=
ved=3D0</a><br>
&gt; Mute This Topic: <a href=3D"https://nam04.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F89556445%2F3616698&=
amp;amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0c142b6d92d08d=
9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7=
CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwi=
LCJXVCI6Mn0%3D%7C3000&amp;amp;sdata=3DrJV2GkSwgJ8OcGoS6W%2FjZ9wt3OBHAyFpasJ=
%2F0Elpt6k%3D&amp;amp;reserved=3D0">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fmt%2F89556445%2F3616698&amp;amp;data=3D04%7C01%7Cgary%40m=
issionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b1=
19172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC=
4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp;sda=
ta=3DrJV2GkSwgJ8OcGoS6W%2FjZ9wt3OBHAyFpasJ%2F0Elpt6k%3D&amp;amp;reserved=3D=
0</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://nam04.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;amp;da=
ta=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%=
7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7=
CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn=
0%3D%7C3000&amp;amp;sdata=3D44krUye0EK6%2FjOMm3P%2BEgS%2BlbWEBa4AF%2BSMjXkS=
zYmk%3D&amp;amp;reserved=3D0">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fg%2Fyocto%2Funsub&amp;amp;data=3D04%7C01%7Cgary%40mission=
secure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b=
8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw=
MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp;sdata=3D4=
4krUye0EK6%2FjOMm3P%2BEgS%2BlbWEBa4AF%2BSMjXkSzYmk%3D&amp;amp;reserved=3D0<=
/a>
 [akuster808@gmail.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
</div>
</span></font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal; text=
-transform: uppercase;">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal;"><fo=
nt color=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-">LinkedIn</=
a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionsecure.com/blog?ut=
m_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-e=
mail-sig">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionse=
cure.com/?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campa=
ign=3Dweb-email-sig">Website</a>
</font></div>
<br>
<div style=3D"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant: normal; font-weight: normal; letter-spac=
ing: normal; line-height: normal; orphans: auto; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: auto; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi" src=3D"http://www.mission=
secure.com/images/MSi_Logo_email.png"></div>
<br>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458">This email and any files transmitted with it are confi=
dential and proprietary and intended solely for the use of the individual o=
r entity to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</body>
</html>

--_000_MN2PR17MB39031594692FB5064E0F4225C3069MN2PR17MB3903namp_--

