Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBF7C47258
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 07:23:55 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.112])
 by mx.groups.io with SMTP id smtpd.web11.9229.1706685826667025232
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 23:23:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=NowXTeSu;
 spf=pass (domain: topic.nl, ip: 40.107.105.112, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jnQKeKuniR8Qrchv/f2tHGeVu6nZeqg8kJWz1zLbNQ6oWeFEHHTn/3PIRdOwlkXm9vDAcoHt2au5WiFNivh22zdlm+ka/OC1OFoyp8mCbhlBu7RQqYR9lACfuaI3oJ2mdH9OTpWJyurrDQCV4xwaoUxYUjT2D4aw9DU5SV/+rbjmUGP8Xnzm7iLwxZxitVpFFVDUOlHgSG+fJNia6Nrx+iVutlQm6Viu1l6CTjNzqjGf71viW1T0LcaOnSz2UFZx/jWsVj351q/Fwkwgm6sNtTBdWDuli+0btzbTfUmfkwywymchVFUM6qXXmFi6bZ1XWQWizdGhkkCQy3+haL53Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YKEvrr4tq7dkUv8Uik4q55zoHwdFqaALqVFZe87PdCY=;
 b=HRveffrczR58XL7I8IIEhiFzXqau29hZw6bxNJtGKR3h8az1B/VCZ3sa72jVHGiNnN+5Pl1ZuM04mneMIcW+BwgBBswws2HtwwIm7KmR173BRGd2q8Z9ekFts+uyAt7Kd74E9Entqe/TqRJDUSj8PCJXz60wRZUeyzm2n1UXR5S0w7UXQz8OsKwFeiquAc5ieYhAgDl9IX0u3IOG9x8hHvUGEQ13KsEq0z9+bfyHesaXRZ/SIO9xh2fOx8U2z7c5HFe3WxjUImAD9aT86A7KdTeAJRghbOmqOG2j0vtz4ppUKurEKvJHyyBPQmfnrr+svAGK9XmMOt7SOWl2+jcuew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topic.nl; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=topic.nl; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKEvrr4tq7dkUv8Uik4q55zoHwdFqaALqVFZe87PdCY=;
 b=NowXTeSuv5y1lFcEi+HhAHGJI2KDWVx6mCrXb7nwkf4PLfb4teSCmXznuo8XK1uZUYvQhMl4Gp4ZawefCWNO1NrEOWpHQbSFBu7cs29khlTPdX0guUQ9DwzlE6o8fKeqcRTSxf7xNEWQZd+ujcSS0ruBHsE7Sen8xAkffEoTkx5ptA0m8SRzXAAe+geDM9ZE7KkZp1VEKeBo2fkH4/CzKaJO5htToGTkUOXOrBF1n2ZE7h8XF3RiyXZXs76x3djEQAiKL9pNCkflU85kUyRNjC1ADSlTLMbgrODNDAjJE01x3MV6qqq045dPeAXddx71lblu/awziiedpYoxco0qyA==
Received: from AS4P192CA0017.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5e1::12)
 by PAXPR04MB8077.eurprd04.prod.outlook.com (2603:10a6:102:1c3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.23; Wed, 31 Jan
 2024 07:23:42 +0000
Received: from AMS0EPF000001B5.eurprd05.prod.outlook.com
 (2603:10a6:20b:5e1:cafe::34) by AS4P192CA0017.outlook.office365.com
 (2603:10a6:20b:5e1::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34 via Frontend
 Transport; Wed, 31 Jan 2024 07:23:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 AMS0EPF000001B5.mail.protection.outlook.com (10.167.16.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Wed, 31 Jan 2024 07:23:41 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (104.47.11.105) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 31 Jan 2024 07:23:41 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by AS4PR04MB9267.eurprd04.prod.outlook.com (2603:10a6:20b:4e2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 07:23:38 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::651a:dedd:945a:d1dd]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::651a:dedd:945a:d1dd%6]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 07:23:38 +0000
Message-ID: <91dc6c2f-1c7c-4bdb-ab77-f3d63d312451@topic.nl>
Date: Wed, 31 Jan 2024 08:23:37 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Multiple images on the same hardware
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com, an010@live.com
References: <CANNYZj-T2Aj7=KGsAoe78-y3BBzJ0+Hfz0puj3VntD2hBqE7OQ@mail.gmail.com>
 <27265.1706185127772242958@lists.yoctoproject.org>
 <CANNYZj8EwssU2_QbnxUg_GAvbjWwrhD7bkV2H9uoi2ogSrT7-Q@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0c9d7ace-2f53-403a-9ef2-e1dc478f1a23@emailsignatures365.codetwo.com>
Content-Language: nl, en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <CANNYZj8EwssU2_QbnxUg_GAvbjWwrhD7bkV2H9uoi2ogSrT7-Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0P190CA0007.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::17) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|AS4PR04MB9267:EE_|AMS0EPF000001B5:EE_|PAXPR04MB8077:EE_
X-MS-Office365-Filtering-Correlation-Id: 415bf1ee-5be2-4bfe-7946-08dc222d8d36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 hnpVdb+57jTg0rt4ZCkUgAXnYqVrRJAoINvLCKRcusYqHw5P4Uu7rs9ffy56uExApksiWM60WB0zWHcE2AbjeHBZ82PpUH2OiScTdXiTY6qAuwuFFi/lIh5/2h9BW6GOZd69bKOsLHL+28GiK9cus1opTio34j8x3ERNWGj/3QuVNvHu9yA4tguJ05YLxNHC9tnWuwT4ZWzHMobY6FTDaSenKoJLZByDWyuZN5BW4xpTT1GWmkGUu6Iqp7lLLFehiAtLzDP6MH7PRBj+DSo67WrQCkcyDO2hdgvSZuspCVOwExA6iFJGNjtY3q+Y/MgmCY8owPv2wzaXyZJ5ShVgbB12Jdc+SFcyZbHDudyTFX3dKRPXjgKNxc9WUr3h4C9BiItkCBBrRB7VcvJzkTBcH9B8AKOrGuX4L0Dqfzrc1BGGzMp2fIz0P7DbpXSFsbk2OtT4zvKaElen1Ca1E3zPpZmZ0/GGzZ8GlxeGt9FDaURZ9CADn7yxMW5faak6z5PnUTqO6cFP+ORMKWM1L1alEQ1aiwSd2MJgBLbf17gY2Gk1s/rzGNeM1uRPR+Gz6/pjEUYrElsXRhJRD4EajuDe+RapYoZsGA65cCPCw4llNa5ALrsrO8mXmy7aqxVdf6FEWdenDLuFWfm/Z0UuTTFifQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39840400004)(136003)(396003)(346002)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(26005)(2616005)(83380400001)(478600001)(53546011)(966005)(6486002)(41300700001)(36916002)(6506007)(66899024)(6512007)(8676002)(36756003)(8936002)(44832011)(316002)(66476007)(66946007)(66556008)(2906002)(31686004)(5660300002)(38100700002)(31696002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9267
X-CodeTwo-MessageID: 1d676607-d6fe-40ac-a1b5-acc5d036362b.20240131072341@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B5.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	3521e934-44c1-4a38-101a-08dc222d8b20
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7RVCbJokX8pYR31O/w8QsxDXihJjivW+7/GCU5A91YyT17ecEwRgAjsPiackzI91yGbMo2XE8TrUBvhkIH9Nd5pNPLTTxCoTlLcfIwXiQ0vAN6w19aEOqnjg8Kau7p/BmwlKVXIW6WiXrqXqQu/xPWFAjxaTTtKXmt5mvRbRtzMMPv0Xny/HEfOgTG/sUk1DzOKtGleFYPb8uO0904GKfMbq766fWZPR0CfxEmWU2sH4rY9dhTTdO8LMflfG8bLUf9Z3Z26bhlQ05ti7+3U2jBwktViiYuK2CNIWtHmQm1R0ubviBu63hXnte9HFbmBeotNoDIa9AGVB+IyaZhU38IZl4G++f2713delsf6kmQIt/0FvW7Vq+uAnNIrmZXJ9u45bFcps29/1/KTmNUqiTzbIZ/nh2di4sZuATmg/vAjWax7kDbA7VAaHOKPMqJ0NNNhV+jO0xC9n7q+ClbCh/YNxlJOrjpMTCJsDmirX3+m/8QX27m8CONB0UUpAg83OwDsoheN38IWXITH6X5K3VwiKAHGUMG+sWuutbGufsi8lhbCu5dU4RmzoKMHYK7iKIwvI9o9m+U8qXVf4RFdlfV+v1juMoUqoszkjJYyqLDH7ZicmXSXHNqb4i+PxjodtJxMSMyXcUg8oShmJwkt7hGnLhkyevo2dctp6SknLTvXnhm9oru7+R8Ks5vsi3gxgWl6V12Q5BS4CspztUR3m8186VcnMqKui4M+qjBjDneM=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(376002)(39840400004)(136003)(396003)(230922051799003)(186009)(64100799003)(82310400011)(1800799012)(451199024)(36840700001)(31686004)(2616005)(336012)(26005)(40480700001)(41300700001)(66899024)(32650700002)(36860700001)(966005)(316002)(36756003)(6512007)(478600001)(53546011)(6506007)(83380400001)(6486002)(36916002)(356005)(7636003)(7596003)(5660300002)(31696002)(44832011)(8936002)(2906002)(70586007)(86362001)(70206006)(15974865002)(8676002)(43740500002);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 07:23:41.7641
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 415bf1ee-5be2-4bfe-7946-08dc222d8d36
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B5.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8077
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 07:23:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62349

There's a lot more "gray" area than just that...

You can have two application recipes that access the same repository but=20
produce different things. By including one or the other in your image recip=
e,=20
you can control which configuration gets built.

Instead of a distro or machine for each combination, it's also possible to =
use=20
a configuration file in the build directory. Your application recipe just s=
ays=20
"require my-app-config.inc" and then you can provide the contents of that f=
ile=20
when preparing the build. Makes things easy to produce but harder to reprod=
uce...

The penalty for building things with unneeded features usually isn't that b=
ig,=20
so it might be worth it if you have systems with and without screen to buil=
d=20
them all with "x11" or "wayland" in their distro features. Trick is to adju=
st=20
the image recipe so that the headless machine doesn't install all the graph=
ic=20
stuff (usually you'll have to take a look at how some packagegroups get=20
included and change that).

Having said that, projects like OpenPLi build for more than 40 different=20
MACHINEs. There's no real problem with that, just that at some point you'll=
=20
want a beafy build machine...

Wifi and bluetooth can be compiled as kernel modules and loaded on demand. =
So=20
those aren't a reason to have different MACHINEs. It's also quite feasible =
to=20
load devicetrees and overlays based on things detected at runtime (e.g. hav=
e=20
u-boot probe the I2C bus for a touch controller and load a different=20
devicetree depending on the type of display panel, or have the kernel read=
=20
some config data and load devicetree overlays based on that)




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
On 25-01-2024 15:54, Alexander Kanavin via lists.yoctoproject.org wrote:
> On the image level you can only control which packages go into it.
> Kernel modules are all split into their own packages, so you can
> install (or not) what you want.
>=20
> Building the same userspace recipe slightly differently for different
> images isn't possible. You need to accept that and find some other way
> to differentiate between images (e.g. by installing (or not) the
> package that the recipe produces to begin with, or by supplying
> different runtime configurations).
>=20
> The alternative is indeed making two (or more) slightly different
> distros or slightly different machines, and running separate builds
> for them, which greatly increases complexity.
>=20
> Alex
>=20
> On Thu, 25 Jan 2024 at 13:18, Aleksandar Nikolic <an010@live.com> wrote:
>>
>> I thought that could be an issue with multiple machines, thanks for the =
confirmation.
>>
>> How am I supposed to decide which kernel config fragments are included i=
n which image though, since they go into SRC_URI? The same problem arises i=
f the same userspace package needs to be built slightly differently for dif=
ferent products
>> That's not something I can easily control in the image recipe.
>>
>> Multiple recipes for multiple products is one way to solve this, but I d=
on't find that as an elegant way of solving this problem.
>>
>> Aleksandar
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#62292): https://lists.yoctoproject.org/g/yocto/messa=
ge/62292
>> Mute This Topic: https://lists.yoctoproject.org/mt/103951016/3618446
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijman=
s@topic.nl]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


