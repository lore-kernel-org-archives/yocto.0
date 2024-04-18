Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22294C4345F
	for <webhook@archiver.kernel.org>; Thu, 18 Apr 2024 09:13:32 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.131])
 by mx.groups.io with SMTP id smtpd.web11.8375.1713431611474916385
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Apr 2024 02:13:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=G8qNMw2M;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.131, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EkIJN9lUWNHk4tckadiR/XWisHSvGPTNQvOvKI5gidWGs06unIGNRL2Md2u/xltOYWKXw8XbAbPD7ZHwp4cP96OCUWGolgbhQ06rI2uc08a6R9sooFx2wn9wbzfNG/ua5llNvR9hBLPoDoP3y8zsE80j5sqAxPbgXzfk4+XL/rmABWz0ABNwZBmMgHkRwpqIz6iVBumtg4mipS0TyiiFh7ve9w6Es2qWF8RuAbhc+VNDno5cMUjYQRsajQage28OPvpF1XdehjnR6RXGxq1QGsrKkBDEmkjV1b+wwAxgai6vH0ShyEG3QTYGdbVUc/GTzcWAR799s57Cfq1FPEu/RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WDNL1ZElmj5tB2RgePPYo0hJ7ej7n8f/1rrHj2/NnEc=;
 b=GUxMV+eaafad20a2pTq2jZ3NxHiQXREQ4nYiPmVjxIR02wIJHi8rRRi4xPGhFtR6yHY6Bp958gEOb4XtdbVhK1qxET49raH+tFjGDko9TIVG4ymBOttXIAFsjgT12FmWxz5qeOk5EyAhXFCqtn2I7g5PzbOJKcMzQM/rp2a5zpvkl+jmOQVHhBrNyMx3hjQssiJca1hS4Eq0V+BMDMtjsaB3uizCE8eYsayrVVJmi8l9yA7ZumsdwODrSVrOsFpUneUVePikx1I0AduPM/WEw8Y4DLToLpTHVMq7fN1v0Ga2hv7bwGt7Kzd1w6g7YGhthCSxQNHTSsYRv+6uuGoifw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDNL1ZElmj5tB2RgePPYo0hJ7ej7n8f/1rrHj2/NnEc=;
 b=G8qNMw2M9aKGRGrZP0EFcpLYksWV7TLNKLcoVtwo7anMD7QbS8w77G3c8hxc/f5Y3BVhfv5AU1ZYowDP6bVbuN4xtKv+iLGEk4iPaxeI3VvRMuUisln8Hzdt2MRmVI/rF9MT7PugRIT9zPeScAyZqHTUh9YLdwe9NKiX6ZXtOnjjytVVkwW7sDNS2cTKKMG0LrSCIuSSk6GOODsBTJNWMOL/LPQqVTtPAIwp0ufkEJE06vii0uA9o0bGxR1cjUotk3RqVleCR6KNMhJ4Oqb9bUWo0vxQrL3nncKRqaLLuMp/kU61cu+BFyWG0oLe1UI3sKfzsC8cZpfyiKyyrllftA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by AM7PR04MB6776.eurprd04.prod.outlook.com (2603:10a6:20b:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Thu, 18 Apr
 2024 09:13:25 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 09:13:25 +0000
Message-ID: <0a56c2c5-7b6a-41b8-ace9-b9ad284f87eb@theobroma-systems.com>
Date: Thu, 18 Apr 2024 11:13:23 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Implicit RPROVIDES somewhere ?
To: jguittet.opensource@witekio.com, yocto@lists.yoctoproject.org
References: <0b73263e-6a9d-4c89-be79-b3644c9e02a9@theobroma-systems.com>
 <5531.1713430202698837297@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <5531.1713430202698837297@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1P189CA0036.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::49) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|AM7PR04MB6776:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ee02577-7874-4414-fb02-08dc5f87cdbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GK4fCXU4ICwD++DdSSO0lQKywvz8x5Tq0Dej3aLVJyiXByfZgGrCaPdN/pNBWYfj8d+73dSC5H/9JU7N5LQNVa1F+rM5wreQLAef+vqxYQXevP6WXd+bYKlaTf2MnYmxF0epPPPFO3Utum1VpVOc5cx51LMBaef0akN+oLuYWCqiWW8tkVtJbG32FCP1/k+CGU8+Ilugu3cYBMxlko3RoL058gneOzuC6zY3Uo/JqhiWprMWTnfZ8kBzd9uy2Mq/Fmiyl/CRS2fK2kG9Rc9xm2dBIiEQ5bdIjQdZ4daxPAdOvOc0syNZnVGwZvNia4II85dMbEI3pmEIqdEZxr6cKLqaUagGrrYt97/Khp/k8pHB5qhSoQi2s485aGiDdM1X7oIfCNC8UvDg1XkNsYSkzz3TMxBmZOWRlpuFv8DNF0YuhVHtsIBTHNq37qr99AlQ8fxFtzZr+Y6MQDzBQN/rvSuP/9XSSUBC1gwlr8EC3wt6/BPg8AJTNDs0bNB+eV+mX37FCRnyRrtDzC9bgpnLWqhGCV0g1ROCEfcQoIiUaYM4x3KvAW/3bfan+YrmaYM4JBfXih4MLUgvFmLmhInfUHIJgqCIqg8hsAF8Lfkewwh2kQONKH2SECkml2srInK4KEMTVjCsF9mr2yHqAWRBJ4zFnwnc2SDdbDdhwNd1q50=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pa9nxwumShF0vX6+kyaJZXnojyMjxVxUkctQkthEdiKnzbo8QIs6eCx9kDya?=
 =?us-ascii?Q?zNdqJb3xZeCOWB9qLLpNc+CfpJu9MuVsxWquXZvp6YncQpCXRd7c4JDQFfHZ?=
 =?us-ascii?Q?sV3CBUGZzd8KFhPUNMtN+DQJR5LeEkCFSkI3wjYbaBDIu8OoRqO2hX6VU6E/?=
 =?us-ascii?Q?MznOheZtUCibKjkuDtb/9b1/AeZZ4HbTgfMb4N1f9tydOXeEV4GPcZh9am4/?=
 =?us-ascii?Q?vbvsv1V3zj8M+hz2uPlndbJiG/C5sPkrOPpgIxiZFbscBF4jXUz0w6RbHp5h?=
 =?us-ascii?Q?FZ5XG1JT/jFb1hhr4aXk1uMDdt5c/cudZRhvUSwyI6vI8v2m77Lo3TPUGAbp?=
 =?us-ascii?Q?l3c3gHuxTt03gtHKF0ZBj2WMhlXC2anarOpSxi/aFqVkmyZFPkqn1LpZa2ii?=
 =?us-ascii?Q?S2xSk1q17JB73RaiAAaL8lC6YOyXJn7wmVF8z9E/BYEAVUGShf0keKXTY9Eo?=
 =?us-ascii?Q?hp6EMA6OAOJ3A3aYpOIb4zmjrl1rl27dkmpmjYWv/hhfrCRUvw2j7oq9g8rE?=
 =?us-ascii?Q?jgM4MZDD+R/0FstWOY8hnnDYrq1xjoVa3EJ2cjEJj6wmMGeYZ1n++Z4o2geA?=
 =?us-ascii?Q?GMMB2VwRgpge9FxShLKlwY9TOO9xDhSh+9jXAIuUEgGe8i+Sj3HGprltBMb5?=
 =?us-ascii?Q?ZbAEjhL+HcVPcLDPV5NFXxTUXqkbv25Ggvt4tsPLa/ZI0gJPFUotx7KZvI0Y?=
 =?us-ascii?Q?yjwKB8GHXLtsrK/uDKTE3lZfedflRMoMyXUBelP9lXiiW1aToh4M/lcFs0qs?=
 =?us-ascii?Q?0siA8DX5YCordgPxdQnnSgPVmB1JJL2q2MAV7ALtHenCu7DlIuzEsUcWYqV5?=
 =?us-ascii?Q?EuklxyWI97erj52E6FHb0rd8h+0MmHkpCaE1Ors+zm+vbkWY1x8KGmR1BjxZ?=
 =?us-ascii?Q?9k6LjopQt/8VJJcx4hKqDRgIqabrC0ZE5BLvpWjwk1CHrg1bN3jDpqXpoGag?=
 =?us-ascii?Q?Xq1bqAt9DN5TAreM1kghX5hMxLSlZj33griKdXWL5hiYTmJYLtT0Z7Lw7jJW?=
 =?us-ascii?Q?GD+IcZ9VKl17noV7V4jcakk/B/lZM2wc668ScEomt33q617vzpZ5pKzct2oZ?=
 =?us-ascii?Q?nzAsMMHl4Vu6fjfATVzNFz+2kbiJe8QpKYfTO7T/6cJbCGqn2pnAJSnEmHLH?=
 =?us-ascii?Q?lC0zxx/CsP1PiWrc52+Hh3TVJi6sv3/r9VwT8wyqFVHLEImZvIdrZMeT+XJN?=
 =?us-ascii?Q?Fd3BAW/25CnNq0Qfj9qKwddOLzfCB0OH6R+Ob6WEZq2bxZ8F93rGxIY6Yhif?=
 =?us-ascii?Q?n61EzRmGZ6lgQ1BPp/fRKSzIsK2m+9pecmPSUJ7pADAk7TiTnS1e3jEZ6T54?=
 =?us-ascii?Q?Q7SaCUdD7n4ckz/QWqYZkbPNrybODykzUMnKEZ8VFupQ6lYRCKjja2SXS7WQ?=
 =?us-ascii?Q?VPflAK1o5+0T9lusJ2izdl9bSCLIV4XTbr5moy0/FFGxCiRbTAvlKOz34NKO?=
 =?us-ascii?Q?HzYpgzQ510tA6+TPTW/D/LyXLKfe5AR8NJ+UZVhoBgX+D/J3wmLv4P1vE65g?=
 =?us-ascii?Q?lbL9Lni/TdCSm3VNbXgpWLp8/vHHoSpZ7pU8itS5ecdw+UQonpWQ5PVahz6N?=
 =?us-ascii?Q?YVf+yZss3dmmQv68or7RhEIzJjqDcDPKCmaHk1KB/qCr3IWi0TQ9uldAOJwW?=
 =?us-ascii?Q?k/5g5AvqOX4IamV730M3j7k=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ee02577-7874-4414-fb02-08dc5f87cdbc
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 09:13:25.7929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QYotcTMPCrH25VxfqotDnc6bjMufN3mm8uKVpJeI9tzqgrC8dAnFZYsLXpZCZN2Gpy5fu6AHEyUhQmcRsiNeNovSokSlCFBUmn9coIko/34iVupseGZCBIRMw43Lc831
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6776
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Apr 2024 09:13:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62960

Hi Joel,

On 4/18/24 10:50, Joel GUITTET via Lists.Yoctoproject.Org wrote:
> Hello Quentin,
>=20
> Yes not uncommon setup except my prebuilt libraries don't match the initi=
al expectations:
> 1. The filename must have the version appended, for example: libbar.so.1.=
2.3. (can be easily renamed by the way)
> 2.=C2=A0The library must have the ELF tag SONAME set to the major version=
 of the library, for example: libbar.so.1. (it has no SONAME at all and it'=
s not possible to have it, and not wanted to patch the library before using=
 it to build libfoo).
>=20

libbar not being versioned is common too, so that should be covered by=20
the docs? libfoo though, as being built by Yocto should really be=20
versioned itself. It doesn't need to use versioned libs as dependencies=20
(though it would really be a good idea ;) ).

> My customer don't want me to add the bar libraries in the rootfs. he ask =
me to add only the foo libraries, for both architectures aarch64 and arm. Y=
es I have bar libraries pre-compiled for both aarch64 and arm too. So this =
is lib32-bar and bar.
>=20

Your customer is requesting an image that cannot work? I'm not sure to=20
understand his logic? What are they trying to prevent to happen? If they=20
want to go this route, maybe using dlopen instead of linking against=20
would be better maybe? This way the auto RDEPENDS mechanism wouldn't=20
find it?

I assume he wants to share the bar library himself and not through your=20
image... An option is just to ask him to build the image himself instead=20
by providing all the layers and setup to him, and he'll have the ability=20
to build an image with whatever he wants in it, but an image that=20
actually works.

>>
>> I assume that the automagic RDEPENDS got broken for lib32-foo and you ar=
e
>> not seeing it because of INSANE_SKIP:${PN} +=3D "file-rdeps"
>> It's probably trying to locate a multilib lib32 package containing
>> libbar.so but cannot find any and complains about it. The aarch64 packag=
e
>> does find a package for libbar.so so it adds it automatically.
>>
>=20
> Interesting remark. Maybe I have to play with the INSANE_SKIP(s). > So th=
e "file-rdeps" skip breaks the RDEPENDS on lib32-foo, which=20
permit me to not integrate lib32-bar in the rootfs (what I want), but=20
it's maybe not working with aarch64 ? Is there a "aarch64-file-rdeps" or=20
similar (I don't think so) that could help to break the RDEPENDS of my=20
library foo on the library bar ?
>=20

You won't be able to further break the build system by using=20
INSANE_SKIP. INSANE_SKIP is for silencing warnings/errors. It's usually=20
when one messes things up but says "trust me I know what I'm doing" to=20
Yocto.

So here, your build is broken for lib32-foo but you silenced it. To=20
achieve what you want, you need to break it for foo, and then silence it=20
as well.

Digging a bit, maybe EXCLUDE_FROM_SHLIBS could be used in foo recipe to=20
exclude bar package. I guess you could also look into making the bar=20
recipe use PRIVATE_LIBS for libbar.so.

But honestly, this is just going against what Yocto should be used for,=20
so try to find some compromise with your customer to do things properly :)

Cheers,
Quentin

