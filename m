Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50919CD4F21
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 15:32:46 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.68])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10566.1778686360376806666
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 08:32:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=USd0Zhrz;
 spf=pass (domain: cherry.de, ip: 40.107.159.68, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rb7915p6mGfDIEbAY2TIwrWLkVL3YSTxtMYct4lwUaF5WP3Wbvw0sJVXko+IUsr9NSfhOoWOTXWQGmfSQx4ieVkEHhnK4F4LvZ65Ib+WSZNrLwKd7j7bjTvH1VDXKyfSlhyS3GQUhBtJC6uTxscatTPSd1Fen/aBC159oucsd+Q0UJq/Ha0gGsy2Mpw2pcwdpHg4GNpeEv+YN4kutD9KkKwardwMbtoxGT0hQyy28SX0YRaVPxJNRlJHg6xrc4d5sKjqrN6R4zH60SXj1tvSoYtfK8nn0PRNPb8JRoNhn4UJBG+sQLYUkV8QjpGLk7juhtB226Pf/G+wAbGkjQIL6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XH9IUttmjs+ZNDi1J8gYuifD/KwI0BJr3tQgYo13Tzk=;
 b=u5HVbpz8R38Vsh3TX2YJskRZZ/u3mxhbKFTTAF+wIERNuCxVdWyL5ElwtqeHIV3LHff4sYg6qsihYwvVQi8HKsEf1mojLu7I5prfi+Dcfdk2gbj7fZsXup9i3rtT8VfFBTV0+/c8fG0EDb3da1JMIiUfrIQgzgjgsS6RIWdidhHhDztwEQthuuvddYxlVy95dJ8ABoeeMiInaU630E0mw0r7i0rrw2Hs2RFQklyxw4jqheIT0TShFcq+UQpj+HvvPCr+icfw4k09YtEaNafDVLxiuuCdlt5GnVpTTpr9ofUB01MlwiZauDKxYHpWTrUikYd4kO8tPgDIMaqs5ngwQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XH9IUttmjs+ZNDi1J8gYuifD/KwI0BJr3tQgYo13Tzk=;
 b=USd0Zhrz9EMapkRVjFiof9zupq+6KR2qZqUeBp9V/7Pt1xVe5+xGTiPKd3Kg2kCWiQxHM/Ar+mtD26sAlDhj3CufFAYYCPjRqzWZut+Dv/E8GeVXO5sGP1oOZAMLx4ZdycnfXrEjxXtSX1Rs6tFK9MT0ZBLXENaTZLlvmbh9aaQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com (2603:10a6:10:1e5::22)
 by DU4PR04MB10790.eurprd04.prod.outlook.com (2603:10a6:10:590::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Wed, 13 May
 2026 15:32:35 +0000
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00]) by DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00%3]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 15:32:35 +0000
Message-ID: <7d648b16-f9dc-479b-9473-06bdb0c0e63b@cherry.de>
Date: Wed, 13 May 2026 17:32:34 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
 <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_7Q_aS8yp+ZR3=9xTjHUsJyxL8ep9K2qO3RwSMnFUvoA@mail.gmail.com>
 <AS8PR08MB7251477F2671A0E8F6E86B49D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <AS8PR08MB7251477F2671A0E8F6E86B49D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR4P281CA0177.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::14) To DBBPR04MB7737.eurprd04.prod.outlook.com
 (2603:10a6:10:1e5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7737:EE_|DU4PR04MB10790:EE_
X-MS-Office365-Filtering-Correlation-Id: 17c9cf9f-e459-4fa3-5a2c-08deb104db69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|11063799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	ZZViBOlajs+UhliNNlKWDyTAJHj0x7uUWP4wWPXXUsZcK81Jx+x8S6jKISWFXa+Al1BhBHohfSod5G1uq9ZhxK1DQlPTjpuYB8hW0TKw1DCr5TlcvfKvzlWx6o/j7bpQNOckl8gzbB9I41n4zxl3unNDIoMvUHVvizTRlEA3Z30t+nolNkCIb1kN84YlYWX4tcGvkQrbH3PmBDpqmUqvp8ICY1FMPlZ+AJ6Mo4cz/f2HCo5TVicsKxdSxhNYNR+Ngt+2h0bY7wb58XNsNx21LuYg2yVwexPYaFC8IaiLoR7MqAJQ9wdWiZibG5iYLGCOxcPt2D46hucEUb53hA9gFQa63EJWCq8JwJkBDovw7eYQJrRDS6ecPKbzRmrUYedByIms2Qk6AZNpmXhusp1yTXhS9Z/nkSHvIdBfQHXZXcvZ+IlWvW4Kiwd9fmaMJwgxkqoZTiTz6Kjb85dNs0yR50/v1pwfrA1TlQZJINWPnq/+2JMJaJid54B0hs5W1Q55Mu50DYKT76kGV7/N0qIGiDpmeMKUnf01pahDGOiGmfcXVhw7KWZm9CLng06WvNWCLTDAqtA6s36FvM07+7LLsZwG2EryOCXbk3KBLQqT9DebRAwtOHYzdtHddqW5WygY5HoR20hM0mV6Elx/lRtmchVGAZLzDp8d8GxVwma8m7NvencOb7TD+mxBlNZS2jTt
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7737.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(11063799003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?8NsKcV8ma5rgZNlNXPdUgu0eYzT5RlLKfBUHUL83pvneikwp878JP6NuKDcK?=
 =?us-ascii?Q?7HMXxNQuHG/m6i3/mv5MFlhnBRGvbGGIm98fjejFs1xSl3k3wI28QrGDeD47?=
 =?us-ascii?Q?NYvK3fUZeV4o1jTlNvYEio59qFf7cAHStfbeM9jISHk3aLWb6H/n/imKOrTK?=
 =?us-ascii?Q?Ws5BNMTvbuvOh31hAMp65nJeN9mjRtkcBhGzyWmV4Le9lIDfOEESZWTq2J34?=
 =?us-ascii?Q?ot/2qEPTG9iZG2qdoNJwPaV9V6MPAdNIr4SZBNhy77vi3OgZ9/Ww6aowbQrh?=
 =?us-ascii?Q?zf+5Fvt1EYrI4FtgA8Z9rUvO6IauFV3KnoHyB4dqulokir+VWA8XqgPonet7?=
 =?us-ascii?Q?0NMHN11iL0OKPorEUu/hjKGS0arhZoEY26tpihPjggW39Sc0qzUOrRiZppFP?=
 =?us-ascii?Q?cx46GGRPmXfi3cLBE4S85uVOLz9c8Dina6lqudExqlWUj+nOgQ33kz86f2m3?=
 =?us-ascii?Q?lJD70vvNQCQZoBArBwjQdr+jOAMU6qtik89i0abq6tLTnWKCMwJx6KbZqp5L?=
 =?us-ascii?Q?ClugBwpCFsrEVEaKE89tqpC/HqP8bpH4z5a9WRfsEtRbZZ7mN5LsdITIQzYP?=
 =?us-ascii?Q?9vFYSDwHyvCKuzWELRl4/WFTu4wcbjElLzzAwmmjTzaYATfOWN0bsrJRCPn7?=
 =?us-ascii?Q?KK+iHX7MSYo95IgjD1EPdMEjHsHgmEii7Qtno4m/J18mp51B5xV21kxhBn5/?=
 =?us-ascii?Q?vQ54+JFaPVcbgzdZ/gBSvHGDcVNC2LPSiMKbq7XbueAF85yAqz/V8Uz0UooK?=
 =?us-ascii?Q?HgLknA6Vjwc+hBJkcR/OFzRAcs/zZLwcUFfOJAnk3iUfwaiEYx4+EvZ7QpWx?=
 =?us-ascii?Q?qqkxf2nrBKba6H2xHNlYpOBTPAn5vU9YzzokGVsM6FHHboO6XHMeUN9/mr8l?=
 =?us-ascii?Q?nZRZ/AyJy+6fjyCp2Nj4m/d7Or6G5ssHrSTQPCvwPL96mGiezcz94u7cVWIw?=
 =?us-ascii?Q?2EmImNjr6jh6LVguPz9FpfSCHDmchRtfs131Rw5g2BM3Nh6VBbUl0RGIADtY?=
 =?us-ascii?Q?9hAEz1NVGmfpnC4bT/tb7X6OItRv1x+xkBNvyZzgOfGCXtyb/I7pAFv4+Tt9?=
 =?us-ascii?Q?XXxgq7AiJfzVoE4jkUNFG0BXeIVPA2Cr7g0mIZBX1rmTmM804qWM30FR68l2?=
 =?us-ascii?Q?ayknfiW+Mj8B3IviClvDlqRLnlly8qHr7NFEA6Q1STDaUmKsnDP1RCM8s0Ei?=
 =?us-ascii?Q?5tygfIdLQHQKzBCqr+gmnuZWJJY/akoSuLWkCfUdDuPcN2GrRh+aAaI6zhBA?=
 =?us-ascii?Q?I5SiNFQm8SuM2mGaxPzs9KmlI6PhnBTHc1tzGJx3XNFjh/KxloOlSbqwVAIn?=
 =?us-ascii?Q?7OL3jPCQ8O1CMiWdWhw1JZrnKn5xfAywF34ys9T1pgg6y8Th5V5C+COADj4P?=
 =?us-ascii?Q?Q9yr0rkaT0SNusD1n9XzMy/TxjSmKwk54/NkhCD7qkjxfMJTGeF+jhZ+cp3W?=
 =?us-ascii?Q?nVDItW8zzhdfbzbR8k9bOUK7EJxM+Ti1j5tO/TuZkZ6UEGWS3NIXMWyRFXDB?=
 =?us-ascii?Q?ROI2T6PkzjzR+yr28YuX/25r95DrCoVKqaqRfzs3ink8Sw7enbt2qP/pkNQm?=
 =?us-ascii?Q?H5N1m9YpxomHOjPkHW4WIeCqPoHGIJ+Ic5TsnDo+5Dg9aMivo2I+LSFHVK1Z?=
 =?us-ascii?Q?d1hlGnBUq54b2oKr/sKZogUbqiFgiNi0c4uqcJceIOVU7aE4Ty1f3xriI4+A?=
 =?us-ascii?Q?4RN5uOEmjHx4fU9fG71tUwRFGlVIQO15eNTYqst2W0+C8MMOZAa6eX5mA9Fj?=
 =?us-ascii?Q?JmGiLMbKxg=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c9cf9f-e459-4fa3-5a2c-08deb104db69
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7737.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 15:32:35.3648
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /8W5wJs9Z/fFCqJMvgQy5xj8Lgx6QcojIoVN7jEccZrlWtTokxLqPUjieuVH6QMnwN7xZAO9CRYd98UPkZMNAg+6QlZJLdKNe/iRUij2Ul4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10790
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 15:32:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66559

Hi Antti,

On 5/13/26 5:07 PM, EXT-Antti G=C3=A4rding via lists.yoctoproject.org wrote=
:
>> Then what in Quentin's suggestion isn't going to work? You put the
> function and the SRC_URI_TAG assignment into the class. You modify the
> SRC_URI in the recipe to refer to SRC_URI_TAG variable, and add a
> class inherit into the recipe. Which part of this isn't appropriate or
> possible and why?
>=20
> As far as I see it, it requires you not only to inherit a class but also =
to modify the SRC_URI and possibly make it dependent of the class (I am not=
 sure what would happen if I added SRC_URI_TAG but didn't inherit the class=
).
>=20

But the *only* thing you want to do is modifying SRC_URI but not=20
actually modify it, I don't understand why this is an absolute=20
impossibility and why you must find hacks within BitBake instead. This=20
all sounds like a horrific XY problem.

> In other words, you can't turn the tag verification on and off by simply =
adding or removing line "inherit src-uri-tag".
>=20

classes/src_uri_tag.bbclass

def src_uri_tag(d):
     if conditions or not=20
bb.utils.to_boolean(d.getVar('PLEASE_ADD_TAG'), True):
         return ';tag=3D' + mytag
     return ''

SRC_URI_TAG =3D "${@src_uri_tag(d)}"

recipes-whatever/some/recipe.bb

inherit src_uri_tag

SRC_URI =3D "git://someforge.co/myrepo.git;branch=3Dmain${SRC_URI_TAG}"

 From your local.conf:

PLEASE_ADD_TAG =3D "0"

to disable tags globally.

PLEASE_ADD_TAG:pn-recipe =3D "0"

to disable tags for a specific recipe.

Untested of course.

Cheers,
Quentin

