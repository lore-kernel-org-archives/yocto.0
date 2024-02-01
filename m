Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26805C4828C
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 13:55:52 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.130])
 by mx.groups.io with SMTP id smtpd.web10.15944.1706795743548191807
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 05:55:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=X/lzO60T;
 spf=pass (domain: topic.nl, ip: 40.107.8.130, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iPxJJ/y5xQspFreNNyBVgJX3sCjQ7GLx5vxLeuffdHqXrYPaqSkFVt9JXZSRPavUdaqUP7tmtqJwGqkVnCzUdqgCQBTRMl4DqMVNi92vQ3KEd0S+SZfdzOGO8xmgJyMq+0Ckr7atLpGK8g0WrWz8s7dfm4FA63hBh4VnDh5fK8VZkXmygDeaCKu5QtutjjzOfQLAFRhkgQqqRB7IimifKWgXtSJ6DfI+BQv5XOvOX6W4wxx7kHotbwi/COD9Y6xJQOprmH8dIk23aIyZj/Owk1J9FrYwpY4RfCOq201EAZc/EYBsfqIVu6vjGxreBp5ar/JXWpKPqbVfPg3iyeqhZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qWVACdOaBC+b1NA4fWm0M7G8ztH/hfNLg/t0juvjpA=;
 b=Qgaf3VAlLaNehOojk2fEuRgsYk8BP7PpIR2kOmyl5mlsiyp1ppiOE1jFnXK/pT+kLoHcHMpw5W57yXnOhavc7h6k6m2wmWB5ULApn1U1QR7mz0L5Vm73jnx8bHLeYI+srNXV9cUDum47/PmK+StWjeVgY9C+BoL8AiXHk6ikE3iAw9kgncH5gQlFtZMMxbjqx+xkM/qYXJXHPnklmpzUW5l/YPhEnvA90i4X22wnxRKerXlw9Ny2kJtjRDkd7wFCnz5HkqIrZgJUv4iHYfxjtEvOBpPnDQQ5MEoJdm11snb5XVukk4pbpDVwQntJ7zd+SiVDC3Wxo28srdxCsV9oWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=live.com smtp.mailfrom=topic.nl; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=topic.nl; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qWVACdOaBC+b1NA4fWm0M7G8ztH/hfNLg/t0juvjpA=;
 b=X/lzO60TMlE/mow1ePTDvOYIubm0obEbtwfSbHVGwrBUnMupz0EO/bWCXBza/E1CyAQEsLxlGxYwnj5HfQlHQcUf4XCkDfZV3Np3TOZ6VfDZyq9mCLJ23vjOZ0FmB3ImqSw43lSLhDkzUz/1nk4ec7iajI1sSoUOJw7K03CS1hZriT6TIjUoPZVB1jfADUtzqUSaI3vObxP4lUxagELnWyutAdV6qGY09XeYIimmKuBig4P3vvYxDHrSj7qr7rzLaV5aNZVWcddplZdis1VBtqpmW6I3RjnGY1STtqAthAMzjN/ls741Nkbc67q57ChjXv+Xk7LsHAcGkn4oabEdBA==
Received: from DB9PR01CA0021.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::26) by PA4PR04MB7808.eurprd04.prod.outlook.com
 (2603:10a6:102:c8::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.27; Thu, 1 Feb
 2024 13:55:39 +0000
Received: from DU6PEPF0000B61F.eurprd02.prod.outlook.com
 (2603:10a6:10:1d8:cafe::2a) by DB9PR01CA0021.outlook.office365.com
 (2603:10a6:10:1d8::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.26 via Frontend
 Transport; Thu, 1 Feb 2024 13:55:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 DU6PEPF0000B61F.mail.protection.outlook.com (10.167.8.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Thu, 1 Feb 2024 13:55:39 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (104.47.12.51) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 01 Feb 2024 13:55:38 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by AS8PR04MB8483.eurprd04.prod.outlook.com (2603:10a6:20b:34b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Thu, 1 Feb
 2024 13:55:36 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::651a:dedd:945a:d1dd]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::651a:dedd:945a:d1dd%6]) with mapi id 15.20.7249.025; Thu, 1 Feb 2024
 13:55:35 +0000
Message-ID: <1139818a-0492-4feb-9d72-caee7217fea2@topic.nl>
Date: Thu, 1 Feb 2024 14:55:34 +0100
User-Agent: Mozilla Thunderbird
From: Mike Looijmans <mike.looijmans@topic.nl>
Subject: Re: [yocto] Multiple images on the same hardware
To: an010@live.com, yocto@lists.yoctoproject.org
References: <91dc6c2f-1c7c-4bdb-ab77-f3d63d312451@topic.nl>
 <13858.1706738850246565515@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.53d3db72-c3d6-4259-a0ee-93a921665a4e@emailsignatures365.codetwo.com>
Content-Language: nl, en-US
Organization: TOPIC
In-Reply-To: <13858.1706738850246565515@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR04CA0030.eurprd04.prod.outlook.com
 (2603:10a6:208:122::43) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|AS8PR04MB8483:EE_|DU6PEPF0000B61F:EE_|PA4PR04MB7808:EE_
X-MS-Office365-Filtering-Correlation-Id: 044188e1-c091-411e-1f32-08dc232d7938
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 zs7r6MqLDfvuKJwDRRXyrpnhexp4sL9gzWdI5U7G3pSjgpPymI/QF+9UX5SXUaepMMLVWl03R5m9yUxcp7IlmFYmIItXR2PGzl8L30bCjvs3dbupSIEqXyAxOnX/Oc5q9XhULYYJNTEKAJWxGjmf2KfzsNIwFMDHtigBmCD5A1C1MkMrxidBsZNffvTSsBIUvHnkiK0cyBl/DODCZOzYl9xfuHET4e8QtyDJzwy4BRF+E7RBoq4it0CmEbg7UJBfSZR8Ah9cMkdeqngKvAHHSnMAilDZyQW5f5yVTHWuDO282utdLL1S7/c8MQxlJj1nzAw/U2+VjfhHXDQuu/zXQefwfyHcCE2HNfkVRDOBKwY+d7zkXloQGLR3phlP57RWxH27720jupZoyrvqs7um17WYiIOxi2lG2eQS26AoyMQK/W58YujgvCJtdaHrWs4swz28YcFh/S0934xQ978SWavS/9DNjKKNptaQcPPAei509rk57W8vcIZDMGk2xbcstbKib/MAxXzRrE1yWYKSeMTSTsK0gLpnA9In7utDPM6rKGVLA41RRTfxypL75eqMt4yJ9XcRjECc3UmNQRS/u22iB8oyDGT4jSfv1w77XexwITxZIlLTikO9/Vby5Gd+R24PkThxg4Vbwype/fi6pg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(376002)(396003)(366004)(136003)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(41300700001)(66946007)(5660300002)(31696002)(2906002)(8676002)(8936002)(44832011)(86362001)(83380400001)(66556008)(36756003)(316002)(66476007)(38100700002)(36916002)(53546011)(6512007)(6506007)(478600001)(6486002)(2616005)(26005)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8483
X-CodeTwo-MessageID: 4b844b0d-82b7-4455-ac46-ac71de5e6a51.20240201135538@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61F.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	852ba348-bd26-4a4c-51b4-08dc232d7700
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4DLJ6iejh6t/b775yv+Apr/MsNW0B00TFJ/cf294pJw/s1lcY0+fXKgXhZtC569Kw+NQJaPELOZiLvRU+OZdSNfxnaKmJmpdRQYjMGnDxsKmzzBjJqPh/KAOCsWB7BtMJOWq8QOZFOkOuTqwVAWWFCDUx9BNkSrQ39BC10fjUvKsQA5bTi8mlKsOl9drMn5FOJDCGXVkHmG6Nb27bZvjPKq37meEnWtmTn2+THJvm4/TDW5jx06dCq7bDev9YCvDWfg08KU101pYykAk2p71zPftvTh2rQ4dG0p4UdWGsvlrG4b+KFRZK4g+saoq7HRRglTMvwHi8eHI3MPfd2E19sWL3XYDIYXuaxnN9fQ+38pprFRBbAxtf/MMNVqp3l2ytVVAWAtAlfagBOMsPdSGIvhG+lyCwfu6kxv/LfVKP/OCwYf3T9NgDx+OXp57ScCgrIwYNDQicaXAuoVYaR873MTJ9eHm8++y22inscJs2lnhn/tMm+9YaV9o3Q7eJbAMb7QE1rNRDO7tFVHtIuz5aB6BbadHLDvRQ+lc8XM/8PRdWXQMT0V8J0Cyai///DuT8Y7UHz8bPLvpJCaPJ1/bZbGxr6Yt8KhQ76hOhW7R8M/kyUvr5QtS8BtmF1dl1CErCgMvUR31NxT4NFwph/MlKjwNQrQMx7urgBAVqbz7AfkcfYWrekH/pZSnGgkynBpeJM9h8NzsJvBWSaNc8m6X6DcYQXuAtcQYm887UwkhURw=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(346002)(376002)(39840400004)(136003)(230922051799003)(186009)(64100799003)(1800799012)(82310400011)(451199024)(36840700001)(5660300002)(478600001)(15974865002)(6486002)(6512007)(31696002)(53546011)(6506007)(86362001)(36916002)(8676002)(8936002)(70206006)(70586007)(316002)(36756003)(32650700002)(2616005)(336012)(41300700001)(7596003)(356005)(26005)(7636003)(44832011)(83380400001)(31686004)(36860700001)(2906002)(40480700001)(43740500002);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2024 13:55:39.3364
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 044188e1-c091-411e-1f32-08dc232d7938
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7808
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 13:55:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62364


Met vriendelijke groet / kind regards,=0A=
=0A=
Mike Looijmans=0A=
System Expert=0A=
=0A=
=0A=
TOPIC Embedded Products B.V.=0A=
Materiaalweg 4, 5681 RJ Best=0A=
The Netherlands=0A=
=0A=
T: +31 (0) 499 33 69 69=0A=
E: mike.looijmans@topic.nl=0A=
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 31-01-2024 23:07, Aleksandar Nikolic via Lists.Yoctoproject.Org wrote:
>     Instead of a distro or machine for each combination, it's also possib=
le to
>     use a configuration file in the build directory. Your application rec=
ipe
>     just says "require my-app-config.inc" and then you can provide the
>     contents of that file when preparing the build. Makes things easy to
>     produce but harder to reproduce...
>=20
> An interesting approach, didn't occur to me, thanks for the hint.
>=20
>     The penalty for building things with unneeded features usually isn't =
that
>     big, so it might be worth it if you have systems with and without scr=
een
>     to build them all with "x11" or "wayland" in their distro features. T=
rick
>     is to adjust the image recipe so that the headless machine doesn't in=
stall
>     all the graphic stuff (usually you'll have to take a look at how some
>     packagegroups get included and change that).
>=20
> In this particular case I can use DISTRO_FEATURES in my recipe and nicely=
 use=20
> one image recipe to produce multiple images, this is however not possible=
 with=20
> e.g. kernel modues, as such variable does not exist.

DISTRO_FEATURES is rather inconvenient as it requires separate builds.

Why don't you just have multiple image recipes? I usually have something li=
ke

project-name-image (for released product)
project-name-image-dev (same, but with development options like a writable=
=20
root and gdbserver)
project-name-production-test (...)

>=20
>     Wifi and bluetooth can be compiled as kernel modules and loaded on de=
mand.
>=20
> Yes, this would work as well. Though some would argue that out of securit=
y=20
> reasons it's better to reduce the attack surface and not even have kernel=
=20
> modules to be loaded in the first place if they are not needed at all.

Safer even is to not have the modules on the filesystem at all, then the=20
kernel cannot load them...

Normally the kernel only loads modules that it needs (systemd, udev, and ev=
en=20
busybox' mdev feature on-demand module loading so you never have to forcibl=
y=20
"modprobe" anything)

Many images bluntly install "kernel-modules" which throws in everything tha=
t=20
got built by the kernel recipe. Omit that and you can install kernel module=
s=20
based on exact system requirements.


